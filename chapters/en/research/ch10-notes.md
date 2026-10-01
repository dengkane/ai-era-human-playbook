---
chapter: 10
chapter_file: ch10-finding-your-human-ai-collaboration-point.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 11
---

# Research notes — Ch. 10: Finding Your Human-AI Collaboration Point

## Framing note

This is the first chapter of Part III, and it is the hinge of the book. Parts I and II established where the
boundary sits and where the reader stands. This chapter is about the reader's own boundary — which is a
different object, and the research is unusually clear that it is different.

Three findings shaped the chapter, and the third is why it is short on rules and long on method:

1. **The capability boundary is jagged and invisible.** The Boston Consulting Group study found that
   consultants using GPT-4 did 12.2% more tasks, 25.1% faster, at 40% higher quality — and on one task
   deliberately designed to sit *outside* the frontier, they were **worse** than consultants who had no AI
   at all (84% correct without it, 60–70% with). Same tool, same people, opposite result, and nothing about
   the task told them which one they were on.
2. **The boundary is personal.** The same study found the tool *levelled skill*: consultants who scored worst
   at the start gained 43%; the top performers gained 17%. And METR's developer RCT found experienced
   developers **19% slower** on their own repositories — while believing they were 20% faster — and says
   plainly in its own limitations that the result probably does not hold for less experienced developers or
   unfamiliar codebases.
3. **You cannot know which side you are on without running the experiment on yourself.** That is the whole
   argument for a method rather than a list.

I deliberately did not write a "tips and tricks" chapter. The evidence does not support one, and Ch. 11 (context
engineering) is where mechanics belong anyway.

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `BCG Harvard jagged frontier study consultants AI 758 participants results Dell'Acqua` | anysearch | yes | Located the study, the journal version, and the accessible write-ups. |
| 2 | `centaurs cyborgs AI consultants task delegation split jagged frontier study findings` | anysearch | yes | Confirmed the centaur/cyborg taxonomy and led to the HBS Working Knowledge piece and Mollick's own post. |
| 3 | `METR measuring AI ability to complete long tasks time horizon doubling 2026 update` | anysearch | yes | The task-length metric, and the warning that the published figures are stale. |
| 4 | `METR experienced developers AI slower 19 percent randomized trial follow up 2026` | anysearch | yes | The perception gap — expected +24%, got −19%, still believed +20%. Best single illustration of why self-report is not measurement. |
| 5 | `Anthropic Economic Index automation augmentation share conversations report findings` | anysearch | yes | 52% augmentation against 45% automation; the deskilling/upskilling split by occupation. |
| 6 | `AI homogenization creative output diversity writers study evidence` | anysearch | yes | Led to the cross-LLM homogeneity paper, which is stronger than the single-model versions because it covers many models. |
| 7 | `GitHub Copilot randomized controlled trial developer productivity 26 percent study` | anysearch | partly | Real studies, but the openable material is vendor-adjacent and the primary PDFs did not render. Recorded as rejected. |
| 8 | `task decomposition AI workflow knowledge worker productivity field study 2026` | anysearch | no | Consulting blogs and vendor pages. Nothing measurable. |
| 9 | `deliberate practice AI skill development deskilling study` (implicit, via result 6) | anysearch | partly | No clean primary study on AI and skill formation specifically. Recorded as an open question rather than written around. |

Also fetched directly: the HBS Working Knowledge article, Ethan Mollick's *One Useful Thing* post on the same
study, both METR pages, the Anthropic Economic Index report, and the arXiv paper on creative homogeneity.

## Sources kept

| # | Source | Tier | Supports | Verified marker |
|---|--------|------|----------|-----------------|
| 1 | [HBS Working Knowledge — *Humans vs. Machines* (Nov 2023)](https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle) | secondary | 758 consultants; +12% tasks, 25% faster, 40% higher quality inside the frontier; the outside-frontier drop (24pp with training, 13pp without); 43% vs 17% skill-levelling; the centaur/cyborg taxonomy | yes |
| 2 | [Mollick, *Centaurs and Cyborgs on the Jagged Frontier* (Sept 2023)](https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged) | primary | The jagged frontier explained by a co-author; 12.2%/25.1%/40%; 84% → 60–70% outside the frontier; "falling asleep at the wheel"; output homogenisation | yes |
| 3 | [METR — Measuring AI Ability to Complete Long Software Tasks (Mar 2025)](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) | primary | ~100% success under four minutes, under 10% beyond four hours; the ~7-month doubling; the page's own staleness warning | yes |
| 4 | [METR — Early-2025 AI on Experienced OSS Developer Productivity (Jul 2025)](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) | primary | 16 developers, 246 issues, 19% slower; forecast +24%, post-hoc belief +20%; the explicit scope limits | yes |
| 5 | [Anthropic — Economic Index report: Economic primitives (Jan 2026)](https://www.anthropic.com/research/anthropic-economic-index-january-2026-report) | primary | 52% augmentation against 45% automation on Claude.ai; success falls as human task length rises; travel agents deskill, property managers upskill | yes |
| 6 | [Wenger & Kenett — *We're Different, We're the Same* (arXiv 2501.19361)](https://arxiv.org/html/2501.19361v1) | primary | LLM creative outputs are far more similar to each other than human outputs are, across many models, not just one | yes |

## Rejected

| Source | Why not used |
|--------|--------------|
| GitHub's Copilot productivity material and the 55.8% task-completion figure | Vendor-run or vendor-adjacent, and it measures a single self-contained task rather than work in a real repository. Useful as a contrast to METR, not as support. |
| Cui, Demirer et al., *The Effects of Generative AI on High-Skilled Work* | Three real RCTs and directly on topic. The MIT PDF did not render and the pubpub mirror returned 403. Recorded in the chapter's caveats as the counterweight to METR that I could not open. |
| The *MIT Sloan* SSRN PDF of the jagged-frontier paper | The PDF is a scan-style export; text extraction failed. The HBS Working Knowledge article is written with the same authors and carries the numbers, and Mollick's post is by a co-author, so both are cited instead. |
| Doshi & Hauser (2024) and Moon, Green & Kushlev (2024) on homogenization | The single-model studies. The cross-LLM paper supersedes them for this chapter's purpose because it rules out "it was just GPT". |
| Tilburg University press release on homogenization | Cloudflare 403. It was the readable summary of the same body of work; the arXiv paper is cited directly. |
| The *New Yorker* and USC Dornsife pieces on "AI is homogenizing our thoughts" | Journalism about the studies, not the studies. |
| Any "AI productivity tips" or "prompt library" content | Not evidence. Also the reason this chapter has a method instead of a list. |
| YouTube explainers of the METR study | Second-hand; the METR page itself is openable and says more. |
| Vendor "agentic workflow" white papers | Marketing. |
| Pearson/LinkedIn "skills you need in 2026" posts | List journalism. |
| The 1,000+ comment threads under Mollick's post | Not evidence, though the Conor Grennan comment is a decent statement of the hiring implication. Not cited. |

## Open questions

- **No clean study of whether AI use builds or erodes skill over time.** Dell'Acqua's "falling asleep at the
  wheel" experiment is the closest thing and it is about recruiters and a single task. The chapter names the
  risk and says the longitudinal evidence is not in yet rather than asserting a mechanism.
- **How the skill-levelling effect interacts with the verification argument.** If AI raises the floor fastest,
  the people whose judgment was the differentiator should be the most exposed to it, not the least. Ch. 03
  argues the opposite for the *top* of the market. Both may be true at different points on the distribution,
  and nothing I could open resolves it.
- **Whether the collaboration point is stable.** METR's own page now warns that its headline figures are stale
  because the tools changed inside a year. Anything a reader calibrates this quarter may be wrong next year,
  which is an argument for the method and against the chapter ever containing a number the reader copies down
  and keeps.
- **Whether the frontier is jagged in the same places for everyone.** The BCG task outside the frontier was
  engineered to fool AI. Real work is not labelled. Nobody has measured how often a worker's *own* frontier
  boundary moves without them noticing.

## Claims downgraded or dropped

- **"AI makes knowledge workers 40% more productive."** Dropped as a claim. 40% was *output quality inside the
  frontier* in one study of one firm. The same study's outside-frontier result is negative. Quoting the first
  without the second is the exact failure this chapter is about.
- **"AI makes developers faster."** Dropped as a general claim. The best RCT found the opposite for experienced
  developers on their own code, and the effect almost certainly depends on experience and familiarity — which
  is the point, not a footnote.
- **"Use AI as a cyborg rather than a centaur" (or the reverse).** Dropped as advice. The study reports both as
  effective and roughly evenly split. Presenting one as the answer would have been invented authority.
- **"You can tell when the AI is wrong."** Contradicted by the data. On the outside-frontier task the AI gave a
  wrong but convincing answer and pulled the experts down with it. The tell is not a feeling; it is a check.
- **Any specific model or tool recommendation.** Out of scope by the index (that is Appendix A) and
  guaranteed stale.
