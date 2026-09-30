---
chapter: 4
chapter_file: ch04-where-different-people-actually-stand.md
researched: 2026-09-30
sources_kept: 7
sources_rejected: 12
---

# Research notes — Ch. 04: Where Different People Actually Stand

## Framing note

Ch. 03 closed by saying Part II would need data it did not have: research measuring whether judgement
is becoming more valuable. This chapter is where that data comes in. It is the diagnostic opener for
Part II — before Ch. 05–09 hand out advice by situation, the reader needs to know which situation
they are actually in.

The research changed the chapter twice, and both changes are the reason it exists:

1. **The exposure map is inverted from the popular story.** The most AI-exposed occupations are
   educated, well-paid, and disproportionately female. Thirty percent of workers show *zero* observed
   AI coverage, and they are cooks, mechanics, bartenders and lifeguards. If the chapter had been
   written from the news cycle, it would have had this backwards.
2. **There is a measurable variable that sorts people within the same job.** The Dallas Fed's
   *experience premium* — the pay gap between an entry-level and an experienced worker in the same
   occupation — predicts whether rising AI exposure pushes wages down or up. That turned a
   descriptive chapter into a diagnostic one.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `Anthropic Economic Index occupational exposure automation augmentation share of conversations by occupation 2026` | anysearch | yes | Found the March 2026 *observed exposure* paper. Opened it directly rather than relying on the coverage of it — that decision produced the chapter's first section. |
| 2 | `Brynjolfsson Li Raymond generative AI at work call center 15% productivity novice workers study` | anysearch | partly | Confirmed the well-known customer-support result (14–15% productivity, concentrated among novices). Not cited: it is the most-recycled study in this literature, and Ch. 05 will have more use for it than a diagnostic chapter does. |
| 3 | `Klarna AI assistant customer service work of 700 agents rehire human staff 2025 2026` | anysearch | yes | The Klarna reversal. Sourced through CX Dive rather than the vendor press release — see Rejected. |
| 4 | `freelance translator rates decline AI machine translation data 2025 2026 study` | anysearch | partly | Nine of ten results were agency marketing or unsourced "40–60% rate decline" claims. One academic study was reachable; the specific coefficient was not. |
| 5 | `Pew Research Center workers using AI at work share 2025 2026 survey` | anysearch | no | Every route to Pew itself failed (see Rejected). What came back instead were aggregator pages quoting Pew second-hand, which is exactly the pattern this repo's source rules exist to catch. |
| 6 | `which occupations wages rising AI exposure wage growth data 2026 study` | anysearch | yes | The productive line. Located the Dallas Fed analysis, which is the chapter's framework. |
| 7 | `Hui Reshef Zhou short-term effects generative AI online labor market Upwork freelancers decline` | anysearch | partly | The right paper for freelance-market effects. Abstract reachable, full text paywalled; not cited. See Rejected. |
| 8 | `Pew Research Center AI use at work survey October 2025 share of workers report` | anysearch | no | Service returned an error, then returned only second-hand citations of Pew. Abandoned the Pew figure rather than cite it at second hand. |
| 9 | `Klarna customer service AI announcement February 2024 700 agents OpenAI case study` | anysearch | yes | Located the vendor press release and the OpenAI case study — both unreachable. Corroborated the February 2024 figures inside the May 2025 reversal coverage instead. |
| 10 | `"Lost in translation" AI impact translators foreign language skills CEPR study authors employment growth 0.7 percentage points` | anysearch | partly | Confirmed the study and its authors; confirmed the 0.7-percentage-point coefficient exists in the CEPR column, which refused extraction. The Oxford Martin and INET Oxford records for the same paper were openable and confirm the direction of the finding. |

## Sources kept

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [Anthropic — Labor market impacts of AI: A new measure and early evidence](https://www.anthropic.com/research/labor-market-impacts) | primary | The *observed exposure* measure; 30% of workers with zero coverage; Computer Programmers at 75%, Data Entry Keyers at 67%; the exposed group earns 47% more and holds graduate degrees at nearly four times the rate; no systematic rise in unemployment for exposed workers; the 14% drop in the job-finding rate for 22–25-year-olds; BLS projections falling 0.6pp per 10pp of coverage | §1, §2 |
| 2 | [Stanford Digital Economy Lab — Canaries in the Coal Mine, August 2026 revision](https://digitaleconomy.stanford.edu/news/canariesaug26/) | primary | The 19% employment shortfall for 22–25-year-olds in exposed occupations; widening from 15% to 19%; the codified-vs-tacit mechanism; adjustment via reduced hiring, not separations | §1, §2 |
| 3 | [Federal Reserve Bank of Dallas — AI is simultaneously aiding and replacing workers](https://www.dallasfed.org/research/economics/2026/0224) | primary | Employment −1% in the most-exposed decile vs +2.5% nationally; computer systems design −5% with wages +16.7%; the experience premium (median 40%, <10% to >100%); the −0.28pp / +0.2pp wage-effect split | §2, §3 |
| 4 | [Anthropic Economic Index — Cadences, June 2026](https://www.anthropic.com/research/economic-index-june-2026-report) | primary | Over 35% of surveyed users expect AI to be able to do *most* of their work within a year; users who automate most heavily are the most optimistic; work conversations skew to higher-wage occupations outside working hours | §3 |
| 5 | [US Census Bureau — AI use at work, Household Trends and Outlook Pulse Survey](https://www.census.gov/library/stories/2026/08/ai-use-at-work.html) | primary (government survey) | 56% of workers used AI for at least one of 11 work tasks; 31% reported saving one to two hours; use rises steeply with education, and the tasks named are searching, writing, ideation and summarising | §1 |
| 6 | [INET Oxford / Frey & Llanos-Paredes — Lost in translation](https://www.inet.ox.ac.uk/publications/lost-in-translation-ais-impact-on-translators-and-foreign-language-skills) | primary (research record) | Areas with higher machine-translation adoption saw translator employment decline, and machine translation reduced demand for foreign-language skills generally | §1 |
| 7 | [CX Dive — Klarna changes its AI tune and again recruits humans for customer service](https://www.customerexperiencedive.com/news/klarna-reinvests-human-talent-customer-service-AI-chatbot/747586/) | secondary | Klarna's February 2024 figures (2.3M conversations, two-thirds of chats, the equivalent of 700 agents) and the CEO's 2025 admission that cost was "a too predominant evaluation factor" and quality suffered | §3 |

## Rejected

| Source | Why not used |
|--------|--------------|
| **Pew Research Center — AI in the workplace** | The single most-cited figure in this area ("roughly one in five US workers use AI on the job"), and I could not reach it. Two URL patterns returned 404; the search results that quote it are aggregator pages (jobcannon, a Substack) restating Pew's number. Rejected rather than cited second-hand. The chapter therefore does not make a cross-survey comparison between Pew's ~21% and the Census Bureau's 56% — that comparison is genuinely interesting and genuinely unsupported by anything I opened. |
| **WEF — *Artificial Intelligence and the Future of Entry-Level Work* (2026)** | Exactly on topic, and served as a PDF, which the extractor does not handle. Not cited. |
| **Economic Policy Institute — Class of 2026 and the young college graduate workforce** | Would have been a useful counterweight to the Canaries paper (it argues 85% of young graduates work in occupations with strong employment growth). Extraction failed on every attempt. Left as a lead for the next revision. |
| **PwC — 2026 AI Jobs Barometer** | Widely quoted (a 62% wage premium for AI skills, "professionalised" vs "democratised" jobs). Extraction failed, and it is a consultancy marketing its own index. Not cited — and the experience-premium story it gestures at is better supported by the Dallas Fed's actual regression. |
| **Hui, Reshef & Zhou — short-term effects of generative AI on an online labour market** | The right paper for the freelance question: freelancers in highly affected occupations saw reductions in both employment and earnings after ChatGPT, DALL-E 2 and Midjourney. I could open the abstract but not the full text (Organisation Science paywalled, SSRN abstract only, CESifo version is a PDF). Not cited. §1's freelance claim rests on the translation study instead, which I could open. |
| **Klarna's own press release (27 Feb 2024) and the OpenAI case study** | Both are primary sources for the "equivalent of 700 full-time agents" figure and both refused extraction — the Klarna page serves a JavaScript challenge, the OpenAI page returns 403. The figure is quoted inside the May 2025 coverage, which I could open, so the chapter uses that and flags the source tier. Recorded because the number is the one everybody repeats and almost nobody traces. |
| **Forbes — "Klarna reverses on AI"** | 403, ad-blocker wall. Superseded by CX Dive, which quotes the same Bloomberg interview at length. |
| **Bloomberg — "Klarna turns from AI to real-person customer service"** | The original interview. Paywalled, and cited by CX Dive rather than read. Same handling as the Bloomberg article in Ch. 01. |
| **"Rates for commodity translation have fallen 40–60% since 2020"** | Appears in several aggregator posts. No traceable measurement, no source, and it contradicts the more careful framing in the academic study. Dropped. |
| **Anthropic Economic Index interactive dashboard** | Opened. Renders as fragments of a chart interface through the extractor — occupation names, usage percentages and no methodology. The June 2026 report says the same things with provenance, so the dashboard is a bookmark rather than a citation. |
| **Various "AI job apocalypse" and "AI job boom" listicles** | The queries for wage and employment effects returned mostly listicles citing each other. Not usable as evidence in either direction, and the direction of the actual data is more interesting than either version. |
| **BLS occupational projections** | The chapter cites BLS projections *as reported by Anthropic*, which is honest about the chain of custody. Opening the projection tables directly would strengthen the claim; it is on the list for the next pass. |
| **Coface / OEM task-exposure study** | Used in Ch. 02. Deliberately not reused — one study should not carry two chapters, and this chapter has better data available. |

## Open questions

- **The chapter reuses the Canaries paper, which Ch. 02 also cites.** This is deliberate and narrow:
  Ch. 02 uses it to argue that a stale map produces wrong turns, and cites the −11%/+10% split and the
  codified/tacit mechanism. Ch. 04 uses it for the *position* argument and leads with the 19% shortfall
  and the finding that the adjustment runs through hiring rather than layoffs. The two chapters make
  different claims from the same source, but a reader going front to back will meet the paper twice.
  Worth revisiting if the overlap reads as repetition rather than reinforcement.
- **No causal claim is made anywhere, because the researchers refuse to make one.** The Stanford
  authors are explicit that their patterns are descriptive, that the gaps shrink when education is
  controlled for, and that the ADP sample may not generalise. The chapter says this out loud. It also
  means the chapter's diagnostic is justified structurally (the experience premium is a *measurement*
  of tacit knowledge, not a causal estimate of AI's effect) rather than by the employment data.
- **"Observed exposure" measures Claude usage, so it is a vendor's view.** Anthropic is candid that
  the measure is built partly from its own traffic and that Claude covers only 33% of Computer & Math
  tasks. A reader who does not use Claude is invisible to it. The chapter leans on the measure's
  *rankings* — which independently derived BLS projections weakly corroborate, at 0.6pp per 10pp of
  coverage — not on its absolute levels.
- **The 30% with zero coverage is a measurement floor, not a safety certificate.** Anthropic's own
  examples run in both directions: pruning trees and operating farm machinery on one side, representing
  clients in court on the other. The first is a capability gap; the second is Ch. 03's human-side limit.
  The chapter makes this distinction, but it is an interpretation, not something either source states.
- **The experience premium is a proxy and it will mislead at the edges.** It is computed from BLS
  modelled wage estimates, so it measures what *employers pay* for experience, not what experience
  actually contains. An occupation can have a high premium for reasons that have nothing to do with
  tacit knowledge — union scales, licensing, tenure rules. The chapter uses it as a question to ask,
  not a number to look up, and says so.
- **I did not find data on how many people are in each of the four positions.** The chapter's
  framework is a way to locate yourself; it is not a distribution. Nobody has published a count, and
  inventing one would be the exact failure this repo documents.

## Claims downgraded or dropped

- **"56% of American workers use AI on the job."** In the draft, as a headline. It is what the Census
  Bureau's March 2026 pulse survey found, but the question covers 11 tasks including "search for
  information" — a definition wide enough that it is not comparable to anything else in the chapter,
  and it sits oddly next to the same survey finding that only 24% of those users open AI daily. The
  chapter now reports the 56% *with* the definition attached and does not use it as a headline.
- **"Each percentage point of machine-translation adoption cut translator employment growth by 0.7
  points."** A precise and useful coefficient, visible in the search snippet of the CEPR column. I
  could not open the column itself (Cloudflare), and the two openable records of the same paper do not
  state the coefficient. The chapter states the direction of the finding and gives no number. This is
  the Ch. 01 failure mode being caught one step earlier.
- **"Freelancers in affected occupations lost income and work."** Supported by Hui, Reshef & Zhou, whose
  full text I could not open. Cut; the translation study carries the freelance point instead.
- **A "Pew says 21%, Census says 56%" discrepancy paragraph.** Would have been the most interesting
  paragraph in the chapter and rests entirely on second-hand citations of Pew. Cut.
- **"AI is coming for routine, low-skill work."** The framing the chapter was originally going to open
  with, and it is backwards. Ch. 02 corrected the same error at the level of tasks; Ch. 04 corrects it
  at the level of people.
