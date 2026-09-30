# Chapters (English)

This directory is the **source of truth** for the book text. Translations are derived from these files — fix the English first, then translate.

## Status legend

| Status | Meaning |
|--------|---------|
| **Planned** | Not written yet. Outline entry exists only in this index. |
| **Draft** | A first pass exists. Not reviewed, not fact-checked. Do not quote it. |
| **Review** | Human-edited and fact-checked. Open for PRs and corrections. |
| **Stable** | Locked into the current release. Changes need an Issue first. |

## The 20 Chapters

### Part I — Face Reality

| # | Chapter | File | Status |
|---|---------|------|--------|
| 01 | AI Is Not a Tool — It's a Species | [ch01-ai-is-not-a-tool-its-a-species.md](ch01-ai-is-not-a-tool-its-a-species.md) | Draft |
| 02 | You're Anxious Because You're Using an Old Map | [ch02-youre-anxious-because-youre-using-an-old-map.md](ch02-youre-anxious-because-youre-using-an-old-map.md) | Draft |
| 03 | What AI Can Never Do Well (and Why That's Your Moat) | `ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md` | Planned |
| 04 | Where Different People Actually Stand | `ch04-where-different-people-actually-stand.md` | Planned |

### Part II — Secure the Baseline (by Persona)

| # | Chapter | File | Status |
|---|---------|------|--------|
| 05 | The Employee — From Replaceable Part to Indispensable Node | `ch05-the-employee-from-replaceable-part-to-indispensable-node.md` | Planned |
| 06 | The Entrepreneur — Building a "One-Person Company" | `ch06-the-entrepreneur-building-a-one-person-company.md` | Planned |
| 07 | The Freelancer — From Selling Skills to Selling Personality | `ch07-the-freelancer-from-selling-skills-to-selling-personality.md` | Planned |
| 08 | The Student — Choosing a Path in the Age of AI | `ch08-the-student-choosing-a-path-in-the-age-of-ai.md` | Planned |
| 09 | The Mid-Career Switcher — Your Judgment Is the Asset | `ch09-the-mid-career-switcher-your-judgment-is-the-asset.md` | Planned |

### Part III — Amplify Your Leverage

| # | Chapter | File | Status |
|---|---------|------|--------|
| 10 | Finding Your Human-AI Collaboration Point | `ch10-finding-your-human-ai-collaboration-point.md` | Planned |
| 11 | Context Engineering (Beyond Prompt Writing) | `ch11-context-engineering-beyond-prompt-writing.md` | Planned |
| 12 | One-Person Business Playbook | `ch12-one-person-business-playbook.md` | Planned |
| 13 | Meta-Skills for the AI Era: Taste, Questioning, Synthesis, Empathy | `ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md` | Planned |

### Part IV — Beyond Survival

| # | Chapter | File | Status |
|---|---------|------|--------|
| 14 | From "Employed" to "Self-Employed" | `ch14-from-employed-to-self-employed.md` | Planned |
| 15 | Creativity When AI Can Generate Everything | `ch15-creativity-when-ai-can-generate-everything.md` | Planned |
| 16 | Relationships & Community in a Digital World | `ch16-relationships-and-community-in-a-digital-world.md` | Planned |
| 17 | Rebuilding Meaning | `ch17-rebuilding-meaning.md` | Planned |

### Part V — Live Happily

| # | Chapter | File | Status |
|---|---------|------|--------|
| 18 | The Last Fortress of Being Human: Body, Nature, Art | `ch18-the-last-fortress-of-being-human-body-nature-art.md` | Planned |
| 19 | The Courage to Slow Down | `ch19-the-courage-to-slow-down.md` | Planned |
| 20 | Designing the Life You Actually Want | `ch20-designing-the-life-you-actually-want.md` | Planned |

## File naming

```
ch<NN>-<kebab-case-slug>.md
```

- Two-digit chapter number, zero-padded (`ch01`, not `ch1`)
- Lowercase, hyphens only. No spaces, no apostrophes, no em-dashes.
- Drop articles only when the title is unwieldy (`youre` → keep, `its` → keep).

## Writing standards

Pulled from [CONTRIBUTING.md](../../CONTRIBUTING.md) — the short version:

- **Length: ~2500 words.** Low end of the non-fiction convention (2,500–5,000
  words per chapter), and what makes 20 chapters add up to a ~50,000-word book.
  `check-chapter.sh` warns below 2000 and above 3500.
- **Structure:** an opening that makes the reader feel the problem, then **two or three body sections
  of roughly 700–900 words each**, named after their arguments, not their position. Each section
  carries its own argument and its own example — two sections making the same point is one section.
- **Tone:** professional but conversational, like a smart friend explaining something.
- **No fluff.** No "with the development of AI" openings, no filler paragraphs, no restating the heading.
- **Concrete.** Specific tools, prices, dates, numbers. "A $20/month tool" beats "affordable AI solutions".
- **Honest.** If something is uncertain, say so. Don't oversell AI, don't fearmonger. Every chapter has
  an explicit **"The honest caveats"** section covering where the advice breaks down and who it does
  not apply to.
- **Ends with action.** "Do this today" gives three things to do: one under 30 minutes, one this week,
  one this quarter.
- **Cross-references other chapters.** It's a book, not a collection of posts.
- **Every concrete claim is sourced.** See [Factual claims](#factual-claims) below.

The template in [`templates/chapter-template.md`](../../templates/chapter-template.md) encodes all of
this, including a worked example of the taxonomy shape (`###` subsections with a repeated
*model / why it's failing / the tell* structure) that Ch. 02 uses.

## Factual claims

**Every concrete, checkable claim carries a source.** An amount, a percentage, a dated event, a
ranking — if a reader could look it up and find you wrong, it needs a marker underneath it:

```markdown
<!-- verified 2026-03-14 — source: https://example.com/the-report -->
```

- `verified` means **you opened the source and it says what you claim.** It does not mean "this sounds
  right", "this is widely known", or "the model produced it confidently".
- Multiple sources, separated by ` ; ` — preferred where a number is contested.
- The date is when you last checked, not when the claim was written.

If you cannot source a claim yet, say so explicitly instead of dressing it up:

```markdown
<!-- unverified -->
```

`unverified` is legitimate in `draft` and **blocks promotion to `review`** — `check-chapter.sh`
errors on it. That is the point: an unsourced claim should be a visible, temporary state, not a
silently plausible sentence.

### Why this is strict

Drafting with a model produces two failure modes at once, and both were present in Ch. 01 and Ch. 02
before this rule existed:

| Failure | Example from this repo |
|---|---|
| **Exaggeration** | Ch. 01 said the prompt-engineer title had "largely dissolved". Job boards tracking it reported a decline of roughly a third from its 2024 peak; the role still existed. |
| **Vagueness as cover** | Ch. 02 said junior hiring "fell sharply" with no figure at all, when hard numbers were available and would have been more persuasive. |
| **Confident citation of a source you never opened** | Ch. 01 cited Bloomberg's "$335,000" for Anthropic's prompt-engineer posting without opening it (it is paywalled). Opening the coverage instead showed the reporting disagrees: Fortune gave $175,000–$335,000, Business Insider $280,000–$375,000. The chapter now cites one source it can actually be checked against. |

The third one is the reason `verified` is defined so narrowly. It is easy to assemble a plausible
number out of search results and attach a prestigious URL to it. The marker is a claim that you
opened the source — and that you noticed when the sources contradicted each other, which is itself
information worth having.

A `Last verified:`-style marker without a source makes both worse, because it signals diligence that
did not happen. The rule exists so that "we checked" is a claim the repo can actually back up.

### Rules of thumb

- A **specific number** beats an adjective — but only with a source. Otherwise use the adjective.
- Rounding is fine; misattributing is not. "Anthropic posted a role at up to $335,000" is checkable.
  "$300k at some AI startups" is not.
- Opinion, framing, and prediction need no marker. They are not claims about the world; they are your
  argument about it. Mark only what could be falsified.

## Front matter and footer

Every chapter starts with the metadata block and ends with the disclosure footer defined in
[`templates/chapter-template.md`](../../templates/chapter-template.md). Don't hand-roll these — copy the template.

## Publishing a chapter

See [`WORKFLOW.md`](../../WORKFLOW.md). One chapter per branch per PR.
