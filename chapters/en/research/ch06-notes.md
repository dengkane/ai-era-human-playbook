---
chapter: 6
chapter_file: ch06-the-entrepreneur-why-small-beats-big-now.md
researched: 2026-09-30
sources_kept: 7
sources_rejected: 13
---

# Research notes — Ch. 06: The Entrepreneur — Why Small Beats Big Now

## Framing note

Ch. 05 covered people who already have a job inside an organisation. This chapter is the first of the
three that cover people whose income depends on something they own. Its scope is set by the index: *why
small teams are newly viable, and what that changes about strategy* — not the operating playbook (Ch. 12)
and not the decision to leave employment (Ch. 14). So the chapter is allowed to explain a mechanism and
draw a strategic conclusion, and is not allowed to tell anyone what to sell, what to charge, or when to
jump.

The research did the opposite of what I expected, and that is the main thing to report.

**I went looking for evidence that small teams now win, and the strongest data I found says they are not
the ones adopting the tools that would let them.** The Census Bureau's Business Trends and Outlook
Survey puts firms with four or fewer employees below 20% AI use, with no significant change over the six
months measured, against 37% for firms with 250 or more. A Federal Reserve note then adds the detail
that makes it sharp: in the *previous* survey series the relationship between firm size and AI adoption
was **U-shaped** — the largest *and the smallest* firms adopted at the highest rates. In the new series
that pattern has *moderated*, and the smallest firms now sit clearly below the large ones. The
small-business advantage in AI adoption, to the extent it existed, has been shrinking rather than
growing.

That inverted the chapter. It is not "small now beats big." It is "small **can** beat big now, in a
specific way, and most small firms have not done the thing that makes it true." That is a more useful
chapter and a defensible one; the triumphalist version would have required ignoring the government data
that speaks to it directly.

Two other findings shaped it:

1. **The establishment-statistics gap is real and large.** August 2026 saw 531,728 new business
   applications and a projection that about 28,501 of them would form employer businesses within four
   quarters. Registering a company has never been easier; becoming one that employs anyone is a
   different event, and the two numbers are usually reported as if they were the same story.
2. **AI production is extremely concentrated even as AI use spreads.** The BIS counts 1,246 firms
   producing AI across 32 economies — 700 in the United States and 250 in China. "Small teams can now
   do what only large firms could" is true about *using* AI and false about *making* it, and a chapter
   that blurs those is selling something.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `US Census Business Formation Statistics 2026 business applications record high new firms` | anysearch | yes | Found the BFS landing page and, indirectly, the monthly release. Confirmed the series exists and is current to August 2026. |
| 2 | `solo self-employment share of US workforce 2026 independent workers data` | anysearch | no | Returned aggregator blogs ("29.8 million solopreneurs", "$1.7 trillion") with no traceable origin. Not usable — see Rejected. |
| 3 | `Coase theory of the firm AI transaction costs firm boundaries small firms 2026` | anysearch | yes | The productive line. Found two academic treatments: a CMR insight piece (openable) and an SSRN working paper titled *The Coasean Reversal* (403). |
| 4 | `revenue per employee AI startups small teams outperform 2026 evidence` | anysearch | partly | Located the viral revenue-per-employee genre. Every version of it is either a vendor report, an aggregator, or a number that cannot be traced to a filing. Rejected in full. |
| 5 | `Census BFS 2026 applications vs projected employer formations gap` | anysearch | yes | The applications-versus-formations distinction, which became the chapter's opening. |
| 6 | `Census Business Trends and Outlook Survey AI use small business 2026 share` | anysearch | yes | Found the BTOS story by firm size. This is the finding that inverted the chapter. |
| 7 | `2026 AI capex hyperscaler concentration scale advantage competitive moat` | anysearch | yes | Led to the BIS Annual Economic Report chapter and the trillion-dollar hyperscaler capex figure. |
| 8 | `small business survival rate AI era 2026 failure rate startups` | anysearch | partly | Mostly recycled BLS survival statistics quoted second-hand. The BLS series itself is the primary source; not cited because the chapter has better data. |
| 9 | `BLS self-employment unincorporated workers number 2026 official data` | anysearch | partly | Confirmed the FRED/BLS series exist (LNS12032192, LNS12027714) but no figure was opened from BLS directly. Not cited. |
| 10 | `Cui Demirer effects generative AI high-skilled work field experiments software developers` | anysearch | partly | Found the study and its 26.08% headline. The journal version is paywalled and the working-paper PDF would not convert; only a third-party summary was readable. Not cited — see Rejected and "Claims downgraded". |
| 11 | `BIS working paper 1343 geography of AI firms concentration` | anysearch | yes | Opened. Gives the 1,246-firm / 32-economy count behind the concentration point. |
| 12 | `cost of starting a software business fell AI tools 2026 evidence minimum viable team` | anysearch | no | Returned tool listicles and "how I'd build a $1M business" posts. Nothing measurable. |
| 13 | `Census BTOS working paper CES-WP-26-25 why businesses are not using AI reasons` | anysearch | yes | Found *The Microstructure of AI Diffusion*, the best single source in this chapter. Official method, nationally representative, and it reports both adoption and what firms do with it. |
| 14 | `small business AI adoption barrier cost expertise survey 2026 official data` | anysearch | partly | Surfaced the SBA Advocacy spotlight and a Goldman Sachs survey. Neither opened; the Fed's note covers the same ground with a method I could read. Recorded in Rejected. |

## Sources kept

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [US Census Bureau — Business Formation Statistics, August 2026 release](https://www.census.gov/econ/bfs/current/index.html) | primary (government statistics) | 531,728 seasonally adjusted business applications in August 2026; projected business formations within four quarters of 28,501; the Bureau's own warning that this is a projection from a monthly application cohort, not a count of startups in that month | §1 |
| 2 | [US Census Bureau — The Microstructure of AI Diffusion: Evidence from Firms, Business Functions, and Worker Tasks (CES-26-25)](https://www.census.gov/library/working-papers/2026/adrm/CES-WP-26-25.html) | primary (government working paper) | 18% of firms used AI in a business function (32% employment-weighted), expected to reach 22%; 50–60% for very large firms in Information, Professional Services and Finance; 57% of adopters use it in three or fewer functions; 23% of firms have workers using AI in tasks; 66% of users only augment; AI-related employment decreases in only 2% of firms; the two-way diffusion finding | §2, §3 |
| 3 | [US Census Bureau — Large Firms With at Least 20 Employees Biggest AI Users (BTOS, May 2026)](https://www.census.gov/library/stories/2026/05/ai-use-businesses.html) | primary (government survey) | Overall AI use 17–20%; 37% of firms with 250+ employees; under 20% for firms with four or fewer; no significant change among firms under 20 employees over the six months measured; sector spread (Information 39.7%, Retail ~14%) | §3 |
| 4 | [Federal Reserve Board — Monitoring AI Adoption in the U.S. Economy (FEDS Notes, April 2026)](https://www.federalreserve.gov/econres/notes/feds-notes/monitoring-ai-adoption-in-the-u-s-economy-20260403.html) | primary (central bank research note) | The U-shaped firm-size/adoption relationship in the legacy BTOS series — highest adoption among both the largest and the smallest cohorts — and its moderation in the new series, with the smallest cohort now clearly below the larger size classes | §3 |
| 5 | [BIS — Annual Economic Report 2026, Chapter I: Progress and peril](https://www.bis.org/publications/aer-2026/progress-peril) | primary (official central-bank report) | The scale of AI-related investment; circular financing between chip makers, hyperscalers and AI labs; the rise of AI/IT exposure in private credit direct lending; the explicit warning that the current AI investment boom resembles earlier capital-intensive booms that reversed | §3, Caveats |
| 6 | [BIS — The geography of AI firms (Working Paper 1343, April 2026)](https://www.bis.org/publications/working-paper-1343-geography-ai-firms) | primary (official central-bank research) | 1,246 AI-producing firms across 32 economies; 700 in the United States and 250 in China; most economies specialise in only a few supply-chain layers; strong home bias; venture capital inflows correlated with the density of AI firms | §3 |
| 7 | [California Management Review — From Coase to AI Agents (Warin, 2025)](https://cmr.berkeley.edu/2025/04/from-coase-to-ai-agents-why-the-economics-of-the-firm-still-matters-in-the-age-of-automation/) | primary (academic-practitioner journal) | The transaction-cost account of why firms exist; the argument that AI agents lower internal transaction costs while raising dependence on the external platform that hosts them; the "new gatekeepers" framing | §1, §2 |

## Rejected

| Source | Why not used |
|--------|--------------|
| **Cui, Demirer, Jaffe, Musolff, Peng & Salz — *The Effects of Generative AI on High-Skilled Work* (Management Science, 2026)** | Exactly the study this chapter wanted: three pre-registered field experiments (Microsoft, Accenture, a Fortune 100 firm), 4,867 developers, a headline effect of +26.08%. The published article is paywalled, the working-paper PDF would not convert, and the only readable account was a third-party summary — which itself warns that the standard error (10.3%) puts the interval at roughly +6% to +46% and says the figure should not be quoted before reading the full paper. I did not read it, so I did not cite it. Recorded here because it is the best evidence for the productivity claim and the next revision should go and get it. |
| **SSRN — *The Coasean Reversal: AI and the boundaries of the firm* (Harre, 2026)** | The most directly on-point paper found: it addresses firm boundaries under AI explicitly. SSRN returned a Cloudflare challenge on every attempt. Only the abstract was visible in search results, which is not enough to cite. |
| **"$3.3 million revenue per employee at Anysphere/Cursor"** | The most viral number in this space. It appears in a report that collects "the verifiable numbers behind that viral figure" — which is itself an admission that the figure circulated before it was verified. Anysphere is also an AI *producer*, not a user of AI, so it cannot support a claim about ordinary businesses. Not used. |
| **Forbes — *AI-Native Firms Lead In Revenue Per Employee*** | Secondary commentary on consultancies' own benchmarks, with a prediction that the gap "will widen every quarter". No methodology in the accessible portion. |
| **Bessemer Venture Partners — 2025 State of AI** (reached through a third-party summary) | Would have supplied revenue-per-employee benchmarks ($164K average for early-stage AI startups, top performers above $1M). Quoted second-hand in a blog; the report itself was not opened. A venture firm's benchmarks for its own portfolio are not the right support for a claim about small businesses generally. |
| **Goldman Sachs — small business AI survey (March 2026)** | "93% report positive business impact, yet only 14% have fully integrated AI." Attractive and exactly on topic; not opened. The Census and Fed sources answer the same question with methods I could read, so the chapter does not need a bank's survey. |
| **SBA Office of Advocacy — *AI in Business: Small Firms Closing In* (Sept 2025)** | Official and directly relevant to the size gap, and its title cuts against the Fed's finding that the small-firm advantage has moderated. Not opened, so not cited. Worth resolving in a revision: the two may be measuring different things (level vs trend). |
| **OECD / D4SME SME AI adoption data** | Reached only through third-party blogs quoting "8.7% in 2023 to 20.2% in 2025" and "61% of SMEs using AI". The third-party numbers contradict each other, which is reason enough to go to the source or not use it. Not used. |
| **Aggregators on solopreneurship** ("29.8 million solopreneurs contribute $1.7 trillion", "73 million Americans in gig work, 45% of the workforce") | No traceable origin, wildly inconsistent with each other, and definitionally unstable — "gig work" and "solopreneur" are counted differently by everyone who quotes them. Not evidence. |
| **"99% of AI startups will be dead by 2026"** and similar | Engagement-driven predictions with no dataset. Not usable in either direction. |
| **Zylo / vendor AI-cost analyses** ("a single AI seat looks cheap at $20–30") | Vendor content. The price point is roughly right and is checkable on any vendor's pricing page, which is the correct way to source it — see "Open questions". |
| **Tool round-ups** ("best AI tools for small businesses 2026", "28 picks for every stage") | Marketing. No measurements. |
| **Shopify, Wix, Stripe and similar platform marketing about entrepreneurship** | The platforms are the *subject* of the mechanism, which makes their own claims about it the least usable form of evidence. The chapter makes the structural argument without leaning on the companies that profit from it. |
| **BLS business survival rates** (via zippia, review42, founderreports, vantainsights) | Every version quotes the same BLS cohort tables second-hand with slightly different numbers (21.9% / 22.1% first-year failure). The BLS source is primary and citable; these are not. Left uncited rather than cited through a middleman. |

## Open questions

- **Nobody has run the comparison this chapter's thesis implies.** The claim is that a small team using
  AI can now do work that previously required a large one. The evidence is assembled from three
  directions — productivity effects measured inside large firms, cost changes in the tooling layer, and
  transaction-cost theory — rather than from a study that measured small teams against large teams on
  the same task. That study may not exist. The chapter states the argument as structural and says so.
- **The Fed does not explain why the U-shaped adoption pattern moderated.** It reports the change and
  cites the earlier paper; it does not offer a mechanism. I could speculate — cheaper tools should help
  small firms most, so a narrowing gap is the opposite of what the cost story predicts — but a
  speculation is not a finding, so the chapter reports the pattern and leaves the cause open.
- **"AI lowers the fixed cost of starting a business" is asserted far more often than it is measured.**
  I could not find a study that quantifies the change in startup fixed costs attributable to AI. The
  chapter therefore describes which costs moved from fixed to variable *by category* (compute,
  infrastructure, some professional work) and does not put a number on it.
- **The tooling prices underpinning the fixed-to-variable argument were not opened.** A ~$20/month
  assistant subscription or a per-seat coding tool is the kind of thing a vendor's own pricing page can
  support, and chapters in this book have used vendor pricing pages as primary sources before. Doing so
  here would strengthen §2. Left for the next revision rather than asserted from memory.
- **Platform dependence is asserted by the CMR piece and not quantified anywhere I found.** The cost of
  the dependence — rent extraction, lock-in, a change in terms — is the interesting part and is exactly
  what a platform has no incentive to publish. The chapter says the dependence exists and that its price
  is not visible in advance, which is what the source supports.
- **The applications-to-formations ratio is a cohort projection, not a survival rate.** 531,728
  applications against 28,501 projected formations is a legitimate reading of the August release, but
  the Bureau is explicit that the second number is forward-looking from the application cohort and is
  not a count of businesses that started that month. The chapter uses it with that caveat attached.

## Claims downgraded or dropped

- **"A three-person team with AI now does what twenty people used to."** The headline version of the
  chapter's thesis, and nothing I found measures it. Cut. The chapter argues which *categories* of cost
  changed and lets the reader do the arithmetic about their own situation.
- **"AI-native startups generate 25× the revenue per employee of ordinary software firms."** From the
  revenue-per-employee genre. Untraceable, and it compares AI producers against AI users. Cut.
- **"+26.08% developer productivity from GitHub Copilot."** Downgraded to *not stated at all*. The
  number is real and the study is good, but I could not open it, and a third-party summary of it warns
  that the 80%-ish interval is wide enough (+6% to +46%) that quoting the point estimate as a fact would
  misrepresent it. Ch. 05 already handles the productivity-measurement problem with sources I could
  open; this chapter does not need the number to make its argument. Recorded here so the next revision
  knows it is available and what the caveat is.
- **"Gartner predicts 40% of one-person businesses will operate entirely without human staff by 2027."**
  Encountered in a summary of small-business AI statistics. Could not reach any Gartner release
  (gartner.com is behind Cloudflare in this environment, as recorded in Ch. 05's notes), and the number
  has the shape of a forecast that has been through several retellings. Dropped. Note that this is the
  second chapter where a widely-quoted Gartner figure could not be verified at source — worth treating
  as a standing caution about that vendor's predictions as they circulate.
- **A section on platform dependence as a *cost* to the entrepreneur.** The material supports that
  platforms become new gatekeepers, which the chapter states. It does not support any specific price for
  that dependence, and the section kept sliding into asserting one. Reduced to the claim the source
  actually makes.
- **"Business formation is at an all-time high, therefore entrepreneurship is booming."** The first half
  is supportable and the second half is a different claim. Splitting them is the chapter's opening move:
  applications are at a record, and the number that converts into an employer is not moving with them.
