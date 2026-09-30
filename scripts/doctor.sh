#!/usr/bin/env bash
#
# Check that this repo can actually write to GitHub.
#
#   ./scripts/doctor.sh
#
# Answers, in one shot: is the system ssh config sane, is the SSH key wired up,
# is there a usable token, and which transport will publishing use? Run this
# first whenever a push or a PR fails.

set -uo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")"
cd "$repo_root"

ok()   { printf '  \033[32m✓\033[0m %s\n' "$1"; }
bad()  { printf '  \033[31m✗\033[0m %s\n' "$1"; }
warn() { printf '  \033[33m!\033[0m %s\n' "$1"; }
info() { printf '  \033[36m·\033[0m %s\n' "$1"; }
head_() { printf '\n\033[1m%s\033[0m\n' "$1"; }

problems=0

# --- repo --------------------------------------------------------------------
head_ "Repository"
origin="$(git remote get-url origin 2>/dev/null || echo "")"
if [[ -z "$origin" ]]; then
  bad "no 'origin' remote"; problems=$((problems+1))
else
  slug="$(sed -E 's#^git@github\.com:##; s#^https://([^@]*@)?github\.com/##; s#\.git$##' <<<"$origin")"
  ok "origin -> $slug"
  case "$origin" in
    git@*)   info "transport: SSH" ;;
    https://*) info "transport: HTTPS" ;;
    *)       warn "unrecognized remote form" ;;
  esac
fi

# --- system ssh config -------------------------------------------------------
head_ "System SSH config"
if ssh -G github.com >/dev/null 2>/tmp/doctor-ssh-g; then
  ok "ssh can read its system config"
else
  bad "ssh refuses to start: $(head -1 /tmp/doctor-ssh-g)"
  echo "     This breaks SSH pushes and is unrelated to your key. Fix:"
  echo "       sudo chown root:root /etc/ssh/ssh_config.d /usr/lib/systemd/ssh_config.d"
  echo "       sudo chown root:root /etc/ssh/ssh_config.d/*.conf /usr/lib/systemd/ssh_config.d/*.conf"
  problems=$((problems+1))
fi
rm -f /tmp/doctor-ssh-g

# --- ssh auth ----------------------------------------------------------------
head_ "SSH authentication"
ssh_out="$(ssh -T git@github.com 2>&1 || true)"
if grep -q "successfully authenticated" <<<"$ssh_out"; then
  ok "$(grep -o 'Hi [^!]*' <<<"$ssh_out" | head -1) — key accepted"
elif grep -q "Permission denied" <<<"$ssh_out"; then
  warn "key not accepted (or no key configured)"
  info "add one at https://github.com/settings/ssh/new"
else
  warn "could not determine SSH auth state"
  head -1 <<<"$ssh_out" | sed 's/^/     /'
fi

# --- token -------------------------------------------------------------------
head_ "Token (for push + PR from automated sessions)"
if token_check="$(./scripts/github-token.sh --check 2>&1)"; then
  echo "$token_check"
else
  warn "no token — automatic PR creation will be skipped"
  echo "     echo '<your-pat>' > .secrets/github-token && chmod 600 .secrets/github-token"
fi

# --- gh ----------------------------------------------------------------------
head_ "GitHub CLI (optional)"
if command -v gh >/dev/null 2>&1; then
  ok "gh found: $(command -v gh)"
  if gh auth status >/dev/null 2>&1; then
    ok "gh is authenticated"
  else
    info "gh installed but not authenticated (fine — pr-create.sh uses the token)"
  fi
else
  info "gh not installed (fine — pr-create.sh uses the token via the REST API)"
fi

# --- verdict -----------------------------------------------------------------
head_ "Verdict"
if [[ "$problems" -gt 0 ]]; then
  bad "$problems blocking problem(s) above"
  exit 1
fi
ok "no blocking problems found"
