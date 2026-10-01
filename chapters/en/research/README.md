# Research Notes

One file per chapter: `ch<NN>-notes.md`. Every chapter that exists gets one.

## Why these are in the repo

A chapter's `<!-- verified -->` markers show what a claim rests on. They don't show what was searched,
what was found and thrown away, or what stayed unanswered. Without that record, nobody — including
the author in six months — can tell a researched chapter from a confidently written one. This book
claims to be "written in public"; these files are what backs that up.

They are also the cheapest defence against the failure mode that AI-assisted drafting produces most
readily: a fluent paragraph assembled from search-result snippets, with a plausible URL attached.
Writing down *what was rejected and why* is where that gets caught, because a snippet you never
opened cannot be described.

## Rules

- **Every `verified` marker in a chapter must appear in its notes**, and vice versa. The two are
  cross-checked — see `check-chapter.sh`.
- **At least 5 independent sources per chapter.** Independent means separate origins, not the same
  wire story reprinted five times or five pages citing one report.
- **Open every source before you cite it.** A search snippet is a lead, not a source. If a page is
  paywalled, say so in the notes and cite something a reader can actually check — this happened with
  the Bloomberg article in Ch. 01, and the accessible coverage disagreed with it.
- **Record rejected sources with the reason.** This is the part with the most value and the part most
  likely to be skipped.
- **Update the notes when you revise the chapter.** A note that describes a claim the chapter no
  longer makes is worse than no note.

## Source tiers

| Tier | What counts | How to use it |
|------|-------------|---------------|
| **Primary** | original data, official reports, government statistics, academic papers, first-hand accounts, the actual product page or pricing page | can carry a claim on its own |
| **Secondary** | reporting *about* someone else's data, blog posts, aggregators, vendor marketing | fine for orientation and leads; must not be the only support for a load-bearing number |

Prefer citing the primary source even when a secondary one is easier to read — link the readable one
as well if it helps, but the claim should rest on the primary.

**Not evidence:** vendor blogs arguing their own product is best, "top 10 tools" listicles, and
anything whose number cannot be traced back to a study, a filing, or a measurement.

## Naming

```
ch<NN>-notes.md          e.g. ch01-notes.md
```

Same number as the chapter. Never renamed — see the immutability rule in the chapter index.

## Status

| Notes | Chapter | Sources | Status |
|-------|---------|---------|--------|
| [ch01-notes.md](ch01-notes.md) | 01 — AI Is Not a Tool — It's a Species | 6 kept / 8 rejected | Complete |
| [ch02-notes.md](ch02-notes.md) | 02 — You're Anxious Because You're Using an Old Map | 5 kept / 9 rejected | Complete |
| [ch03-notes.md](ch03-notes.md) | 03 — What AI Can Never Do Well | 6 kept / 11 rejected | Complete |
| [ch04-notes.md](ch04-notes.md) | 04 — Where Different People Actually Stand | 7 kept / 12 rejected | Complete |
| [ch05-notes.md](ch05-notes.md) | 05 — The Employee | 12 kept / 14 rejected | Complete |
| [ch06-notes.md](ch06-notes.md) | 06 — The Entrepreneur | 7 kept / 13 rejected | Complete |
| [ch07-notes.md](ch07-notes.md) | 07 — The Freelancer | 13 kept / 12 rejected | Reconstructed¹ |
| [ch08-notes.md](ch08-notes.md) | 08 — The Student | 10 kept / 11 rejected | Complete |

¹ Ch. 07's chapter was drafted before its notes existed, and the notes were rebuilt afterwards by
re-opening every cited source. The file records that history rather than hiding it. See its framing
note.
