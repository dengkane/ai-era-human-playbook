# Appendix Index

Appendices are the most volatile part of the book. They are **refreshed monthly** and versioned by
date, not by chapter number. Expect them to change more often than the chapters.

## How appendices relate to the chapters

The chapters teach **how to think**; the appendices supply **what to use**. The split is deliberate —
they age at completely different rates, so keeping them in one place would mean either freezing the
chapters or reprinting them monthly.

This is why **Ch. 21 (Judging AI Tools for Yourself)** exists. These appendices *will* go stale; that
is a property of the subject, not a defect. Ch. 21 teaches the reader to evaluate a tool without
trusting a list, so the appendices can be a shortcut rather than a dependency. When you compile a
matrix entry, keep that in mind: the reader is buying convenience, not authority, and the entry should
say what would make it wrong.

| Appendix | File | Refresh cadence | Status |
|----------|------|-----------------|--------|
| A. 2026 AI Tool Matrix (CN + Global stacks) | `a-ai-tool-matrix.md` | Monthly | Planned |
| B. Bilingual Prompt Library (EN/CN, by scenario) | `b-prompt-library.md` | Monthly | Planned |
| C. One-Person Business Toolchain Templates | `c-oneperson-toolchain.md` | Quarterly | Planned |
| D. Monthly Changelog | [../CHANGELOG.md](../CHANGELOG.md) | Monthly | Live |

Appendix C pairs with **Ch. 12 (One-Person Business Playbook)**: the chapter explains the operating
model, the appendix gives the concrete stack. Neither repeats the other — see
`## Chapter boundaries` in the chapter index.

## Rules for appendices

- **Always stamp the data.** Every table carries the date it was checked and the model/tool versions it covers.
- **Strike, don't delete.** When a tool dies or a price changes, move the old row to a `## Retired` section
  with the date it changed. Readers who saw the old version need to know what happened.
- **Price with currency and date.** `$20/mo (2026-09)` — not "cheap" or "around $20".
- **Mark the region.** CN-market tools and global tools get separate columns or sections. Availability differs,
  and so does pricing.

## Appendix A — tool matrix schema

Keep the same columns so monthly diffs stay readable:

| Tool | Category | CN access | Price | Best for | Verified |
|------|----------|-----------|-------|----------|----------|

`CN access` values: `native` / `needs VPN & overseas payment` / `blocked`.
