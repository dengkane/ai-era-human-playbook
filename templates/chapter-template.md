---
chapter: 0
title: "Chapter Title Here"
part: "Part I — Face Reality"
status: draft
language: en
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
assisted_by: "DeepSeek + Reasonix"
edited_by: "Ken Deng"
word_target: 3000
tags: []
---

<!--
  CHAPTER TEMPLATE — copy to chapters/en/ch<NN>-<slug>.md and fill it in.
  Delete every HTML comment (including this one) before opening the PR.
  See WORKFLOW.md for the drafting → review → publish flow.

  LENGTH: 2,000–4,000 words of body. There is no target to hit. Set
  word_target to your honest estimate of what the argument needs; the linter
  only warns if the finished body is more than 400 words away from it.
  check-chapter.sh warns below 2,000 and above 4,000. See "Length" at the
  bottom of this file for why this is a band and not a number.

  This comment sits AFTER the front matter on purpose. check-chapter.sh
  requires the file to start with '---', so anything above it breaks the
  fresh-copy-still-has-the-template-comment case.
-->

# <NN>. Chapter Title Here

<!--
  OPENING: put the reader inside a specific moment — a date, a number, a person,
  something that actually happened. They should be seeing it, not reading about
  it, within three sentences.

  A paragraph that opens with a claim asks the reader to accept a conclusion
  before they have any reason to care. A scene earns the next paragraph.

  Never open with "With the development of AI", "In today's rapidly changing
  landscape", or any variation. Those signal that nothing has happened yet.

  Then SHORT PARAGRAPHS. Two or three sentences, blank line, next idea. A
  four-line paragraph gets skimmed; a two-line one gets read.
-->

> **The one thing to take away:** <!-- one sentence the reader should still remember tomorrow -->

## Why this matters now

<!--
  The stakes, grounded in something that actually happened: a layoff, a price
  change, a launch, a hiring shift. Keep telling the story rather than
  generalising about it.

  Every concrete, checkable claim — an amount, a percentage, a dated event —
  carries a marker underneath it. See "Factual claims" in chapters/en/README.md.
-->

<!-- verified YYYY-MM-DD — source: <URL> -->

## <Body section — name it after the idea, not "Section 2">

<!--
  TWO OR THREE body sections. No word count for any of them: a section ends
  when its argument is finished, whether that takes 500 words or 1,500.

  Name each one after its argument ("A species, not a screwdriver"), never after
  its position. A reader skimming only the headings should come away with the
  argument.

  Show first, explain second. Get the reader into the scene, then give them the
  sentence that names what they just watched.

  Anchor abstractions to images a reader can hold: a rising floor, a ladder with
  a rung pulled out, a map that stopped matching the ground. Leave at least one
  image behind per chapter.
-->

<!--
  IF YOU NEED A SCENE AND DO NOT HAVE A REAL ONE — the label goes in the
  sentence, where the reader sees it, not in a comment:

      Imagine you're a support lead at a 200-person company.
      Say you run a two-person studio.

  Never "Meet Sarah, a product manager…" — that reads as reporting. A real,
  checkable scene gets a verified marker like any other claim. See
  "Invented scenes are labelled" in chapters/en/README.md.
-->

## <Body section — the framework or method>

<!--
  If you introduce a framework, give it a name the reader can repeat to someone
  else. Anything procedural reads better as a table, a list, or a numbered
  sequence than as a paragraph — prose is for scenes and reasoning.

  For a taxonomy with the same structure repeated (three maps, four roles),
  use `###` subsections and repeat a fixed shape inside each. This works when a
  section is built from parallel cases rather than one continuous story:

      ### Map 1: The career ladder

      *The model:* what people believe.

      *Why it's failing:* the specific mechanism that broke it.

      *The tell:* how a reader recognises this in their own life.

  Anything that can go stale — prices, model names, legal facts, salary
  figures — gets its own marker underneath it:

      <!-- verified 2026-03-14 — source: https://example.com/the-report -->

  A 'verified' marker means you opened the source and it says what you claim.
  Never use it to mean "this sounds right". An overstated marker is worse than
  no marker: it tells the reader a check happened when it did not.

  If you cannot source a claim yet, say so out loud rather than dressing it up:

      <!-- unverified -->

  Unverified claims are fine in draft and must be gone before 'review'.
-->

<!-- verified YYYY-MM-DD — source: <URL> -->

## The honest caveats

<!--
  Where does this advice break down? Who does it not apply to? What does it
  cost? Admitting the limits is what makes the rest credible — and every
  chapter so far has needed this section, so write it on purpose rather than
  bolting it on.

  Write it in the same voice as the rest of the chapter: a specific case beats a
  hedge, and "this does not work if you are on a visa" is more useful than
  "results vary".
-->

## Do this today

1. <!-- One action, under 30 minutes -->
2. <!-- One action, this week -->
3. <!-- One action, this quarter -->

## Further reading

- <!-- Link + one-line reason to click it. No bare URLs. -->
- <!-- Cross-reference other chapters of this book. This is a book, not a
         collection of posts: pointing at the chapter that precedes or extends
         this one is what makes the sequence feel deliberate.
         e.g. "Ch. 03 of this book, *Title*, ..." -->

---

<!--
  DISCLOSURE FOOTER — required on every chapter. Keep this exact format; the
  linter checks for all four markers.
-->

---
📅 Last updated: YYYY-MM-DD
🤖 Assisted by: DeepSeek + Reasonix
✍️  Edited by: Ken Deng
⚠️  Verify critical facts yourself — AI moves fast, I do my best.
---

<!--
  LENGTH — why 2,000–4,000 and no target

  This used to be "~3500 words, warn below 2500 and above 4500", and it produced
  the failure it was meant to prevent: chapters restating their own headings to
  reach the number. A reader on a phone gives a chapter about two seconds, and
  padding is what loses them.

  So the rule is a band, not a target. 2,000 words is enough for three sharp
  arguments; 3,800 may be needed for a story, a mechanism, and a counter-argument
  that each have to land. Either is a finished chapter.

  What not to do to reach any number: restate the heading, open with "with the
  development of AI", pad the caveats, or add a section that repeats one you
  already made. If you are short of a number, the chapter is missing an argument,
  not words. Find the argument, or let the chapter be shorter.

  check-chapter.sh warns below 2,000 and above 4,000 words of body, and flags a
  body more than 400 words away from the declared word_target.
-->
