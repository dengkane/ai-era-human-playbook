#!/usr/bin/env bash
# Run gh, preferring the copy vendored in .tools/ over whatever is on PATH.
#
#   ./scripts/gh.sh pr list
#   ./scripts/gh.sh auth status
#
# gh is installed into .tools/ because this machine has no usable sudo and
# /usr/local is not writable. .tools/ is gitignored, so it never reaches the repo.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"

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
