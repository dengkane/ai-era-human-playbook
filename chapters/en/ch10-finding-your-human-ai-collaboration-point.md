---
chapter: 10
title: "Finding Your Human-AI Collaboration Point"
part: "Part III — Amplify Your Leverage"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-02
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3600
tags: [collaboration, jagged-frontier, calibration, verification, productivity]
---

# 10. Finding Your Human-AI Collaboration Point

In 2023, a team of researchers from Harvard, MIT, Wharton and Boston Consulting Group took 758 BCG
consultants — about 7% of its consulting workforce — and gave half of them GPT-4.

On eighteen realistic tasks, the ones with AI did **12.2% more work**, **25.1% faster**, at **40% higher
quality**.

It is the study everyone quotes, and it is the reason your employer bought you a licence.

<!-- verified 2026-10-01 — source: https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle -->

Then the same team designed one more task, on purpose, to sit *outside* what the model could do. A problem
with a wrong but convincing answer.

Consultants working without AI got it right **84%** of the time. Consultants working with AI got it right
**60 to 70%** of the time.

<!-- verified 2026-10-01 — source: https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged -->

Same people. Same tool. Opposite result.

And nothing about the task told them which situation they were in.

> **The one thing to take away:** there is no general answer to "how do I use AI well". There is only
> your own answer, for a specific task, as of this month — and the way to get it is to measure it rather
> than assume it.

## The capability line is jagged, invisible, and it is not where you think

Start with the shape of the thing, because almost every bad decision about AI comes from imagining it as a
smooth curve.

The metaphor that stuck is Ethan Mollick's, from the paper's own team: a **jagged frontier**.

Picture a fortress wall, with towers jutting out and battlements folded back. The wall is what the model
can do. Outside it is what it cannot.

The problem is that the wall is invisible, and two tasks that look the same distance from the centre can
sit on opposite sides of it. His example: an LLM will write a decent sonnet and will reliably fail to
write you exactly a fifty-word poem, because it works in tokens rather than words.

"Write a poem" is inside. "Write a fifty-word poem" is outside. Nothing about the phrasing warns you.

<!-- verified 2026-10-01 — source: https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged -->

That is the first thing to internalise, and it contradicts the mental model most people are running.

If you think of AI capability as a dial — turn it up as models improve — you will keep being surprised,
because the dial is not turning evenly. Some things get better, some things stay broken, and the map is
not smooth.

Now add a measurement.

METR, a research nonprofit, tried to put a number on where the wall is for software tasks, by taking real
multi-step tasks, timing how long each takes a human expert, and then asking how often a model succeeds at
each length.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/ -->

The result explains a contradiction you have probably felt. For tasks taking a human under four minutes,
models succeed almost **100%** of the time. For tasks taking a human more than about four hours, they
succeed **less than 10%** of the time.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/ -->

That is why the same tool feels miraculous on Monday and useless on Tuesday. You have not changed, and the
model has not changed. You crossed the wall.

And the boundary is legible only in one dimension — length — which means it is a *hint*, not a rule. A
four-minute task that requires a specific fact the model does not have is outside. A two-hour task that is
a long sequence of ordinary steps may be inside. Length predicts, it does not decide.

Which brings us to the finding that should make you cautious rather than either smug or afraid.

On the outside-frontier task, the AI did not fail loudly. It produced an answer that was **wrong and
convincing**, and the consultants who trusted it did worse than the ones who had no tool at all. The
paper's authors describe the same failure from a different experiment: when the AI is very good, people
stop paying attention, and they called it **falling asleep at the wheel**.

<!-- verified 2026-10-01 — source: https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged -->

This is the asymmetry that governs everything in Part III.

When the model is right, you get the benefit. When the model is wrong *inside* your area of expertise, you
catch it, and you get the benefit anyway. The damage happens in the third case — wrong, and outside your
ability to notice — and that is exactly the case where you are most likely to feel good about the output,
because confident, well-formatted, plausible nonsense is the model's best work.

And there is a measured version of how badly your judgment degrades, which is the most useful single
number in this chapter.

METR ran a randomised controlled trial with sixteen experienced open-source developers working on
repositories they had contributed to for years — 246 real bug fixes, features and refactors, each randomly
assigned to allow or forbid AI. When AI was allowed, the developers took **19% longer**.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/ -->

That is already interesting. Here is the part worth sitting with.

Before the study, those developers predicted AI would speed them up by **24%**. After living through the
slowdown — after actually experiencing it — they estimated that AI had sped them up by **20%**.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/ -->

A roughly forty-point gap between what happened and what they believed happened, and the believing survived
the experience.

Whatever else follows from that, one thing does: your feeling that AI is helping is not evidence that it
is. It is a starting hypothesis, and it needs a check that is not your own impression.

## The line is drawn around you, not around the tool

Everything so far could still be read as "AI is unreliable."

That is not the finding. The finding is that the frontier's *location* depends on who is standing on the
other side of it, and the same study proves it twice.

First, the skill-levelling result. In the BCG experiment, the researchers rated all the consultants
beforehand. The ones who scored **worst** gained the most from AI — a **43%** improvement against their own
baseline. The top performers gained too, but only **17%**.

<!-- verified 2026-10-01 — source: https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle -->

Read that as a fact about the tool's value and it is a nice story about opportunity.

Read it as a fact about *where the frontier is* and it becomes operational: the weaker you are at a task,
the more of that task sits inside the model's frontier relative to you, and the larger the gain. The
stronger you are, the more of it you already do better, and the smaller the gain.

The same prompt handed to two colleagues with different experience produces two different amounts of value,
and neither is lying when they report it.

Second, the METR developers again.

Those were *experienced* open-source maintainers, working on *their own* repositories, with thousands of
hours in that code. The study's authors are unusually careful about this, and their own limitations section
says it directly: they do not provide evidence that AI fails to speed up most developers, and they flag
that the result may well not hold for **less experienced developers, or for developers working in an
unfamiliar codebase**.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/ -->

So the honest reading is not "AI slows developers down." It is that the frontier is nearer for the expert
and further for the novice — and the expert, being expert, is also the one most likely to be misled about
it.

Anthropic's usage data adds the third piece, and it is the one that matters if your job is less like
consulting and more like a job.

Analysing anonymised conversations, they classify use into **augmentation** — the person stays in the loop,
iterating and learning — and **automation**, where the model does the task. On Claude.ai, augmentation
moved back ahead, **52% to 45%**.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/research/anthropic-economic-index-january-2026-report -->

More useful than the split is what they do with it.

They take the tasks the model is observed doing, and ask what is left of each occupation without them. For
**travel agents**, the model is doing the complex planning, so removing it leaves the routine ticket-buying
and payment collection: **deskilling**. For **property managers**, the model is doing the bookkeeping, so
what remains is contract negotiation and stakeholder management: **upskilling**.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/research/anthropic-economic-index-january-2026-report -->

Two occupations, the same technology, opposite effects on what is left of the human's job.

The difference is not how much AI they use. It is **which part of the job it took**.

That is the real risk of a badly-placed collaboration point, and it is not redundancy.

It is that you delegate the interesting half, keep the clerical half, and get quietly demoted inside your
own job — while reporting, accurately, that the tool is saving you time.

There is a fourth piece of evidence, and it is the one that argues for keeping your hand in. A study that
put many different large language models through standard creativity tests alongside human participants
found that **the models' answers were far more similar to each other than the humans' answers were** —
across models, not just within one.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2501.19361v1 -->

The BCG team saw the same thing from the other direction: the AI-assisted outputs were higher quality and
**more homogeneous**, and they flagged it as an open question rather than a settled cost.

If you and everyone else hand the generative half to the same handful of models, your work converges with
theirs. The part that stays yours is the part you do not delegate.

## How to draw your own map

Now the method, and the reason this chapter does not end with a list of prompts.

You cannot be told your collaboration point, because it depends on four things the book cannot see: your
experience in this specific work, how well you can check the output, how costly a wrong answer is, and how
familiar the tool is to you this month.

What you *can* be given is a procedure for finding it, and a way to notice when it has moved.

Here is the procedure. It is a loop, it takes minutes, and the important part is the second step.

### Step 1: Split the job into pieces small enough to judge

The jagged frontier is not a property of your job. It is a property of tasks, and jobs are bundles of them.

"Write the quarterly report" is not a task; it is a dozen — gathering figures, checking them against last
quarter, deciding what the numbers mean, choosing what to leave out, writing the narrative, getting the
tone right for the audience.

Some of those are inside the frontier and some are outside, and you will never find out which while you are
thinking about the whole report.

So decompose. The unit you want is small enough that you can say, honestly, "I would know if that were
wrong."

### Step 2: Predict the result before you look at it

This is the step everyone skips and the only one that makes the exercise worth doing.

Before you read what the model produced, write down — a sentence is enough — what you expect it to get
right and what you expect it to get wrong. Then read the output.

Why bother. Because the METR developers experienced a 19% slowdown and still believed they had been sped up
by 20%. Your unsupported impression is not a measurement. A prediction made *before* the answer arrives is
the cheapest way to turn an impression into a measurement, because it is the one observation that your
desire for the tool to have worked cannot contaminate.

And the signal you are looking for is specific. You are not asking "was the output good". You are asking
**"was I surprised?"**

Surprised in the good direction — it got something right you thought was hard — means you have found a piece
you can hand over. Surprised in the bad direction — it missed something you were sure it would catch — means
you have found the edge. Not surprised at all means the piece is already yours and you have learned nothing,
which is also worth knowing.

### Step 3: Check the output against something that is not the output

The outside-frontier task in the BCG study was not failed by the model being obviously broken. It was
failed by the model being **wrong and convincing**, and the consultants who trusted it did worse than the
ones with no tool at all.

<!-- verified 2026-10-01 — source: https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged -->

Which means the check cannot be "does this look right". It has to be a check against something external: a
figure you look up, a test that runs, a colleague who knows the domain, the client's actual constraint.

The rule that follows is short and it is the one rule this chapter will give you:

**Never delegate a task whose output you cannot check against something other than the output itself.**

That is Ch. 03's verification argument turned into a working rule, and it is why the answer is personal.
Two people can be handed the same task, and for one of them the output is checkable — they have the domain
knowledge, or the test, or the source — and for the other it is not. The first should delegate it. The
second should not, however impressive the draft looks.

### Step 4: Write down which side you were on, and date it

One line per task, in a file you will actually reopen. What you tried, what you predicted, what happened,
and the date.

This sounds bureaucratic and it is the highest-return thing in the chapter, for two reasons.

The first is that the frontier moves. METR now carries a warning at the top of its own time-horizon page
saying that the published figures are out of date and its results from a year ago no longer reflect the
current tools.

<!-- verified 2026-10-01 — source: https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/ -->

If a well-funded research group's numbers go stale inside a year, your sense of "AI is bad at this" is a
claim with an expiry date you did not write down. A dated log is how you find out you were wrong, instead of
quietly avoiding a task for two years.

The second is that the log is where the two working styles show up, and you can tell which one you are *from
the record* rather than from a personality quiz.

The BCG researchers noticed their most effective consultants worked in one of two ways, and named them after
the mythical hybrid. **Centaurs** split the work, keeping a clean line between what they do and what the
machine does, and handing over whole pieces that sit inside the frontier. **Cyborgs** interleave — they
start a sentence and let the model finish it, they draft and revise in the same breath, they move back and
forth across the boundary within a single task.

<!-- verified 2026-10-01 — source: https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle -->

Both worked. The study reports them as roughly evenly split, and it does **not** report one as better.

So do not adopt a style. Do the work for a few weeks with the log open, then read your own lines: if your
wins cluster on whole tasks you handed over, you are a centaur. If they cluster on tasks you built together,
you are a cyborg.

That is not a personality result. It is a description of what has been working, which is more useful and can
change when the tools do.

| Where the task sits | What it looks like | What to do |
|---|---|---|
| Inside your frontier *and* inside the model's | You predict it, it lands, you are unsurprised | Hand it over. This is the boring, high-value majority. |
| Inside the model's, outside yours | Output looks strong and you cannot say why | Do not use it. This is where wrong-and-convincing lives. |
| Inside yours, outside the model's | You would catch the error and often do | Use it anyway, as a first draft to react against. |
| Outside both | Neither of you can do it well | This is the work that is actually yours. |

None of this is about which model to buy. That is a different question with a different answer every few
months — Ch. 15 is about how to answer it yourself, and Appendix A is the current list, which will be wrong
by the time you read it.

This chapter is about the thing that does not go stale: the fact that the boundary exists, that it is
jagged, that it is personal, and that the only instrument that reads it is a prediction you wrote down
before you looked.

## The honest caveats

**The headline numbers come from one firm and one elite population.** The 758 consultants were BCG's
consultants, doing consulting work with GPT-4 in 2023, and the tasks were designed by the researchers. It is
a good study; it is not the world. Treat the magnitudes as illustration and the shapes as findings.

**The developer RCT is small and its own authors bound it tightly.** Sixteen developers, 246 tasks, one type
of work, one country. METR lists the claims it does *not* support, including that AI fails to speed up most
developers. It also flags the possibility that developers needed more than the few dozen hours of tool
experience the study allowed. I have tried to carry those limits into the chapter rather than quote the 19%
and run.

**The counter-evidence is real and I could not open it.** Cui, Demirer and co-authors ran three randomised
controlled trials on GitHub Copilot and found substantial positive effects for developers. That is a direct
counterweight to the METR result, and the accessible versions of it are vendor-adjacent or blocked to this
tool. It is recorded in the notes as the first thing a revision should chase. Do not read this chapter as
settled.

**The deskilling/upskilling finding is a model of a possible future, not an observation.** Anthropic derived
it by taking tasks the model is seen doing and asking what remains. Nobody has watched travel agents' jobs
hollow out over five years and measured it. It is a good way to think and a weak piece of evidence.

**"Falling asleep at the wheel" is one experiment about recruiters.** The mechanism is well-argued and
widely reported; the longitudinal evidence that AI use erodes skill over years does not exist yet in
anything I could open. This chapter names the risk and does not pretend to have measured it.

**And the caveat about the whole method.** A prediction-and-log loop works if you actually run it, which
takes discipline, and it produces a personal map that is worth nothing to anyone else. If you want the short
version: never delegate what you cannot independently check, and assume any feeling of "this is working" is
a hypothesis. Everything else here is elaboration.

## Do this today

1. **Under 30 minutes.** Take one task you did this week and decompose it into five pieces. For each,
   write one line: could I tell if this were wrong, and how? The pieces you cannot answer for are the ones
   to keep doing yourself, and most people discover it is fewer than they feared.
2. **This week.** Run the loop on your three most-repeated tasks. Predict the output before you read it,
   then read it, then write one line on whether you were surprised and in which direction. Keep the file.
   You are not optimising anything yet. You are finding out where the wall is.
3. **This quarter.** Re-read the log and act on it. Hand over the entries where you were never surprised.
   Stop delegating the entries where you were surprised in the bad direction. And check the date on
   everything — if your earliest entries are three months old and you have not tested whether they are
   still true, the map you drew is a map of a country that has moved.

## Further reading

- [HBS Working Knowledge — *Humans vs. Machines*](https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle)
  — the readable account of the BCG study, including the task that AI failed and the centaur/cyborg split,
  written with the authors.
- [METR — *Measuring AI Ability to Complete Long Software Tasks*](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/)
  — where the four-minute and four-hour numbers come from, and an unusually good example of a research
  group marking its own results as stale.
- [Anthropic — *Economic Index report: Economic primitives*](https://www.anthropic.com/research/anthropic-economic-index-january-2026-report)
  — the augmentation/automation split and the deskilling-versus-upskilling analysis by occupation.
- Ch. 03 of this book, *What AI Can Never Do Well (and Why That's Your Moat)* — the verification argument
  that Step 3 is built on.
- Ch. 11 of this book, *Context Engineering (Beyond Prompt Writing)* — what to do once you know where your
  frontier is, and why the prompt is the smallest part of it.
- Ch. 15 of this book, *Judging AI Tools for Yourself* — how to decide whether a specific tool is worth
  using, without trusting anyone's list, including this book's.

---

📅 Last updated: 2026-10-02
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
