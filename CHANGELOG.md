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
- `chapters/en/ch01-ai-is-not-a-tool-its-a-species.md` (draft)
- Build tooling: `scripts/check-chapter.sh`, `scripts/publish-chapter.sh`, `scripts/setup-ssh.sh`,
  `scripts/git-ssh.sh`, `scripts/install-gh.sh`, `scripts/gh.sh`

### Changed
- `origin` switched from HTTPS to SSH
- `.gitignore` — ignore `.git-ssh/` (private key), `.tools/` (vendored binaries), `.scratch/`

### Notes
- Content is English-first. Translations derive from `chapters/en/`.
- One chapter per branch per PR; self-merged.

---

## [2026.09] - 2026-09-30

### Added
- Initial public release of repository structure
- README.md (English) and README_zh.md (Chinese)
- Book outline: 20 chapters across 5 parts
- CONTRIBUTING.md and dual-license setup (CC BY-NC-SA 4.0 + MIT)
- Changelog system

### Planned
- [ ] Write Chapter 01: AI Is Not a Tool — It's a Species
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
