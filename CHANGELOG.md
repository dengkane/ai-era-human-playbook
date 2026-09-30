# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/),
and this project uses date-based versioning (YYYY.MM).

---

## [Unreleased]

### Current state

Four of the twenty-one chapters are written, each in English and Chinese. Everything is `draft`:
not reviewed, not fact-checked, not to be quoted.

| | `chapters/en/` (source) | `chapters/zh/` (translation) |
|---|---|---|
| Chapters | 01–04 | 01–04 |
| Body length | 2554 / 2812 / 2550 / 2899 words | 16,560 CJK characters, total |
| Research notes | 4 | 4 |
| `check-chapter.sh` | 0 errors, 0 warnings | 0 errors, 2 warnings¹ |

¹ Both warnings are `body is short`, and they are an artefact of counting whitespace-separated words
in a language that has no spaces — not a short chapter. See "Known limitation" below.

The remaining seventeen chapters (05–21) are outlined in [`README.md`](README.md) and
[`chapters/en/README.md`](chapters/en/README.md) but not written.

### Changed — Ch. 15–21 renumbered so the sequence reads in order

Ch. 21 sat after Ch. 14 in Part III, which made the table of contents read 10–14, 21, 15–20. That
placement was deliberate and documented, but the resulting order was confusing, so the tail was
renumbered in one pass to run straight through.

| Was | Now | Chapter |
|---|---|---|
| 21 | **15** | Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong) |
| 15 | **16** | Creativity When AI Can Generate Everything |
| 16 | **17** | Relationships & Community in a Digital World |
| 17 | **18** | Rebuilding Meaning |
| 18 | **19** | The Last Fortress of Being Human: Body, Nature, Art |
| 19 | **20** | The Courage to Slow Down |
| 20 | **21** | Designing the Life You Actually Want |

Part III is now **10–15**, Part IV **16–18**, Part V **19–21**. No title, scope or content changed —
only the numbers, and the filenames of chapters that do not exist yet.

**Nothing broke, because nothing had shipped.** Only Ch. 01–04 exist as files, and they cite nothing
above Ch. 09, so no filename, in-book cross-reference, or public link pointed at a moved number. The
one real cost was the repo's own rule: "chapter numbers are immutable" was stated in `AGENTS.md`,
`chapters/en/README.md`, `chapters/zh/README.md` and this file. All four now say numbers are stable
*once published*, with this renumbering named as the case that rule leaves room for.

### Added — Chinese edition (Ch. 01–04)

The book now has a Chinese edition at `chapters/zh/`, derived from `chapters/en/`. All four finished
chapters are translated, each with its research notes.

- `chapters/zh/ch01-ai-is-not-a-tool-its-a-species.md`,
  `chapters/zh/ch02-youre-anxious-because-youre-using-an-old-map.md`,
  `chapters/zh/ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md`,
  `chapters/zh/ch04-where-different-people-actually-stand.md` — the chapters, translated
- `chapters/zh/research/ch01-notes.md`, `chapters/zh/research/ch02-notes.md`,
  `chapters/zh/research/ch03-notes.md`, `chapters/zh/research/ch04-notes.md` — the research notes,
  translated
- `chapters/zh/README.md` — Chinese chapter index, translation status, and the conventions the
  translation follows
- `README_zh.md` — the 章节 links now point at `chapters/zh/`, and the repo-layout section lists it

**Filenames stay English, and so do four other things.** `check-chapter.sh` validates
`ch<NN>-<slug>.md` against `[a-z0-9-]`, so a Chinese slug would fail outright — and the numbers live in
cross-language links. It also greps for the four footer markers verbatim, and the `<!-- verified -->`
markers exist to record that a source was opened: rewriting one, or its URL, would forge that record.
So the slugs, the footer, the markers and their URLs, and the search queries in the notes are all left
untranslated. Everything a reader reads is Chinese.

**Known limitation, deliberately not fixed.** `check-chapter.sh` counts words by whitespace, and
Chinese has none, so a full chapter reads as a few hundred "words" and trips the `body is short`
warning. The script was left alone: the warning is a measurement artefact, not a short chapter, and
editing shared tooling to satisfy one edition is how the English path breaks.

### Added
- `WORKFLOW.md` — writing and publishing manual: git flow, script reference, troubleshooting
- `chapters/en/README.md` — chapter index with per-chapter status (`planned`/`draft`/`review`/`stable`)
- `appendix/README.md` — appendix index, refresh cadences, tool-matrix schema
- `templates/chapter-template.md` — front matter + required disclosure footer
- Chapters:
  - `chapters/en/ch01-ai-is-not-a-tool-its-a-species.md` (draft)
  - `chapters/en/ch02-youre-anxious-because-youre-using-an-old-map.md` (draft)
  - `chapters/en/ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md` (draft)
  - `chapters/en/ch04-where-different-people-actually-stand.md` (draft)
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

### Added — Ch. 03, and the first time research killed a planned argument

`ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md` is written. The chapter is notable less
for its content than for what producing it demonstrated about the process.

The draft was going to be built on the strongest evidence available that AI is bad at something: a
METR randomised controlled trial — 16 experienced developers, 246 real tasks, on their own
repositories — which found AI made them **19% slower**. Controlled, expert, real-world. It would have
made a satisfying centrepiece.

Opening the primary source killed it. METR's own page now carries:

> ⚠️ These results are out of date … We believe these historical results no longer reflect the current
> impact of AI models on open-source developer productivity.

The revision estimates an **18% speedup** on the same population. More importantly, it explains that
the *measurement* stopped working: 30–50% of participants admitted withholding tasks, recruitment
became impossible because developers would not work without AI, and some found time-on-task
unmeasurable while running agents in parallel.

So the chapter's argument inverted. It no longer claims to know where the limits are. It argues you
**cannot** establish a permanent limit from evidence, however good, and offers a test instead: ask
whether a limit would disappear because a model improved (machine-side, don't bet on it) or because
people agreed to something (human-side). Then it applies that test to three candidates and ranks them,
naming embodiment as the one it would bet on least.

- 2550 words, 7 sourced claims, 6 sources, 0 lint errors.
- Research notes record the rejected material, including the arXiv continual-learning paper that was
  excluded by the chapter's own test — a limit that looks structural but is machine-side, which is
  exactly the mistake the chapter argues against.

### Added — Ch. 04, and an exposure map that turned out upside down

`ch04-where-different-people-actually-stand.md` is written, as the diagnostic opener of Part II.

Ch. 03 closed by admitting it had no data on whether judgement is becoming more valuable. This is that
data. It also answers a question the earlier chapters kept deferring: *which* readers are actually
exposed — and the answer is not the one the news cycle gives.

- **The exposure map is inverted.** The most AI-exposed occupation is **computer programmer** (75% of
  its task content covered by observed AI use), then customer service representative, then data entry
  keyer at 67%. The most-exposed quartile earns **47% more** than the 30% of workers with no measured
  exposure at all, and is far better educated. Exposure concentrates on cognitive, educated, well-paid
  work — not on routine low-skill work, which is the framing the chapter was originally going to open
  with.
- **The sorting variable is the experience premium** — the pay gap between an entry-level and an
  experienced worker in the same occupation, from BLS wage estimates. It predicts the *direction* of AI's
  effect on wages: −0.28 percentage points for occupations with no premium, roughly zero at the median
  (40%), **+0.2** at the 90th percentile. That is the mechanism behind "fewer jobs, faster-rising pay"
  in exposed sectors, and it is what makes this a diagnostic rather than a description.
- **Four positions**, each with a *what it is / what the data shows / the tell* shape: the task has
  already moved; the door closed behind you (the hiring-freeze position, created by the 19% employment
  shortfall for 22–25-year-olds that shows up as no layoffs at all); the premium is paying you; and off
  the map entirely, where a blank has two very different meanings.
- 2899 words, 10 sourced claims, 7 sources, 0 lint errors, 0 warnings.

Research notes record the material that did **not** survive: the Pew AI-at-work figure (unreachable at
every URL tried, and only quotable second-hand through aggregators), the WEF entry-level-work report,
the EPI counter-argument, PwC's AI Jobs Barometer, and the Hui/Reshef/Zhou freelance study — paywalled
at the full text, so §1's freelance claim rests on the translation study instead. A precise coefficient
(0.7 percentage points of translator employment growth per point of machine-translation adoption) was
visible in a search snippet and left out, because neither openable record of the paper states it. That
is the Ch. 01 failure mode caught one step earlier.

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
  what it explicitly does not, for the independent-work cluster, for 16-vs-19, and for 18-vs-21.
- **Ch. 15 added:** *Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong).* The book
  sells a tool matrix in the paid tier but never taught readers to evaluate a tool independently —
  which contradicts Ch. 01's own advice to invest in judgement rather than interfaces. Ch. 15 closes
  that gap. (Added as Ch. 21, then renumbered — see "Ch. 15–21 renumbered" above.)
- Part II's title dropped "(by Persona)", since it now opens with a diagnostic chapter.
- Book total updated from ~50,000 to ~52,000 words.

### Notes
- Content is English-first. Translations derive from `chapters/en/`.
- One chapter per branch per PR; self-merged.
- Scripts avoid `jq` and `gh` as hard dependencies — `jq` is not installed here.
- **Chapter numbers are stable once published.** A chapter that has shipped changes its title and its
  placement, never its number. The number of an *unpublished* chapter can still change — Ch. 15–21 were
  renumbered as one pass. The numbers are in filenames, in cross-references, and in public links.

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
- [x] Write Chapter 03: What AI Can Never Do Well
- [x] Write Chapter 04: Where Different People Actually Stand
- [ ] Write Chapters 05–21
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
