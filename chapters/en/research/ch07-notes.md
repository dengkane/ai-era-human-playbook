---
chapter: 7
chapter_file: ch07-the-freelancer-from-selling-skills-to-selling-personality.md
researched: 2026-09-30
sources_kept: 13
sources_rejected: 12
---

# Research notes — Ch. 07: The Freelancer — From Selling Skills to Selling Personality

## Framing note

Ch. 05 covered people inside an organisation and Ch. 06 covered people who own something. This chapter
covers the third way of earning: selling yourself into other people's problems. The index sets its
scope as *how the unit of sale changes* — not the pricing mechanics (Ch. 12), not the decision to go
independent (Ch. 14), and not how to judge the tools (Ch. 15). The chapter is allowed to explain a
mechanism and hand over a test; it is not allowed to name a rate.

**The order this chapter was built in is the one thing in these notes that a reader should hold
against it.** Every other chapter in this book had its research notes written before drafting, and
this one did not. The chapter existed first, with its sources living in `<!-- verified -->` markers,
and this file was reconstructed afterwards by opening all thirteen sources again to confirm that each
one says what the chapter claims. That is a weaker guarantee than the other six chapters carry, and
the difference is worth stating rather than smoothing over:

- **Reconstruction can confirm a claim; it cannot show a claim was shaped by evidence.** In
  research-first chapters, a source that failed to load removed the claim before it reached the
  prose. Here the claim was already written, and the failure mode that removes is the one the notes
  are supposed to catch.
- **The queries in the search trail below are partly reconstructed.** The order is recoverable from
  the markers; the dead ends are only the ones this session actually hit. Ch. 05 and Ch. 06 record
  twelve and fourteen queries respectively of real searching. This chapter records fewer, because
  there was less searching to record.
- **What the reconstruction did produce is the "Rejected" section**, and it is not empty — the live
  searches run during the reconstruction turned up three papers directly on point that the chapter had
  not seen. That is recorded below as a lead, not as support.

Two findings shaped the chapter as it stands, and both came from reading the sources next to each
other rather than one at a time:

1. **The platform numbers describe a reprice, not a collapse.** Every marketplace in this chapter —
   Fiverr, Upwork, Freelancer.com — reports the same three-part pattern in the same quarters: fewer
   buyers, fewer and lower-value contracts, higher revenue per remaining buyer. Read separately they
   are three struggling companies. Read together they are one market changing its unit of sale, which
   is the chapter's argument.
2. **Reputation was the thing I expected to be the moat, and it is the thing the evidence most
   directly cuts against.** The intuitive answer to "what do I still have that a machine doesn't" is
   your track record. Hui, Reshef and Zhou tested exactly that question and could not confirm it.
   That relocating is what turned the chapter from "build your brand" into "be answerable for an
   outcome", and it is the reason §2 exists rather than being folded into §3.

## Reconstruction note

All thirteen sources were opened in full during the reconstruction, on 2026-09-30. What that involved:

| Source | How it was opened | Result |
|--------|-------------------|--------|
| Fiverr SEC filing | `curl` with a declared User-Agent; the first attempt without one returned HTTP 403 | 707 KB, opened; every figure in the chapter's opening confirmed in the release body |
| Upwork results and Future Workforce Index | `curl`, HTTP 200 | Both opened; all figures confirmed |
| Fiverr Q2 coverage (Calcalist) | `curl`, HTTP 200 | Opened; the 34% / 25% category splits exist only here, not in Fiverr's own release |
| Freelancer.com FY25 annual report | `curl` for the PDF (8 MB), then `pypdf` to extract text | 63 pages extracted; bids-per-project and average project size read from the shareholder-letter spread |
| Management Science, CESifo, *J. Int. Econ.* | RePEc landing pages, HTTP 200 | Abstracts opened and read in full. **The papers themselves are paywalled** — see Rejected; the chapter's claims come from the abstracts, which are the authors' own summaries |
| WashU Olin press item | `curl`, HTTP 200 | Opened; the 2% / 5.2% / 3.7% / 9.4% figures confirmed |
| Robert Half release | `curl`, HTTP 200 | Opened; all four survey figures and the sample (2,000+ hiring managers, fielded November 2025) confirmed |
| World Bank blog post | `curl`, HTTP 200 | Opened; the 703 jobs, 481 novices, 44%, doubling and 54% confirmed, including the 4.5 / 3.4 percentage-point base rates |
| PMC systematic review | `curl`, HTTP 200 | Opened; the 47 included studies, the "no consistent AI penalty" result and the accountability moderator confirmed |

**What the reconstruction changed in the chapter.** Opening every source is what surfaced the three
corrections below, and it is why the second of them is worth reading twice:

1. **The opening stated the two Fiverr figures in the wrong order of causation.** "Annual active buyers
   fell 21.9% … Average annual spend per buyer rose 15.6% … the customer base shrank by a fifth, and the
   customers who stayed spent more" reads as a success story about survivors. The same filing shows
   marketplace revenue *down 15.5%*, which the draft never mentioned, and both buyer figures are
   trailing-twelve-month metrics, not quarter-on-quarter ones. The paragraph now carries all three
   numbers and says what they mean together: the platform is taking less from a shrinking and a
   richer-remaining base alike.
2. **A caveat contained a sourced-looking claim with no source.** "One freelance writer doing it
   estimates much of it will dry up within five to ten years as models improve" had no marker, no name
   and no trace. It was cut, with the reason recorded under "Claims downgraded or dropped".
3. **That same caveat rested the cleanup market on "unverifiability is a machine-side limit".** This is
   a misapplication of Ch. 03's test in the direction that makes the argument weaker. Verifiability is
   exactly the case where a machine *can* check the output cheaply — Ch. 01's first question, and the
   condition under which automation arrives — and "people cannot check AI output" is not the same
   problem. The caveat now argues from the *window* between a defect being produced and being noticed,
   which is checkable by the reader and does not need the book to be right about a curve.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `Fiverr Q2 2026 results buyers spend per buyer` | anysearch | yes | Located the release on Fiverr's investor site and the same document on EDGAR. EDGAR is the version cited, because it is the filing rather than the company's own presentation of it. |
| 2 | `Fiverr 2026 outlook guidance decline AI demand headwinds` | anysearch | yes | The revised FY2026 range. Worth the check: the release gives `(17)% - (14)%` for the year, and the guidance is the part of the story that is forward-looking rather than reported. |
| 3 | `generative AI freelancer job posts decrease study leading platform 21%` | anysearch | yes | Straight to Demirci, Hannane and Zhu in *Management Science*. The 21% and 17% figures and the two findings the chapter leans on — more competition, remaining jobs more complex and better paid — are all in the authors' abstract. |
| 4 | `Hui Reshef Zhou freelancer earnings decline ChatGPT Upwork 5.2%` | anysearch | yes | The CESifo working paper. Also surfaced the Olin press item, which restates the same numbers and adds the researcher quote; both are cited because the press item is readable where the paper is not. |
| 5 | `Upwork Q2 2026 GSV per active client record lower-complexity work automation` | anysearch | yes | The results release. Supplied the four-part split (GSV −4%, revenue −2%, 763,000 clients, GSV/client +5% to a record $5,230) and the CEO's "lower-complexity work" framing. |
| 6 | `Freelancer.com average bids per project FY25 annual report` | anysearch | yes | Led to the FY25 annual report PDF. The bid count is in a graphical spread in the shareholder letter, which is why the PDF had to be downloaded and extracted rather than read as HTML. |
| 7 | `Upwork Future Workforce Index 2026 skilled freelancers share 28% 38%` | anysearch | yes | The index release. Also the source of the two findings the chapter *does not* float free: AI-augmented professional services up 72% in volume with earnings up 22%, and generative-AI/creative production up 90% in contract starts with per-contract earnings down 13%. |
| 8 | `Robert Half survey AI-generated applications slowing hiring 2026` | anysearch | yes | The release. Confirmed the sample size, the fielding date, and the detail that the delays are reported as 20% at more than two weeks. |
| 9 | `Agrawal Lacetera Lyons standardized verified work history online contract labor less developed countries` | anysearch | yes | The 2016 *Journal of International Economics* paper. Found it on RePEc; the abstract carries the three results the chapter uses. |
| 10 | `freelancers misbeliefs low wage offers quality field experiment 703 data entry jobs` | anysearch | yes | The World Bank development-impact blog post. This is the readiest description of the experiment, and it is written by the researcher, which makes it a first-hand account rather than coverage of one. |
| 11 | `systematic review AI authorship disclosure credibility trust AI penalty` | anysearch | yes | The *Frontiers in Artificial Intelligence* review. Provided the 47 studies and — the finding that mattered — the split between automation-with-accountability and automation-without-it. |
| 12 | `Google Search AI Overviews reduced traffic to freelance marketplaces 2026` | anysearch | partly | The mechanism the chapter's third caveat rests on. Fiverr's own release says "traffic headwinds" without naming a cause; the chief executive's attribution to Gemini in Search appears in trade coverage (Calcalist), which is the version cited. The primary statement behind it is a call, not a document. |
| 13 | OpenAlex API — `generative AI freelance platform earnings`, 2025+ | OpenAlex | yes | **Run live during the reconstruction.** 286 works. Returned three papers directly on this chapter's topic that were not in it: *Winners and losers of generative AI: Early Evidence of Shifts in Freelancer Demand* (Journal of Economic Behavior & Organization, 2025, 35 citations), *Still Waters, Rapid Currents: Early Labor Market Transformation under Generative AI* (NBER WP 33777) and a 2025 HICSS paper, *AI and Freelancers: Has the Inflection Point Arrived?*. Recorded as a lead for the next revision — see Open questions. |
| 14 | OpenAlex API — `verified reputation online labor market hiring`, 2020+ | OpenAlex | partly | **Also live.** 6,394 works, and the first two pages were almost entirely corporate-reputation and occupational-licensing papers — the phrase matches a much larger literature than the question. Nothing better than the 2016 paper for this chapter's argument; recorded as a null result so the next revision does not repeat the query. |
| R1 | **Reconstruction** — every URL in the chapter re-fetched and every figure read back against the sentence citing it | `curl` + `pypdf` | yes | Queries 1–12 are reconstructed from the chapter's markers. Rows 13–14 and this one are first-hand: thirteen sources, thirteen confirmations, and the three corrections listed above the search trail. |

## Sources kept

Thirteen sources, on thirteen distinct URLs, against thirteen `verified` markers. Two markers cite more
than one document each — the opening paragraph's two figures come from one filing, and the per-freelancer
finding is marked against both the institutional press item and the authors' own Brookings piece — which
is why the marker count and this table's row count are not the same number. Every source below was
opened in full during the reconstruction, except where the entry says otherwise.

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [Fiverr International Ltd. — Q2 2026 results (SEC EDGAR exhibit 99.1, 29 July 2026)](https://www.sec.gov/Archives/edgar/data/1762301/000117891326003624/exhibit_99-1.htm) | primary (issuer filing) | Annual active buyers 2.7 million, −21.9% y/y; annual spend per buyer $368, +15.6%; the chief executive's "absorbs high-volume, low-value, transactional tasks" statement; marketplace revenue $63.1m, −15.5%; FY2026 revenue guidance $356–372m, i.e. −17% to −14%; clients completing $1,000+ projects +13% y/y on a trailing-twelve-month basis | Opening, §1, Caveats, Further reading |
| 2 | [Demirci, Hannane & Zhu — *Who Is AI Replacing? The Impact of Generative AI on Online Freelancing Platforms* (Management Science 71(10):8097–8108, 2025)](https://ideas.repec.org/a/inm/ormnsc/v71y2025i10p8097-8108.html) | primary (peer-reviewed paper, abstract opened; full text paywalled) | 21% decrease in job posts for automation-prone writing and coding jobs relative to manual-intensive jobs, within eight months of ChatGPT; 17% decrease in image-creation job posts after image generators; reduced job posts raise competition among freelancers; remaining automation-prone jobs are more complex and better paid; the decline correlates with public awareness of ChatGPT's substitutability | §1 |
| 3 | [Washington University in St. Louis, Olin Business School — *Study: AI tools cause a decline in freelance work and income* (24 August 2023)](https://olin.washu.edu/about/news-and-media/news/2023/08/study-ai-tools-cause-a-decline-in-freelance-work-and-incomeat-least-in-the-short-run.php) | secondary (institutional press item reporting the authors' own working paper, with direct quotes) | Writing-related Upwork freelancers: monthly jobs −2%, monthly earnings −5.2%; image-related workers after DALL·E (April 2022) and Midjourney (July 2022): monthly jobs −3.7%, income −9.4%; effects did not diminish for more experienced, higher-priced freelancers | §1, §2 |
| 4 | [Brookings Institution — *Is generative AI a job killer? Evidence from the freelance market*](https://www.brookings.edu/articles/is-generative-ai-a-job-killer-evidence-from-the-freelance-market/) | secondary (the authors writing about their own paper) | The same 2% contract decline and 5% earnings drop, with the study design stated (two model families, high-frequency platform data) and the explicit finding that the effects were most pronounced among experienced freelancers on higher-priced services | §1 |
| 5 | [CESifo Working Paper 10601 — Hui, Reshef & Zhou, *The Short-Term Effects of Generative Artificial Intelligence on Employment: Evidence from an Online Labor Market*](https://ideas.repec.org/p/ces/ceswps/_10601.html) | primary (working paper, abstract opened; PDF not retrieved) | Freelancers in highly affected occupations saw reductions in employment and earnings; no evidence that high-quality service, measured by past performance, moderates the effect; suggestive evidence that top freelancers are disproportionately affected | §1, §2 |
| 6 | [Upwork Inc. — Second Quarter 2026 Financial Results (10 August 2026)](https://www.globenewswire.com/news-release/2026/08/10/3342306/0/en/upwork-reports-second-quarter-2026-financial-results.html) | primary (issuer results release) | GSV $966.4m, −4% y/y; revenue $191.7m, −2%; active clients 763,000; GSV per active client $5,230, +5%, the eighth consecutive quarter of sequential growth; the "lower-complexity work continues to shift toward automation" quote | §1 |
| 7 | [Calcalist / CTech — coverage of Fiverr's Q2 2026 results](https://www.calcalistech.com/ctechnews/article/ryiwuedhml) | secondary (trade reporting, with an attributed chief-executive statement) | Marketplace revenue −15.5% to $63.1m; $1,000+ project clients +13%; gross order volume for large programming and technology projects +34% and graphics and design +25%; the attribution of the traffic decline to Google integrating Gemini into Search; the category detail that the weakness was concentrated in basic copywriting, simple design and entry-level programming | §1, Caveats |
| 8 | [Upwork — *Future Workforce Index 2026* (14 July 2026)](https://www.globenewswire.com/news-release/2026/07/14/3326964/0/en/upwork-s-future-workforce-index-2026-how-ai-is-redefining-the-value-of-work-as-skilled-freelancing-accelerates.html) | primary for its own platform data; secondary for the survey (vendor research, method disclosed) | Skilled freelancers 28% → 38% of US knowledge workers in a year; 58% of full-time employees considering freelancing, up from 36%; freelancers doing complex work with AI +45% earnings y/y; AI-augmented professional services +72% volume with +22% earnings; freelancers performing AI work earn 34% more per hour; generative AI and creative production +90% contract starts with per-contract earnings −13% | §1, §3 |
| 9 | [Freelancer Limited — 2025 Annual Report (ASX, 26 March 2025)](https://www.freelancer.com/about/investor-pdf.php?id=293558903&name=FY25_AR_PAGES+FINAL) | primary (audited annual report) | Average bids per project 54, up 8.0% on pcp; average project size US$413, up 19.4%; contest entries per listing 761, up 50.7%; Group revenue $55.3m, up 4.1% | §1 |
| 10 | [Robert Half — *67% of HR leaders report AI-generated applications are slowing hiring* (10 March 2026)](https://press.roberthalf.com/2026-03-10-Robert-Half-survey-67-of-HR-leaders-report-AI-generated-applications-are-slowing-hiring) | primary for the survey (firm's own research, fielded by an independent research firm in November 2025); the firm is a party to the hiring market it describes | 2,000+ US hiring managers; 67% say reviewing AI-generated applications has slowed hiring; 20% report delays of more than two weeks; 65% say AI-enhanced applications make skills harder to verify; 84% report heavier HR workloads | §2, Caveats |
| 11 | [Agrawal, Lacetera & Lyons — *Does standardized information in online markets disproportionately benefit job applicants from less developed countries?* (Journal of International Economics 103:1–12, 2016)](https://ideas.repec.org/a/eee/inecon/v103y2016icp1-12.html) | primary (peer-reviewed paper, abstract opened; full text is ScienceDirect-subscriber-only) | Employers are less likely to hire contractors from less developed countries after controlling for observables; workers with standardized and verified work history are more likely to be hired; the benefit falls disproportionately on those contractors; an online monitoring tool **substitutes** for verified work history | §2 |
| 12 | [World Bank Blogs — *Lower prices, lower chances: how misbeliefs keep freelancers out*](https://blogs.worldbank.org/en/impactevaluations/lower-prices--lower-chances--how-misbeliefs-keep-freelancers-out) | primary (first-hand account by the researcher running the experiments) | Baseline survey of 481 novice freelancers from 37 low- and middle-income countries; 44% believed a below-budget wage signals low quality; experiment submitted applications to 703 data-entry jobs from novice and veteran LMIC profiles with randomised wage offers; low offers doubled the chance the employer read the application and raised callback rates 54%, against base rates of 4.5 and 3.4 percentage points; employers responded more positively to low wages from novices than veterans | §2 |
| 13 | [Licenji & Hoxha — *When news is "written by artificial intelligence": a systematic review of provenance and disclosure cues in journalism* (Frontiers in Artificial Intelligence 9:1815243, 5 May 2026)](https://pmc.ncbi.nlm.nih.gov/articles/PMC13183635/) | primary (peer-reviewed systematic review with PRISMA 2020 method stated) | Scopus and Web of Science searched 2 February 2026; 492 records, 47 studies included with retrievable full texts; AI provenance cues not associated with a consistent "AI penalty", with most extractable results showing no difference; effects conditional on topic, baseline trust and whether human oversight was signalled; scepticism more likely when disclosure implied full automation **without** accountability or oversight information; disclosure-cue evidence limited to 10 studies and dominated by null or conditional findings | §2, §3 |

## Rejected

| Source | Why not used |
|--------|--------------|
| **The three paywalled papers behind sources #3, #6 and #12** (*Management Science* 71(10), CESifo WP 10601, *J. Int. Econ.* 103) | These are the chapter's most load-bearing academic citations and it cites the **abstracts**, not the papers. RePEc served the publisher's abstract in each case, and the abstract is the authors' own summary — which is a defensible thing to cite and is not the same as having read the paper. Specific things not verifiable from the abstracts alone: the identification strategy and control set in Demirci et al.; whether the Hui et al. "top freelancers" result survives their own robustness checks, which the abstract itself hedges as "suggestive"; and the platform identity and sample period in Agrawal et al. Recorded because a future revision should get the full texts before the chapter is promoted past `draft`. |
| **CESifo WP 10601 full PDF** | `https://www.ifo.de/DocDL/cesifo1_wp10601.pdf` returned a 3 KB response that `file` identifies as HTML, not a PDF. The alternative route to the text (SSRN) was not attempted. Not opened, not cited. |
| **OpenAlex hits: *Winners and losers of generative AI: Early Evidence of Shifts in Freelancer Demand*** (J. Econ. Behav. Organ., 2025; DOI 10.1016/j.jebo.2024.106845, 35 citations, open access) | The most promising thing the live search found, and it is not in the chapter: title, venue, year and citation count came from the OpenAlex index, and the paper itself was never opened. It may say something that changes §1's account of *which* freelancers lost demand — "winners and losers" is the exact question this chapter answers from platform filings instead of from a study. Recorded as the first thing the next revision should read. |
| **NBER Working Paper 33777 — *Still Waters, Rapid Currents: Early Labor Market Transformation under Generative AI*** | Same treatment: found, not opened. NBER working papers are normally openable, so this one is a gap rather than a wall. |
| ***AI and Freelancers: Has the Inflection Point Arrived?*** (HICSS 2025; DOI 10.24251/hicss.2025.222) | Found in the same search. A conference paper on the chapter's exact topic, unopened. Left out rather than cited on the strength of a title. |
| **Vanderbilt / third-party summaries of the Hui, Reshef & Zhou paper** | Several appear in search results and quote slightly different framing of the same results. Not used, because the chapter could reach the Olin item and the Brookings piece, which are closer to the authors and do not disagree with each other. |
| **Fiverr's own investor-relations presentation of the Q2 results** | The right primary artefact for a company's quarter is the filing, and the chapter cites EDGAR. The presentation would have added the same numbers in a friendlier layout. |
| **Freelancer.com's contest-entries figure (761 per listing, +50.7%)** | Opened and confirmed, then left out of the chapter. It is the strongest single number for the supply-side competition argument — entries per listing up by half in a year — but it measures *contest* listings, which are a different product from the fixed-price projects the bid count comes from, and putting the two in one sentence invites the reader to compare them. §1 uses the bid count and the average project size instead. If the supply-side paragraph is ever expanded, this is the number to add, priced correctly against contests. |
| **Freelancer.com's Group revenue ($55.3m, +4.1%)** | Opened and confirmed; not used. It is a different company's financials and this chapter already runs three platform filings' worth of numbers. Kept in this row rather than in the section above only because it appears in the same spread as the marketplace metrics. |
| **Google's / Alphabet's own statements about AI Overviews and search traffic** | The Gemini-in-Search attribution comes from the Fiverr chief executive by way of trade coverage, not from Google, and Google has no incentive to publish it. Searching for the primary version did not produce one. The claim is therefore attributed in the chapter ("Fiverr's own chief executive attributed") rather than stated as fact. |
| **The Upwork Future Workforce Index survey portion as independent evidence** | The 38%/58% figures come from a 2,400-person survey run by Upwork and sit next to Upwork's own marketplace data in the same release. They are the vendor's numbers about the vendor's market — the chapter uses them in §1 as supply-side context, and the caveat section says so. A vendor report is orientation, not a load-bearing measurement. |
| **"AI took the work / AI is destroying freelancing" framing in the coverage surrounding these results** | The headline reading of the same numbers. The chapter's whole argument is that this framing is wrong about *which* income moved, and every source in the Notes sections above supports the narrower version. Recorded here so the framing does not creep back in a revision. |

## Open questions

- **Nothing in this chapter measures what happens to an experienced freelancer's income when
  verification gets harder.** That is the chapter's central claim, and it is supported by analogy: the
  2016 paper shows buyers pay for verified history, the 2025 experiment shows novices misjudge how
  buyers read price, and the 2026 review shows audiences do not penalise AI authorship per se. Three
  pieces pointing at one mechanism, none of them measuring it on the population the chapter addresses
  — established freelancers in 2026. The chapter says so in its caveats rather than papering over it.
- **Whether the 34%-per-hour AI figure and the 45% earnings figure are the same measurement.** Upwork's
  release states them as separate findings in the same paragraph (per-hour premium *vs.* y/y earnings
  growth) and does not explain how a freelancer is classified as "doing AI work". The chapter uses the
  45% only as evidence about where the money moved, never as a rate a reader could expect.
- **Whether the accountability moderator in the review transfers outside journalism.** The 47 studies
  measure audiences judging *news* credibility; the chapter applies the finding to a client judging a
  *service*. The mechanism is plausible and the chapter is explicit that it is a transfer — but this is
  the one place in the chapter where evidence from one domain is used to support a claim about another.
  Worth stating more loudly in a revision, or finding a service-market equivalent.
- **The *Winners and losers of generative AI* paper, unread.** See Rejected. It is the most likely
  single source to either strengthen or correct §1, and reading it is the highest-value thing a
  revision can do.
- **The Novice-blindspot literature's boundary.** The World Bank experiments study novices from LMICs
  entering global markets, and the researcher's own blog frames them that way. Whether the misbelief
  about low prices also holds for established freelancers is untested in anything read here — and the
  chapter's §2 use of it (as evidence that price becomes the fallback signal) does not depend on the
  answer, which is why it is stated as the mechanism rather than as an effect size for the reader.
- **Fiverr's "traffic headwinds" have no primary source.** Stated above under Rejected. The chapter
  attributes the claim to the person who made it.

## Claims downgraded or dropped

- **Any specific rate or price point for judgement work.** The chapter stops at "price the outcome"
  and hands the mechanics to Ch. 12. Deliberate: the platform data supports a direction of travel and
  nothing about what any individual should charge, and a number invented here would be the least
  defensible sentence in the chapter.
- **"AI has destroyed the freelance market."** The version the Fiverr headline invites, and the version
  the chapter's own caveat section has to keep pushing against. Same quarter, same filing: buyers down
  21.9% and spend per buyer up 15.6%. The chapter reports both and refuses the one-sided reading.
- **A first-person "cleanup work" scene, and the researcher estimate attached to it.** An earlier draft
  of this chapter is described, in its own caveats, as opening on someone repairing AI output, and the
  caveat section referred to "the opening scene" — but the opening scene does not exist in the current
  draft, which opens on Fiverr's numbers and refers instead to the cleanup *market* in §3's four-cell
  table. Worse, the caveat carried a second claim with no source at all: that "one freelance writer
  doing it estimates much of it will dry up within five to ten years". No such writer, quote or survey
  could be found during the reconstruction, and it is not listed under Rejected because it was never a
  source — it was a sentence written as though it were one. Both were removed. The caveat now makes only
  the structural argument the chapter can defend (the size of the cleanup market is set by how long AI
  defects go unnoticed, and the reader can measure that window themselves) and says nothing about how
  large it is or who says it is shrinking.
- **The cleanup market as a growth story.** §3's table originally described the cell as "Real, growing,
  and priced by the hour anyway". "Growing" is a claim about a market size, and nothing in this chapter's
  sources measures it — no platform reports repair work as a category and no study read here counts it.
  Rewritten to describe *what the work is and how it is priced*, which is supportable, rather than how
  big it is getting, which is not.
- **A "made by a human" badge as an answer.** The intuition that disclosure protects a freelancer's
  price. The 47-study review says AI provenance cues carry no consistent penalty, so the badge is not
  the moat; accountability is. §2 and §3 both say this explicitly, and it is the finding that makes the
  chapter's title mean something other than charm.
- **"Reputation protects you."** Tested directly by Hui, Reshef and Zhou, who found no evidence that
  quality moderates the effect and suggestive evidence that top freelancers were hit hardest. §2 exists
  because of this result. The chapter's phrasing — "the authors' own summary … is that they could not
  confirm it" — is deliberately weaker than "reputation does not protect you", because the paper's
  finding is a failed confirmation plus suggestive counter-evidence, not a demonstrated reversal.
- **The platform-name-and-figure opening as a *market-wide* claim.** Fiverr is one marketplace with one
  quarter, and its decline could be its own execution problem. The chapter opens on it but does not
  rest on it: every subsequent platform reports the same shape independently, and the caveat section
  names each firm as a party to the mechanism it describes.
