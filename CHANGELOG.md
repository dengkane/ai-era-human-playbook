# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/),
and this project uses date-based versioning (YYYY.MM).

---

## [Unreleased]

### Current state

**All twenty-one chapters are written, each in English and Chinese. Everything is `draft`:** not
reviewed, not fact-checked, not to be quoted. **All five parts are complete.**

| | `chapters/en/` (source) | `chapters/zh/` (translation) |
|---|---|---|
| Chapters | 01–21 | 01–21 |
| Body length | 2554 / 2812 / 2550 / 2899 / 2900 / 2849 / 3298 / 3928 / 3855 / 3599 / 3568 / 3517 / 3598 / 3442 / 3301 / 3338 / 3359 / 3470 / 3201 / 3292 / 3440 words | 101,396 CJK characters, total² |
| Research notes | 21 | 21 |
| `check-chapter.sh` | 0 errors, 0 warnings | 0 errors, 2 warnings¹ |

¹ Two warnings per chapter, both artefacts of counting whitespace-separated words in a language that
has no spaces: `body is short`, and the gap between that count and the declared `word_target`. Neither
means the translation is short. See "Known limitation" below.

² The previous figure was 101,383 by whatever counting rule produced it. Ch. 01 gained 13 characters of
the kind that rule counts, so it carries forward as 101,396 rather than being silently recomputed under
a different rule — re-counting the other twenty chapters to match a new method is a separate change.

Ch. 08–21 were written when the target was ~3500 words, which is why they run 3201–3928 against
Ch. 01–07's 2554–3300. Nothing was padded: each carries three arguments where Ch. 05–07 carry two. The
target has since become a band — see "writing style moved from argument to story" below.

**One chapter breaks the rule `WORKFLOW.md` opens with: Ch. 07 was drafted before its research notes
existed.** The notes were rebuilt afterwards by opening all thirteen cited sources again. That is a
weaker guarantee than Ch. 01–06 carry — reconstruction can confirm a claim, but it cannot show the
claim was shaped by the evidence — and the notes say so at the top rather than hiding it. See the Ch. 07
entry below.

### Changed — writing style moved from argument to story, and length became a band

The chapters were accurate and a little dull. They argued *at* the reader — a claim, then evidence, then
the next claim — which is a structure that reads well on paper and gets skimmed on a phone, which is
where most of this book is read.

The standard now leads with storytelling:

- **Tell a story, don't make an argument.** Open inside a specific moment — a date, a number, a person.
  Show the scene first, draw the lesson second.
- **Short paragraphs**, two or three sentences, one idea each. A four-line paragraph gets skimmed; a
  two-line one gets read.
- **Make it visual.** Abstract arguments get pinned to an image the reader can hold — a rising floor, a
  ladder with a rung pulled out, a map that stopped matching the ground.
- **Plain words**, the way you would say it to a friend who is smart, busy, and not in your field.

**Length is now 2,000–4,000 words** — a band, not a target. The old rule was "~3500 words", and it
produced the failure it was meant to prevent: chapters restating their own headings to reach the number.
The body-section spec also loses its word count: a section ends when its argument is finished, not at
900–1200 words.

**One new rule came out of the change, because storytelling introduces a risk the old voice did not.**
A vivid scene reads as a true story. So a real, checkable scene carries a `verified` marker like any
other claim, and an invented one is labelled in the sentence where the reader sees it — "Imagine you're
a support lead at a 200-person company", never "Meet Sarah, a product manager…", which reads as
reporting. There is no marker for an invented scene: a `verified` comment would be a lie and
`unverified` is reserved for a real claim not yet checked. See
[Invented scenes are labelled](chapters/en/README.md#invented-scenes-are-labelled).

Changed:

- `chapters/en/README.md` — the writing standard rewritten around storytelling; a new
  **"Invented scenes are labelled"** section; the length and structure rules restated as a band.
- `templates/chapter-template.md` — `word_target: 3000` (was `3500`), and the section guidance,
  opening guidance, and `LENGTH` note rewritten to match.
- `scripts/check-chapter.sh` — warns below 2000 or above 4000 words of body (was 2500 / 4500); the
  length line now reads `(band 2000–4000)`.
- `AGENTS.md`, `WORKFLOW.md`, `CONTRIBUTING.md` — the same rules, restated.
- `chapters/zh/README.md` — a new **"写法：讲故事，不要讲道理"** section, plus the note that Chinese
  and English need not match in length (Chinese carries more information per character, so a shorter
  Chinese chapter is normal, not an abridgement).

**One chapter is rewritten as the pilot for the new voice: Ch. 01, in both editions.** It is the
chapter a reader meets first, so it is the one where the opening has to work. The English body came out
at 2554 words and the Chinese at 3,849 characters — both inside the band, and neither padded or trimmed
to get there.

What did not move, in either edition: all five `<!-- verified -->` markers, their URLs verbatim, the
same research notes, the same section structure, and the same arguments. This is a change of voice, not
of claims. The remaining twenty chapters are unchanged and keep their existing text.

Because Ch. 01 is now 2,554 words against a declared `word_target` of 2600, the 400-word gap warning the
linter raises for the other chapters does not fire for it.

### Fixed — LICENSE-CONTENT contradicted its own license, and two other lines were wrong

`LICENSE-CONTENT` described itself incorrectly in three ways. All three are fixed:

- **It contradicted the license it grants.** The "You are free to" block said the material may be used
  *"for any purpose, even commercially"* — that wording belongs to CC **BY**, not CC **BY-NC-SA**. Three
  lines below, the NonCommercial clause says the opposite. Replaced with the CC BY-NC-SA 4.0 deed's own
  third item, *"The licensor cannot revoke these freedoms as long as you follow the license terms"*, which
  grants no commercial right. The text was checked against the deed at
  <https://creativecommons.org/licenses/by-nc-sa/4.0/> rather than reconstructed from memory.
- **It pointed at a directory that does not exist.** The scope line read "all files under `book/`". There
  is no `book/` directory; the prose lives in `chapters/`. Corrected to `chapters/`, which matches how
  `README.md` describes the licensed layer.
- **It pointed at contact details that do not exist.** Commercial inquiries were directed to "the contact
  information in `README.md`", but `README.md` carries no address — its Contact section offers "Open an
  Issue". Now points to GitHub Issues alone.

Both license files also still carried the unfilled placeholder `Copyright (c) 2026 [Your Name]`. Both now
name Ken Deng.

### Changed — the book has a new name

The title is now **AI Era Survival Playbook** in English and **AI时代生存指南** in Chinese, replacing
*Human in AI Era* / *AI时代的人*. Both READMEs carry the new titles. `AGENTS.md` was still describing
the book by its old name and has been updated to match.

The repository is deliberately not renamed: the GitHub slug stays `ai-era-human-playbook`, and so do the
three references to it in `scripts/setup-ssh.sh`. Renaming the repo would be a separate and breaking
change — the connection checks in `doctor.sh` and `setup-ssh.sh` compare against that slug — so the book's
title and its repository name now differ on purpose.

### Added — Ch. 21, *Designing the Life You Actually Want*, completing the book

The last chapter, and the only one that had to close the arc rather than extend it. All five parts are now
written in both editions. Both editions and notes:

- `chapters/en/ch21-designing-the-life-you-actually-want.md` (3440 words, `draft`)
- `chapters/zh/ch21-designing-the-life-you-actually-want.md` (translation)
- `chapters/en/research/ch21-notes.md` — 5 sources kept, 8 rejected (English)
- `chapters/zh/research/ch21-notes.md` — the same notes, translated

**Two findings carry the chapter, and they are both about regret.** Gilovich and Medvec's pattern —
replicated publicly in 2023 — is that recent regrets centre on actions while **long-term regrets involve
inactions**, and the mechanism is that people romanticise the road not taken while forgetting what
stopped them. Roese and Summerville's meta-analysis of 11 ranking studies supplies the content (the six
biggest regrets are education, career, romance, parenting, the self and leisure) and the explanation: the
**opportunity principle**, where foreclosed opportunity triggers rationalisation that dissolves the
regret.

**And the intervention is small, measured, and decays — all three, in the chapter.** A 476-person
randomised trial of "activating values" (pick a valued area, affirm it, choose one concrete action,
schedule it, do it within the week) produced significant gains in self-insight and sense of coherence at
one and two weeks, against two control conditions — and **not at three weeks**. That last result is in the
chapter rather than edited out, and it is why the recommendation is a repeating loop rather than a
decision.

The chapter also closes the book explicitly: a one-page summary of what the preceding twenty chapters add
up to in the order a reader needs them, a three-scale structure (week, quarter, year) for running the
loop, and a section on what the book deliberately could not do — tell the reader what to want, because
that is the judgement this book has argued since Ch. 03 is the scarce thing and cannot be delegated.

### Added — Ch. 20, *The Courage to Slow Down*

The chapter about the thing that stops people having the experiences Ch. 19 argued for — which is not
technology, but the optimisation reflex the rest of the book spent fourteen chapters installing. Both
editions and notes:

- `chapters/en/ch20-the-courage-to-slow-down.md` (3292 words, `draft`)
- `chapters/zh/ch20-the-courage-to-slow-down.md` (translation)
- `chapters/en/research/ch20-notes.md` — 5 sources kept, 8 rejected (English)
- `chapters/zh/research/ch20-notes.md` — the same notes, translated

**The chapter opens on a body count rather than a sentiment.** WHO and the ILO estimated that long working
hours caused 745,000 deaths from stroke and heart disease in 2016, a 29% rise since 2000, with 55+ hour
weeks carrying a 35% higher stroke risk. It also reports the finding that reframes the whole trade —
time poverty having a stronger negative effect on well-being than unemployment in an analysis of 2.5
million Americans — while flagging in the same breath that the paper is a Perspective and the design is
cross-sectional.

**It corrects the money advice rather than repeating it.** The "$75,000 and happiness flattens" rule has
been superseded by an adversarial collaboration between Kahneman and Killingsworth: the plateau is real
but restricted to the least happy 20%, and for everyone else happiness keeps rising with income. The
chapter reports the resolution because the folk version is routinely used to justify advice the data does
not support.

**And one finding stops it becoming a rest-and-you-will-be-fine essay.** The vacation literature shows
benefits peaking around day eight and returning to baseline within a week of going back to work — which
means the answer cannot be more time off, and has to be a structural change. That is also why the chapter
argues the tools will not fix this either, quoting the WHO's own observation that remote work "blurred the
boundaries between home and work" and that those still employed ended up working longer hours.

### Added — Ch. 19, *The Last Fortress of Being Human: Body, Nature, Art*, opening Part V

The boundary with Ch. 16 is the whole point of this chapter: Ch. 16 owns making things *with* the machine
in the loop, and this one owns experience defined by the machine's *absence* — the class of experience
where mediation itself is the loss. Both editions and notes:

- `chapters/en/ch19-the-last-fortress-of-being-human-body-nature-art.md` (3201 words, `draft`)
- `chapters/zh/ch19-the-last-fortress-of-being-human-body-nature-art.md` (translation)
- `chapters/en/research/ch19-notes.md` — 5 sources kept, 8 rejected (English)
- `chapters/zh/research/ch19-notes.md` — the same notes, translated

**The chapter is built on an almost lab-clean result.** Participants walked for 15 minutes indoors and
outdoors; only the outdoor walk produced improved performance and increased P300 amplitude, and the
authors conclude the environment may matter *more than the exercise itself*. Same duration, same
activity, same body — the only variable was the room. The arts evidence runs the same way at scale: a
14-year follow-up of 6,710 adults found a 31% lower mortality risk for frequent arts engagement, and a
2026 study found weekly engagement linked to ~4% slower biological ageing, comparable to weekly exercise.

Two things this chapter does deliberately. It gives the body its own section, because the habit of
treating it as transport is what makes people expect an informational substitute to work — the
codified/tacit split from Ch. 05 pushed to the point where the tacit end is *absolute*. And it argues
that this gets *harder* rather than easier in an AI era, because the evaluation reflex the rest of the
book installs is exactly the wrong habit to bring to a forest.

**One source could not be opened and is prominent enough to flag.** A global analysis of 3,800+ studies
covering over 10 million people found nature contact reduces anxiety and depression — the citation this
chapter most wants. `nature.com` returns a JavaScript challenge and no open-access mirror was found, so
it sits in the notes as rejected and is recorded as the first thing a revision should open. The chapter's
own evidence is also flagged as overwhelmingly observational, with the one experimental result resting
on 30 participants.

### Added — Ch. 18, *Rebuilding Meaning*, completing Part IV

The chapter that had to turn an unfalsifiable-sounding topic into a measured one, and got lucky: the
research contains an experiment that is almost too useful. Both editions and notes:

- `chapters/en/ch18-rebuilding-meaning.md` (3470 words, `draft`)
- `chapters/zh/ch18-rebuilding-meaning.md` (translation)
- `chapters/en/research/ch18-notes.md` — 5 sources kept, 8 rejected (English)
- `chapters/zh/research/ch18-notes.md` — the same notes, translated

**The spine is a field experiment about the meaning of work.** 140 workers did a half-day task and were
randomly told either that it still mattered, that the project was cancelled and it was now pointless, or
that it had turned out to serve a *different* purpose nobody had mentioned. The "pointless" group put in
markedly less subsequent effort. The alternative-meaning group recovered **completely** — and the
authors' conclusion is the chapter's thesis: it did not matter that the original meaning was lost; what
counted was that the work had had a meaning at all.

That turns "rebuilding meaning" into something mechanical rather than romantic: you do not restore the
old structure, you establish that there is one.

Two surveys frame it. Pew's 17-economy study of ~19,000 adults gives the actual distribution of meaning
sources — family first at a median of 38%, with South Korea, Spain and Taiwan as real exceptions to that
— and Pew's 2026 36-country survey gives the stakes: in 34 of 37 publics people expect AI to mean fewer
jobs, and US concern among 18–34s rose from 40% to 55% in two years. A purpose-and-mortality study
(15.2% vs 36.5% over eight years) and the Harvard Study of Adult Development supply the health side.

**Two of the five citations are institutional reports of primary research, and the notes say so.** The
meaning experiment is cited through the LSE Business Review post written by its own authors, and the
purpose–mortality work through Boston University's write-up, because both original papers were paywalled
or blocked. Neither is presented as primary. The purpose–mortality finding is also explicitly flagged as
observational rather than causal.

### Added — Ch. 17, *Relationships & Community in a Digital World*

The chapter that has to resist becoming the essay it would be easiest to write. The evidence on AI
companions and loneliness does not support a verdict in either direction, so the chapter reports what
the research actually shows — including where it refuses to answer. Both editions and notes:

- `chapters/en/ch17-relationships-and-community-in-a-digital-world.md` (3359 words, `draft`)
- `chapters/zh/ch17-relationships-and-community-in-a-digital-world.md` (translation)
- `chapters/en/research/ch17-notes.md` — 5 sources kept, 9 rejected (English)
- `chapters/zh/research/ch17-notes.md` — the same notes, translated

**The spine is an experiment that separates the tool from the user.** A four-week RCT randomised 981
people across interaction modes and conversation types: the experimental conditions produced **no
significant effects**, but participants who *voluntarily used the bot more* showed consistently worse
outcomes on loneliness, dependence and real-world socialising. That is the honest finding — heavy use and
poor outcomes travel together, and the assignment did not cause it — and it is uncomfortable for both
the "AI is hurting us" and the "AI is fine" camps.

Two other results shape the chapter. The 1,131-user study finds the association with well-being depends
on the user's offline network and on how disclosive the use is, and its authors are explicit that the
causal arrow is not established. And a face-to-face study found digital text contact still predicted
mental health better than physical activity, while **video calls — the richest digital channel — were
only negligibly associated with it**, which is the result that does the most work in the chapter and
carries the largest caveat.

**One counterweight could not be opened and is recorded rather than buried.** The HBS working paper *AI
Companions Reduce Loneliness* reports the opposite direction; its PDF would not extract, so it sits in
the notes as rejected and is flagged as the first thing a revision should open. The social-media-and-
mental-health literature was left out deliberately, being contested in a way this chapter does not need
to adjudicate.

### Added — Ch. 16, *Creativity When AI Can Generate Everything*, opening Part IV

The first chapter of Part IV, and the boundary with Ch. 19 is held deliberately: this chapter owns making
things *with* the machine in the loop; Ch. 19 owns experience defined by the machine's absence. Nothing
here argues for avoiding AI. Both editions and notes:

- `chapters/en/ch16-creativity-when-ai-can-generate-everything.md` (3338 words, `draft`)
- `chapters/zh/ch16-creativity-when-ai-can-generate-everything.md` (translation)
- `chapters/en/research/ch16-notes.md` — 5 sources kept, 9 rejected (English)
- `chapters/zh/research/ch16-notes.md` — the same notes, translated

**The research supplied a social dilemma rather than a warning, and the chapter is built on it.** Doshi
and Hauser's experiment found AI ideas made stories rated more creative, better written and more
enjoyable — with the largest gains for the *least* creative writers — while making the AI-assisted
stories more similar to each other. Individually better off, collectively narrower. The chapter refuses
both the "machine is a muse" and the "machine is a thief" framings.

Two further research lines carry the argument. Randomly labelling the same AI paintings "human" vs "AI"
shifted judgements of liking, beauty, profundity and worth, moderated by **perceived effort** and
**narrativity** — so what people buy is evidence that someone was there, not the artefact. And a 7,182-person
UK study found arts and crafts predicted a sense of "life is worthwhile" as strongly as being employed,
which is what makes the chapter about the maker and not only the output.

Three sources were openable only in their open-access form — the Science Advances and Nature versions
return 403 / JS challenges, so the PMC and Frontiers versions are cited. And the chapter deliberately
does not introduce the copyright-law angle it considered, because the U.S. Copyright Office chapter PDF
would not extract as text and the claim could not be checked.

### Added — Ch. 15, *Judging AI Tools for Yourself*, completing Part III

The chapter that keeps a promise the book has to keep: its appendix lists tools, and that list will be
partly wrong by the time anyone reads it. So this chapter teaches the reader to evaluate a tool on their
own work instead. Both editions and notes:

- `chapters/en/ch15-judging-ai-tools-for-yourself.md` (3301 words, `draft`)
- `chapters/zh/ch15-judging-ai-tools-for-yourself.md` (translation)
- `chapters/en/research/ch15-notes.md` — 5 sources kept, 9 rejected (English)
- `chapters/zh/research/ch15-notes.md` — the same notes, translated

**The case against trusting public rankings turned out to be well-evidenced rather than merely prudent.**
Four independent findings stack up: Chatbot Arena has documented structural distortions (undisclosed
private testing, providers retracting scores, 27 private Llama-4 variants, two providers taking ~19–20%
of all arena data against 29.7% for 83 open models); public benchmarks leak into training data;
automated judging inherits a measurable self-preference bias driven by familiarity; and on MIT's data,
95% of enterprise generative-AI pilots produced no measurable return because the failure is integration,
not model quality.

Together they say something more useful than "evaluation is hard": the only evaluation that is both
cheap and trustworthy is one you build from your own work — which cannot be contaminated, cannot be
gamed, and measures the thing you actually care about. The chapter's method comes from the 5 D's
framework (defined scope, demonstrative of production usage, diverse, decontaminated, dynamic).

**Two sources could not be opened and the chapter says so.** RAND's widely-cited "more than 80% of AI
projects fail" returns 403 on both its landing page and its PDF, so it is recorded as rejected rather
than folded in. And the MIT NANDA report's own PDF does not extract, so the 95% figure is cited via
Fortune's write-up with the **secondary** status stated and the origin (150 interviews, 350 surveys, 300
deployments) carried across. Neither is used to carry a claim the chapter cannot otherwise support.

The chapter also deliberately contains no leaderboard, no model comparison table and no tool
recommendation — printing any of them would undercut the argument that they mislead.

### Added — Ch. 14, *From "Employed" to "Self-Employed"*

The decision chapter, and the close of Part III's arc: Ch. 06 argued small is viable, Ch. 07 described
the change in the unit of sale, Ch. 12 is the operating manual. This one is the transition itself. Both
editions and notes:

- `chapters/en/ch14-from-employed-to-self-employed.md` (3442 words, `draft`)
- `chapters/zh/ch14-from-employed-to-self-employed.md` (translation)
- `chapters/en/research/ch14-notes.md` — 5 sources kept, 10 rejected (English)
- `chapters/zh/research/ch14-notes.md` — the same notes, translated

**The research inverted the chapter's premise.** The cultural script is the leap — give notice, then find
clients. The best evidence on the question says the staged version is safer: Raffiee and Feng's study of
thousands of Americans found staged exits were 33% less likely to fail than outright quits. The chapter
opens by dismantling its own story rather than by dressing it up.

**The second finding is the one the genre omits.** Moving to self-employment is not only a lost salary:
25.7% of people who made the move had no health insurance a year later, against 8.1% of those who stayed
employed, and they were significantly more likely to delay needed care. The chapter pairs that with
KFF's current benchmark premium ($625/month for 2026, up from $497) so the recurring cost is visible
rather than abstract.

**Two citations need their provenance stated, and the notes state it.** The 33% figure rests on HBR's
write-up rather than the original *Academy of Management Journal* paper, which returns 403 to this
tooling; the notes record that HBR is **secondary** and names the authors and sample it reports. And the
9.95-million self-employed figure comes via the Gig Economy Data Hub rather than directly from the CPS
— also marked secondary. Neither is used to carry a finding the chapter cannot otherwise support.

The chapter also adds a constraint most transition advice skips: non-compete and IP clauses, professional
rules, and customer overlap can make the staged path unavailable. Ten rejected sources are mostly the
"when to quit your job" genre; one is the source of the widely repeated "save six months of expenses"
rule, dropped for having no basis in anything.

### Added — Ch. 13, *Meta-Skills for the AI Era: Taste, Questioning, Synthesis, Empathy*

The last chapter of Part III, and the one with the most obvious failure mode: four noble-sounding human
qualities that AI supposedly cannot do. Both editions and notes:

- `chapters/en/ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md` (3598 words, `draft`)
- `chapters/zh/ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md` (translation)
- `chapters/en/research/ch13-notes.md` — 6 sources kept, 12 rejected (English)
- `chapters/zh/research/ch13-notes.md` — the same notes, translated

**The chapter opens by destroying its own premise.** Research from U of T Scarborough found AI responses
rated *more compassionate than trained crisis responders'*, and a meta-analysis found chatbots scoring
at least as high as human healthcare professionals on empathy measures. So "empathy is the human moat"
is false, and the chapter says so on the first page rather than burying it in the caveats.

What replaces it is narrower and survives the evidence: the models are strong at *producing* a signal
and weak at *judging* it. Anthropic's TASTE benchmark measures that directly — 92 pairs, 77% estimated
human agreement, best model 60%, and frontier agentic capability does not predict performance here. The
chapter's spine is a two-column table: producing on the left, judging on the right.

**One source was added late for a specific reason.** The empathy findings are only interesting next to
the mechanism, so the chapter cites the Anthropic sycophancy study: five leading assistants all showed
sycophancy across four task types, and the human preference data used to train them rewarded agreement
over correctness. That turns "AI is more empathetic" into "AI is trained to validate, and validation
reads as empathy" — which is a different and more actionable claim.

**Two claims were downgraded rather than repeated.** Cognitive offloading is reported as a mechanism,
with the correlational weakness stated in the source and flagged in the chapter, rather than as "AI is
making us dumber". And synthesis is explicitly labelled as the one skill with *no* evidence base — it is
on the list because the index names it, and the chapter says in the relevant section that its argument
there is the author's, not a study's.

### Added — Ch. 12, *One-Person Business Playbook*

The operating system for a team of one: what you sell, what you charge, how you deliver. Ch. 06 argued
that small teams are newly viable; Ch. 14 handles whether to leave employment. Both editions and notes:

- `chapters/en/ch12-one-person-business-playbook.md` (3517 words, `draft`)
- `chapters/zh/ch12-one-person-business-playbook.md` (translation)
- `chapters/en/research/ch12-notes.md` — 5 sources kept, 14 rejected (English)
- `chapters/zh/research/ch12-notes.md` — the same notes, translated

**The research refused the genre.** The chapter opens on the Census baseline — 29.8 million nonemployer
businesses, $1.7 trillion in receipts, which divides to roughly $57,000 each — rather than on the top
decile's success stories. The BLS survival tables (77.9% at one year, 56.3% at three) and the Federal
Reserve's SBCS (46% of small firms use AI, only 7% fully integrated) supply the rest.

**The most-quoted claim in this genre has no source, and the chapter says so.** The assertion that
value-pricing freelancers out-earn hourly billers by a wide margin — usually with a specific-looking pair
of dollar figures — traces to consultancy blogs and nothing else. Rather than repeat it, the chapter
argues the mechanism (hourly billing couples income to capped hours, and AI compresses those hours) and
states plainly that no study was found. That is recorded in the notes as a downgraded claim, not hidden.

Fourteen sources were rejected, and most of them are one genre: the "solopreneur statistics" aggregator
that quotes other aggregators. Two were frustrating rather than bad — the IRS Statistics of Income size
tables are exactly the distribution this chapter wants and are `.xls` files the tooling cannot read, and
Upwork's Future Workforce Index returns 403 on both its URLs. Both are recorded as the first things a
revision should open.

### Added — Ch. 11, *Context Engineering (Beyond Prompt Writing)*

The mechanics of Part III: Ch. 10 finds the reader's boundary, and this chapter is about the machine's
side of it — what the model can actually see when it answers. Both editions and the notes:

- `chapters/en/ch11-context-engineering-beyond-prompt-writing.md` (3568 words, `draft`)
- `chapters/zh/ch11-context-engineering-beyond-prompt-writing.md` (translation)
- `chapters/en/research/ch11-notes.md` — 5 sources kept, 12 rejected (English)
- `chapters/zh/research/ch11-notes.md` — the same notes, translated

**The research moved the chapter off the obvious frame.** The blogs say "prompt engineering is dead,
context engineering replaced it." The evidence says something narrower: *more context is not better
context*. Chroma's report tests eighteen models and finds performance degrading as input grows even on
tasks too simple to blame difficulty; Liu et al. locate the weak spot in the middle of a long input;
Shi et al. show irrelevant material actively misleads rather than merely slowing a model. Anthropic's
engineering post supplies the mechanism — a finite "attention budget" — and the working definition.

**Twelve rejected sources are mostly one genre: the "prompt engineering is dead" post.** The claim is
asserted everywhere and evidenced nowhere, so the chapter states the defensible version and explicitly
names the overclaim as something not to repeat. Vendor context-engineering guides from LangChain,
LlamaIndex, Sourcegraph and Neo4j are rejected for the same reason one layer down: guides to context
engineering written by companies selling context tooling.

Two source decisions worth recording. The sourcing here is thinner than in Ch. 08–10 — one vendor
engineering post and two peer-reviewed papers — and the notes say so rather than implying more
independence than exists. Anthropic is both the origin of the definition and a seller of the thing being
defined. And no context-window size is quoted anywhere in the chapter, because the sources' point is
that the advertised number is the wrong number; naming one would have argued against the chapter.

### Added — Ch. 10, *Finding Your Human-AI Collaboration Point*

The first chapter of Part III and the hinge of the book: Parts I–II established where the boundary sits
and where the reader stands; this one is about the reader's own boundary. Both editions and the notes:

- `chapters/en/ch10-finding-your-human-ai-collaboration-point.md` (3599 words, `draft`)
- `chapters/zh/ch10-finding-your-human-ai-collaboration-point.md` (translation)
- `chapters/en/research/ch10-notes.md` — 6 sources kept, 11 rejected (English)
- `chapters/zh/research/ch10-notes.md` — the same notes, translated

Scope is held to the line the index draws: *the reader's own collaboration point*. The mechanics belong
to Ch. 11, tool selection to Ch. 15 and Appendix A.

**The chapter is built on the jagged frontier, and every figure in it was opened and checked.** The BCG
experiment (758 consultants; +12.2% tasks, 25.1% faster, 40% higher quality) and its mirror image — the
deliberately outside-frontier task where AI users dropped to 60–70% against 84% without it — come from
HBS Working Knowledge and from co-author Ethan Mollick's own write-up. METR supplies the time-horizon
curve (near-100% under four minutes, under 10% beyond four hours) and the developer RCT (16 developers,
246 issues, 19% slower while believing they were 20% faster). Anthropic's Economic Index supplies the
52/45 augmentation split and the deskilling-versus-upskilling analysis.

Three citations are worth flagging. HBS Working Knowledge is marked **secondary** in the notes — it is a
journalist's account written with the authors, and the notes say so rather than inflating it; Mollick's
post is the primary account by a co-author, and it carries the 84% → 60–70% figure. The arXiv
homogeneity paper (Wenger & Kenett) is cited instead of the widely-linked single-model studies because
it rules out "it was just GPT". And the strongest counterweight — Cui, Demirer et al.'s three Copilot
RCTs — is named in the chapter's caveats *as evidence that could not be opened*, with the reason.

One rejected source is instructive: the MIT Sloan SSRN export of the jagged-frontier paper is a
scan-style PDF whose text does not extract, so the two readable accounts are cited and the PDF is
recorded as rejected. The chapter deliberately contains no number a reader is meant to copy down and
keep, because METR now marks its own headline figures as stale inside a year.

### Added — Ch. 09, *The Mid-Career Switcher — Your Judgment Is the Asset*

The second of the two chapters written for people at a decision point, and the close of Part II. Both
editions and the research notes:

- `chapters/en/ch09-the-mid-career-switcher-your-judgment-is-the-asset.md` (3855 words, `draft`)
- `chapters/zh/ch09-the-mid-career-switcher-your-judgment-is-the-asset.md` (translation)
- `chapters/en/research/ch09-notes.md` — 8 sources kept, 12 rejected (English)
- `chapters/zh/research/ch09-notes.md` — the same notes, translated

Scope is held to the line `chapters/en/README.md` draws: *the same decision as Ch. 08, for someone with
an accumulated position to lose*. The transition's sequencing is Ch. 14; the skills layer is Ch. 10–13.

**The research found a contradiction rather than a thesis, and the chapter is built on it.** The IMF
economists writing for Wharton find older workers *better positioned* than younger ones, because they
sit in occupations where AI complements judgment. The Center for Retirement Research finds the same
group leaving work *faster*, with the largest relative rise in exits in the highest-paying jobs —
programmers +25% against painters +2%. Both are right: exposure is the same for both age groups, and the
difference is the cost of re-adjusting. The chapter's synthesis is stated as the author's reading rather
than as a finding either paper makes.

The second reversal is the more uncomfortable one. The obvious advice is "retrain," and the largest
randomised evaluation of US public training — 34,000 job seekers — found that intensive staff assistance
paid off (7–20% earnings gains) while training showed no positive impact at 30 months. That finding is
reported with its own limitations, including the dilution the evaluators flag, rather than dropped for
being inconvenient.

The strongest counter-evidence could not be opened: Economic Mobility Corporation's six-year follow-up
on sectoral training, where earnings impacts *grew* from ~$2,300 to $5,080. It is recorded in the notes
as the first thing a revision should chase, alongside the distinction that probably matters — sectoral,
employer-linked training versus generic courses. The IMF blog and the FRBSF age-discrimination PDF were
both blocked or unrenderable; the Wharton/PRC version by the same IMF authors and the Harvard Gender
Action Portal summary of Lahey (2008) are cited instead.

### Added — Ch. 08, *The Student — Choosing a Path in the Age of AI*

The first of the two chapters written for people who have not started yet, and the first to hit the
raised ~3500-word target. Both editions and the research notes:

- `chapters/en/ch08-the-student-choosing-a-path-in-the-age-of-ai.md` (3928 words, `draft`)
- `chapters/zh/ch08-the-student-choosing-a-path-in-the-age-of-ai.md` (translation)
- `chapters/en/research/ch08-notes.md` — 10 sources kept, 11 rejected (English)
- `chapters/zh/research/ch08-notes.md` — the same notes, translated

Scope is held to the line `chapters/en/README.md` draws: *which way should I go*. Ch. 09 handles the
same decision for someone who already has a career; the operating skills are Ch. 10–13.

**The research overturned the chapter twice, and both reversals are the chapter.** The first draft was
"The entry-level job is disappearing." It is not: entry-level postings are down 7.5% year over year and
still 46% of all postings. What the evidence supports is narrower — employment of 22-to-25-year-olds in
the most AI-exposed occupations sits 19% below where it would be if it had tracked less-exposed peers,
up from 15% a year earlier, and the adjustment runs through reduced *hiring* rather than separations.

The second reversal matters more. The Stanford paper everyone quotes does not claim causation, says so
in its own abstract, and the New York Fed's competing finding — remote work explains 64% of the rise in
young-graduate unemployment — is stronger on timing. The chapter reports both and refuses to pick a
winner, because the number has already been revised once (13% → 15% → 19%).

Two sources were on topic and could not be used: Ars Technica's counterweight piece and the EPI's
`Class of 2026` analysis, both blocked at 403. Their figures exist only in search snippets, and a
snippet is not a source — they are recorded in the notes as rejected with that reason, alongside the
trade-school "47% out-earn graduates" claim that traces to nothing.

The chapter's advice was also rebuilt. "Choose a major AI can't do" is Ch. 03's argument applied badly —
uncheckable at eighteen, and stale by graduation. It is replaced by three questions the reader can run
on any path this week, each tied to a mechanism in the evidence, each with a stated tell.

### Changed — length rules raised to ~3500 words

The rules and the linter now target **~3500 words of body**, up from ~2500, with the warning band moved
from 2000–3500 to **2500–4500** and the body-section spec from 700–900 to **900–1200 words**.

- `scripts/check-chapter.sh` — warns below 2500 or above 4500 words of body; the target line it prints
  now reads `(target ~3500)`.
- `AGENTS.md`, `WORKFLOW.md`, `chapters/en/README.md`, `CONTRIBUTING.md` — the target, the band, the
  section range, and the book arithmetic (21 chapters × 3500 = ~73,000 words, was ~52,000), in the
  places each of them states it.
- `templates/chapter-template.md` — `word_target: 3500`, the section guidance, and the `LENGTH` note,
  which now argues from the middle of the 2,500–5,000 convention rather than from its low end.

**No completed chapter was touched.** Ch. 01–07 keep their bodies and their front matter as merged,
including `word_target: 2500` on Ch. 01–06, which no longer matches the template's number. That is
deliberate and it happens to be safe: the linter only flags a declared `word_target` that is more than
400 words from the body, and every chapter's declared value is within that of its own text. All seven
still lint at **0 errors, 0 warnings** under the new band.

The open question this leaves is the one worth writing down: Ch. 01–06 run 2554–2900 words, i.e. below
the new target, and nothing will flag them. They are legal, not wrong — the band starts at 2500 and the
project's position is that length follows from the number of arguments a chapter carries — but a reader
comparing the index to the new standard will notice the drift faster than any check will.

### Changed — the translation step now targets native Chinese, and Ch. 01–07 were rewritten to it

Translation was a step the workflow never described. `WORKFLOW.md` went from writing straight to
publishing, and the only guidance for `chapters/zh/` was a short list of *mechanical* rules — keep the
markers, keep the footer, keep the search terms. Nothing said what the Chinese prose itself should
read like, so the existing translations carried English sentence structure across: one English
sentence became one long Chinese sentence, and the English em-dash cadence came with it.

- `chapters/zh/README.md` — the `翻译约定` section is now the project's translation standard. It opens
  with the position (**write the chapter in Chinese; a reader should not be able to tell it was
  translated**), then the concrete rules that follow from it: split English sentences, cap `——` at
  three per thousand characters, cut `被` and stacked `的`, avoid translationese words (`张力`, `内化`,
  `行动化`, `预设`, `商品化`, `可核实`) while keeping the real terms, and do not translate English
  imagery literally. It adds a **term glossary** (`trajectory` → 轨迹, `moat` → 护城河, `taste` → 品味,
  `accountability` → 责任, `structural` → 结构性, `verification` → 验证), the fixed Chinese forms of the
  two mandatory headings, the mechanical rules as they were, and a **pre-handoff checklist**.
- `WORKFLOW.md` — a new **step 7, Translate**, placed between linting and publishing. It states the
  one-way rule (English is the source of truth; fix English first), links to the standard, lists the
  mechanical invariants the linter will not catch, explains the two permanent `check-chapter.sh`
  warnings on Chinese files, and shows how to publish a translation. Publishing and merging are
  renumbered to 8 and 9.
- `AGENTS.md` — points at `chapters/zh/README.md` as the authority on translation, and the workflow
  reference now says 9 steps.

**All seven chapters have been rewritten to it**, one PR each. Meaning, structure,
citations and numbers are held exactly — markers, URLs, heading count and paragraph structure stay
identical to the English — and only the prose changes. The rewrite is mechanical to check: `——` is the
clearest tell of a sentence that followed the English, because the source runs 12.7–16.3 em-dashes per
thousand words and the old translations reproduced that rate in a language whose prose does not use it.

| Ch. | `——` before → after | `被` before → after | `per 1k CJK` before → after | Status |
|---|---|---|---|---|
| 01 | 24 → 1 | 23 → 9 | 6.1 → 0.3 | merged |
| 02 | 30 → 7 | 23 → 9 | 6.9 → 1.7 | merged |
| 03 | 35 → 1 | 16 → 10 | 9.0 → 0.3 | merged |
| 04 | 40 → 10 | 13 → 10 | 9.1 → 2.3 | merged |
| 05 | 32 → 5 | 30 → 21 | 7.1 → 1.2 | merged |
| 06 | 38 → 7 | 6 → 6 | 8.9 → 1.7 | merged |
| 07 | 38 → 12 | 16 → 13 | 7.7 → 2.5 | merged |

Every chapter is now inside the standard's ceiling of three `——` per thousand characters, and the
edition total moved 30,385 → 29,439 CJK characters — shorter because the English sentence structure
was padding, not because anything was cut.

Two facts this entry is written from, both checkable and both found in the existing text: the same
English word `verifiable` was translated **可验证** in Ch. 01 and **可核实** in Ch. 07, which is why the
glossary is now a rule; and the em-dash rate above, which is what made "split the sentence" the first
rule rather than a style preference.

**That terminology drift was real, and it is now fixed edition-wide.** `verification` / `verify` /
`verifiable` had split three ways — 验证 in Ch. 01, 核验 through Ch. 03 (12 occurrences), 核实 through
Ch. 07 (14) — because each chapter was translated in isolation. The glossary pins it to **验证**, and
every occurrence is now unified: Ch. 02 and 03 in their rewrites, Ch. 04 and 07 as a word-level fix
ahead of theirs. Terminology consistency is edition-wide, so it did not wait for each chapter's turn.

Every rewritten chapter lints at **0 errors, 2 warnings** — the same two whitespace artefacts every
Chinese chapter produces, and the reason the standard's checklist does not rely on `check-chapter.sh`
alone for a translation.

### Added — Ch. 07, *The Freelancer — From Selling Skills to Selling Personality*

The third of the Part II advice arc, and the one covering the third way of earning: selling yourself
into other people's problems. Both editions and the research notes:

- `chapters/en/ch07-the-freelancer-from-selling-skills-to-selling-personality.md` (3298 words, `draft`)
- `chapters/zh/ch07-the-freelancer-from-selling-skills-to-selling-personality.md` (translation)
- `chapters/en/research/ch07-notes.md` — 13 sources kept, 12 rejected (English)
- `chapters/zh/research/ch07-notes.md` — the same notes, translated

Scope is held to the line `chapters/en/README.md` draws: *how the unit of sale changes*. The pricing
mechanics are Ch. 12; the decision to go independent is Ch. 14; judging the tooling is Ch. 15. The
chapter is allowed to explain a mechanism and hand over a test, not to name a rate.

The chapter opens on Fiverr's Q2 2026 filing — annual active buyers down 21.9%, spend per buyer up
15.6%, marketplace revenue down 15.5% — and argues that the hour, not the work, is what stopped
selling. Three things the reconstruction changed:

- **The opening had the two Fiverr figures in the wrong order of causation.** It read as a success
  story about survivors. The same filing shows marketplace revenue *down 15.5%*, which the draft never
  mentioned, and both buyer figures are trailing-twelve-month metrics. All three numbers are now there.
- **A caveat contained a sourced-looking claim with no source.** "One freelance writer doing it
  estimates much of it will dry up within five to ten years" had no marker, no name and no trace. It
  was cut, with the reason recorded in the notes.
- **That same caveat rested the cleanup market on "unverifiability is a machine-side limit"** — a
  misapplication of Ch. 03's test in the direction that weakens the argument. Verifiability is the case
  where a machine *can* check output cheaply. The caveat now argues from the window between a defect
  being produced and being noticed, which the reader can measure.

The one live search run during the reconstruction (OpenAlex, 286 works) turned up three papers directly
on this chapter's topic that the chapter had not seen — *Winners and losers of generative AI* (JEBO
2025), NBER WP 33777, and a 2025 HICSS paper on freelancers and the inflection point. They are recorded
as the first thing a revision should read, not as support.

### Added — Ch. 06, *The Entrepreneur — Why Small Beats Big Now*

The second chapter of the Part II advice arc, and the first of three covering people whose income
depends on something they own. Both editions and the research notes:

- `chapters/en/ch06-the-entrepreneur-why-small-beats-big-now.md` (2849 words, `draft`)
- `chapters/zh/ch06-the-entrepreneur-why-small-beats-big-now.md` (translation)
- `chapters/en/research/ch06-notes.md` — 7 sources kept, 13 rejected (English)
- `chapters/zh/research/ch06-notes.md` — the same notes, translated

Scope is held to the line `chapters/en/README.md` draws: *why small teams are newly viable, and what
that changes about strategy*. The operating playbook is Ch. 12; the decision to leave employment is
Ch. 14.

**The research inverted the chapter.** I went looking for evidence that small teams now win, and the
strongest data found says they are not the ones adopting the tools that would let them:

- Firms with four or fewer employees sit under 20% AI use, against 37% for firms with 250 or more, and
  adoption rose only among firms above 20 employees over the six months measured (Census BTOS).
- The Federal Reserve records that in the *previous* survey series the firm-size/adoption relationship
  was **U-shaped** — largest *and* smallest highest — and that in the new series this has *moderated*,
  leaving the smallest cohort clearly below the large ones.
- The Census working paper finds 50–60% adoption in very large Information/Professional Services/Finance
  firms, and that 66% of AI users only augment tasks while just 2% of firms cut employment over it.

So the chapter argues the option opened and most small firms have not exercised it — a conditional, not
a triumph. It also separates AI *use* (spreading) from AI *production* (1,246 firms across 32 economies;
700 US, 250 China, per the BIS), because a chapter that blurs those two is selling something.

Sources found and **not** used are in the notes, including the Cui/Demirer developer field experiments —
precisely on topic, paywalled, and reported by a summary that warns the headline effect's interval is
wide enough that quoting the point estimate would misrepresent it.

### Added — Ch. 05, *The Employee — From Replaceable Part to Indispensable Node*

The first chapter of the Part II advice arc, and the one that covers the largest group: people who
already have a job inside an organisation. Both editions and the research notes:

- `chapters/en/ch05-the-employee-from-replaceable-part-to-indispensable-node.md` (2900 words, `draft`)
- `chapters/zh/ch05-the-employee-from-replaceable-part-to-indispensable-node.md` (translation)
- `chapters/en/research/ch05-notes.md` — 12 sources kept, 14 rejected (English)
- `chapters/zh/research/ch05-notes.md` — the same notes, translated

Scope is held to the line `chapters/en/README.md` draws for this chapter: mattering *inside* an
organisation. Anything about working for yourself belongs to Ch. 06, Ch. 07, Ch. 12 or Ch. 14.

Two research findings shaped the draft, and both are recorded in the notes:

- **The rewrite is not a layoff.** The chapter opens on Salesforce's support function going from 9,000
  to about 5,000 with no layoffs, and on the Dallas Fed's finding that this adjustment runs through
  reduced hiring rather than separations. An earlier draft opened on job elimination, which neither
  source supports.
- **The people AI helps most are the people it most endangers.** The 34%-for-novices result in
  Brynjolfsson, Li and Raymond reads as good news until it is paired with the fact that the entry-level
  rung's training value is exactly what is being absorbed. That pairing is the chapter's spine, and it
  only appeared when the two results were read side by side.

Sources that were found and **not** used are the part of the notes with the most value — including the
Dell'Acqua *jagged frontier* experiment, which is precisely on topic but whose full text was
unreachable on every route, and the widely repeated Gartner middle-management forecast, which arrives
only through secondary restatements of a paywalled release.

### Changed — `publish-chapter.sh` now names the PR after the commit

Found while shipping Ch. 05: the script committed as `draft(ch05): <title>` but opened the PR with the
bare `<title>`, so the same change read differently in the PR list and in `main`'s history. The two now
use one string. `--type` still flows through, so a tracked chapter gets `revise(ch05): …` in both.

This also settles a discrepancy in the existing record rather than introducing one. PR titles #12–#17
were bare (`Where Different People Actually Stand`, `不同人群的真实处境`); only the squash commits
carried the type prefix. Ch. 05's Chinese PR (#19) was opened with the prefix by hand, which is the form
the script now produces.

Caveat, from `pr-create.sh`: it reports an existing PR rather than updating it, so a PR already open
when this changed keeps whatever title it was created with. Applies to PRs opened from here on.

### Changed — Ch. 15–21 renumbered so the sequence reads in order

Ch. 21 sat after Ch. 14 in Part III, which made the table of contents read 10–14, 21, 15–20. That
placement was deliberate and documented, but the resulting order was confusing, so the tail was
renumbered in one pass to run straight through.

| Was | Now | Chapter |
|---|---|---|
| 21 | **15** | Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong) |
| 15 | **16** | Creativity When AI Can Generate Everything |
| 16 | **17** | Relationships & Community in a Digital World |
| 17 | **18** | Rebuilding Meaning |
| 18 | **19** | The Last Fortress of Being Human: Body, Nature, Art |
| 19 | **20** | The Courage to Slow Down |
| 20 | **21** | Designing the Life You Actually Want |

Part III is now **10–15**, Part IV **16–18**, Part V **19–21**. No title, scope or content changed —
only the numbers, and the filenames of chapters that do not exist yet.

**Nothing broke, because nothing had shipped.** Only Ch. 01–04 exist as files, and they cite nothing
above Ch. 09, so no filename, in-book cross-reference, or public link pointed at a moved number. The
one real cost was the repo's own rule: "chapter numbers are immutable" was stated in `AGENTS.md`,
`chapters/en/README.md`, `chapters/zh/README.md` and this file. All four now say numbers are stable
*once published*, with this renumbering named as the case that rule leaves room for.

### Added — Chinese edition (Ch. 01–04)

The book now has a Chinese edition at `chapters/zh/`, derived from `chapters/en/`. All four finished
chapters are translated, each with its research notes.

- `chapters/zh/ch01-ai-is-not-a-tool-its-a-species.md`,
  `chapters/zh/ch02-youre-anxious-because-youre-using-an-old-map.md`,
  `chapters/zh/ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md`,
  `chapters/zh/ch04-where-different-people-actually-stand.md` — the chapters, translated
- `chapters/zh/research/ch01-notes.md`, `chapters/zh/research/ch02-notes.md`,
  `chapters/zh/research/ch03-notes.md`, `chapters/zh/research/ch04-notes.md` — the research notes,
  translated
- `chapters/zh/README.md` — Chinese chapter index, translation status, and the conventions the
  translation follows
- `README_zh.md` — the 章节 links now point at `chapters/zh/`, and the repo-layout section lists it

**Filenames stay English, and so do four other things.** `check-chapter.sh` validates
`ch<NN>-<slug>.md` against `[a-z0-9-]`, so a Chinese slug would fail outright — and the numbers live in
cross-language links. It also greps for the four footer markers verbatim, and the `<!-- verified -->`
markers exist to record that a source was opened: rewriting one, or its URL, would forge that record.
So the slugs, the footer, the markers and their URLs, and the search queries in the notes are all left
untranslated. Everything a reader reads is Chinese.

**Known limitation, deliberately not fixed.** `check-chapter.sh` counts words by whitespace, and
Chinese has none, so a full chapter reads as a few hundred "words" and trips the `body is short`
warning. The script was left alone: the warning is a measurement artefact, not a short chapter, and
editing shared tooling to satisfy one edition is how the English path breaks.

### Added
- `WORKFLOW.md` — writing and publishing manual: git flow, script reference, troubleshooting
- `chapters/en/README.md` — chapter index with per-chapter status (`planned`/`draft`/`review`/`stable`)
- `appendix/README.md` — appendix index, refresh cadences, tool-matrix schema
- `templates/chapter-template.md` — front matter + required disclosure footer
- Chapters:
  - `chapters/en/ch01-ai-is-not-a-tool-its-a-species.md` (draft)
  - `chapters/en/ch02-youre-anxious-because-youre-using-an-old-map.md` (draft)
  - `chapters/en/ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md` (draft)
  - `chapters/en/ch04-where-different-people-actually-stand.md` (draft)
- Build tooling:
  - `scripts/check-chapter.sh` — lint a chapter file
  - `scripts/publish-chapter.sh` — branch → commit → push → PR for one chapter
  - `scripts/pr-create.sh` — open a PR through the GitHub REST API (idempotent)
  - `scripts/pr-merge.sh` — mark a draft PR ready, merge it, clean up branches
  - `scripts/github-token.sh` — resolve/diagnose the PAT
  - `scripts/setup-ssh.sh` / `scripts/git-ssh.sh` — SSH key and push transport
  - `scripts/doctor.sh` — diagnose repo, ssh, token in one shot
  - `scripts/gh.sh` — optional `gh` wrapper

### Changed
- `origin` switched from HTTPS to SSH
- Publishing split into two credentials by job: SSH for `git push`, PAT for opening
  pull requests. The token is never used for pushes, so a leaked token cannot rewrite
  history and a broken token cannot block a push.
- `.gitignore` — ignore `.git-ssh/` (private key), `.secrets/` (PAT), `.scratch/`

### Changed — writing rules
- **Chapter length set at ~2500 words**, the low end of the 2,500–5,000 range
  non-fiction chapters normally run. Twenty chapters at 2500 is a 50,000-word book;
  at the 1300 briefly tried earlier it would have been 26,000, which is an essay
  collection rather than something that can carry a price.
  `check-chapter.sh` warns below 2000 and above 3500, and flags a gap over 400 words
  between the body and the declared `word_target`.
- **Chapter shape settled at two or three body sections of 700–900 words named after
  their arguments**, replacing three anonymous `Body section N` placeholders. The
  comparison table and the taxonomy shape (`###` subsections repeating
  *model / why it's failing / the tell*) used by Ch. 02 are now documented in the
  template as first-class components.
- `templates/chapter-template.md` rewritten to encode the above with worked examples.

  An earlier pass in this same release had derived the target from the two published
  drafts (1250 and 1384 words) rather than from the genre. That was backwards — the
  drafts were short because they were drafted short, so the reasoning was circular.
  Corrected against genre norms before release.
- **Ch. 01 and Ch. 02 rewritten to the new length**: 1238 → 2404 and 1384 → 2514 words.
  Both gained substantive sections rather than padding:
  - Ch. 01: a treatment of the three ways people avoid the question ("it's a
    revolution" / "it's superintelligence" / "I'll just not use it"), a sourced
    Stack Overflow figure showing usage rising while sentiment falls, and an expanded
    account of what "under management" means for dependency risk.
  - Ch. 02: the explanation of anxiety its title promised but its body never delivered,
    a section on why stale maps stay persuasive, a concrete example per map, and two
    further caveats (a new map is not a correct map; the payoff is slow and invisible).

### Added — source discipline
- Every concrete, checkable claim now carries a marker:

  ```markdown
  <!-- verified YYYY-MM-DD — source: <URL> -->   a claim that was actually checked
  <!-- unverified -->                            a claim that has not been
  ```

  This replaces `<!-- Last verified: DATE -->`, which asserted a date with no source and no
  way to tell "I checked this" from "this sounded right".
- `check-chapter.sh` now **errors** on a `verified` marker with no `source:`, and on any
  `unverified` claim once `status` is `review` or `stable` — unsourced claims are a visible
  temporary state instead of a silently plausible sentence.
- Rationale, and the three failure modes that prompted this, written up in
  `chapters/en/README.md#factual-claims`.

### Added — research notes

Every chapter now has a research file at `chapters/en/research/ch<NN>-notes.md`, committed alongside
it. It records the queries actually run, the sources kept, and — the part with real value — **what was
found and rejected, and why**.

- **Research now happens before drafting**, as step 1 of `WORKFLOW.md`. A chapter written first and
  sourced afterwards produces claims shaped by the prose; the research then becomes a hunt for support
  rather than a check on what is true.
- **At least 5 independent sources per chapter.** Independent means separate origins, not one report
  reprinted five times.
- **Every source cited in a chapter must appear in its notes**, and the notes' own `sources_kept` must
  not understate what the chapter cites. `check-chapter.sh` errors on both. The check runs one way on
  purpose: notes may legitimately record sources that were read and rejected.
- Source tiers are defined — primary (original data, official reports, statistics, papers, first-hand
  accounts, the vendor's own pricing page) can carry a claim alone; secondary reporting is a lead but
  must not be the only support for a number.
- New: `templates/research-notes-template.md`, `chapters/en/research/README.md`.

### Fixed — factual claims in published chapters
- **Ch. 01** claimed the prompt-engineer title had "largely dissolved" and put the 2023 salary
  at "above $300,000 at some AI startups". Checked: the standalone title declined roughly 30%
  from its 2024 peak and still exists, and the posting was Anthropic's specifically, not a
  general market rate. Rewritten and sourced.
- **Ch. 01, second pass.** Auditing the rewritten chapter against the new rule caught a
  violation the first pass introduced: it cited Bloomberg's "$335,000" for that posting without
  the source ever being opened (it sits behind a paywall). Opening accessible coverage instead
  showed the reporting disagrees — Fortune: $175,000–$335,000; Business Insider: $280,000–$375,000.
  The chapter now states the range and cites a source a reader can actually check. This is the
  third failure mode documented in `chapters/en/README.md#factual-claims`.
- **Ch. 02** claimed junior hiring "fell sharply from 2023 through 2025 **as** AI coding
  assistants moved from autocomplete to something closer to a colleague" — unsourced, and
  over-attributed. Sources are explicit that AI adoption and the post-ZIRP correction cannot be
  separated cleanly.
- **Ch. 02, third pass — a source found that contradicted the chapter.** The rewrite above rested on
  the widely-shared "6.1% unemployment for recent CS graduates" figure. Research for this pass
  surfaced a published analysis showing that estimate carries a 95% confidence interval of roughly
  4–11%, and that the share of recent CS graduates holding any job was 90% in 2023 — above the entire
  pre-pandemic decade. The chapter now presents the figure *and* why it cannot carry the weight put on
  it, then gives the better-measured version: employment for 22–25-year-olds in the most AI-exposed
  occupations fell about 11% between late 2022 and mid-2026 while the least-exposed grew about 10%
  (Stanford Digital Economy Lab, revised Aug 2026).
- **Ch. 02, Map 1 — mechanism corrected.** The chapter said AI automates the *simplest* tasks. Task-level
  research contradicts this: exposure concentrates on cognitive, non-routine work (engineering, finance,
  law, administration), while face-to-face and manual work stayed under 10% of work content. The
  metaphor survived; the explanation was wrong.

### Added — Ch. 03, and the first time research killed a planned argument

`ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md` is written. The chapter is notable less
for its content than for what producing it demonstrated about the process.

The draft was going to be built on the strongest evidence available that AI is bad at something: a
METR randomised controlled trial — 16 experienced developers, 246 real tasks, on their own
repositories — which found AI made them **19% slower**. Controlled, expert, real-world. It would have
made a satisfying centrepiece.

Opening the primary source killed it. METR's own page now carries:

> ⚠️ These results are out of date … We believe these historical results no longer reflect the current
> impact of AI models on open-source developer productivity.

The revision estimates an **18% speedup** on the same population. More importantly, it explains that
the *measurement* stopped working: 30–50% of participants admitted withholding tasks, recruitment
became impossible because developers would not work without AI, and some found time-on-task
unmeasurable while running agents in parallel.

So the chapter's argument inverted. It no longer claims to know where the limits are. It argues you
**cannot** establish a permanent limit from evidence, however good, and offers a test instead: ask
whether a limit would disappear because a model improved (machine-side, don't bet on it) or because
people agreed to something (human-side). Then it applies that test to three candidates and ranks them,
naming embodiment as the one it would bet on least.

- 2550 words, 7 sourced claims, 6 sources, 0 lint errors.
- Research notes record the rejected material, including the arXiv continual-learning paper that was
  excluded by the chapter's own test — a limit that looks structural but is machine-side, which is
  exactly the mistake the chapter argues against.

### Added — Ch. 04, and an exposure map that turned out upside down

`ch04-where-different-people-actually-stand.md` is written, as the diagnostic opener of Part II.

Ch. 03 closed by admitting it had no data on whether judgement is becoming more valuable. This is that
data. It also answers a question the earlier chapters kept deferring: *which* readers are actually
exposed — and the answer is not the one the news cycle gives.

- **The exposure map is inverted.** The most AI-exposed occupation is **computer programmer** (75% of
  its task content covered by observed AI use), then customer service representative, then data entry
  keyer at 67%. The most-exposed quartile earns **47% more** than the 30% of workers with no measured
  exposure at all, and is far better educated. Exposure concentrates on cognitive, educated, well-paid
  work — not on routine low-skill work, which is the framing the chapter was originally going to open
  with.
- **The sorting variable is the experience premium** — the pay gap between an entry-level and an
  experienced worker in the same occupation, from BLS wage estimates. It predicts the *direction* of AI's
  effect on wages: −0.28 percentage points for occupations with no premium, roughly zero at the median
  (40%), **+0.2** at the 90th percentile. That is the mechanism behind "fewer jobs, faster-rising pay"
  in exposed sectors, and it is what makes this a diagnostic rather than a description.
- **Four positions**, each with a *what it is / what the data shows / the tell* shape: the task has
  already moved; the door closed behind you (the hiring-freeze position, created by the 19% employment
  shortfall for 22–25-year-olds that shows up as no layoffs at all); the premium is paying you; and off
  the map entirely, where a blank has two very different meanings.
- 2899 words, 10 sourced claims, 7 sources, 0 lint errors, 0 warnings.

Research notes record the material that did **not** survive: the Pew AI-at-work figure (unreachable at
every URL tried, and only quotable second-hand through aggregators), the WEF entry-level-work report,
the EPI counter-argument, PwC's AI Jobs Barometer, and the Hui/Reshef/Zhou freelance study — paywalled
at the full text, so §1's freelance claim rests on the translation study instead. A precise coefficient
(0.7 percentage points of translator employment growth per point of machine-translation adoption) was
visible in a search snippet and left out, because neither openable record of the paper states it. That
is the Ch. 01 failure mode caught one step earlier.

### Changed — book structure

The outline was reviewed for structural problems, not just wording. Five changes, all of them
avoiding a renumbering: **no chapter number, filename, or published link changed.**

- **Part II mixed two classification axes.** Ch. 05–07 sorted by *how you earn* (employee /
  entrepreneur / freelancer), Ch. 08–09 by *life stage* (student / mid-career switcher). A 45-year-old
  employee weighing a change had no way to tell which chapter was his. The five now sit in two named
  groups — "already on a path" and "choosing a path" — because they answer two different questions.
- **Ch. 04 moved into Part II** as its diagnostic opener. "Where Different People Actually Stand" is
  the setup for a part about different people; it was sitting at the end of a part about cognition.
  Part I is now a clean three-chapter argument.
- **Ch. 14 moved into Part III.** "From Employed to Self-Employed" is the payoff of the career arc in
  Ch. 05–12, but it sat in Part IV, separated from that arc by Ch. 13. The reader finished the career
  material, detoured through creativity, and came back to careers.
- **Ch. 06 and Ch. 12 were effectively the same title.** "Building a One-Person Company" vs. "One-Person
  Business Playbook" — four chapters (06, 07, 12, 14) sat in the same topical space with no stated
  division of labour. Ch. 06 is retitled *Why Small Beats Big Now* (the strategic why), leaving Ch. 12
  as the operating playbook. A `## Chapter boundaries` section now states what each chapter owns and
  what it explicitly does not, for the independent-work cluster, for 16-vs-19, and for 18-vs-21.
- **Ch. 15 added:** *Judging AI Tools for Yourself (Because This Book's Matrix Will Be Wrong).* The book
  sells a tool matrix in the paid tier but never taught readers to evaluate a tool independently —
  which contradicts Ch. 01's own advice to invest in judgement rather than interfaces. Ch. 15 closes
  that gap. (Added as Ch. 21, then renumbered — see "Ch. 15–21 renumbered" above.)
- Part II's title dropped "(by Persona)", since it now opens with a diagnostic chapter.
- Book total updated from ~50,000 to ~52,000 words.

### Notes
- Content is English-first. Translations derive from `chapters/en/`.
- One chapter per branch per PR; self-merged.
- Scripts avoid `jq` and `gh` as hard dependencies — `jq` is not installed here.
- **Chapter numbers are stable once published.** A chapter that has shipped changes its title and its
  placement, never its number. The number of an *unpublished* chapter can still change — Ch. 15–21 were
  renumbered as one pass. The numbers are in filenames, in cross-references, and in public links.

---

## [2026.09] - 2026-09-30

### Added
- Initial public release of repository structure
- README.md (English) and README_zh.md (Chinese)
- Book outline: 20 chapters across 5 parts
- CONTRIBUTING.md and dual-license setup (CC BY-NC-SA 4.0 + MIT)
- Changelog system

### Planned
- [x] Write Chapter 01: AI Is Not a Tool — It's a Species
- [x] Write Chapter 02: You're Anxious Because You're Using an Old Map
- [x] Write Chapter 03: What AI Can Never Do Well
- [x] Write Chapter 04: Where Different People Actually Stand
- [x] Write Chapter 05: The Employee — From Replaceable Part to Indispensable Node
- [x] Write Chapter 06: The Entrepreneur — Why Small Beats Big Now
- [ ] Write Chapters 07–21
- [ ] Set up DeepSeek + Reasonix automation pipeline
- [ ] First intel collection script (RSS → summary)
- [ ] Gumroad / 面包多 product pages (Coming Soon)

---

## Version Legend

- **Major (YYYY.01):** Structural changes, new parts, significant rewrites
- **Minor (YYYY.MM):** New chapters, major updates to existing chapters
- **Patch (YYYY.MM.DD):** Typo fixes, link updates, small corrections, tool price changes

---

*Next update: 2026-10-07 (weekly patch cycle)*
