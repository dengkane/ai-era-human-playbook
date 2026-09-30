---
chapter: 3
chapter_file: ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md
researched: 2026-09-30
sources_kept: 6
sources_rejected: 11
---

# Research notes — Ch. 03: What AI Can Never Do Well (and Why That's Your Moat)

## Framing note

The title is a trap. "What AI can never do well" is exactly the kind of sentence Ch. 01 warned
readers about — a claim with an expiry date. So the chapter does not answer the question the title
asks. It answers a better one: **how do you tell a limit that will expire from one that won't?**

The research below forced that shift. The first two sources found were attempts to establish a
durable limit; both failed, and their failure is more useful than a list of limits would have been.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `LLM fundamental limitations continual learning catastrophic forgetting cannot learn from interaction architecture` | anysearch | yes | Located the continual-learning literature. Real, but the papers are narrowly technical and the limits are under active attack — see Open questions. |
| 2 | `verification bottleneck AI generation cheap verification expensive economics of verification` | anysearch | yes | The productive line. Led to the MIT/WashU framing and to the Faros AI numbers. |
| 3 | `embodied cognition AI without body physical experience world model grounding limitation research` | anysearch | yes | Found the USC/UCLA/DeepMind paper in *Neuron*. |
| 4 | `METR randomized controlled trial experienced developers AI 19 percent slower study results` | anysearch | yes | Went to the primary source rather than the coverage. That decision is what produced the chapter's spine — see "The pivot". |
| 5 | `AI scaling laws diminishing returns wall pretraining data exhaustion debate researchers 2026` | anysearch | partly | A genuine live disagreement, no clean resolution. Used only for the caveats section. |
| 6 | `AI accountability liability cannot delegate responsibility human in the loop legal requirement regulation` | anysearch | yes | Led to the EU AI Act's oversight article. |
| 7 | `EU AI Act liability human oversight requirement accountability developer responsibility article` | anysearch | yes | Article 14 text, official. |
| 8 | `AI progress evidence capabilities improving rapidly 2026 agent task length time horizon doubling` | anysearch | yes | METR's time-horizon work — the counterweight that keeps the chapter from being an argument for stasis. |

## The pivot

My first draft of this chapter was going to use the METR result as its centrepiece: a randomised
controlled trial, experienced developers on their own repositories, AI made them **19% slower**. That
is about as strong as evidence gets in this field, and it would have made a satisfying section.

Opening the primary source killed it. METR's own page carries a warning banner:

> ⚠️ **These results are out of date.** We have released results that are current as of early 2026 …
> We believe these historical results no longer reflect the current impact of AI models on
> open-source developer productivity.

The updated results estimate an **18% speedup**, and — more interesting than the reversal — the
researchers explain that the *measurement* has broken down. Between 30% and 50% of participating
developers reported withholding tasks they did not want to do without AI, and the study could no
longer recruit enough developers willing to work without it at all.

That is a better chapter than the one I planned. The strongest available study of "what AI is bad at"
stopped being able to measure the question within a year — not because the technology changed so much
as because the people changed what they were willing to do.

**This became the chapter's first section, and its thesis.**

## Sources kept

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [METR — Early-2025 AI on Experienced OSS Developer Productivity](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) | primary | The 19% slowdown RCT, its confidence interval, and METR's own retraction notice | §1 |
| 2 | [METR — We are Changing our Developer Productivity Experiment Design](https://metr.org/blog/2026-02-24-uplift-update/) | primary | The reversal to an 18% speedup; the selection effects; developer quotes | §1 |
| 3 | [METR — Measuring AI Ability to Complete Long Software Tasks](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) | primary | Task-length horizon doubling every ~7 months over 6 years; near-100% below 4 minutes, under 10% above 4 hours | §2 |
| 4 | [EU AI Act, Article 14 — Human Oversight](https://artificialintelligenceact.eu/article/14/) | primary (law) | High-risk systems must be effectively overseen by natural persons; some decisions require separate confirmation by at least two natural persons | §3 |
| 5 | [USC/UCLA/DeepMind in *Neuron* — embodiment and AI](https://chan.usc.edu/news/latest/why-ai-needs-body-truly-understand-world) | primary | "AI does not truly understand the real world because it does not experience the real world"; the walking-dots example | §3 |
| 6 | [The Technomist — The Verification Bottleneck](https://thetechnomist.com/p/the-verification-bottleneck-why-ais) | secondary | Verification-cost framing; Faros AI figures (review time +91%, PRs +154%, bugs +9%); Stack Overflow's 84%/33% gap | §3 |

## Rejected

| Source | Why not used |
|--------|--------------|
| **arXiv 2509.01213 — catastrophic forgetting in continual learning** | Opened and read. It documents a real finding (fine-tuning degrades prior reasoning and comprehension; larger models forget more), and my first outline had "AI cannot build durable memory from experience" as a candidate limit. Applying this chapter's own test to it: that limit is *machine-side* — a property of current training methods, an active research field, and the kind of thing that disappears with an architectural fix. Citing it would have contradicted the section arguing against exactly that mistake. Recorded here because the rejection is the chapter's method working on the chapter itself. |
| **The METR 19% slowdown result, as a standalone finding** | Not rejected as a source — rejected as a *claim*. It is the chapter's opening, but presented as a study that was superseded by its own authors, not as evidence that AI fails at engineering. Using it the other way would have been the exact error this book exists to document, committed by me, about a source I had opened. |
| **Coface / OEM task-exposure study** | Used in Ch. 02 and excellent there. Not reused here to avoid the book becoming a single-source argument. |
| **Cloud Security Alliance — AI liability in the agentic era** | Exactly the right claim ("deploying an agent does not transfer liability to the agent"). Extract failed on two attempts. Found the EU AI Act text instead, which is primary law rather than an analyst's summary — a better citation for the same point. |
| **California AB 316** | Surfaced repeatedly as evidence that "AI acted autonomously" is not a legal defence. Cited only secondhand in sources I could open; I could not reach the bill text, so it is left out rather than cited at second hand. |
| **Ilya Sutskever's "LLM scaling has plateaued"** | Widely quoted, and it is a genuinely important counterweight. Rejected because it is a conference remark reported through third parties, with no paper or transcript I could reach. The scaling disagreement is real and is acknowledged in the caveats without attributing a specific claim to him. |
| **Various "AI can't do X" listicles** | A large fraction of results for the limitation queries were listicles asserting permanent limits with no mechanism offered. These are the thing the chapter argues against; citing them would have been circular. |
| **Faros AI — AI software engineering report** | The PR-review figures (+91% review time, +154% larger PRs) are load-bearing for the verification argument. I could not open Faros' own report; it is cited through The Technomist, which is flagged as secondary in the source table. Recorded here because **this is a known weakness** — see Open questions. |
| **Harvard Business Review / UC Berkeley — AI intensifies work** | Same problem: 40 workers, 8 months, 62% reporting burnout. Interesting, could not open the primary. Omitted rather than cited secondhand. |
| **Zylos, mbrenndoerfer, and other continual-learning explainers** | Useful for orientation on catastrophic forgetting; superseded by the arXiv paper above. Not cited at all, since catastrophic forgetting was ultimately excluded. |
| **Anthropic Economic Index** | Referenced by the Ch. 02 sources for automate-vs-augment shares. Would have been relevant to §2; not opened in this pass, so not cited. |

## Open questions

- **The verification section rests partly on a secondary source.** The framing is from a MIT/Washington
  University paper that The Technomist summarises; I could reach the summary but not the paper. The
  Faros figures come from the same route. The argument stands on reasoning — generating an answer does
  not tell you whether it is correct, and checking it requires information the generator did not supply
  — but if the primary sources become reachable, they should replace the summary.
- **Is the verification limit actually structural, or just current?** I argue that it is structural
  because verification cost sits on the human side. But it is possible to imagine verification getting
  cheap: formal proofs, extensive test suites, cryptographic attestation. Those are real and they
  occupy the "verifiable" column. The honest position, which the chapter takes, is that verification is
  cheap exactly where the claim is checkable by rule, and that this is a property of the claim rather
  than of the verifier. A stronger treatment would test that against a set of real tasks.
- **The embodiment argument may be the weakest of the three, and the chapter says so.** The Neuron paper
  argues AI cannot understand the world without experiencing it. But "cannot" here is a claim about a
  particular architecture, and architectures change. I present it as the least durable of the three
  candidates rather than dressing it up as a foundation.
- **Scaling disagreement unresolved.** Some researchers report a plateau; others report continued
  sub-exponential improvement. This matters enormously for the chapter's §2 argument, and I have no way
  to adjudicate it. It is stated as an open disagreement.
- **I did not find research that measures whether judgement is becoming more valuable.** That is the
  chapter's practical claim — that the human-side limits are where to position. It is argued from the
  structure of the limits, not from wage or hiring data. Part II will need that data.

## Claims downgraded or dropped

- **"AI makes experienced developers 19% slower."** The chapter's original centrepiece. Now presented
  as a study whose authors say is out of date, with the reversal included. The confidence interval on
  the original result (+2% to +39%) is given, because it was already nearly touching zero.
- **"Hallucination rates between 0.7% and 94%."** Appeared in a source as a striking statistic.
  Dropped: a range that spans two orders of magnitude tells the reader nothing except that
  measurement is inconsistent, and the chapter says that in plain words instead.
- **"AI cannot form long-term memory"** as a structural limit. Cut after the research: continual
  learning is an active field with real progress, so this is a capability limit wearing structural
  clothes. This is precisely the error §2 exists to catch, and it would have been embarrassing to make
  it in that section.
- **A quantified "moat" claim** — that judgement has appreciated by some percentage. Never had a
  source; the chapter argues the structural case and explicitly declines to price it.
