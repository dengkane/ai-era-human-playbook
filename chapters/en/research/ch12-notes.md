---
chapter: 12
chapter_file: ch12-one-person-business-playbook.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 14
---

# Research notes — Ch. 12: One-Person Business Playbook

## Framing note

Ch. 06 argued that small teams are newly viable. This chapter is the operating system for a team of
one: what you sell, what you charge, how you deliver. Ch. 14 handles whether to leave employment; the
argument for smallness is Ch. 06.

The research did the same thing to this chapter that it did to Ch. 06, and it is worth naming up front
because it is why the chapter does not read like a business book. **The official numbers for
solo businesses are unromantic.** The Census Bureau counts 29.8 million nonemployer businesses with
$1.7 trillion in receipts — which divides to roughly **$57,000 per business per year**, before expenses
and before tax. Any chapter that opens with the top decile's success stories is not describing the
population.

The second thing the research fixed: the widely-repeated claim that freelancers who use "value-based
pricing" out-earn hourly billers by a large margin is **not traceable to any study I could open**. It
appears on consulting-firm blogs with a specific-looking pair of numbers and no primary source. So the
chapter argues the mechanism — the reason hourly billing caps you — without importing a statistic that
does not exist.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `one person business solopreneur revenue data survey median income 2026` | anysearch | no | Every result is an aggregator quoting every other aggregator. The "$294,000 first-year revenue" figure traces to a platform's own user base and is not a population statistic. Rejected. |
| 2 | `value-based pricing professional services evidence study outcome pricing consultants` | anysearch | no | Consulting firms selling pricing advice. The McKinsey "quarter of fees from outcomes" line is real and reported by the FT, but the FT is paywalled and no accessible version carries the underlying detail. |
| 3 | `productized service pricing freelancer rates data 2026` | anysearch | partly | Rate survey pages, all self-reported and unaudited, with wildly different numbers. One productised-vs-hourly worked example is arithmetically sound but is one blog's example, not a finding. |
| 4 | `Census Bureau nonemployer statistics receipts distribution sole proprietorship data` | anysearch | yes | The productive query. Found the NES series, which is the real baseline. |
| 5 | `IRS sole proprietorship Schedule C net income distribution statistics data book` | anysearch | partly | The IRS SOI tables exist and include exactly the size distribution this chapter wants — but they are `.xls` files, which this tool cannot read. Recorded as the best next step for a revision. |
| 6 | `Fed small business credit survey self-employed sole proprietor 2026 report` | anysearch | yes | The Fed's SBCS, 6,525 employer firms, with a whole section on AI use that no other source in this chapter provides. |
| 7 | `outcome based pricing consulting McKinsey percentage of fees evidence data` | anysearch | no | Restatements of the same FT report, none carrying the method. |
| 8 | `freelancer hourly billing vs fixed price client preference study evidence` | anysearch | no | One 144-respondent self-selected survey and a lot of opinion. The often-quoted "$96k vs $58k" value-pricing gap has no visible origin. |
| 9 | `small business failure rate BLS survival statistics first year data` | anysearch | yes | Led to the BLS Business Employment Dynamics survival tables, which are the actual official measurement. |
| 10 | `Upwork Freelance Forward 2026 report data findings` | anysearch | no | Upwork's own research, and both the investor-relations and research URLs return 403 to this tool. Their "38% of skilled knowledge workers freelance" figure is widely quoted and could not be verified here. |

Also fetched directly: the BLS survival table (national, all industries), the Census NES program page
and its 2024 gig-economy release, the Census nonemployer demographics press release, and the Federal
Reserve Banks' 2026 SBCS report on employer firms.

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | [Census Bureau — Nonemployer Statistics by Demographics (May 2025)](https://www.census.gov/newsroom/press-releases/2025/nonemployer-business-characteristics.html) | primary | 29.8 million nonemployer businesses with $1.7 trillion in receipts in 2022 — the baseline the chapter's arithmetic runs on | yes |
| 2 | [Census Bureau — Nonemployer Statistics programme page](https://www.census.gov/programs-surveys/nonemployer-statistics.html) | primary | The definition (no paid employees, receipts of $1,000+) and that the series is annual and current to 2024 | yes |
| 3 | [BLS — Business Employment Dynamics, Establishment Age and Survival](https://www.bls.gov/bdm/bdmage.htm) and its [Table 7](https://www.bls.gov/bdm/us_age_naics_00_table7.txt) | primary | Survival by opening year: of the establishments opened in the year to March 2024, 77.9% were still there a year later; of the March 2022 cohort, 56.3% survived three years | yes |
| 4 | [Federal Reserve Banks — 2026 Report on Employer Firms, Small Business Credit Survey](https://www.fedsmallbusiness.org/reports/survey/2026/2026-report-on-employer-firms) | primary | 46% of small firms use AI, 15% plan to, a third have no plans; top uses writing/marketing (83%), productivity (61%), analysis (51%); top challenges accuracy (46%) and adapting tools (43%); 71% report a productivity increase | yes |
| 5 | [ZipRecruiter — More Jobs, Higher Bar: The 2026 AI Employer Report](https://www.ziprecruiter-research.org/economic-insights-research/ai-employer-report-2026) | primary | What buyers now say they are paying for: 74% call AI skills an advantage or a requirement; 65% rank critical thinking higher than a year ago; 31% raised experience requirements for entry-level roles | yes |

## Rejected

| Source | Why not used |
|--------|--------------|
| Every "solopreneur statistics 2026" aggregator | Circular. They quote each other, and the impressive figures (e.g. ~$294,000 average first-year revenue on one platform) describe that platform's users, not solo businesses. |
| The "$96,000 vs $58,000 for value-based vs hourly pricing" claim | Appears on multiple consultancy blogs with a confident margin and no source of any kind. Exactly the failure mode `chapters/en/README.md` names. |
| McKinsey's outcome-based pricing share (as reported by the FT and Business Insider) | Real and interesting, and the FT is paywalled. Contributes nothing to a reader deciding what to charge, and would have been an unopenable citation. |
| Upwork's Future Workforce Index 2026 | Upwork's own research, both URLs 403. Its headline figures are quoted everywhere and could not be checked here. |
| IRS SOI sole-proprietorship size tables | The right data, in `.xls` files this tool cannot read. Recorded as the first thing a revision should open. |
| Vendor guides to productised services/pricing | Marketing for a course or a platform. |
| The 144-respondent freelance pricing poll | Self-selected, no methodology, and its "fixed price is more popular" result is a preference, not an outcome. |
| "20% of small businesses fail in year one" listicles | They restate BLS survival data, sometimes incorrectly. Cited the BLS table directly instead. |
| Reddit threads on freelancer rates | Anecdote at scale. |
| SBA "small business" statistics covering firms up to 500 employees | The wrong population. This chapter is about businesses with no employees at all. |
| Platform "average freelancer earnings" pages | Usually gross billings on that platform for active users only, which flatters every number. |
| AI-will-replace-agencies think-pieces | Opinion, and out of scope: this chapter is an operating manual, not a forecast. |
| Course and cohort sales pages | The population of people selling advice about solo business is not evidence about solo business. |

## Open questions

- **What the actual distribution looks like.** The chapter uses the arithmetic mean ($1.7T / 29.8M
  ≈ $57,000) and says plainly that a mean over a skewed distribution is weak evidence. The size
  distribution exists in the IRS SOI tables and could not be read here — that is the single biggest
  gap in the chapter.
- **Whether nonemployer businesses are a destination or a waiting room.** The Census definition
  includes anyone with $1,000+ in receipts, which sweeps in side work and gig income. Nobody in the
  sources separates "a business" from "a job I do on the side", and the chapter hedges accordingly.
- **What the survival rate means for businesses with no employees.** The BLS tables count
  *establishments*, which are employer units. A one-person business has no establishment to close in
  the statistical sense, so the chapter uses the number as a floor on how unforgiving this is rather
  than as a rate that applies to its reader.
- **Whether any pricing model measurably beats another.** No study found. The chapter argues the
  mechanism and explicitly refuses to claim a measured advantage.

## Claims downgraded or dropped

- **"Freelancers who charge by value earn 66% more."** Dropped. No origin. The chapter makes the
  structural argument instead and says no study was found.
- **"Most solopreneurs earn six figures."** Dropped. Both the mean (~$57k) and the skew point the
  other way, and the "six figures" claim traces to platform user bases.
- **"One-person businesses are booming because of AI."** Softened. The Fed data show smaller firms
  adopting AI less than large ones, which was the central finding of Ch. 06, and this chapter keeps
  the two consistent rather than telling a boom story.
- **A specific recommended price, rate or retainer.** Dropped. Out of scope, and any number would be
  stale within a year — the same reasoning Ch. 15 uses for tool recommendations.
- **"Productise everything."** Softened to a test: productise what a stranger can buy without a
  conversation. The chapter says plainly where it fails, which is bespoke work with high variance.
