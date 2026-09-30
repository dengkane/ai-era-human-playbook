#!/usr/bin/env bash
#
# Lint a chapter file before it goes into a PR.
#
#   ./scripts/check-chapter.sh chapters/en/ch01-ai-is-not-a-tool-its-a-species.md
#
# Checks the things a reader will notice and a reviewer will complain about:
# filename convention, front matter, disclosure footer, leftover template
# scaffolding, unresolved placeholders. Exits non-zero if anything is an ERROR.
#
# WARN-level findings do not fail the run — they are judgement calls.

set -euo pipefail

usage() {
  echo "Usage: scripts/check-chapter.sh <chapter.md>"
  echo
  echo "Example: scripts/check-chapter.sh chapters/en/ch01-ai-is-not-a-tool-its-a-species.md"
  exit 2
}

[[ $# -eq 1 ]] || usage
file="$1"

errors=0
warns=0

err()  { printf '  \033[31mERROR\033[0m  %s\n' "$1"; errors=$((errors + 1)); }
warn() { printf '  \033[33mWARN \033[0m  %s\n' "$1"; warns=$((warns + 1)); }
pass() { printf '  \033[32mOK\033[0m     %s\n' "$1"; }

if [[ ! -f "$file" ]]; then
  echo "No such file: $file" >&2
  exit 1
fi

echo "Checking $file"
echo

# --- filename ---------------------------------------------------------------
base="$(basename "$file")"
if [[ "$base" =~ ^ch([0-9]{2})-[a-z0-9]+(-[a-z0-9]+)*\.md$ ]]; then
  chapter_num="${BASH_REMATCH[1]}"
  pass "filename matches ch<NN>-<slug>.md (chapter $chapter_num)"
else
  err "filename must be ch<NN>-<kebab-case-slug>.md — got '$base'"
  chapter_num=""
fi

# --- front matter -----------------------------------------------------------
fm="$(awk 'NR==1 && $0=="---"{inside=1; next} inside && $0=="---"{exit} inside{print}' "$file")"

if [[ -z "$fm" ]]; then
  err "no YAML front matter (file must start with a '---' block)"
else
  pass "front matter block present"
  for field in chapter title part status language created last_updated assisted_by edited_by; do
    if grep -qE "^${field}:" <<<"$fm"; then
      pass "front matter: $field"
    else
      err "front matter missing field: $field"
    fi
  done

  fm_chapter="$(grep -E '^chapter:' <<<"$fm" | head -1 | sed 's/^chapter: *//; s/"//g')"
  if [[ -n "$chapter_num" && "$fm_chapter" =~ ^[0-9]+$ ]]; then
    if [[ "$((10#$fm_chapter))" -ne "$((10#$chapter_num))" ]]; then
      err "chapter number mismatch: filename says $chapter_num, front matter says $fm_chapter"
    fi
  fi

  fm_status="$(grep -E '^status:' <<<"$fm" | head -1 | sed 's/^status: *//; s/"//g' | tr -d ' ')"
  if [[ -n "$fm_status" ]]; then
    case "$fm_status" in
      planned|draft|review|stable) pass "status '$fm_status' is valid" ;;
      *) err "status must be planned|draft|review|stable — got '$fm_status'" ;;
    esac
  fi
fi

# --- title heading ----------------------------------------------------------
if grep -qE '^# [0-9]{2}\. .+' "$file"; then
  pass "numbered H1 title present"
else
  warn "no '# <NN>. Title' H1 heading found"
fi

# --- disclosure footer (required — matches README.md) ------------------------
echo
for marker in '📅 Last updated:' '🤖 Assisted by:' '✍️  Edited by:' '⚠️'; do
  if grep -qF "$marker" "$file"; then
    pass "footer: $marker"
  else
    err "missing disclosure footer marker: $marker"
  fi
done

# --- template scaffolding / placeholders -------------------------------------
echo
if grep '<!--' "$file" | grep -qvE '<!--[[:space:]]*Last verified:'; then
  warn "HTML comments still present — template scaffolding or author notes left in?"
  grep -n '<!--' "$file" | grep -vE '<!--[[:space:]]*Last verified:' | head -5 | sed 's/^/         /'
fi

if grep -qiE '\b(TODO|TBD|FIXME|LOREM IPSUM|XXX)\b' "$file"; then
  err "unresolved placeholder marker found:"
  grep -niE '\b(TODO|TBD|FIXME|LOREM IPSUM|XXX)\b' "$file" | head -5 | sed 's/^/         /'
fi

# --- stale-data hygiene -----------------------------------------------------
echo
if grep -qE 'Last verified:' "$file"; then
  pass "has 'Last verified:' marker(s) for volatile facts"
else
  warn "no 'Last verified:' marker — add one wherever prices/versions/legal facts appear"
fi

# --- length -----------------------------------------------------------------
# Target is ~1300 words of body (see the LENGTH note in templates/chapter-template.md).
# Warn at both ends: too short is thin, too long is drifting away from the format.
words="$(wc -w < "$file" | tr -d ' ')"
body_words="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{inside=0;next} !inside' "$file" | wc -w | tr -d ' ')"
echo
echo "  Length: $words words total, $body_words words of body (target ~1300)"
if [[ "$body_words" -lt 1000 ]]; then
  warn "body is short — under 1000 words is thin for a chapter"
elif [[ "$body_words" -gt 2000 ]]; then
  warn "body is long — over 2000 words, consider splitting or trimming"
fi

# If the author declared a target, flag a large gap between declared and actual.
declared_target="$(awk 'NR==1 && $0=="---"{inside=1;next} inside && $0=="---"{exit} inside && /^word_target:/{sub(/^word_target: */,"");gsub(/[^0-9]/,"");print;exit}' "$file")"
if [[ -n "$declared_target" && "$declared_target" -gt 0 ]]; then
  delta=$(( body_words - declared_target ))
  abs_delta=${delta#-}
  if [[ "$abs_delta" -gt 400 ]]; then
    warn "body is $body_words words but front matter declares word_target: $declared_target"
  fi
fi

# --- verdict ----------------------------------------------------------------
echo
if [[ "$errors" -gt 0 ]]; then
  printf '\033[31m  ✗ %d error(s), %d warning(s)\033[0m\n' "$errors" "$warns"
  exit 1
fi
printf '\033[32m  ✓ 0 errors, %d warning(s)\033[0m\n' "$warns"
