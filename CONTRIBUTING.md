# Contributing Guide

Thanks for your interest in making this book better. Every contribution — from a typo fix to a full chapter suggestion — is valued.

## Ways to Contribute

### 1. Report Issues
Found something wrong? Open an [Issue](../../issues) with:
- What's wrong (dead link, outdated price, factual error, broken logic)
- Where it is (chapter, section, line if possible)
- What it should be (if you know)

### 2. Submit a Pull Request
For fixes and additions:
1. Fork the repo
2. Create a branch: `git checkout -b fix/chapter-03-tools`
3. Make your changes
4. Commit: `git commit -m "fix: update tool pricing in ch03"`
5. Push and open a PR

**PR Guidelines:**
- Keep changes focused (one chapter or one topic per PR)
- For new tools: include name, pricing, use case, and why it belongs
- For factual corrections: link to a source if possible
- Don't rewrite entire chapters without discussing in an Issue first

For book chapters themselves, `scripts/check-chapter.sh` runs the checks a reviewer would: front
matter fields, the disclosure footer, leftover template scaffolding, and stale-data markers. Run it
before opening a PR:

```bash
./scripts/check-chapter.sh chapters/en/ch0X-your-chapter.md
```

See [WORKFLOW.md](WORKFLOW.md) for the full write-and-publish flow.

### 3. Share Your Story
AI changed how you work? Send me an email (see README for contact). I anonymize and include the best ones in future editions. You'll be credited unless you request anonymity.

### 4. Translate
Want to translate a chapter into another language? Open an Issue first to coordinate.

## Content Standards

- **Length:** 2,000–4,000 words per chapter — a band, not a target. Length follows the argument;
  padding to reach a number is the failure this rule replaced
- **Story, not lecture:** open inside a specific moment — a date, a number, a person — then show first
  and explain second. Short paragraphs, two or three sentences, one idea each
- **Structure:** two or three body sections, named after their arguments, then explicit "The honest
  caveats" and "Do this today" sections
- **Plain words:** the way you'd say it to a friend who is smart, busy, and not in your field
- **No fluff:** No "with the development of AI" openings, no filler, no restating the heading
- **Concrete:** Specific tools, prices, scenarios, numbers
- **Honest:** If something is uncertain, say so. Don't oversell AI or fearmonger. An invented scene is
  labelled as one ("Imagine you're…"), never dressed up as a real case

## Code of Conduct

Be kind. Disagree on ideas, not people. This is a learning space for everyone.

## Questions?

Open an Issue with the `question` label. I read everything.
