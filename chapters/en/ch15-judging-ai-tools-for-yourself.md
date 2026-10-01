---
chapter: 15
title: "Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong)"
part: "Part III — Amplify Your Leverage"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [evaluation, benchmarks, tool-selection, leaderboards, contamination]
---

# 15. Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong)

This book has an appendix that lists AI tools. Here is what you should assume about it: **it is partly
wrong already.** Prices move, models get replaced, and the specific model that was best for a task when
the appendix was written is not the one that is best for it now. That is not an apology for a weak
appendix. It is the reason this chapter exists.

Because the instinct, when you need to choose a tool, is to look up a ranking. And that instinct has a
measurable problem.

Chatbot Arena is the most-cited leaderboard for ranking AI systems. A study of it found systematic
distortions rather than measurement noise. Providers are able to test multiple variants privately before
going public and **retract scores they do not like** — at one point, 27 private variants were tested
ahead of a single public release. Sampling is uneven: two large providers received roughly **19.2% and
20.4% of all the arena's data**, while **83 open-weight models together received about 29.7%**. The
authors' conclusion is that these dynamics produce **overfitting to the arena's specific quirks rather
than to general quality**.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2504.20879 -->

> **The one thing to take away:** a public ranking measures how models perform on the test, and the test
> is not your work. The only evaluation that is both cheap and trustworthy is a small one built from
> tasks you actually do.

## The three ways public rankings mislead you

The instinct to trust a ranking is not stupid. It is that the rankings are answering a different
question from the one you have, and there are three distinct mechanisms by which they mislead.

### They can be gamed, and not always on purpose

The Arena finding is not that anyone cheated. It is that the field is not level, in ways that favour
whoever has the most resources to work the system: more private testing, more data, fewer retractions.
The distortion is structural rather than dishonest, which makes it harder to spot and easier to dismiss.

<!-- verified 2026-10-01 — source: https://arxiv.org/abs/2504.20879 -->

Notice what this means for you as a reader of rankings. Even if you trust the people running the
leaderboard, the ranking reflects who could afford to iterate against it. That is a fact about the
participants, not about the tools.

### They can be contaminated

The second mechanism is blunter. Benchmarks become public, and public text ends up in training data. The
research literature calls this **benchmark data contamination**, and it happens when evaluation
questions leak into the material a model was trained on — meaning the model may have seen the answers
before the test was ever run.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2406.04244v1 -->

That is not a small bookkeeping problem. It inflates exactly the scores people use to compare models,
and it is hard to detect after the fact, because nobody can point to the moment a specific question
entered a training corpus.

### The obvious shortcut is biased too

Here is the loophole a smart person reaches for: if public benchmarks are contaminated, do not use a
public benchmark. Write your own test and **let a model be the judge**.

That does not work, and the reason is specific. A study measuring evaluator bias found that a leading
model showed significant **self-preference bias** — it rated outputs more favourably when judging in
favour of itself. The mechanism is more interesting than the headline: the model rates text it finds
**familiar** more highly, regardless of whether it wrote that text. Familiarity, measured as lower
perplexity, is what drives the preference.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2410.21819v1 -->

So the model is not merely favouring its own output. It is favouring whatever *sounds like* its own
output — which means a judge can be biased toward a house style you did not ask for and cannot see. If
you use a model to choose between two drafts, you are partly measuring which draft sounds more like that
model.

## What actually happens when tools get deployed

Now step back from rankings to the thing you actually care about: whether the tool does anything where
you work.

The most-quoted number here comes from an MIT study of enterprise adoption. On its dataset — 150
interviews with leaders, 350 employee surveys, and an analysis of 300 public deployments — **about 5% of
generative-AI pilots achieved rapid revenue acceleration, and the vast majority stalled with little to no
measurable impact**.

<!-- verified 2026-10-01 — source: https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/ -->

Read the explanation rather than the headline, because it is the useful part. The authors' diagnosis is
that the failure is **not model quality**. It is integration: generic tools are flexible for individuals
and stall in organisations **because they do not learn from or adapt to a specific workflow**.

<!-- verified 2026-10-01 — source: https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/ -->

There is a second finding in that same dataset worth carrying forward, about how the tool is acquired:
buying from a specialised vendor succeeded about **67% of the time**, while building internally succeeded
**about a third as often**.

<!-- verified 2026-10-01 — source: https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/ -->

Both findings point the same way, and it is the opposite of the leaderboard question. Whether a model
scores well is close to irrelevant. Whether the thing fits into the work — which is decided by the
workflow, the data, and the people who have to adopt it — is what determines whether anything happens.

That is why a personal evaluation is not a hobbyist's version of the professional process. For a
person with a job, it is the only version of the process that has a chance of working, because you are
the workflow.

## How to build a test that is actually yours

Everything above has a common implication, and here it is stated plainly. **The evaluation has to be
built from your work, be too small and too private to be worth gaming, and be thrown away and rebuilt
when the tools change.**

There is a good framework for what a trustworthy evaluation set looks like, and it comes from a guide
written for practitioners. It gives five properties. A dataset should be:

**Defined in scope** — aligned to the specific task, not "writing in general".

**Demonstrative of production usage** — built from the inputs real users actually give.

**Diverse** — covering the range of the problem, so the result is not an artefact of one easy case.

**Decontaminated** — distinct from anything used in training, which for your own tasks is automatic.

**Dynamic** — a living set that evolves as the work changes.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2506.13023v2 -->

The same guide is direct about why the public option is not a substitute: widely-used benchmarks "often
lack use-case specificity" and "may be contaminated with training data".

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2506.13023v2 -->

Those five properties translate into something you can build in an afternoon. Here is the procedure.

### Collect twenty real inputs, and their real answers

Not twenty prompts you invent for the test. Twenty actual items from your work — the emails you answer,
the reports you summarise, the tickets you triage, the contracts you review, the code you write. If you
have twelve, use twelve. The point is not statistical power; it is that the set was drawn from the thing
you are measuring.

The reason this beats every public benchmark is the fourth property. Nobody trained on your inbox. Your
set is automatically decontaminated, and it will stay that way as long as you do not post it.

### Write down what a good answer looks like before you run anything

This is the step that makes the rest work, and it is the same discipline Ch. 10 gave you. For each item,
before you try any tool, write one line: what would make this output correct enough to use.

Two things follow from doing this first. You stop grading against the draft you happened to like. And you
get a score you can defend, because you decided the standard before you saw who met it.

### Do not let a model choose between its own children

This is where the self-preference finding bites. If you ask a model to compare two outputs, you are
partly asking which one is more familiar to it.

<!-- verified 2026-10-01 — source: https://arxiv.org/html/2410.21819v1 -->

So score it yourself against the line you wrote. If you must automate, keep the judge from being the same
model that produced the candidates, and treat a close result as a tie rather than a verdict.

### Date it, and rebuild it when the answer stops being obvious

Your set has a shelf life. The moment every tool gets the items right, the set has stopped measuring
anything and you need harder items — which is the fifth property doing its job.

That also means a number you wrote down a year ago is not evidence about today's tools. It is evidence
about last year's, and the honest thing is to say so rather than to keep quoting it.

### The whole method in one table

| Instead of | Do this |
|---|---|
| Reading a leaderboard | Run 10–20 of your own tasks through both tools |
| Asking a model which output is better | Score against a standard you wrote first |
| Trusting a vendor's benchmark | Test on data the vendor has never seen, which is your data |
| Deciding once and moving on | Date the test and rebuild it when it saturates |

None of this is complicated, and none of it is free — it is an afternoon, twice a year, plus a habit of
keeping a folder of real inputs. That cost is the entire price of not being wrong about which tool to
use, and against a subscription you are about to keep paying for, it is trivially cheap.

## From a score to a decision

Running the test gives you two numbers. It does not tell you what to do, and the gap between those two
things is where most tool decisions actually go wrong — because the reflex is to pick the higher score.

Do not. The higher score is usually a marginal advantage on a set you built in an afternoon, and it sits
on the other side of a switching cost you have to pay in a currency the test does not measure. Three
questions decide it, and none of them is "which scored better".

**Does it clear the bar on the work you do most, or just on average?** A tool that wins on your
long-tail tasks and ties on your daily ones is not an upgrade; it is a new thing to learn for a benefit
you hit twice a month. Look at where the two scores differ, and ask whether that is the work that pays
you.

**What does switching actually cost?** Not the subscription — the migration. Your saved prompts, your
habits, the muscle memory that took weeks to build, and the specific way you have learned to phrase
things so this tool behaves. Ch. 11 is about why that matters: a lot of your effectiveness lives in
context you have already tuned, and a new tool starts you at zero on all of it. A 10% quality improvement
that costs you a month of rebuilding is not a 10% improvement.

**Will you actually use it?** This is the question the deployment data answers, and it is the one people
skip. MIT's finding was that the failure was not model quality but integration — the tools that stalled
did so because they did not fit the workflow.

<!-- verified 2026-10-01 — source: https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/ -->

You are the workflow in question. If the new tool is better but you will keep opening the old tab out of
habit, the better tool is the worse choice, and no benchmark will tell you that.

Put together, those three questions produce an answer that surprises people who expected a ranking: **the
default is not to switch.** Switch when the test shows a difference on work that matters, when the
switching cost is small, and when you can honestly say you will change your habits. Otherwise keep what
you have and re-test in six months, because the margin you declined today will be larger then.

### The case you will actually face

Most readers of this chapter are not choosing their first tool. They have one, it works, and the real
question is when to re-examine that.

The honest answer is narrower than "when something better comes out", because something better comes out
constantly and chasing it is a full-time hobby. Re-test when one of these is true:

**Your work changed.** Different tasks, different outputs, a different job. Your test set is measuring
the old job, and it should be rebuilt because the job was.

**The tool has become the bottleneck in a way you can name.** Not "it feels slow" but "I keep hitting
this specific limit and working around it in this specific way." A named workaround is a real cost, and
it is the thing to test against.

**Something new solves a problem you already had.** Not "it scores higher", but "it does the thing I
have been doing by hand for a year." That is a concrete, checkable claim, and it is testable in your
twenty items.

**The price changed in a way that matters to you.** Costs move, and a tool that was obviously worth it
at one price can stop being worth it at another. That is arithmetic, not evaluation, and it is the one
reason to reconsider without running anything.

Notice what is not on the list: a leaderboard shift, a new release, a colleague's enthusiasm. Those are
inputs to curiosity. They are not evidence about your work, and the entire point of building your own
test is to have something better than the sensation that everyone else has moved on.

### When the answer changes

One more thing, because it is the difference between a test set that keeps working and one that quietly
stops meaning anything.

Your twenty items have a lifespan. At some point every tool you try will pass them, and when that
happens the set has stopped measuring quality and started measuring nothing. The signal is easy to
recognise and easy to ignore: the results converge, the differences become noise, and you find yourself
checking less often because the outcome is always the same.

That is not a failure of the method. It is the method telling you the tools have caught up with the part
of your work you thought to test, and that the interesting questions have moved to the parts you did not.
The response is to rebuild from your recent failures — the tasks you have been working around, the
outputs you rewrote by hand, the cases where you quietly stopped asking the tool. Those are the new hard
items, and they are also, not coincidentally, where the next real gain lives.

Put a date on the set when you build it. It is a small thing that does a large amount of work: it turns
"my testing says this is fine" into "my testing said this was fine in March", which is a claim you can
check instead of one you have to trust.

## The honest caveats

**The leaderboard critique is one study, and its authors are reforming the thing they critiqued.** It is
a 68-page analysis with concrete numbers, and it is the best available on the question. It is also a
paper whose findings are contested by the platform's organisers, and the honest position is that the
mechanisms it documents are real while its estimates of their size should be treated as one team's
measurement.

**The contamination finding is a survey, not a prevalence estimate.** It establishes that the mechanism
exists and catalogues detection methods. It does not tell you how contaminated any specific benchmark
is, and anyone quoting a single percentage for that is going beyond what I could verify.

**The 95% figure has one group's fingerprint on it.** MIT's dataset is 300 deployments and 150
interviews, gathered by a team with a specific thesis about a "GenAI divide". The figure is widely
quoted, and the RAND corroboration I wanted — over 80% of AI projects failing — returns 403 to this
tool, so it is recorded in the notes as unopened rather than folded in here. Treat the direction as
established and the exact number as provisional.

**The self-preference result is about comparison, not about use.** If you use a model to draft something
and judge it yourself, this finding is largely irrelevant to you. It matters the moment you delegate the
*choice* to a model, which is exactly the shortcut the chapter is warning about. Do not over-apply it to
the ordinary case.

**And the method has an obvious failure mode.** A 20-item test set is not statistics. It will miss
differences that matter, it will be fooled by a lucky case, and it can be unconsciously built to favour
the tool you already wanted. Which is why the discipline is writing the standard down first — that is
the only guard against your own version of the bias the models have.

## Do this today

1. **Under 30 minutes.** Open your sent folder or your ticketing system and collect the last 15 real
   things you had to write, answer, or summarise. Put them in a document. For each, add one line
   describing what a usable output would have to contain. You have just built an uncontaminated
   benchmark, and you did it faster than reading a review of one.
2. **This week.** Run five of those items through the tool you currently use and five through the one
   you are considering, then score both against your own lines. Do not ask a model which output is
   better. Whatever the result, you now have something no leaderboard can give you: a comparison of two
   tools on your work, dated, that you can re-run.
3. **This quarter.** Decide the trigger for re-testing — a new model release, a price change, or simply
   the date. Put it somewhere you will see it. Then, when every tool passes your set, add five harder
   items from the failures you have been working around. That is what keeps the test measuring instead
   of reassuring.

## Further reading

- [Singh et al. — *The Leaderboard Illusion*](https://arxiv.org/abs/2504.20879)
  — the structural critique of Chatbot Arena, with the numbers. Read the abstract; the mechanisms are in
  the first few pages.
- [Rudd, Andrews & Tully — *A Practical Guide for Evaluating LLMs*](https://arxiv.org/html/2506.13023v2)
  — the 5 D's framework this chapter's method is built from, written for practitioners rather than
  researchers.
- [Wataoka, Takahashi & Ri — *Self-Preference Bias in LLM-as-a-Judge*](https://arxiv.org/html/2410.21819v1)
  — why "let a model judge the outputs" is not the shortcut it looks like.
- Appendix A of this book, *2026 AI Tool Matrix* — the list this chapter is teaching you not to trust
  blindly, including and especially its recommendations.
- Ch. 10 of this book, *Finding Your Human-AI Collaboration Point* — the prediction-and-log loop, which
  is the same discipline this chapter applies to tool choice.
- Ch. 06 of this book, *The Entrepreneur* — why the tool is not the variable that decides the outcome,
  which is what the deployment data actually shows.

---

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
