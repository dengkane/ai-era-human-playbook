---
chapter: 11
title: "Context Engineering (Beyond Prompt Writing)"
part: "Part III — Amplify Your Leverage"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [context-engineering, long-context, retrieval, attention, prompt-engineering]
---

# 11. Context Engineering (Beyond Prompt Writing)

Here is an experiment you have probably run without noticing you were running it. Take a question you
have asked an AI model and got a good answer to. Now paste three more documents into the same
conversation — a related contract, last year's version of the same report, a long email thread that
mentions the topic — and ask the same question again, expecting the extra material to help.

It usually gets worse. And the reason it gets worse is the subject of this chapter, because the
intuition behind it — that the model reads everything you give it equally, so more is safer — is
measurably false.

<!-- verified 2026-10-01 — source: https://www.trychroma.com/research/context-rot -->

> **The one thing to take away:** the model does not read what you gave it, it reads the *set of tokens*
> that survived selection, ordering and competition for attention — and curating that set is a skill
> with a method, not a trick with a phrasing.

## The model does not read uniformly

Start with the finding that makes everything else necessary.

The common assumption, and the one the marketing encourages, is that a context window is a bucket. Fill
it up to the line and the model handles it all the same way. Chroma tested that against eighteen models
— including the frontier ones of 2025 — and found the assumption fails on tasks so simple that a
degradation cannot be blamed on difficulty. Perplexity, retrieval, and a task that amounts to copying
repeated words all degrade as input grows, and they degrade unevenly across models.

<!-- verified 2026-10-01 — source: https://www.trychroma.com/research/context-rot -->

That last detail is the one to hold on to. The failure is not a cliff at some token count where the
model stops working. It is a gradient that starts early and varies by model, which means the advertised
window size tells you where the hard limit sits and almost nothing about where quality begins to slip.

Why the standard test missed this is itself instructive, and it explains a confidence you may have
inherited. The benchmark that made long context look solved hides one sentence in a long document and
asks the model to find it. Models score near-perfectly, and the near-perfect scores are where "long
context is basically solved" came from. Chroma's objection is that the test measures lexical matching
and nothing else — whether the model can locate a string, not whether it can reason over a pile of
material, which is what summarising a contract or answering a question from a folder of reports
actually asks it to do.

<!-- verified 2026-10-01 — source: https://www.trychroma.com/research/context-rot -->

The most widely cited measurement of this comes from Liu and colleagues, who placed the same relevant
passage at different positions in a long input and measured what happened. Performance was **highest
when the passage sat at the beginning or the end**, and fell when the model had to retrieve it from the
middle — including for models explicitly built for long context.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2307.03172 -->

So position matters, independently of content. That has an immediate practical consequence almost
nobody acts on: if you have one document that matters and four that are context, the ordering you paste
them in is a decision, and the default — the important one buried where you happened to find it — is
often the worst of the options you had.

And there is a third result that is more uncomfortable, because it indicts a habit that feels like
diligence. Shi and colleagues added irrelevant information to maths problems that models could
otherwise solve, and accuracy **dropped dramatically**. The model was not merely slowed by the noise;
it was misled by it. Notably, telling the model in the prompt to ignore the irrelevant information
helped.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2302.00093 -->

Which is genuinely useful and also a trap. The instruction mitigates the damage; it does not make the
damage free, and the right move is still not to include the irrelevant material in the first place. The
fact that you can ask the model to ignore the noise is not a reason to hand it the noise.

Now the explanation, because it changes what you do about it. Anthropic's applied team describes context
as an **attention budget** the model spends when parsing what it is given. Every token costs some of it.
The mechanical reason is the transformer architecture itself: every token can attend to every other
token, which means n tokens create relationships that grow with the square of n. As the input gets
longer, the model's grip on those relationships is stretched thinner, and the training data it learned
from had far more short sequences than long ones.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

The consequence is stated plainly in that same piece and it is worth quoting in substance rather than
paraphrase: context should be treated as a **finite resource with diminishing marginal returns**, and
the goal is the smallest set of high-signal tokens that gets the outcome you want. Not the most
complete set. The smallest sufficient one.

That is a different goal from the one most people are pursuing, which is to tell the model everything
relevant they know. And the difference is not a nuance. It is the whole chapter.

## Everything the model can see is context, and most of it is not your prompt

Here is where the term earns its keep. The reason this is not "prompt engineering with a new name" is
that the prompt is only one input among several, and the others are often larger.

The enumerations differ in detail, but the one that has stuck — from Philipp Schmid, one of the people
who popularised the term — lists what the model is actually seeing: the system instructions, your
immediate request, the conversation so far, any long-term memory the tool keeps, retrieved documents,
the definitions of tools it can call, and the required output format.

<!-- verified 2026-10-01 — source: https://www.philschmid.de/context-engineering -->

Look at that list as a person using a chat window rather than as an engineer, and it collapses into
something much simpler. You control three of those items directly and one of them indirectly:

- **What you type**, which is the part everyone thinks is the whole job.
- **What is in the window**, which is the conversation history — and this is the one that grows without
  anyone deciding it should.
- **What you attach**, which is retrieval: the documents and extracts you put in front of the model.
- **What the tool remembers**, which you often do not control at all and may not be able to see.

The fourth item deserves a moment, because it is the one people are least aware of and it is the one
that makes the same prompt behave differently on two different days. If your tool carries memory across
sessions — a saved profile, a summary of previous projects, a set of learned preferences — then that
material is in the window whether or not you put it there, and it is spending the same budget as what
you typed. This is why two people can run an identical prompt and get different quality, and why a
"perfect prompt" that worked last month can stop working: the memory underneath it changed. The practical
response is not paranoia. It is to check, when an answer is bafflingly off, what the tool thinks it
already knows about you.

The second and third items are where the damage in the opening experiment happened. You did not write a
worse prompt. You added tokens, the budget got spent, and the relevant passage moved toward the middle
of a longer input.

Which reframes the skill. **Context engineering is deciding what not to include.** That is the hard
half, and it is the half that runs against every instinct that says a helpful person provides complete
information.

Concretely, that means the four moves below. They are in order of how much they matter for a person
with a document and a deadline, not for someone building an agent.

**Trim to the signal.** Before adding anything, ask what the model needs that it does not have. Then
add only that. A three-page extract that contains the clause beats the forty-page contract that
contains it, and it is not close — the forty-page contract also contains hundreds of other clauses
competing for the same attention.

**Order it deliberately.** The most important material goes at the start or the end, because that is
where the model's grip is strongest. This costs nothing and almost nobody does it.

**Cut the near-miss.** The superseded version, the draft that was rejected, the adjacent document that
mentions the same names — these are the items that look like thoroughness and behave like distractors.
If you would not want a junior colleague to act on it, do not put it in the window without marking what
it is.

**Say what each thing is.** A passage with a label — "this is the current contract, dated March; the
next file is the one it replaced" — is not the same input as the same passage dropped in unlabelled.
Anthropic's guidance about keeping prompts at the right "altitude" is the same idea applied to
instructions: specific enough to direct behaviour, not so prescriptive that it is brittle.

| What you were doing | What it costs | What to do instead |
|---|---|---|
| Pasting everything relevant you can find | Each extra token spends attention; near-miss material actively misleads | Paste the extract that answers the question, labelled |
| Adding documents to a long conversation | The conversation history was already spending the budget | Start a new conversation with only what this task needs |
| Dumping the source and hoping | The wrong version and the right version compete | Say which is current and which is superseded |
| Writing a longer, more detailed prompt | Diminishing returns, and it buries the instruction | Shorten it until removing a line would change the output |

## A method for the work you actually do

The rest of this chapter is the procedure, and it is built for one reader: someone whose "context" is
a stack of documents and a question, not a tool-calling loop.

### Compress before you continue

The single highest-return habit is to stop treating a conversation as a place to accumulate. When a
thread has run long enough that you are scrolling to remember what was decided, do not keep going.

Ask for a summary of the decisions, the open questions and the constraints, then start fresh with that
summary and the two or three files you are actually working on. Anthropic calls this compaction and
runs it automatically in their coding tool, summarising the history and continuing with the compressed
version plus the most recently used files.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

The part of that worth stealing is the selection rule. The summary should keep **decisions, unresolved
problems and the constraints you have to respect**, and discard the back-and-forth that produced them.
Aggressive compression loses things whose importance only shows up later, so the bias should be toward
keeping too much at first and tightening once you see what you never look back at.

### Keep the state outside the window

The second habit is the one that makes long work possible at all: write the durable conclusions down
somewhere that is not the conversation, and pull them back in when they are relevant.

This sounds trivial and it is not, because the alternative — trusting the conversation to remember — is
exactly what degrades as the conversation grows. Anthropic describes agents maintaining notes files for
exactly this reason, and the interesting part is that the model does not need to be told the structure
in advance; it develops one.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

For a person, this is a text file. What you decided, what is still open, what you ruled out and why.
You will need the "why" more than the "what" in three weeks, and the conversation will not have it.

### Give references, not contents

The third habit is the one that changes how you work with large bodies of material. Instead of loading
everything up front, hand the model **pointers** — file names, paths, queries, links — and let it pull
what it needs.

Anthropic describes this "just-in-time" approach as the thing that lets their coding tool analyse large
databases without ever loading them, using the model's own ability to run a targeted query and look at
the result rather than ingesting the whole thing.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

The trade-off is stated fairly in the same place, and it is worth carrying over honestly: retrieving at
runtime is slower than having the answer pre-loaded, and it requires the material to be organised well
enough that the pointers mean something. A folder called `misc` gives the model nothing to navigate by.
A folder where the file names say what the files are gives it almost everything.

### Keep the tool set small

The last habit is about the tools rather than the text, and it is a warning rather than a technique.

Anthropic's engineers name the bloated tool set as one of the most common failure modes they see, with
overlapping functions that create ambiguous decision points about which one to use — and they give the
test that settles it: **if a human engineer cannot say definitively which tool should be used in a given
situation, an AI agent cannot be expected to do better.**

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

You probably cannot control the tool set in the product you use. What you can control is the version of
this that applies to you directly: the number of things you are asking for at once. A request that
contains four instructions, two constraints and a format specification is a bloated tool set. The model
does not fail loudly; it satisfies the first instruction and drops the fourth.

### The method on one real task

Abstract rules are easy to nod at. Here is the same procedure run end to end, on a task a lot of readers
have: reviewing a supplier contract you have just been sent, to find what changed from the version you
signed two years ago.

The instinct is to upload both contracts and ask "what changed?" That is the maximum-context move, and
it is the worst one. Two long documents, one of which is superseded, in a window that spends its
attention budget on both, with the answer sitting somewhere in the middle of each.

What the method does instead, in order:

**Find the extract first.** Search both documents for the clauses that carry commercial risk — payment
terms, liability caps, termination, renewal. That is usually three or four pages, not sixty. The reason
to do this by hand rather than asking the model is that finding the clauses is the judgment part, and
handing it over is what leaves you unable to check the answer.

**Label what you are giving it and in what order.** Current version first, marked as current. The old
version second, marked as superseded and as context only. The order is a decision, not a formality,
because the middle of the window is where things get lost.

**Ask one question at a time.** "List every clause where the current version is materially different
from the superseded one, quoting both." Then a separate turn for "for each, what is the risk to us?"
Two instructions in one request is a bloated tool set, and the second one is the one that gets dropped.

**Ask it what it cannot see.** Close with: "which clauses might have changed that are not in the extract
I gave you?" This is not a trick for better answers. It is a check on your own trimming, and it is the
one step that acknowledges the exchange you made when you decided what to leave out.

None of that is prompt writing. All four steps are decisions about what the model sees, which is why the
prompt — the sentence in step three — is the smallest part of the job.

Everything above reduces to one sentence you can check your work against, and it is the same sentence
Anthropic ends on: find the **smallest set of high-signal tokens** that makes the outcome likely.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents -->

Notice how different that is from what the marketing for these products sells, which is capacity. Larger
windows are a real capability and they are genuinely useful for some work. They are also, on the evidence
here, a place to lose things in the middle of.

## The honest caveats

**Every number here is 2025-or-earlier, and the models moved.** Chroma tested eighteen models available
in mid-2025; Liu's positional result is from 2023; Shi's distractor result is from 2023 as well. The
*shape* of the findings — non-uniform degradation, weak spots in the middle, sensitivity to distractors —
has held across several generations. The magnitudes have not, and the ranking of models by degradation
is already out of date.

**"Degradation" is measured on synthetic tasks.** Chroma's own report is explicit that it builds
deliberately simple, controlled tasks to isolate the effect of length. That is good methodology for
proving the effect exists, and it is not the same as measuring how much worse your actual work gets.
Real tasks get harder as they get longer, which is why the effect is hard to separate from difficulty in
the wild.

**The strongest counter is one I can only state, not demonstrate.** Model developers keep improving
long-context handling, and there is a live argument that the positional and distractor effects are
artefacts of current architectures that will shrink. Anthropic's own post acknowledges that smarter
models "require less prescriptive engineering". If that trend continues at pace, the specific habits in
this chapter become cheaper, though the underlying discipline — deciding what not to include — does not
go away, because the budget is finite either way.

**I deliberately did not quote a single context-window size.** The sources make the point that the
advertised number is the wrong number, so naming one would have argued against the chapter. This also
means the chapter will not tell you whether your specific tool's window is big enough, because that
depends on the task and the chapter's claim is that you have to test it.

**And this is written for one kind of work.** The method assumes your context is text you can excerpt,
label and point at. If you work in images, audio, or large structured datasets, the economics are
different, the sourcing here does not cover them, and the honest answer is that this chapter does not
know.

## Do this today

1. **Under 30 minutes.** Take the last conversation where a model gave you a disappointing answer. Count
   how much you pasted in. Then rebuild it: one extract containing the answer, one line saying what the
   material is and what is current, and nothing else. Compare the two answers. This is the entire
   chapter in one exercise and it takes about ten minutes.
2. **This week.** Pick the work you do most often and write a "context recipe" for it — a fixed list of
   what goes in, in what order, and what must never go in. The never list is the valuable half. Then use
   it twice and notice whether the omissions hurt anything.
3. **This quarter.** Build a file where the durable conclusions from your AI-assisted work live: what
   was decided, what is still open, what was ruled out. Start every new thread from it instead of from
   a blank window or a long history. This is the habit that turns scattered sessions into accumulating
   work, and it costs nothing but a text file.

## Further reading

- [Anthropic — *Effective context engineering for AI agents*](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
  — the source of the working definition and of the "attention budget" framing. Written for people
  building agents; the mechanism sections are the parts worth the generic reader's time.
- [Chroma — *Context Rot*](https://www.trychroma.com/research/context-rot)
  — eighteen models, deliberately simple tasks, and the clearest demonstration that the advertised
  window is not the usable window.
- [Liu et al. — *Lost in the Middle*](https://arxiv.org/abs/2307.03172)
  — the positional result. Read the abstract; it is the part that changes how you paste documents.
- Ch. 03 of this book, *What AI Can Never Do Well (and Why That's Your Moat)* — why verification, not
  generation, is the scarce skill this chapter is trying to protect.
- Ch. 10 of this book, *Finding Your Human-AI Collaboration Point* — the method for finding out where
  your own boundary sits, which this chapter assumes you have already started.
- Ch. 15 of this book, *Judging AI Tools for Yourself* — how to evaluate whether a tool's context
  handling is actually good, rather than trusting its specification sheet.

---

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
