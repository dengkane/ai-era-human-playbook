---
chapter: 1
chapter_file: ch01-ai-is-not-a-tool-its-a-species.md
researched: 2026-09-30
sources_kept: 6
sources_rejected: 7
---

# 研究笔记 — 第 01 章：AI不是工具，是物种

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `prompt engineer job title 2023 salary $300,000 AI startup disappeared 2025 2026` | anysearch | 是 | 第一次出现"初稿的说法被夸大了"的迹象——结果一致地说这个头衔是*下降*，而不是"消失"。 |
| 2 | `Anthropic prompt engineer job posting 2023 $300,000 salary Bloomberg report` | anysearch | 是 | 找到了真实的招聘帖和薪资区间。 |
| 3 | `entry level software engineer junior developer hiring decline data 2023 2024 2025 US new grad jobs` | anysearch | 是 | 产出了第 02 章使用的纽约联储计算机专业失业率数字。 |
| 4 | `Stack Overflow Developer Survey 2025 AI tools adoption percentage developers trust` | anysearch | 是 | 找到了原始调查，其中包含"使用率与好感度背离"这一发现。 |
| 5 | `LLM benchmark scores improvement over time MMLU GSM8K SWE-bench 2022 2023 2024 2025 data table` | anysearch | 是 | 指向 Stanford AI Index——"能力在移动"这一论点的承重来源。 |
| 6 | `translation industry AI impact translators employment survey data 2024 2025 decline` | anysearch | 部分 | 大多是厂商和博客内容；只有 INET/Oxford 的学术研究可用。 |
| 7 | `AI model deprecation vendor lock-in enterprise risk API price increase 2025 2026` | anysearch | 部分 | 淹没在厂商内容营销里。这次查询本身没有产出可用来源。 |
| 8 | `OpenAI API model deprecation retirement schedule announcement developers migrate` | anysearch | 是 | 找到了 OpenAI 官方的弃用公告。 |
| 9 | `SWE-bench performance 2023 2024 improvement percentage solved coding benchmark model progress` | anysearch | 否 | 返回的是排行榜和一篇关于基准污染的论文。被 AI Index 取代，后者已经聚合好了同比数字。 |

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Stanford HAI — 2025 AI Index, Technical Performance](https://hai.stanford.edu/ai-index/2025-ai-index-report/technical-performance) | 一手 | SWE-bench 4.4% → 71.7%；GPQA +48.9 个百分点；MMLU 540B → 3.8B 参数 | "是物种，不是螺丝刀" 第 1 点 |
| 2 | [Stack Overflow — 2025 Developer Survey, AI](https://survey.stackoverflow.co/2025/ai) | 一手 | 84% 使用或计划使用 AI 工具；好感度从 70%+ 降至 60% | "为什么现在这件事重要" |
| 3 | [OpenAI Developer Community — deprecation notice, 2026](https://community.openai.com/t/deprecation-notice-upcoming-model-shutdowns-in-2026/1379553) | 一手 | 2026 年 4 月的通知；`codex` 与 `o3`/`o4` 模型于当年 7 月关停 | "诚实的保留意见" → "方向可以反转" |
| 4 | [INET Oxford / CEPR — Lost in translation（Frey & Llanos-Paredes, 2025）](https://www.inet.ox.ac.uk/publications/lost-in-translation-ais-impact-on-translators-and-foreign-language-skills) | 一手 | 机器翻译采用率与译员就业下降相关 | "是物种，不是螺丝刀" 第 3 点 |
| 5 | [Fortune — Anthropic prompt engineer listing, Mar 2023](https://fortune.com/2023/03/09/new-ai-jobs-chatgpt-like-assistants/) | 二手 | Anthropic 的"提示词工程师兼资料员"岗位，17.5 万–33.5 万美元 | "为什么现在这件事重要" |
| 6 | [4Geeks — Prompt engineer, 2026](https://4geeks.com/en/blog/ai-powered-learning/ai-prompt-engineer) | 二手 | 独立头衔在 2024 到 2026 年间下降约 30% | "为什么现在这件事重要" |

## 被拒的来源

| 来源 | 为什么没用 |
|--------|--------------|
| **Bloomberg — "prompt engineer jobs pay up to $335,000"** | 更早的草稿引用过它，但从未打开过；它要付费订阅，提取器也失败了。改去打开可访问的报道后，发现和 Bloomberg 的数字对不上（28 万–37.5 万 vs 17.5 万–33.5 万）。用了 Fortune，因为它可核查。这是章节索引里的失败模式 3。 |
| **Business Insider — prompt engineer salaries** | 打开过，里面*确实*有数字，但它署的是 Bloomberg，所以是一篇付费一手来源的二手转述。Fortune 直接给出了区间。 |
| **KORE1 — Prompt Engineer Salary Guide 2026** | 一家招聘机构的薪资指南。有真实内容，但属于二手，且对它描述的这个市场并不独立。 |
| **Acolad — 2025 Translators Survey** | 打开过；里面有真正有用的数字（84.1% 的译员预期需求下降）。但作为承重引用被拒，因为这是一家语言服务厂商在调查自己的市场。保留为"已知但未使用"的线索——如果将来某次修订想为翻译那个论断找佐证，这里就是该看的地方，且会明确标注为厂商研究。 |
| **Spiceworks — "Your AI vendor can lock you in faster than your cloud provider did"** | 看起来是"供应商锁定"那一点的理想来源。提取器失败，打不开，因此无法引用。 |
| **`skillflow.dev` — junior developer job market statistics** | 搜索结果宣称有 20 多个关于初级开发者就业的数据点。抓取该 URL 返回的是一个 LeetCode 风格的刷题平台，里面没有那些内容。记录下来，因为这是目前最清楚的一个例子：搜索摘要描述的页面并不存在。 |
| **Microsoft Learn — Foundry model retirement schedule** | 成功打开，本可以为"弃用"那一点提供佐证。没用它，因为表格里有无法独立确认的模型标识符，而 OpenAI 的公告从当事方嘴里说出了同一件事。 |
| **Reddit / Medium / LinkedIn 帖子** | 有几个带着看似相关的数字出现在结果里。不是权威来源，数字也无法追溯到任何研究或申报文件。 |

## 悬而未决的问题

- **那"三个问题"的测试站得住吗？** *可验证 / 重复 / 文本或代码* 是我自己的框架，是从这些来源里的模式归纳
  出来的，而不是取自某一份。章节里把它作为启发式而非研究发现来呈现，但我没有拿一组任务去检验这三个问题
  是否真能把被取代的工作和能持久的工作分开。等第二篇逐个人群套用它时，值得再回来看。
- **初级开发者受到的挤压里有多少是 AI 造成的？** 来源明确表示，AI 采用曲线和后零利率时代的修正贴得
  太近，无法干净地分离。章节照实这么说，而不是把它单独归因于 AI。如果出现识别更干净的研究，这里值得
  重看。
- **"物种"是对的那个比喻，还是只是有用的那个？** 章节主张它有用，因为它克制且可检验。这是关于有用性
  的主张，不是关于准确性的主张，我也没有试图论证它是对这些系统本质的*真实*描述。

## 被降级或丢弃的说法

- **"某些 AI 初创公司报出的薪资超过 30 万美元"** —— 丢弃。那是一家公司的招聘帖，不是市场价，而且
  这个措辞暗示了证据并不支持的普遍性。
- **"到 2026 年它已基本消失"**（指提示词工程师头衔）—— 降级为"比峰值下降约三分之一"，这才是来源
  实际说的话。
- **"2023 年的 AI 能力不能审合同、不能分流客服工单；到 2025 年两样都勉强能做"** —— 修订时砍掉。我
  找不到确立这个具体前后对比的来源，而它原本在承担的职能，现在由 AI Index 的数字带着证据来做。
- **"一个四年没有放缓的变化速率"** —— 软化为"一个看不到终点线的变化速率"。四年这个说法需要一份我
  没有的时间序列。
- **"$335,000"** 作为单一薪资数字 —— 换成了一个真正能打开的来源给出的区间。
