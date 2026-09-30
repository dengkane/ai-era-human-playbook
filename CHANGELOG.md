# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/),
and this project uses date-based versioning (YYYY.MM).

---

## [Unreleased]

### Added
- `WORKFLOW.md` — writing and publishing manual: git flow, script reference, troubleshooting
- `chapters/en/README.md` — chapter index with per-chapter status (`planned`/`draft`/`review`/`stable`)
- `appendix/README.md` — appendix index, refresh cadences, tool-matrix schema
- `templates/chapter-template.md` — front matter + required disclosure footer
- Chapters:
  - `chapters/en/ch01-ai-is-not-a-tool-its-a-species.md` (draft)
  - `chapters/en/ch02-youre-anxious-because-youre-using-an-old-map.md` (draft)
- Build tooling:
  - `scripts/check-chapter.sh` — lint a chapter file
  - `scripts/publish-chapter.sh` — branch → commit → push → PR for one chapter
  - `scripts/pr-create.sh` — open a PR through the GitHub REST API (idempotent)
  - `scripts/pr-merge.sh` — mark a draft PR ready, merge it, clean up branches
  - `scripts/github-token.sh` — resolve/diagnose the PAT
  - `scripts/setup-ssh.sh` / `scripts/git-ssh.sh` — SSH key and push transport
  - `scripts/doctor.sh` — diagnose repo, ssh, token in one shot
  - `scripts/gh.sh` — optional `gh` wrapper

### Changed
- `origin` switched from HTTPS to SSH
- Publishing split into two credentials by job: SSH for `git push`, PAT for opening
  pull requests. The token is never used for pushes, so a leaked token cannot rewrite
  history and a broken token cannot block a push.
- `.gitignore` — ignore `.git-ssh/` (private key), `.secrets/` (PAT), `.scratch/`

### Changed — writing rules
- **Chapter length settled at ~1300 words**, replacing the 2500 in the original template.
  Both published chapters landed at 1250–1400; the old target was never realistic.
  `check-chapter.sh` warns below 1000 and above 2000, and flags a gap over 400 words
  between the body and the declared `word_target`.
- **Chapter shape settled at two or three body sections named after their arguments**,
  replacing three anonymous `Body section N` placeholders. The comparison table and the
  taxonomy shape (`###` subsections repeating *model / why it's failing / the tell*) used
  by Ch. 02 are now documented in the template as first-class components.
- `templates/chapter-template.md` rewritten to encode the above with worked examples.
- Ch. 01 and Ch. 02 metadata corrected from `word_target: 2500` to `1300`.

### Notes
- Content is English-first. Translations derive from `chapters/en/`.
- One chapter per branch per PR; self-merged.
- Scripts avoid `jq` and `gh` as hard dependencies — `jq` is not installed here.

---

## [2026.09] - 2026-09-30

### Added
- Initial public release of repository structure
- README.md (English) and README_zh.md (Chinese)
- Book outline: 20 chapters across 5 parts
- CONTRIBUTING.md and dual-license setup (CC BY-NC-SA 4.0 + MIT)
- Changelog system

### Planned
- [x] Write Chapter 01: AI Is Not a Tool — It's a Species
- [x] Write Chapter 02: You're Anxious Because You're Using an Old Map
- [ ] Write Chapter 03: What AI Can Never Do Well
- [ ] Set up DeepSeek + Reasonix automation pipeline
- [ ] First intel collection script (RSS → summary)
- [ ] Gumroad / 面包多 product pages (Coming Soon)

---

## Version Legend

- **Major (YYYY.01):** Structural changes, new parts, significant rewrites
- **Minor (YYYY.MM):** New chapters, major updates to existing chapters
- **Patch (YYYY.MM.DD):** Typo fixes, link updates, small corrections, tool price changes

---

*Next update: 2026-10-07 (weekly patch cycle)*
