---
chapter: 4
title: "Where Different People Actually Stand"
part: "Part II — Secure the Baseline"
status: draft
language: en
created: 2026-09-30
last_updated: 2026-10-02
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3200
tags: [diagnostic, exposure, experience-premium, labour-market]
---

# 04. Where Different People Actually Stand

Before you read on, guess.

Name the job you think AI is doing most of right now. Not the job an AI could theoretically do — the
job where the work is visibly already moving into a machine.

Most people reach for something low-paid and repetitive. Data entry, maybe. A call centre.

The actual answer is **computer programmer**, with 75% of the occupation's task content already covered
by observed AI use. Second is **customer service representative**. Third, **data entry keyer**, at 67%.

If your first guess was the well-paid person and not the struggling one, you are ahead of most readers.
If it wasn't, notice what your instinct reached for. That instinct is the thing this chapter is here to
correct.

Those numbers come from Anthropic's March 2026 labour-market paper, which builds a measure it calls
*observed exposure*: of the tasks an AI can theoretically speed up, which ones actually show up as
automated, work-related use? It combines the O\*NET task database, the theoretical exposure ratings
from Eloundou and co-authors, and real usage traffic.

<!-- verified 2026-09-30 — source: https://www.anthropic.com/research/labor-market-impacts -->

At the other end of the same measurement, **30% of American workers have zero coverage** — their tasks
appear too rarely to register at all. Anthropic's examples: cooks, motorcycle mechanics, lifeguards,
bartenders, dishwashers, dressing-room attendants.

So the map is not what the news cycle describes.

Part II is about to hand out advice by situation — employee, entrepreneur, freelancer, student,
switcher — and before it does, this chapter is the diagnostic. Ch. 03 gave you a test for limits. This
gives you a test for *position*, and the first thing it corrects is which way round you think exposure
runs.

> **The one thing to take away:** "Which job do I have" barely predicts what happens to you. What
> predicts it is how much of your value comes from what experience taught you and nobody ever wrote
> down — and that is measurable, per occupation, right now.

## The exposure map is upside down

Look at who is in the exposed group.

It is not the poorly-paid. Compared with the 30% of workers whose jobs show no AI coverage at all, the
most-exposed quartile earns **47% more on average**, is 16 percentage points more likely to be female,
and is far better educated.

Graduate-degree holders are 4.5% of the unexposed group, and 17.4% of the most exposed.

<!-- verified 2026-09-30 — source: https://www.anthropic.com/research/labor-market-impacts -->

An independent government survey points the same way. The Census Bureau asked US workers in March 2026
whether they had used AI on the job for any of 11 work tasks.

**56% said yes.**

Most often they used it to search for information (37%), write documentation (32%), generate ideas
(32%) or summarise material (31%). Those are not shop-floor tasks. They are the middle of a knowledge
worker's day.

The education gradient is steep: **46%** of workers with a bachelor's degree or higher used AI to
interpret or summarise information, against **15%** of those with a high-school diploma or less.

<!-- verified 2026-09-30 — source: https://www.census.gov/library/stories/2026/08/ai-use-at-work.html -->

The sharpest illustration is a job that felt safe from this for thirty years: translation.

Research using variation in adoption of the Google Translate mobile app across US local labour markets
found that areas with higher adoption saw translator employment decline — and that better machine
translation reduced demand for foreign-language skills *generally*, not just for translators.

The language skill itself got repriced, in jobs whose titles never mentioned it.

<!-- verified 2026-09-30 — source: https://www.inet.ox.ac.uk/publications/lost-in-translation-ais-impact-on-translators-and-foreign-language-skills -->

Three things are true at once, and holding all three is what makes the rest of this chapter usable.

**Exposure is concentrated on cognitive, educated, well-paid work.** If your mental model was "AI comes
for the routine, low-skill work first," invert it. Routine *cognitive* work — reading a document and
entering it, answering a standard query, writing a first draft — is what the traffic actually shows.

**Exposure is not displacement, and the gap between them is the story.** Anthropic looked for rising
unemployment among the most-exposed workers and did not find it. What it found instead was a hiring
effect: among 22-to-25-year-olds, the rate of starting a new job in an exposed occupation fell about
**14%** compared with 2022, while entry into less-exposed occupations held steady at around 2% a month.
There was no comparable fall for workers over 25.

<!-- verified 2026-09-30 — source: https://www.anthropic.com/research/labor-market-impacts -->

**That timing matters more than the number.** Automation shows up as layoffs, which are visible and
discussed. A job becoming closed to newcomers shows up as nothing at all, and nobody announces a door
that has quietly stopped opening.

## What sorts two people in the same job

Here is a puzzle from the Dallas Fed.

Take the 10% of industries most exposed to AI. Since ChatGPT's release in late 2022, employment in that
group has fallen about **1%**, against roughly **2.5%** growth nationally. The computer systems design
sector is worse: employment down **5%**.

Now look at pay in the same places. National nominal average weekly wages are up **7.5%** since fall
2022. Computer systems design is up **16.7%**.

<!-- verified 2026-09-30 — source: https://www.dallasfed.org/research/economics/2026/0224 -->

Fewer jobs, faster-rising pay.

If AI were simply automating that work, both numbers would fall. If it were simply augmenting it, both
would rise. Something is selecting *inside* the occupation — taking some people out and bidding up the
rest — and the Dallas Fed named the variable.

It is called the **experience premium**: the percentage gap between what an entry-level worker and an
experienced worker earn in the same occupation, taken from the Bureau of Labor Statistics' own wage
estimates.

The median occupation has a 40% premium. At the low end, under 10%: fast-food cooks, ticket agents, dry
cleaners — jobs where a decade of doing it does not make you dramatically more valuable. At the high
end, over 100%: lawyers, insurance underwriters, credit analysts, marketing specialists.

That single number predicts which way AI exposure pushes your wages. Run the regression and the result
splits cleanly three ways:

| Occupation's experience premium | Effect of rising AI exposure on wage growth since 2022 |
|---|---|
| Median (40%) | −0.05 percentage points — no meaningful effect; the interval includes zero |
| Bottom (0%) | −0.28 percentage points, and the interval is clearly negative |
| 90th percentile | **+0.2 percentage points** — likely a *positive* effect |

<!-- verified 2026-09-30 — source: https://www.dallasfed.org/research/economics/2026/0224 -->

The Dallas Fed's explanation is the codified-versus-tacit distinction.

*Codified* knowledge is what you can put in a textbook, a procedure, a manual. *Tacit* knowledge is what
you get from practice, mentorship and repeated exposure to real situations.

AI is now extremely good at the first and still poor at the second.

So in a job with a high experience premium, AI substitutes for the entry-level rung — the book-learning
end of the job — and complements the people who have the tacit half. In a job with almost no premium,
there is no tacit half to protect, and AI substitutes for everybody in it.

Stanford's payroll data shows the same mechanism from the other side. Employment among 22-to-25-year-olds
in highly AI-exposed occupations now runs about **19% below** where it would be if it had tracked their
less-exposed peers — and that gap has *widened* from 15% at the July 2025 vintage. Experienced workers
show no comparable gap.

Where the declines concentrate is occupations that rely heavily on codified knowledge. Where employment
is flat or rising, the work leans on tacit knowledge — and that is especially true for experienced
workers.

<!-- verified 2026-09-30 — source: https://digitaleconomy.stanford.edu/news/canariesaug26/ -->

Two details make this more than a consolation prize for the over-40s.

First, the adjustment is running through **reduced hiring, not increased firing** — the Fed found the
same thing, and it is why this is easy to miss.

Second, Anthropic's own survey found that users who lean on AI in the most automated way are the *most*
optimistic about their pay, job security and meaning, with over **35%** expecting AI to be able to do
most of their work within a year. Confidence and exposure travel together, and neither one measures
anything.

<!-- verified 2026-09-30 — source: https://www.anthropic.com/research/economic-index-june-2026-report -->

So the sorting question is not "how senior am I." It is: *how much of what I am paid for was learned by
doing rather than by reading, and is it written down anywhere?*

Everything in Part II hangs off your answer.

## Four places you can be standing

Same framework, applied to you. Find the one that fits — the tell matters more than the label, and most
people misclassify themselves in the flattering direction.

### Position 1: The task has already moved

*What it is:* work whose content is codified and whose output is checkable, in an occupation with a low
experience premium. Data entry keyers at 67% coverage are the clean example, and so is much first-draft
writing, standard-form processing and tier-one query handling. The Dallas Fed's zero-premium group is
the population here.

*What the data shows:* employment falls and wages do not rise to compensate — in the most-exposed
decile, employment is down 1% while the economy grew 2.5%.

Klarna is the counter-example that proves the rule. It cut human support work for an AI assistant that
handled two-thirds of chats, 2.3 million conversations in its first month — and by May 2025 was
recruiting humans again. The CEO said cost had been "a too predominant evaluation factor" and that
"what you end up having is lower quality."

<!-- verified 2026-09-30 — source: https://www.customerexperiencedive.com/news/klarna-reinvests-human-talent-customer-service-AI-chatbot/747586/ -->

*The tell:* your best days and your worst days look the same, and the way your work is measured is
throughput and error rate.

If a competent newcomer with a manual and a model could produce 80% of your output in a week, you are in
this position. The honest advice is not "learn to prompt." It is to move a piece of your work into
Position 3, deliberately, this quarter.

### Position 2: The door closed behind you

*What it is:* you are qualified for an exposed occupation and trying to enter it. This is the 22-to-25
group with the 19% shortfall and the 14% drop in the job-finding rate — and it is the least visible
position of the four, because there are no layoffs to report.

*What the data shows:* the mechanism is a hiring freeze, not a wave of dismissals. Experienced workers
in the same occupation show no comparable gap, so the field has not thrown anyone out — it has stopped
letting anyone in at the bottom, which is exactly the rung where tacit knowledge used to be acquired.

*The tell:* you are applying and getting nowhere, while people doing the job tell you the work is fine.

Both things are true. The trap is reading the silence as a personal failure — applying harder to the
same closed door instead of looking for a role where the first year accumulates something the manual
cannot hold. Ch. 08 and Ch. 09 are for this position specifically.

### Position 3: The premium is paying you

*What it is:* an occupation with a high experience premium, and you have accumulated the experience.
Lawyers, underwriters, credit analysts, marketing specialists — the over-100% group — plus anyone whose
value is relationships, judgement under ambiguity, or knowing which of the eleven plausible answers is
the real one.

*What the data shows:* rising AI exposure is associated with *higher* wage growth here, the opposite of
Position 1. This is the group the Klarna retreat is about: the automation handled the easy volume, and
the company then went looking for people to handle the moments that matter.

*The tell:* the part of your job AI is best at is the part you found tedious, and the part that pays is
the part you could not write down for a successor if you had a week to do it.

Be careful, though: this position is *conditional on the second half of that sentence being true*.
Seniority alone is not the premium. Plenty of people have twenty years of a job with a two-year learning
curve.

### Position 4: Off the map entirely

*What it is:* the 30% with zero observed coverage. Cooks, mechanics, lifeguards, bartenders.

*What the data shows:* nothing, and that is the point. A blank space means AI traffic is not showing up
in your tasks — which does not mean you are safe, because there are two reasons for a blank.

*The tell:* ask why the blank exists.

Anthropic's own framing makes the split explicit — pruning trees and operating farm machinery sit beside
representing clients in court as tasks beyond AI's reach.

The first blank is a capability gap, and Ch. 03's test says capability gaps erode on a schedule: a
machine that cannot prune trees today is a machine-side limit, and machine-side limits have doubled
their usable task length roughly every seven months.

The second blank is a rule — who may represent you in court is a decision people make, and decisions do
not improve with a new model.

In Position 4 you are probably fine for now. Whether you are fine later depends entirely on which kind
of blank you are standing on.

## The honest caveats

Five, and the first two are the serious ones.

**Nothing here is causal, and the sources say so themselves.** The Stanford authors state plainly that
their patterns are descriptive, that the gaps shrink when education is controlled for, and that their
payroll sample may not generalise to the whole economy. The hiring-rate decline Anthropic reports is, in
their words, "just barely statistically significant." I am using these results to locate you, not to
forecast you; anyone quoting this chapter as proof that AI is why a particular person went unhired is
misusing it.

**The exposure measure is a vendor's view of the world.** *Observed exposure* is built partly from
Anthropic's own traffic, and Anthropic is candid that Claude covers only 33% of tasks in the
Computer & Math category, that the sample misses anyone not using Claude, and that the measure depends
on judgment calls. The rankings are corroborated only weakly by independently produced BLS projections —
growth falls about 0.6 percentage points per 10 points of coverage. Treat them as a strong lead, not a
table of truth.

**Zero coverage is a measurement floor, not a safety certificate.** This is the mistake the chapter
invites, so it bears repeating: "AI isn't being used for my work yet" and "AI can't be used for my work"
are different sentences, and only one of them is a moat.

**The experience premium is a proxy and it will mislead at the edges.** It is computed from what
employers *pay* for experience, not from what experience actually contains. Some occupations have a high
premium for reasons that have nothing to do with tacit knowledge — licensing, union scales, tenure
rules. Use it as a question about your own work, not a number to look up and trust.

**The chapter gives you positions, not populations.** I cannot tell you how many readers are in each
one, because nobody has published that. If you are in Position 1 *and* Position 2 — an entry-level
worker in an exposed field — the two compound, and this chapter has no separate advice for you beyond
saying so plainly.

## Do this today

1. **Split your last two weeks into two columns.** Write down what you did that a competent newcomer
   with a manual and a model could have done: read the document, drafted the standard reply, applied
   the documented procedure. Then write down what they could not. Do it in 20 minutes, from memory, and
   do not curate the second column — you are looking for what is actually there.
2. **Ask one person who outranks you what they would have missed.** Take the second column to a
   colleague or manager who has been doing this work longer than you, and ask which item on it they
   could have done in their first year. The gap between your list and their answer is roughly your
   experience premium, measured rather than guessed.
3. **Move one item from column one to column two this quarter.** Position 3 is not a category you are
   assigned; it is one you accumulate, and the transfer is deliberate. Take on the messy case nobody
   wants, sit in the room where the decision is made, or build the relationship that has no
   documentation — pick one, and make it the thing you do differently by the end of the quarter.

## Further reading

- Ch. 03 of this book, *What AI Can Never Do Well (and Why That's Your Moat)*, supplies the test this
  chapter keeps applying: machine-side limits erode, human-side limits get decided.
- Ch. 02, *You're Anxious Because You're Using an Old Map*, is why an inverted exposure map is more
  dangerous than no map — the wrong shape is confidently drawn.
- Ch. 05–07 apply this diagnostic to the situation you are already in — as an employee, an
  entrepreneur, or a freelancer; Ch. 08–09 apply it to the choice of a path, as a student or a
  mid-career switcher.
- The two datasets behind this chapter are worth reading directly:
  [Anthropic's labour-market paper](https://www.anthropic.com/research/labor-market-impacts) for the
  exposure measure, and the [Dallas Fed's analysis](https://www.dallasfed.org/research/economics/2026/0224)
  for the experience premium.

---

📅 Last updated: 2026-10-02
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Human (that's me)
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---
