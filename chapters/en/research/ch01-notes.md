---
chapter: 1
chapter_file: ch01-ai-is-not-a-tool-its-a-species.md
researched: 2026-09-30
sources_kept: 6
sources_rejected: 7
---

# Research notes — Ch. 01: AI Is Not a Tool — It's a Species

## Search trail

| # | Query | Tool | Useful? | Notes |
|---|-------|------|---------|-------|
| 1 | `prompt engineer job title 2023 salary $300,000 AI startup disappeared 2025 2026` | anysearch | yes | First sign the original draft's claim was overstated — results consistently said the title *declined*, not that it dissolved. |
| 2 | `Anthropic prompt engineer job posting 2023 $300,000 salary Bloomberg report` | anysearch | yes | Located the actual posting and the salary range. |
| 3 | `entry level software engineer junior developer hiring decline data 2023 2024 2025 US new grad jobs` | anysearch | yes | Produced the NY Fed CS-unemployment figure used in Ch. 02. |
| 4 | `Stack Overflow Developer Survey 2025 AI tools adoption percentage developers trust` | anysearch | yes | Found the primary survey, which holds the usage-vs-sentiment divergence. |
| 5 | `LLM benchmark scores improvement over time MMLU GSM8K SWE-bench 2022 2023 2024 2025 data table` | anysearch | yes | Led to the Stanford AI Index — the load-bearing source for "capability moves". |
| 6 | `translation industry AI impact translators employment survey data 2024 2025 decline` | anysearch | partly | Mostly vendor and blog content; only the INET/Oxford academic study was usable. |
| 7 | `AI model deprecation vendor lock-in enterprise risk API price increase 2025 2026` | anysearch | partly | Drowned in vendor content marketing. No usable source came from this query directly. |
| 8 | `OpenAI API model deprecation retirement schedule announcement developers migrate` | anysearch | yes | Found the official OpenAI deprecation announcement. |
| 9 | `SWE-bench performance 2023 2024 improvement percentage solved coding benchmark model progress` | anysearch | no | Returned leaderboards and one academic paper on benchmark contamination. Superseded by the AI Index, which had the year-over-year figure already aggregated. |

## Sources kept

| # | Source | Tier | Supports | In chapter |
|---|--------|------|----------|-----------|
| 1 | [Stanford HAI — 2025 AI Index, Technical Performance](https://hai.stanford.edu/ai-index/2025-ai-index-report/technical-performance) | primary | SWE-bench 4.4% → 71.7%; GPQA +48.9 pp; MMLU 540B → 3.8B parameters | "A species, not a screwdriver" §1 |
| 2 | [Stack Overflow — 2025 Developer Survey, AI](https://survey.stackoverflow.co/2025/ai) | primary | 84% use or plan to use AI tools; favourable sentiment fell from 70%+ to 60% | "Why this matters now" |
| 3 | [OpenAI Developer Community — deprecation notice, 2026](https://community.openai.com/t/deprecation-notice-upcoming-model-shutdowns-in-2026/1379553) | primary | April 2026 notice; `codex` and `o3`/`o4` models shut down that July | "The honest caveats" §"direction can reverse" |
| 4 | [INET Oxford / CEPR — Lost in translation (Frey & Llanos-Paredes, 2025)](https://www.inet.ox.ac.uk/publications/lost-in-translation-ais-impact-on-translators-and-foreign-language-skills) | primary | Machine-translation adoption linked to lower translator employment | "A species, not a screwdriver" §3 |
| 5 | [Fortune — Anthropic prompt engineer listing, Mar 2023](https://fortune.com/2023/03/09/new-ai-jobs-chatgpt-like-assistants/) | secondary | Anthropic "prompt engineer & librarian" posted at $175,000–$335,000 | "Why this matters now" |
| 6 | [4Geeks — Prompt engineer, 2026](https://4geeks.com/en/blog/ai-powered-learning/ai-prompt-engineer) | secondary | Standalone title declined ~30% between 2024 and 2026 | "Why this matters now" |

## Rejected

| Source | Why not used |
|--------|--------------|
| **Bloomberg — "prompt engineer jobs pay up to $335,000"** | Cited in an earlier draft without ever being opened; it is paywalled and the extractor failed. When accessible coverage was opened instead, it disagreed with the Bloomberg figure ($280,000–$375,000 vs $175,000–$335,000). Used Fortune, which is checkable. This is failure mode 3 in the chapter index. |
| **Business Insider — prompt engineer salaries** | Opened and it *did* contain the numbers, but it credits Bloomberg, so it is a secondary account of a paywalled primary. Fortune states the range directly. |
| **KORE1 — Prompt Engineer Salary Guide 2026** | An employment agency's salary guide. Real content, but secondary and not independent of the market it describes. |
| **Acolad — 2025 Translators Survey** | Opened; contains genuinely useful figures (84.1% of translators expect lower demand). Rejected as the load-bearing citation because it is a language-services vendor surveying its own market. Kept as a known-but-unused lead — if a future revision wants corroboration for the translation claim, this is where to look, clearly labelled as vendor research. |
| **Spiceworks — "Your AI vendor can lock you in faster than your cloud provider did"** | Looked like the ideal source for the vendor-lock-in point. Extractor failed; could not be opened, so could not be cited. |
| **`skillflow.dev` — junior developer job market statistics** | The search result advertised 20+ data points on junior developer employment. Fetching the URL returned a LeetCode-style practice platform with none of that content. Recorded because it is the clearest example so far of a snippet describing a page that does not exist. |
| **Microsoft Learn — Foundry model retirement schedule** | Opened successfully and would corroborate the deprecation point. Not used because the table contains model identifiers that could not be independently confirmed, and the OpenAI announcement makes the same point from the horse's mouth. |
| **Reddit / Medium / LinkedIn posts** | Several appeared in results with seemingly relevant figures. Not authoritative, and their numbers could not be traced to a study or filing. |

## Open questions

- **Does the "three questions" test hold up?** *Verifiable / repeated / text-or-code* is my own
  framing, assembled from the pattern across these sources rather than taken from one. It is presented
  in the chapter as a heuristic, not a finding, but I have not tested it against a set of tasks to see
  whether the three questions actually separate displaced work from durable work. Worth revisiting when
  Part II applies it persona by persona.
- **How much of the junior-developer squeeze is AI?** Sources are explicit that the AI adoption curve
  and the post-ZIRP correction overlap too closely to separate. The chapter says so rather than
  attributing it to AI alone. If better-identified research appears, this is worth revisiting.
- **Is "species" the right metaphor, or merely the useful one?** The chapter argues it is useful
  because it is modest and checkable. That is a claim about utility, not about accuracy, and I have not
  tried to argue it is the *true* description of what these systems are.

## Claims downgraded or dropped

- **"Salaries reported above $300,000 at some AI startups"** — dropped. It was one company's posting,
  not a market rate, and the phrasing implied breadth the evidence did not support.
- **"By 2026 it has largely dissolved"** (of the prompt-engineer title) — downgraded to a decline of
  roughly a third from its peak, which is what the sources actually say.
- **"AI capability in 2023 could not review a contract or triage a support ticket; by 2025 it could do
  both passably"** — cut during revision. I could not find a source that establishes this specific
  before/after, and it was doing the job the AI Index numbers now do with evidence.
- **"a rate of change that hasn't slowed in four years"** — softened to "a rate of change with no
  finish line in sight". The four-year claim needed a time series I did not have.
- **"$335,000"** as the single salary figure — replaced with the range from a source that could
  actually be opened.
