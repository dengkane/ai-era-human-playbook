---
chapter: 3
title: "What AI Can Never Do Well (and Why That's Your Moat)"
part: "Part I — Face Reality"
status: draft
language: en
created: 2026-09-30
last_updated: 2026-09-30
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 2500
tags: [moat, limits, judgment, verification]
---

# 03. What AI Can Never Do Well (and Why That's Your Moat)

The title of this chapter is a trap, and I want to say so before you read it as a promise.

Ch. 01 called "AI can't do X" a sentence with an expiry date. The obvious next question is which
sentences don't expire — where the permanent line is. That question has a real answer. It is not a
list of tasks, and if I gave you one you should distrust it, because I would have assembled it from
evidence that will be stale by the time you read the appendices.

So this chapter does something narrower and more useful. It gives you a **test** for telling a limit
that will expire from one that won't — and then applies it, honestly, to the three candidates that
survive.

> **The one thing to take away:** A limit that lives on the machine's side disappears when the machine
> improves. A limit that lives on the human side only disappears if we rearrange ourselves. Bet on the
> second kind.

## The strongest evidence, and why you can't use it

In July 2025, a nonprofit called METR published the best study anyone had run on the question "where
is AI actually *not* good?" — not a benchmark, but a randomised controlled trial. Sixteen experienced
open-source developers, working on repositories they had maintained for years, on real issues from
their own backlogs. Each task was randomly assigned to allow or forbid AI assistance. Two hundred and
forty-six tasks in total, averaging two hours each.

The result was a slowdown: **19% longer with AI allowed.** The developers had predicted a 24% speedup
beforehand, and after experiencing the slowdown they still believed they had been sped up by 20% — a
39-point gap between what happened and what they felt happen. If you wanted proof that AI is not
simply good at everything, this was it: a controlled experiment, on experts, on their own work.

<!-- verified 2026-09-30 — source: https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/ -->

Open that page today and the first thing you see is a warning from its authors:

> These results are out of date. We have released results that are current as of early 2026 … We
> believe these historical results no longer reflect the current impact of AI models on open-source
> developer productivity.

Their new estimate, on the same population, is an **18% speedup**.

<!-- verified 2026-09-30 — source: https://metr.org/blog/2026-02-24-uplift-update/ -->

Before you file this under "AI got better," read what actually changed, because it is stranger than
that. The researchers did not say their method was wrong. They said the method had stopped working:

- Between **30% and 50%** of participating developers admitted withholding some tasks, because they
  did not want to be assigned to work on them without AI.
- Recruitment became difficult because developers did not want to spend half the study working the
  old way — even at $50/hour, on their own projects.
- Some developers reported it was hard to measure time at all, because they would start an agent and
  then work on something else while it ran.

One participant described it like this: *"my head's going to explode if I try to do too much the old
fashioned way because it's like trying to get across the city walking when all of a sudden I was more
used to taking an Uber."*

<!-- verified 2026-09-30 — source: https://metr.org/blog/2026-02-24-uplift-update/ -->

**Sit with what that means for a moment.** The most rigorous study of AI's limits stopped being able
to measure them within a year — not because the capability moved, but because the *baseline* moved.
You cannot measure what AI adds if nobody will work without it. The control group walked off the
study.

This is deeper than Ch. 01's version of the problem. There, limits expired as models improved. Here,
the *ability to know where the limits are* expired first — and it happened to the people who were
paying attention, using the best available method, and publishing their own retraction.

So: you cannot build a moat out of "AI is currently bad at X," no matter how good your evidence is.
The evidence will go soft underneath you, and often before the capability does.

## The test: which side is the limit on?

Here is the question that survives.

**If this limit disappeared, would it be because a model got better — or because people agreed to
something?**

That is the whole test. Ask it about any limit you are tempted to rely on.

- **Machine-side limits** are properties of the model: knowledge gaps, reasoning failures, tasks that
  are long or fiddly. These disappear with a release. Something that was impossible in 2023 became
  routine in 2025 — Ch. 01 lists the receipts, and the numbers are steep. METR's clearest measurement
  of this: the length of task an AI agent can complete at all has been **doubling roughly every seven
  months for six years**, and the trend has held across domains. Current models are near-perfect on
  tasks that take a human under four minutes and fail most tasks that take over four hours. That
  boundary is a moving object, and it has moved on a schedule for long enough to be unremarkable.

<!-- verified 2026-09-30 — source: https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/ -->

- **Human-side limits** are properties of us: who is accountable, what we will accept without
  checking, what a signature means. These do not disappear when a model improves. They disappear when
  a rule, a norm, or a market changes.

The test is not "would AI be capable of this?" It is "if AI became capable of this tomorrow, would
anyone be allowed to use it that way?" Most people reason about the first question and are blindsided
by the second.

Note the asymmetry. Machine-side limits get *eroded* — gradually, visibly, on a curve you can watch.
Human-side limits get *decided* — abruptly, by institutions, sometimes the same way a switch flips.
Ch. 02's point applies here: you are less likely to be surprised by a slope than by a step.

And here is why this is a moat rather than just a classification. Machine-side limits are where
everyone is competing. You cannot outrun a doubling time. Human-side limits are places where the
constraint is not compute, and where being the human who carries the responsibility is not a
disadvantage to be engineered away — it is the product.

## Three limits, honestly ranked

Applying the test to the candidates people most often cite. I have ordered these by how much I would
bet on them, and I say plainly which one I think is weakest.

### 1. Verification — the strongest of the three

Generating an answer and knowing whether it is correct are different problems, and only the first one
got cheap.

That is not a claim about model quality. It is a claim about information. To check whether an output
is right, you need something the generator did not give you — a test, a source, a rule, or the
experience to recognise a subtly wrong answer. If you ask a model to verify its own work, you now have
two outputs and the same problem, one level up. The recursion has to stop somewhere, and where it
stops is a person who knows.

Two pieces of evidence that this shows up in practice, both flagged as coming from a secondary source
in the notes:

- A study across 10,000+ developers found teams using AI completed 21% more tasks and merged 98% more
  pull requests — and that **review time rose 91%**, pull requests grew 154% in size, and bug rates
  climbed. The work did not disappear. It moved from writing to checking.
- In Stack Overflow's 2025 survey, 84% of developers reported using AI tools while only 33% trusted
  the output — a 51-point gap that widens with experience.

<!-- verified 2026-09-30 — source: https://thetechnomist.com/p/the-verification-bottleneck-why-ais -->

Note what this does to the "AI will replace programmers" story. Even granting that generation becomes
free, someone must decide whether the generated thing is right. That someone is the constraint — and
the constraint is a person, not a GPU.

**The honest qualification:** verification is cheap wherever a claim is checkable by rule. Code with
tests, arithmetic, anything with a formal specification. It is expensive where correctness depends on
context, intent, or consequences. So the moat is not "verification" in general. It is the
unverifiable part specifically, which is also the part that was always hardest to delegate.

### 2. Accountability — structural, and enforced by law

Someone has to be answerable, and it cannot be the system.

This is not a cultural preference. It is written into law. The EU AI Act requires that high-risk
systems be designed so they can be **effectively overseen by natural persons**, and for some uses it
goes further — requiring that certain decisions be separately verified and confirmed by **at least two
natural persons** with the necessary competence and authority. The Act explicitly anticipates
*automation bias*, the human tendency to defer to a confident-looking output, and requires that
oversight be designed against it.

<!-- verified 2026-09-30 — source: https://artificialintelligenceact.eu/article/14/ -->

Read that as a job description. Whatever the system can do, there is a named person who must
understand its limits, be able to interpret its output, and hold the authority to overrule it. That
role does not shrink when the model improves — if anything, the Act's treatment of automation bias
implies it gets *harder* as outputs get more convincing.

The machine-side version of this limit ("AI isn't reliable enough to sign off on things") is already
mostly gone in many domains. The human-side version ("nobody will let a system be the accountable
party") shows no sign of moving, because it is a legal and social arrangement rather than a capability
threshold. You can watch this distinction in real time: when a model gets better, the *temptation* to
remove the human rises, and regulators respond by writing the human in more explicitly.

### 3. Lived experience — real, but the one I'd bet on least

A 2026 paper in *Neuron*, from researchers at USC, UCLA and Google DeepMind, argues that AI systems
are limited by not having a body — that their understanding of the world is inherited from text rather
than built through interaction with it. The illustrative example: humans easily recognise a moving
pattern of dots as a person walking; AI systems tend to misread the same stimulus as a constellation.

Their framing is that "AI does not truly *understand* the real world because it does not *experience*
the real world" — that a system can describe the question "where is the salt?" but does not parse the
speaker's intent, locate itself in the room, plan the reach, or read the social context.

<!-- verified 2026-09-30 — source: https://chan.usc.edu/news/latest/why-ai-needs-body-truly-understand-world -->

This one is genuinely interesting and I am deliberately ranking it third, because it fails the test
less cleanly than the other two. Yes, the limit is about experience rather than capability, which puts
it on the human side. But the fix is also imaginable *on the machine side* — build the body, supply
the interaction, and the limit may erode. That is a much weaker position than "the law requires a
signature," which no amount of robotics changes.

Treat this as a candidate, not a foundation. Ch. 02's warning applies: an appealing explanation for a
limit is not the same as a limit that will hold.

## The honest caveats

Four, and the first two are serious.

**I cannot prove any of this is permanent, and the chapter title is overclaiming.** Everything above
is a claim about *structure*, not a guarantee about *duration*. "Human-side" limits are durable
because they require collective decisions to change, not because change is impossible. Laws get
rewritten. Norms shift. Verification through formal methods, and the widening use of AI to check AI,
could reduce the verification cost substantially. The test in this chapter is a better guide than a
list, but it is a guide, not a proof.

**The scaling disagreement is unresolved, and it bears directly on §2.** Some researchers report that
raw scale is hitting diminishing returns; others report continued improvement at a slower,
sub-exponential rate. I have not adjudicated this and cannot. If capability growth stalls, machine-side
limits stop eroding and start mattering — which would make the older, simpler advice ("learn what AI
can't do") correct again. The test still works; the urgency changes.

**Verification is cheap wherever a claim is checkable by rule.** This cuts against the chapter as
much as for it. Large parts of professional work — anything with tests, specs, or arithmetic — sit in
the verifiable column, and there the human's checking role really can be automated. The moat is
narrower than "be the person who checks things," and the whole skill is telling which column you are
standing in.

**Two of the three evidences underlying §1 come through a secondary source.** The review-time figures
and the Stack Overflow gap are real and reported, but I reached them through a summary rather than the
original reports, and that is recorded in the chapter's research notes rather than left unsaid. The
argument does not depend on the exact numbers — it depends on the direction — but a reader relying on
those figures should go and open them.

## Do this today

1. **Run the test on your own moat.** Name the thing you believe makes you hard to replace. Then ask
   the only question that matters: if a model got dramatically better at it tomorrow, would you lose
   your position — or would somebody still have to sign off, show up, or take the blame? If the answer
   is "the model getting better would end me," the limit is machine-side and the clock is running.
2. **Find your unverifiable twenty percent.** In your work, separate the part that can be checked by
   rule from the part that depends on context, intent, and consequences. The first is competitively
   exposed. The second is where the moat is — and most people have never drawn this line on their own
   job.
3. **Check whether you are the accountable one, or just nearby.** Accountability is the strongest of
   the three and the easiest to mistake. Being in the room when a decision is made is not the same as
   being answerable for it. If you never carry the consequence, you are not in the moat yet.

## Further reading

- Ch. 01 of this book, *AI Is Not a Tool — It's a Species*, sets up the moving-limit problem this
  chapter tries to solve.
- Ch. 02, *You're Anxious Because You're Using an Old Map*, supplies the reasoning about beliefs that
  stops and starts — the reason a slope is easier to survive than a step.
- Part II applies these tests to specific situations, starting with Ch. 04, *Where Different People
  Actually Stand*, which sorts the readers of this book by what they are actually exposed to.

---

📅 Last updated: 2026-09-30
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
