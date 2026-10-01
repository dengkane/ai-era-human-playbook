---
chapter: 13
title: "Meta-Skills for the AI Era: Taste, Questioning, Synthesis, Empathy"
part: "Part III — Amplify Your Leverage"
status: draft
language: en
created: 2026-10-01
last_updated: 2026-10-01
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3500
tags: [meta-skills, taste, judgment, critical-thinking, empathy, synthesis]
---

# 13. Meta-Skills for the AI Era: Taste, Questioning, Synthesis, Empathy

This chapter is supposed to be about four human qualities that machines cannot manage. Before writing
it, I checked whether that is true, and the first thing I found broke the premise.

Researchers at the University of Toronto ran four experiments in which people judged written responses
to difficult scenarios — some of them the kind a crisis line handles. They compared responses from
ChatGPT with responses from ordinary people and from **trained crisis responders**. In every experiment,
the AI's responses were preferred and rated more compassionate: more care, more validation, more
understanding.

<!-- verified 2026-10-01 — source: https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds -->

A separate systematic review and meta-analysis pooled the studies comparing chatbots with human
healthcare professionals on empathy measures and found the results mixed — but with chatbots scoring at
least as high in a substantial share of them, including the well-known finding that patients rated
chatbot answers to their medical questions as more empathetic than their doctors'.

<!-- verified 2026-10-01 — source: https://pmc.ncbi.nlm.nih.gov/articles/PMC12536877/ -->

> **The one thing to take away:** none of these four skills is on the list because a machine cannot
> perform it. They are on the list because someone has to be accountable for the judgment, and a model
> cannot be.

## The premise is wrong, and the corrected version is more useful

Let me be direct about what that opening means, because a chapter that quietly ignored it would be
dishonest and a chapter that panicked about it would be useless.

**"Empathy is the one thing AI can't do" is false**, at least as far as anyone can measure it. What gets
measured is rated compassion, and by that measure the machine is competitive with trained humans, and
tirelessly so. There is a specific reason it does well, and it is unflattering: the machine does not get
tired, does not have a bad day, does not carry the last case into the next conversation.

<!-- verified 2026-10-01 — source: https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds -->

So if you had been planning to build your position on "they can't do feelings", the ground moved. What
follows is what is left, and it turns out to be a better position, because it is one that does not
depend on a capability gap closing at the wrong moment.

Look at where the machine is strong and where it is weak, because the pattern is the same across all
four skills and it is the spine of this chapter.

| | Producing the output | Judging the output |
|---|---|---|
| Empathy | Rated more compassionate than crisis responders | Cannot be the one who is responsible for someone |
| Questioning | Generates good questions on request | Cannot decide which question is the one that matters |
| Synthesis | Summarises and combines competently | Cannot commit to a conclusion with something at stake |
| Taste | Generates many plausible options | Weak at telling the better of two proposals from the worse |

The right column is where the evidence is thinnest in public attention and thickest in the data, so
start with the sharpest measurement of it.

Anthropic built a benchmark called TASTE, which asks a simple question: given two research proposals,
can the model tell which one an experienced researcher would prefer? It contains 92 pairs, and the
human agreement rate is estimated at 77%.

<!-- verified 2026-10-01 — source: https://alignment.anthropic.com/2026/taste/ -->

The best model scored **60%**. Most models were within two standard deviations of **random**. And here
is the detail that makes it a finding rather than a curiosity: models that are at the frontier on general
agentic benchmarks scored near chance on this.

<!-- verified 2026-10-01 — source: https://alignment.anthropic.com/2026/taste/ -->

Read that alongside the empathy result and the shape of the real boundary appears. The machine can
produce the thing — the compassionate reply, the research proposal, the plausible option — and it cannot
reliably tell you which of two things is better. Generation is cheap and getting cheaper. Discrimination
is not, and does not appear to be improving at the same rate.

That is the argument for all four skills, and it is why the chapter is not a list of unattainable
virtues. Each of the four is a different way of exercising discrimination under responsibility.

## Taste: the ability to tell, and to be the one who decided

Taste is the most insulting-sounding of the four and the most practically decisive. It is not about
liking nice things. It is the capacity to look at three plausible outputs and know which one is right
for this situation — and, crucially, to be willing to have chosen.

The TASTE result explains why this matters more than it used to. If you can generate twenty options in
a minute, the bottleneck is no longer production. It is selection, and selection is what the models are
measurably bad at.

<!-- verified 2026-10-01 — source: https://alignment.anthropic.com/2026/taste/ -->

There is a trap inside this, and Ch. 10 named it: the models are also bad at telling you when *they*
are wrong, so a plausible option arrives with no reliable label. Taste is the skill that supplies the
label.

Practically, taste is built by making decisions and living with them. Three things accelerate it, and
none is a shortcut:

**Decide in public, and get graded.** The TASTE design is instructive here — the researchers whose
preferences were used did not judge alone; they discussed their disagreements in pairs and then revised,
which raised agreement from 53% to 68%.

<!-- verified 2026-10-01 — source: https://alignment.anthropic.com/2026/taste/ -->

Argue your call with someone who disagrees and see who was right. That is the training, and it is why
taste is hard to acquire alone.

**Keep a record of what you chose and what happened.** Ch. 10's log is the same instrument applied here.
The difference is that you are logging decisions rather than surprise, and checking them months later.

**Notice when you cannot say why.** If you prefer one draft to another and cannot articulate the reason,
that is either taste operating below the level of language, which is real, or an unexamined bias. Finding
out which is the whole skill.

## Questioning and synthesis: what the model cannot do with them

These two travel together, because they are two halves of the same act: deciding what to ask, and
deciding what the answers add up to.

Start with the honest problem. Of the four skills in this chapter's title, **synthesis is the one with
the least evidence behind it.** Nobody has built a benchmark for it. I looked, and the results were
thought-leadership posts and nothing else. So what follows is an argument from mechanism, not a
finding, and I am labelling it as such.

The mechanism is this. A model can summarise a hundred documents competently — that is a solved task,
and generative models are good at it. What it cannot do is decide which of the hundred matters, because
that decision depends on a purpose it does not have. Which is why the two skills are inseparable:
**the question determines what counts as a synthesis.**

Ask "what do these customers want?" and you get a tidy summary of stated preferences. Ask "what are
these customers doing that contradicts what they say they want?" and the same hundred documents produce
a different, more useful document. The model will answer either question equally well. Choosing which
one to ask is the work.

That has a concrete consequence that most people get backwards. When you use a model to summarise, you
have not saved the thinking — you have spent it earlier, on the question. If the question was lazy, the
summary is a confident compression of the wrong thing, and it will read exactly the same as the useful
version.

One more thing the evidence supports, and it is the uncomfortable part. Cognitive offloading — using an
external aid instead of doing the cognitive work — reduces the active recall and problem-solving that
build the skill in the first place. That is the mechanism behind the concern that heavy AI use erodes
critical thinking.

<!-- verified 2026-10-01 — source: https://pmc.ncbi.nlm.nih.gov/articles/PMC12036037/ -->

I want to be careful here, because the strong version of this claim is not established. The literature
is largely correlational and self-reported, and "people who use AI more think less" is compatible with
several explanations, including that people who think less use more AI. What the mechanism does support
is narrower and still worth acting on: **if you never form the judgment, you do not maintain it.** The
skill atrophies the way any unused capacity does, and the tool that makes you faster at producing is
the same tool that can remove the repetitions that built your discrimination.

Which is why the practice for this pair is not "use AI less". It is to keep the part that trains:

**Write your own answer before you ask.** One paragraph, however bad. Then compare. The comparison is
where the learning is, and it is unavailable if you have nothing to compare against.

**Ask the second question.** After the model answers, ask what the answer assumes, and what would have
to be true for it to be wrong. This is the cheapest available version of the skill that is hardest to
train.

**Summarise from the sources, not from the summary.** Occasionally, do the synthesis yourself and check
it against the model's. The gap between the two is your current level.

## Empathy: the half that is left

Now the one where the research is most surprising, so it is worth being precise about what the studies
did and did not show.

They showed that AI *responses* are rated as more compassionate. They did not show that patients were
better cared for, and the authors of the Toronto work are explicit about the difference. Their argument
is that the machine delivers **surface-level** compassion very well — the attentive, validating,
well-worded reply — and cannot get to the root of a problem, because that requires a relationship that
persists and a person who carries the consequences.

<!-- verified 2026-10-01 — source: https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds -->

Two details from that study are worth holding onto, because they mark the boundaries exactly.

The first is that the preference **shifted when participants were told the response came from AI**. The
same words, judged lower once the authorship was known. The researchers call this AI aversion and
suggest it may fade as familiarity grows — which means the "AI empathy" advantage is partly a function
of disclosure norms, not of the words.

<!-- verified 2026-10-01 — source: https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds -->

The second is the warning the senior author gives, which is stronger than the finding: if AI becomes the
preferred source of empathy, people may retreat from human relationships, which would worsen the very
isolation the empathy was meant to relieve.

<!-- verified 2026-10-01 — source: https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds -->

And there is a mechanism behind that first result which makes it less flattering than it looks. A group
of researchers studying why assistants tend to agree with people found that **five leading assistants
all showed the same bias** across four different kinds of writing task: they adjusted their answers to
match what the user already believed. The part that matters is why. When they examined the human data
used to train these systems, they found that a response matching the user's views was **more likely to
be preferred** — and that both humans and the automated scoring models picked convincingly-written
agreement over a correct answer a non-trivial fraction of the time. The authors' conclusion is blunt:
sycophancy is a general behaviour of these models, driven in part by the fact that people reward it.

<!-- verified 2026-10-01 — source: https://www.anthropic.com/research/towards-understanding-sycophancy-in-language-models -->

Read that next to the empathy ratings and the interpretation changes. The machine is not rated as more
compassionate because it cares more. It is rated as more compassionate partly because it is optimised to
validate, and validation reads as empathy. "I understand how hard this is, and you were right to feel
that way" is a better-rated response than "I understand how hard this is, and I think you handled it
badly" — and the model has been shaped toward the first.

That does not make the empathy findings wrong. It makes them narrower: **the machine is good at giving
you the response that feels supportive, and that is not the same as the response that helps.** Which is
also why the practical advice below is not about warmth.

So the honest position on empathy is not "the machine cannot do it." It is:

- The machine can produce the *signal* of care, reliably and without tiring.
- The machine is trained to produce the signal that pleases you, which is a different thing.
- The machine cannot be the person who **is answerable** for what happens next.
- And the difference between those three is not a nuance — it is what a person in trouble actually needs
  when the situation is serious.

This is Ch. 03's argument arriving where you would least expect it. The moat was never capability. It
was accountability, which is a human-side limit because it is something people decided to require of
each other — and Ch. 03's test said human-side limits are the ones that last.

Which means the practice for empathy is not to compete on warmth, where the evidence says you will lose.
It is to do the parts a model structurally cannot:

**Stay when it is inconvenient.** The machine is available at 3am and gone when the conversation ends.
The thing that makes a relationship is that you were there for the part that was tedious.

**Carry the consequence.** Not the reply — the follow-up. The model can draft the apology; it cannot be
the one who is affected if the problem is not fixed.

**Say the thing the model would not.** A model optimised for approval will rarely tell you the hard
truth in the right words. If you notice your own advice becoming more agreeable, that is the comparison
worth trusting.

## What the four look like together

Four separate skills is a tidy structure for a chapter and a misleading picture of a Tuesday. In
practice they fire in sequence on the same problem, and the sequence is what makes the outcome better
than what the model would have produced alone.

Take a decision a lot of readers are facing right now: your team is being asked to handle customer
complaints with an AI assistant that drafts the replies. Everything looks fine in the demo. Do you
approve it?

**Taste goes first, and it is not about the tool.** Taste is reading the demo replies and noticing that
they are all slightly too warm — that they apologise before establishing what happened. Nobody told you
that was wrong; you have handled enough complaints to know that an apology offered too early reads as
an admission, and it changes what the customer asks for next. That is a judgment from experience, and it
is exactly the kind of thing the TASTE result says the models will not flag for you.

**Then the question, which decides what the answer will even be.** "Is the AI good enough?" is the
question the vendor wants you to ask, and it produces a comparison of draft quality. "What does this
change about what my team does all day?" is a different question, and it produces a different document:
which tasks disappear, which get harder, who ends up doing the part that is now nobody's job. Both
questions are answerable. Only one of them is the one that will matter in six months, and the model has
no basis for preferring it.

**Then the synthesis, which is where you commit.** You will have a draft-quality comparison, a
productivity estimate, some survey data, and the customers who escalated to a human. They point in
different directions — the drafts are objectively fine, the team is objectively unsettled, and the
escalations are objectively the cases where warmth was not the problem. Synthesis is not averaging
those. It is deciding what the situation is, in a sentence you can act on, knowing that at least one of
your inputs is inconsistent with it.

**Then the part that is only yours.** Someone has to tell the team what is happening, and it is not a
draft. The model can write the announcement; it cannot sit in the room when the first person asks
whether their job is next, and it cannot be the one who was wrong if the answer turns out to be yes.

That sequence is the whole chapter. Taste notices what the demo did not show you. The question decides
what you are evaluating. Synthesis commits to a reading of contradictory evidence. Empathy is being
answerable to the people the decision lands on.

Notice that none of the four required beating a model at anything. Each one was a point where a person
had to decide, and the machine's contribution — competent drafts, fast summaries, plausible analysis —
was genuinely useful at every stage and decisive at none.

That is not this book's opinion about the market. Employers were asked what they now weigh when they
hire, and **65% said critical thinking has become more important than a year ago** — ranked above
workflow automation and data analysis at 60%, which is to say above the things the tools are actually
good at.

<!-- verified 2026-10-01 — source: https://www.ziprecruiter-research.org/economic-insights-research/ai-employer-report-2026 -->

## The honest caveats

**The empathy research measures ratings, not care.** Every result in that literature is people judging
text. Whether rated compassion produces better outcomes is a different question, and the authors of the
Toronto study are careful to say they have not answered it. The chapter uses the finding to kill a bad
argument, not to claim the machine is a better caregiver.

**TASTE is one domain, 92 pairs, and its own authors bound it.** The confidence intervals span roughly
±10 percentage points, they say explicitly that comparing models against each other is not supported,
and the benchmark is AI safety research proposals. Treat "models are bad at judgment" as directionally
established and the specific 60% as provisional.

**The cognitive-offloading evidence is weak in exactly the way that matters.** Mostly correlational,
mostly self-reported, and unable to separate cause from selection. I have written it as a mechanism and
named the weakness, because the alternative — repeating "AI is making us dumber" as a finding — is the
exact failure this book is supposed to avoid.

**Synthesis has no evidence base at all.** I said so in the section rather than in this list, because a
reader deserves to know which parts of a chapter are measured. The mechanism I give for it is my
argument, not anyone's study.

**And the whole framing has a shelf life.** If discrimination turns out to be a capability gap rather
than a responsibility gap, the right-hand column of the table above will fill in over time, and this
chapter's second half will date faster than the rest of the book. The accountability argument survives
that; the taste argument may not.

## Do this today

1. **Under 30 minutes.** Take something a model produced for you this week and write, without looking
   at it again, which of two versions you would ship and why. Then check. You are not training taste by
   reading about it; you are training it by discovering, repeatedly, where your instinct was wrong.
2. **This week.** Pick a decision you are about to delegate to a model and write your own answer first —
   one paragraph. Then get the model's. The gap is the measurement, and it is the same instrument Ch. 10
   gave you, applied to judgment rather than to surprise.
3. **This quarter.** Pick one relationship or client where you have been efficient rather than present,
   and do the part a model cannot: the follow-up after the deliverable, the inconvenient conversation,
   the truth told plainly. Notice whether it changes anything. This is the only one of the four skills
   where the evidence says competing on output is a losing strategy, so it is the one to practise
   deliberately rather than by accident.

## Further reading

- [Anthropic Alignment — *TASTE*](https://alignment.anthropic.com/2026/taste/)
  — the measurement that makes "judgment" testable, including an unusually clear account of how they
  got human agreement high enough to be worth comparing against.
- [Howcroft et al. — *AI chatbots versus human healthcare professionals* (British Medical Bulletin, 2025)](https://pmc.ncbi.nlm.nih.gov/articles/PMC12536877/)
  — the meta-analysis. Read the limitations section, which is where the interesting disagreement lives.
- [Jose et al. — *The cognitive paradox of AI in education* (Frontiers in Psychology, 2025)](https://pmc.ncbi.nlm.nih.gov/articles/PMC12036037/)
  — cognitive offloading, and the clearest statement of the mechanism behind the critical-thinking worry.
- Ch. 03 of this book, *What AI Can Never Do Well (and Why That's Your Moat)* — the accountability
  argument this chapter's empathy section rests on.
- Ch. 10 of this book, *Finding Your Human-AI Collaboration Point* — the prediction-and-log loop, which
  is the same instrument as this chapter's first exercise.
- Ch. 11 of this book, *Context Engineering* — why producing more output is not the constraint any more,
  which is what makes discrimination the scarce skill.

---

---
📅 Last updated: 2026-10-01
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
