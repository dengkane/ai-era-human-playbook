---
chapter: 11
chapter_file: ch11-context-engineering-beyond-prompt-writing.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 12
---

# Research notes — Ch. 11: Context Engineering (Beyond Prompt Writing)

## Framing note

Ch. 10 gave the reader a way to find their own boundary. This chapter is about the part of the work that
happens on the *machine's* side of it: what the model can actually see when it answers.

The research moved the chapter away from the obvious frame. The obvious frame is "prompt engineering is
dead, context engineering replaced it," which is what the blogs say. The evidence says something more
specific and less dramatic: **more context is not better context.** Models do not read uniformly; they
degrade as input grows, they miss things in the middle, and they are measurably distracted by
irrelevant material. That is a mechanical finding, and it is why the chapter is about *curation* rather
than about volume.

The second thing the research did was keep the chapter honest about who it is for. Most of the
terminology comes from people building agents — a much narrower audience than this book's. So the
chapter takes the mechanism (finite attention, positional bias, distractor sensitivity) and gives a
method for a person with a document and a deadline, not a person with a tool-calling loop.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `context engineering definition Anthropic effective context engineering agents guide` | anysearch | yes | The Anthropic engineering post, which is where the term's working definition comes from. |
| 2 | `lost in the middle long context LLM performance degradation study Liu` | anysearch | yes | The Liu et al. paper — the positional-degradation result that everything else builds on. |
| 3 | `context rot long context degradation benchmark study 2026` | anysearch | yes | Chroma's technical report: 18 models, degradation at length even on trivial tasks. |
| 4 | `AI RAG retrieval augmented generation enterprise failure rate study 2026 grounding hallucination` | anysearch | partly | Almost entirely vendor content about how their RAG product fixes hallucinations. No usable primary finding. |
| 5 | `prompt engineering dead context engineering replaced evidence 2026` | anysearch | no | Reddit, Medium and LinkedIn. The claim is asserted everywhere and evidenced nowhere. Recorded as rejected and used in the chapter as a thing *not* to say. |

Also fetched directly: the Shi et al. paper behind the distractor result, and Philipp Schmid's post,
which is where the popular one-line definition of context engineering was written.

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | [Anthropic — *Effective context engineering for AI agents* (Sept 2025)](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) | primary | The working definition; the "attention budget"; the n² pairwise-relationship argument; context as a finite resource with diminishing returns; system-prompt "right altitude"; minimal viable tool sets; canonical examples over edge-case lists; just-in-time retrieval; compaction, note-taking, sub-agents | yes |
| 2 | [Chroma — *Context Rot: How Increasing Input Tokens Impacts LLM Performance* (July 2025)](https://www.trychroma.com/research/context-rot) | primary | 18 models incl. GPT-4.1, Claude 4, Gemini 2.5, Qwen3; performance degrades non-uniformly as input grows, even on trivial tasks; NIAH overstates real long-context ability; distractors hurt | yes |
| 3 | [Liu et al. — *Lost in the Middle* (TACL 2023)](https://arxiv.org/abs/2307.03172) | primary | Performance highest when relevant information sits at the start or end of the input and degrades when it must be found in the middle — including for explicitly long-context models | yes |
| 4 | [Shi et al. — *Large Language Models Can Be Easily Distracted by Irrelevant Context* (ICML 2023)](https://arxiv.org/abs/2302.00093) | primary | Accuracy drops sharply when irrelevant information is added; instructing the model to ignore the irrelevant part mitigates it | yes |
| 5 | [Schmid — *The New Skill in AI is Not Prompting, It's Context Engineering* (June 2025)](https://www.philschmid.de/context-engineering) | primary | The popular definition (right information, right format, right time); the enumeration of what "context" now includes (system prompt, history, long-term memory, retrieved documents, tools, output schema); "most agent failures are context failures" | yes |

## Rejected

| Source | Why not used |
|--------|--------------|
| Every "prompt engineering is dead" post (Reddit, Medium, LinkedIn, the OpenAI forum thread) | The claim is repeated constantly and sourced never. What the evidence actually supports is narrower: prompt quality matters less than what the prompt is surrounded by. The chapter says that instead. |
| LangChain, LlamaIndex, Sourcegraph and Neo4j context-engineering guides | Companies selling context tooling writing guides to context engineering. Useful for orientation on vocabulary, not evidence. The Anthropic post covers the same ground without the sales frame. |
| Vendor RAG articles on "how to stop hallucinations" | Marketing for a retrieval product. The one reusable idea — a knowledge base with duplicate or superseded documents poisons retrieval — is asserted without a measurement, so it is not cited. |
| Simon Willison's *Context Engineering* post | Genuinely good and widely linked, but it is a short definitional note that restates the same ground as Schmid and Anthropic. Two sources for one definition is enough. |
| Karpathy's original tweet | The phrase "art and science of curating what will go into the limited context window" is quoted inside the Anthropic post, which is cited. Citing a tweet as a source for its own phrasing adds nothing. |
| Papers on context-window *extension* (YaRN, position interpolation) | Real and referenced by Anthropic for why long windows have a cost, but technical to the point of being unusable for this book's reader. The Anthropic summary of the consequence is cited instead. |
| Needle-in-a-Haystack leaderboards | The benchmark Chroma shows is unrepresentative. Citing a leaderboard built on a benchmark the chapter is arguing against would be self-defeating. |
| "Context engineering salary" and job-market listicles | Not evidence, and off-topic for a chapter about the reader's own work. |
| LongMemEval and AbsenceBench papers | Real, but they are benchmarks inside the Chroma report; the report's synthesis is what the chapter rests on. Recorded as the next layer down for a revision. |
| MCP specification and tool-calling docs | Mechanics for builders. Out of scope by the index, which gives tool selection to Ch. 15. |
| Any specific model's advertised context window | The chapter's point is that the advertised number is the wrong number. Quoting one would undercut it. |

## Open questions

- **How fast the degradation curve moves with model generations.** Chroma tested models available in
  mid-2025; the ordering among them is already stale. What seems durable is the *shape* — non-uniform
  degradation, middle-of-context loss, distractor sensitivity — and the chapter leans on the shape.
- **Whether the positional result survives reasoning models.** "Lost in the Middle" predates long
  chain-of-thought and much larger windows. The Chroma report extends it, but nobody has cleanly tested
  whether a model that writes its way to an answer before responding escapes the middle-context
  penalty.
- **What a curation method should look like for non-text work.** Every technique here assumes the
  context is documents. Images, audio and data tables have their own economics and the sources do not
  address them.
- **Whether the distractor effect is a capability gap or permanent.** If it closed, a lot of advice in
  this chapter would stop mattering. Nothing I could open says whether it has.

## Claims downgraded or dropped

- **"Prompt engineering is dead."** Dropped as both false and unverifiable. The chapter states the
  defensible version — the prompt is the smallest part of what the model sees — and explicitly names the
  overclaim as something not to repeat.
- **"Bigger context windows solve this."** Dropped. Anthropic says directly that windows of all sizes
  will remain subject to pollution and relevance limits, and the chapter carries that rather than the
  more hopeful reading a reader might arrive with.
- **"RAG fixes hallucination."** Not used. It is the claim every vendor page in the search results makes,
  and none of them measured it.
- **A specific token threshold at which quality drops.** Dropped. The sources show the curve is
  model-specific and noisy; naming a number would be inventing precision, which is exactly the failure
  this chapter warns about.
- **"Ask the model to ignore irrelevant text."** Kept but bounded — Shi et al. do find the instruction
  helps, and the chapter reports it as a mitigation, not a fix, and not as a reason to include the
  irrelevant text in the first place.
