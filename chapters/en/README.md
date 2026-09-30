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

- **Length: ~1300 words.** A ten-minute read. Long enough to land one argument with evidence, short
  enough that nobody skims. `check-chapter.sh` warns below 1000 and above 2000.
- **Structure:** an opening that makes the reader feel the problem, then **two or three body sections
  named after their arguments** — not after their position. Two is a valid answer; padding to three is
  how filler gets written.
- **Tone:** professional but conversational, like a smart friend explaining something.
- **No fluff.** No "with the development of AI" openings, no filler paragraphs, no restating the heading.
- **Concrete.** Specific tools, prices, dates, numbers. "A $20/month tool" beats "affordable AI solutions".
- **Honest.** If something is uncertain, say so. Don't oversell AI, don't fearmonger. Every chapter has
  an explicit **"The honest caveats"** section covering where the advice breaks down and who it does
  not apply to.
- **Ends with action.** "Do this today" gives three things to do: one under 30 minutes, one this week,
  one this quarter.
- **Cross-references other chapters.** It's a book, not a collection of posts.
- **Every claim that can go stale** (pricing, model names, legal facts) carries a `Last verified:` note.

The template in [`templates/chapter-template.md`](../../templates/chapter-template.md) encodes all of
this, including a worked example of the taxonomy shape (`###` subsections with a repeated
*model / why it's failing / the tell* structure) that Ch. 02 uses.

## Front matter and footer

Every chapter starts with the metadata block and ends with the disclosure footer defined in
[`templates/chapter-template.md`](../../templates/chapter-template.md). Don't hand-roll these — copy the template.

## Publishing a chapter

See [`WORKFLOW.md`](../../WORKFLOW.md). One chapter per branch per PR.
