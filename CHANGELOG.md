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
- **Chapter length set at ~2500 words**, the low end of the 2,500–5,000 range
  non-fiction chapters normally run. Twenty chapters at 2500 is a 50,000-word book;
  at the 1300 briefly tried earlier it would have been 26,000, which is an essay
  collection rather than something that can carry a price.
  `check-chapter.sh` warns below 2000 and above 3500, and flags a gap over 400 words
  between the body and the declared `word_target`.
- **Chapter shape settled at two or three body sections of 700–900 words named after
  their arguments**, replacing three anonymous `Body section N` placeholders. The
  comparison table and the taxonomy shape (`###` subsections repeating
  *model / why it's failing / the tell*) used by Ch. 02 are now documented in the
  template as first-class components.
- `templates/chapter-template.md` rewritten to encode the above with worked examples.

  An earlier pass in this same release had derived the target from the two published
  drafts (1250 and 1384 words) rather than from the genre. That was backwards — the
  drafts were short because they were drafted short, so the reasoning was circular.
  Corrected against genre norms before release.
- **Ch. 01 and Ch. 02 rewritten to the new length**: 1238 → 2404 and 1384 → 2514 words.
  Both gained substantive sections rather than padding:
  - Ch. 01: a treatment of the three ways people avoid the question ("it's a
    revolution" / "it's superintelligence" / "I'll just not use it"), a sourced
    Stack Overflow figure showing usage rising while sentiment falls, and an expanded
    account of what "under management" means for dependency risk.
  - Ch. 02: the explanation of anxiety its title promised but its body never delivered,
    a section on why stale maps stay persuasive, a concrete example per map, and two
    further caveats (a new map is not a correct map; the payoff is slow and invisible).

### Added — source discipline
- Every concrete, checkable claim now carries a marker:

  ```markdown
  <!-- verified YYYY-MM-DD — source: <URL> -->   a claim that was actually checked
  <!-- unverified -->                            a claim that has not been
  ```

  This replaces `<!-- Last verified: DATE -->`, which asserted a date with no source and no
  way to tell "I checked this" from "this sounded right".
- `check-chapter.sh` now **errors** on a `verified` marker with no `source:`, and on any
  `unverified` claim once `status` is `review` or `stable` — unsourced claims are a visible
  temporary state instead of a silently plausible sentence.
- Rationale, and the three failure modes that prompted this, written up in
  `chapters/en/README.md#factual-claims`.

### Added — research notes

Every chapter now has a research file at `chapters/en/research/ch<NN>-notes.md`, committed alongside
it. It records the queries actually run, the sources kept, and — the part with real value — **what was
found and rejected, and why**.

- **Research now happens before drafting**, as step 1 of `WORKFLOW.md`. A chapter written first and
  sourced afterwards produces claims shaped by the prose; the research then becomes a hunt for support
  rather than a check on what is true.
- **At least 5 independent sources per chapter.** Independent means separate origins, not one report
  reprinted five times.
- **Every source cited in a chapter must appear in its notes**, and the notes' own `sources_kept` must
  not understate what the chapter cites. `check-chapter.sh` errors on both. The check runs one way on
  purpose: notes may legitimately record sources that were read and rejected.
- Source tiers are defined — primary (original data, official reports, statistics, papers, first-hand
  accounts, the vendor's own pricing page) can carry a claim alone; secondary reporting is a lead but
  must not be the only support for a number.
- New: `templates/research-notes-template.md`, `chapters/en/research/README.md`.

### Fixed — factual claims in published chapters
- **Ch. 01** claimed the prompt-engineer title had "largely dissolved" and put the 2023 salary
  at "above $300,000 at some AI startups". Checked: the standalone title declined roughly 30%
  from its 2024 peak and still exists, and the posting was Anthropic's specifically, not a
  general market rate. Rewritten and sourced.
- **Ch. 01, second pass.** Auditing the rewritten chapter against the new rule caught a
  violation the first pass introduced: it cited Bloomberg's "$335,000" for that posting without
  the source ever being opened (it sits behind a paywall). Opening accessible coverage instead
  showed the reporting disagrees — Fortune: $175,000–$335,000; Business Insider: $280,000–$375,000.
  The chapter now states the range and cites a source a reader can actually check. This is the
  third failure mode documented in `chapters/en/README.md#factual-claims`.
- **Ch. 02** claimed junior hiring "fell sharply from 2023 through 2025 **as** AI coding
  assistants moved from autocomplete to something closer to a colleague" — unsourced, and
  over-attributed. Sources are explicit that AI adoption and the post-ZIRP correction cannot be
  separated cleanly.
- **Ch. 02, third pass — a source found that contradicted the chapter.** The rewrite above rested on
  the widely-shared "6.1% unemployment for recent CS graduates" figure. Research for this pass
  surfaced a published analysis showing that estimate carries a 95% confidence interval of roughly
  4–11%, and that the share of recent CS graduates holding any job was 90% in 2023 — above the entire
  pre-pandemic decade. The chapter now presents the figure *and* why it cannot carry the weight put on
  it, then gives the better-measured version: employment for 22–25-year-olds in the most AI-exposed
  occupations fell about 11% between late 2022 and mid-2026 while the least-exposed grew about 10%
  (Stanford Digital Economy Lab, revised Aug 2026).
- **Ch. 02, Map 1 — mechanism corrected.** The chapter said AI automates the *simplest* tasks. Task-level
  research contradicts this: exposure concentrates on cognitive, non-routine work (engineering, finance,
  law, administration), while face-to-face and manual work stayed under 10% of work content. The
  metaphor survived; the explanation was wrong.

### Changed — book structure

The outline was reviewed for structural problems, not just wording. Five changes, all of them
avoiding a renumbering: **no chapter number, filename, or published link changed.**

- **Part II mixed two classification axes.** Ch. 05–07 sorted by *how you earn* (employee /
  entrepreneur / freelancer), Ch. 08–09 by *life stage* (student / mid-career switcher). A 45-year-old
  employee weighing a change had no way to tell which chapter was his. The five now sit in two named
  groups — "already on a path" and "choosing a path" — because they answer two different questions.
- **Ch. 04 moved into Part II** as its diagnostic opener. "Where Different People Actually Stand" is
  the setup for a part about different people; it was sitting at the end of a part about cognition.
  Part I is now a clean three-chapter argument.
- **Ch. 14 moved into Part III.** "From Employed to Self-Employed" is the payoff of the career arc in
  Ch. 05–12, but it sat in Part IV, separated from that arc by Ch. 13. The reader finished the career
  material, detoured through creativity, and came back to careers.
- **Ch. 06 and Ch. 12 were effectively the same title.** "Building a One-Person Company" vs. "One-Person
  Business Playbook" — four chapters (06, 07, 12, 14) sat in the same topical space with no stated
  division of labour. Ch. 06 is retitled *Why Small Beats Big Now* (the strategic why), leaving Ch. 12
  as the operating playbook. A `## Chapter boundaries` section now states what each chapter owns and
  what it explicitly does not, for the independent-work cluster, for 15-vs-18, and for 17-vs-20.
- **Ch. 21 added:** *Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong).* The book
  sells a tool matrix in the paid tier but never taught readers to evaluate a tool independently —
  which contradicts Ch. 01's own advice to invest in judgement rather than interfaces. Ch. 21 closes
  that gap and is numbered 21 to leave Ch. 01–20 untouched.
- Part II's title dropped "(by Persona)", since it now opens with a diagnostic chapter.
- Book total updated from ~50,000 to ~52,000 words.

### Notes
- Content is English-first. Translations derive from `chapters/en/`.
- One chapter per branch per PR; self-merged.
- Scripts avoid `jq` and `gh` as hard dependencies — `jq` is not installed here.
- **Chapter numbers are immutable.** A chapter that changes scope changes its title and its placement,
  never its number — the numbers are in filenames, in cross-references, and in public links.

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
