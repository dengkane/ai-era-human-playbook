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

- **Length:** ~2500 words per chapter. The low end of the 2,500–5,000-word non-fiction convention,
  and what makes 21 chapters add up to a ~52,000-word book
- **Structure:** two or three body sections of roughly 700–900 words each, named after their
  arguments, then explicit "The honest caveats" and "Do this today" sections
- **Tone:** Professional but conversational, like a smart friend explaining something
- **No fluff:** No "with the development of AI" openings, no filler
- **Concrete:** Specific tools, prices, scenarios, numbers
- **Honest:** If something is uncertain, say so. Don't oversell AI or fearmonger.

## Code of Conduct

Be kind. Disagree on ideas, not people. This is a learning space for everyone.

## Questions?

Open an Issue with the `question` label. I read everything.
