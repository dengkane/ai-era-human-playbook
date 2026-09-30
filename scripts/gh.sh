#!/usr/bin/env bash
# Run gh, preferring the copy vendored in .tools/ over whatever is on PATH.
#
#   ./scripts/gh.sh pr list
#   ./scripts/gh.sh auth login
#   ./scripts/gh.sh auth status
#
# Two environment quirks are handled here, both because $HOME is read-only on this
# machine:
#
#   * gh is installed into .tools/ (no usable sudo, so no system package). .tools/
#     is gitignored.
#   * gh wants to write its config and auth token to ~/.config/gh. That write
#     fails, and `gh auth login` dies with a confusing error. GH_CONFIG_DIR is
#     redirected into .tools/gh-config/ instead.
#
# GH_CONFIG_DIR holds your auth token. .tools/ is gitignored — never commit it.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"

# Redirect gh's state into the repo if the default location is not writable.
if [[ -z "${GH_CONFIG_DIR:-}" ]]; then
  default_cfg="${XDG_CONFIG_HOME:-$HOME/.config}/gh"
  if [[ ! -d "$default_cfg" ]] || [[ ! -w "$default_cfg" ]]; then
    export GH_CONFIG_DIR="$repo_root/.tools/gh-config"
    mkdir -p "$GH_CONFIG_DIR"
  fi
fi

if [[ -x "$repo_root/.tools/gh" ]]; then
  exec "$repo_root/.tools/gh" "$@"
fi

if command -v gh >/dev/null 2>&1; then
  exec gh "$@"
fi

cat >&2 <<'EOF'
gh is not available.

Install it one of these ways:
  1. Vendored (no root needed):  ./scripts/install-gh.sh
  2. System package:             apt-get install gh        (needs root)
  3. Download:                   https://github.com/cli/cli/releases
EOF
exit 1
