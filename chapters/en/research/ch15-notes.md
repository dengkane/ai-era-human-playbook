---
chapter: 15
chapter_file: ch15-judging-ai-tools-for-yourself.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 9
---

# Research notes — Ch. 15: Judging AI Tools for Yourself

## Framing note

This chapter exists because of a promise the book has to keep. Its appendix lists tools, and that list
is guaranteed to be partly wrong by the time anyone reads it. So this chapter has to teach the reader to
do what the appendix cannot: evaluate a tool on their own terms, in their own work, without trusting
anyone's ranking — including this book's.

The research made that easier than expected, because **the case against trusting public rankings turns
out to be well-evidenced rather than merely prudent.**

- Chatbot Arena, the most-cited leaderboard, has documented structural distortions: undisclosed private
  testing that lets a few providers pick their best score, unequal sampling, and selective removal.
  Meta alone tested 27 private variants before the Llama-4 release.
- Public benchmarks leak into training data, inflating scores in ways that are hard to detect.
- Even automated judging — the tempting way to avoid doing this by hand — carries a measured bias: the
  judge prefers text that is familiar to *it*, independent of quality.
- And when tools are deployed at scale, the base rate is brutal: on MIT's data, 95% of enterprise
  generative-AI pilots delivered no measurable return, because generic tools do not learn the
  organisation's workflow.

Put together, these do not say "evaluation is hard". They say something more useful and more actionable:
**the only evaluation that is both cheap and trustworthy is one you build from your own work.** A
20-item test set drawn from your actual tasks cannot be contaminated (nobody trained on it), cannot be
gamed by a leaderboard (it does not exist publicly), and measures the thing you actually care about.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `AI benchmark contamination gaming problem evidence models trained on test data` | anysearch | yes | The contamination survey, and the general picture that popular benchmarks leak. |
| 2 | `how to evaluate LLM yourself custom eval methodology guide evidence` | anysearch | yes | The Google "Practical Guide" paper, which supplies the 5 D's framing the chapter is built on. |
| 3 | `AI model benchmark overfitting leaderboard correlation real world performance study` | anysearch | yes | The Leaderboard Illusion, which is the chapter's opening. |
| 4 | `MIT NANDA report 95 percent generative AI pilots fail enterprise study 2025` | anysearch | yes | The deployment base rate. Original PDF does not extract; the reporting does. |
| 5 | `RAND report AI projects fail 80 percent twice non-AI projects study` | anysearch | no | RAND's figure is widely quoted and the page returns 403 to this tool on both the landing page and the PDF. Recorded as rejected. |
| 6 | `LLM as judge position bias self-preference bias research evidence` | anysearch | yes | The self-preference bias paper, which closes the loophole of "just automate the judging". |

Also fetched directly: the arXiv pages for the four papers, and the Fortune write-up of the MIT NANDA
report.

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | [Singh et al. — *The Leaderboard Illusion* (arXiv 2504.20879, Apr 2025)](https://arxiv.org/abs/2504.20879) | primary | Chatbot Arena's structural distortions: undisclosed private testing, providers retracting scores, 27 private Llama-4 variants, unequal sampling (Google ~19.2%, OpenAI ~20.4%, against 29.7% for 83 open models), overfitting to arena dynamics rather than general quality | yes |
| 2 | [Xu, Guan, Greene & Kechadi — *Benchmark Data Contamination of Large Language Models: A Survey* (arXiv 2406.04244, Jun 2024)](https://arxiv.org/html/2406.04244v1) | primary | Benchmark data contamination: evaluation data leaking into training, inflating measured performance; detection and mitigation methods; benchmark-free evaluation as a direction | yes |
| 3 | [Rudd, Andrews & Tully — *A Practical Guide for Evaluating LLMs and LLM-Reliant Systems* (arXiv 2506.13023, Jul 2025)](https://arxiv.org/html/2506.13023v2) | primary | The 5 D's — Defined Scope, Demonstrative of Production Usage, Diverse, Decontaminated, Dynamic; that public benchmarks "often lack use-case specificity, may be contaminated with training data"; non-determinism and prompt sensitivity as evaluation challenges | yes |
| 4 | [Wataoka, Takahashi & Ri — *Self-Preference Bias in LLM-as-a-Judge* (arXiv 2410.21819, Oct 2024)](https://arxiv.org/html/2410.21819v1) | primary | GPT-4 shows significant self-preference bias; the root cause is perplexity — models rate familiar text higher regardless of whether they generated it, so automated judging inherits a systematic bias | yes |
| 5 | [Fortune — *MIT report: 95% of generative AI pilots at companies are failing* (Aug 2025)](https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/) | secondary (reporting MIT NANDA's *State of AI in Business 2025*) | 95% of enterprise generative-AI pilots delivered no measurable P&L impact; based on 150 interviews, 350 employee surveys, 300 public deployments; the cause is integration and a "learning gap", not model quality; vendor-purchased solutions succeed ~67% of the time vs internal builds about a third as often | yes |

## Rejected

| Source | Why not used |
|--------|--------------|
| RAND Corporation, *The Root Causes of Failure for Artificial Intelligence Projects* (RRA2680-1) | Widely cited for "more than 80% of AI projects fail — twice the rate of non-IT projects". Both the landing page and the PDF return 403 to this tool. The MIT figure covers the same ground and is openable. |
| MIT NANDA, *The GenAI Divide: State of AI in Business 2025* — the original report PDF | The source behind the 95%. The PDF does not extract as text. The Fortune write-up is used, with its secondary status stated in the notes and the origin (150 interviews, 350 surveys, 300 deployments) carried across. |
| The "AI Benchmark Gaming" and "dirty secret of LLM benchmarks" blog posts | They summarise the contamination literature competently but are not the literature. The survey and the Leaderboard Illusion are cited instead. |
| Leaderboard snapshots and model-comparison tables | The chapter's entire argument is that these are distorted. Printing one would undercut it. |
| Every "best AI tools of 2026" listicle | The genre the chapter exists to replace. |
| Vendor evaluation frameworks and "how to choose an AI vendor" guides | Marketing. The 5 D's come from a neutral source instead. |
| The RAND, Gartner and BCG failure-rate restatements in consultancy blogs | Circular — all quoting the same two or three primary reports. |
| Papers on model capabilities and scaling | Off-topic: this chapter is about judgement, not capability. |
| Arena leaderboard discussion threads | Not evidence for a claim about leaderboard reliability. |

## Open questions

- **Whether the "95%" should be a headline or a caution.** The MIT dataset is 300 deployments and 150
  interviews, gathered by one group with a particular thesis (the "GenAI Divide"). The direction is
  consistent with RAND and with common experience; the precise figure should be treated as one study's
  estimate, and the chapter says so.
- **What a minimum viable personal evaluation looks like.** The 5 D's tell you what a good dataset has;
  they do not tell you how many items is enough. The chapter suggests a small number drawn from real
  work and labels it as a judgement, not a finding.
- **Whether self-preference bias matters for a user who is not building a benchmark.** If your test is
  "did my own output improve", the bias is irrelevant; the moment you ask a model to *compare* two
  outputs for you, it is directly relevant, and the chapter makes that distinction.
- **How long a personal test set stays valid.** A set built this quarter may be saturated by the next
  model release, which is why "Dynamic" is one of the 5 D's and why the chapter tells the reader to date
  the set and rebuild it.

## Claims downgraded or dropped

- **"Public benchmarks tell you which model is better."** Dropped. Contamination and leaderboard
  distortion both undercut it, and the chapter opens on that.
- **"Just have an AI judge your AI."** Downgraded sharply. The self-preference result makes this
  unreliable for exactly the comparison a buyer wants, and the chapter explains the mechanism
  (perplexity/familiarity) rather than just warning about it.
- **"95% of AI projects fail."** Softened to "on one MIT dataset, 95% of enterprise pilots showed no
  measurable P&L impact", with the sample and the single-group provenance stated. RAND's "80%" is
  recorded as the corroborating figure that could not be opened.
- **A recommended number of evaluation items.** Not given as a finding. A small set built from real work
  is suggested and labelled as advice.
- **"Tools don't work."** Explicitly not the claim. The chapter's point is that the tool is not the
  variable that decides outcome — integration is — which is what the MIT finding actually says.
