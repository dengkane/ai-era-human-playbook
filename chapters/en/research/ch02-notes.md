---
chapter: 2
chapter_file: ch02-youre-anxious-because-youre-using-an-old-map.md
researched: 2026-09-30
sources_kept: 5
sources_rejected: 9
---

# Research notes — Ch. 02: You're Anxious Because You're Using an Old Map

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `entry level software engineer junior developer hiring decline data 2023 2024 2025 US new grad jobs` | anysearch | yes | Original lead. Also surfaced the widely-cited 6.1% figure that later turned out to be unreliable. |
| 2 | `NY Fed labor market recent college graduates unemployment rate computer science data 2025` | anysearch | yes | Found the primary dataset behind the 6.1% figure. |
| 3 | `research study AI automation entry level jobs tasks exposed academic paper task-level exposure` | anysearch | yes | Led to both the Coface/OEM task study and the Stanford Autor work. |
| 4 | `skill obsolescence half-life technical skills depreciation research study how fast skills become outdated` | anysearch | partly | The academic papers (Wiley, IZA) were all paywalled or PDF-only. What came back instead was the widely-cited "5-year half-life" figure — and tracing it was more useful than the papers would have been. |
| 5 | `technology skills half-life obsolescence report engineers skill decay years data` | anysearch | no | Nine of ten results were vendor blogs or listicles recycling the same unsourced number. |
| 6 | `World Economic Forum Future of Jobs Report 2025 skills disruption reskilling percentage employers` | anysearch | no | Found the report, but weforum.org and every mirror refused extraction. Left as a known lead. |
| 7 | `Brynjolfsson canaries in the coal mine AI entry level employment young workers study` | anysearch | yes | The breakthrough. Located the Stanford Digital Economy Lab revision, which has better data than anything the earlier queries produced. |

## Sources kept

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [Stanford Digital Economy Lab — Canaries in the Coal Mine, revised Aug 2026](https://digitaleconomy.stanford.edu/news/canariesaug26/) | primary | 22–25-year-olds in the most AI-exposed occupations: −11% employment, vs +10% for least-exposed; gap widened 15% → 19%; codified vs tacit knowledge mechanism | "Why this matters now" |
| 2 | [NY Fed — The Labor Market for Recent College Graduates](https://www.newyorkfed.org/research/college-labor-market) | primary | The 6.1% figure as published, and its provenance | "Why this matters now" |
| 3 | [Economic Innovation Group — the viral chart is misleading](https://agglomerations.eig.org/p/a-viral-chart-on-recent-graduate) | secondary (analytical) | Confidence interval 4–11% on the 6.1% estimate; employment-to-population ratio of 90% | "Why this matters now" |
| 4 | [Coface / Observatory of Threatened and Emerging Jobs — task-level exposure mapping](https://www.coface.us/news-economy-and-business-insights/new-study-reveals-which-jobs-are-most-vulnerable-to-ai) | primary (methodology) | 923 occupations broken into tasks; exposure concentrated on cognitive, non-routine work; face-to-face and manual work below 10% | "Map 1: The career ladder" |
| 5 | [Stanford HAI — David Autor on the real impact of automation](https://hai.stanford.edu/news/assessing-the-real-impact-of-automation-on-jobs) | primary | Exposure is not job loss; occupations losing routine tasks and gaining expert ones become more specialised and better paid | "The honest caveats" |

## Rejected

| Source | Why not used |
|--------|--------------|
| **softwareseni.com — "What the Data Actually Shows About AI and Junior Developer Employment Decline"** | This was the chapter's only source before this pass, and it is what introduced the 6.1% figure **without its confidence interval**. It is a secondary account of NY Fed data that repeats the number and omits the reason it cannot be used at that precision. Replaced with the primary dataset plus the analysis that explains the problem. This is the clearest case yet of a source that is accurate and still misleading. |
| **Emeritus — "The Half-life of Skills"** | Opened. Cites "World Economic Forum research in 2017" for the five-year half-life, but links to nothing, and then extrapolates from it to a "18.5 million job shortfall" using its own arithmetic. It is a course provider's marketing page. Recorded because the *pattern* is instructive: an unsourced number, repeated for a decade, accumulating authority it never had. |
| **World Economic Forum — Future of Jobs Report 2025** | The right source for a skills-change claim, and I would have preferred it. weforum.org, its PDF host, and every summary page tried all refused extraction. Not cited because it could not be opened. |
| **BLS — AI exposure categories** | Government primary source, exactly on topic. Refused extraction. |
| **St. Louis Fed — recent college grads bear the brunt** | Same problem. |
| **Wiley / IZA — "Different degrees of skill obsolescence across hard and soft skills"** | The most relevant academic work found on skill depreciation, and it directly supports Map 2's claim that skills depreciate at different rates. Paywalled at Wiley; the IZA version is PDF-only, which the extractor does not support. Map 2 therefore rests on reasoning rather than a citation, and says so. |
| **CIO — "The incredible shrinking shelf life of IT skills"** | Refused extraction. Quoted an executive saying "today it can be less than two years," which is a claim from an interview, not a measurement. |
| **skillflow.dev — junior developer job market statistics** | Second appearance of this trap (it also showed up during Ch. 01 research). The snippet advertises 20+ data points; the URL returns a LeetCode-style practice platform. |
| **Reddit / LinkedIn / Medium commentary** | Several posts quoted the Canaries numbers. Went to the Stanford publication instead. One Medium post did correctly summarise the ~13% figure from the *first* version of the paper — a useful signal that a revision existed. |

## Open questions

- **Causation is genuinely unsettled, and the chapter says so.** The Stanford authors are explicit that
  their patterns are descriptive, not causal, and that the gaps shrink when education is controlled
  for. They also note the ADP sample may not generalise. The chapter reports the finding without
  claiming it settles the cause.
- **Map 2 (the skill stack) has no citation.** The claim that skills are being repriced faster than
  they can be learned is supported by the codified/tacit mechanism in source 1, and by the failure of
  the "half-life" literature to produce a usable number. It is not supported by a study measuring
  repricing rates. If the IZA paper becomes accessible, this is where it belongs.
- **Map 3 (the credential) has no citation either.** The argument is structural — credentials encode
  what was expensive to verify, and verification got cheap — but I did not find research measuring
  credential devaluation. Flagged rather than dressed up.
- **Should the 6.1% episode be in the chapter at all?** It is a detour, and it costs words. Kept
  because the detour *is* the chapter's argument: the popular proof of "the map broke" is itself a bad
  map, and watching that happen is more useful than being told it happens.

## Claims downgraded or dropped

- **"By 2025 the unemployment rate for computer science graduates had climbed to 6.1%"** — replaced.
  Presented as a widely-shared figure and then qualified, rather than stated as fact. The chapter now
  says plainly that the number cannot carry the weight put on it.
- **"Junior developer hiring in the US narrowed sharply"** — replaced with the measured version
  (−11% / +10% by exposure quintile) from the Stanford revision.
- **"AI coding assistants are one factor; the end of the zero-interest era is another"** — dropped as
  a standalone hedging sentence. The Stanford revision tests those alternative explanations directly
  and reports which survive, which is a better answer than my guess.
- **"AI is very good at rungs … whose bottom rungs can be automated cheaply"** — corrected. The task
  research (source 4) contradicts it: this wave hits cognitive, non-routine work rather than the
  simplest tasks. The metaphor survived; the mechanism was wrong.
