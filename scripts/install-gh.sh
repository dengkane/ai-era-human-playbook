#!/usr/bin/env bash
#
# Install the GitHub CLI into .tools/ with no root required.
#
#   ./scripts/install-gh.sh
#
# Why: this machine has no usable sudo (the sandbox sets no-new-privileges), so
# `apt-get install gh` is not an option. gh ships as a static binary, so we can
# just download it into the repo and call it through scripts/gh.sh.
#
# .tools/ is gitignored.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
dest="$repo_root/.tools"
gh="$dest/gh"

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }

if [[ -x "$gh" ]]; then
  ok "gh already installed: $("$gh" --version | head -1)"
  exit 0
fi

os="$(uname -s | tr '[:upper:]' '[:lower:]')"
arch="$(uname -m)"
case "$arch" in
  x86_64) arch="amd64" ;;
  aarch64|arm64) arch="arm64" ;;
  *) bad "unsupported architecture: $arch"; exit 1 ;;
esac
[[ "$os" == "linux" || "$os" == "darwin" ]] || { bad "unsupported OS: $os"; exit 1; }

echo "Resolving latest gh release..."
tag="$(curl -sL https://api.github.com/repos/cli/cli/releases/latest \
       | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p' | head -1)"
[[ -n "$tag" ]] || { bad "could not resolve latest release (network?)"; exit 1; }
info "latest: $tag"

url="https://github.com/cli/cli/releases/download/${tag}/gh_${tag#v}_${os}_${arch}.tar.gz"
info "downloading $url"

mkdir -p "$dest"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

if ! curl -fsSL -o "$tmp/gh.tar.gz" "$url"; then
  bad "download failed"; exit 1
fi

tar xzf "$tmp/gh.tar.gz" -C "$tmp"
builtin_bin="$(find "$tmp" -type f -name gh -path '*/bin/*' | head -1)"
[[ -n "$builtin_bin" ]] || { bad "gh binary not found inside archive"; exit 1; }

install -m 0755 "$builtin_bin" "$gh"
ok "installed to .tools/gh"

chmod +x "$repo_root/scripts/gh.sh" 2>/dev/null || true

echo
"$gh" --version | head -1
echo
info "Use it through the wrapper: ./scripts/gh.sh --version"
info "Next: ./scripts/gh.sh auth login"
