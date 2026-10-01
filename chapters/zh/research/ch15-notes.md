---
chapter: 15
chapter_file: ch15-judging-ai-tools-for-yourself.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 9
---

# 研究笔记 — 第 15 章：自己判断AI工具

## 框架说明

本章存在，是因为本书要守住一个承诺。它的附录列着工具，而那份清单等到有人读到它的时候，注定有一部分
是错的。所以本章必须教会读者做附录做不到的事：按自己的标准、在自己的工作里评估一个工具，不轻信任何
人的排名，包括本书的排名。

研究让这件事比预想的容易，因为**不轻信公开排名的理由，原来是有充分证据的，而不只是出于谨慎。**

- Chatbot Arena 这个被引用最多的榜单，有被记录下来的结构性扭曲：未公开的私下测试，让少数厂商能挑最高
  的那个分数；抽样不均；选择性移除。光是 Meta 一家，就在 Llama-4 发布前测了 27 个私下变体。
- 公开基准会泄漏进训练数据，以一种很难发现的方式抬高分数。
- 就连自动评判，也就是那个想省事的办法，都带着可测量的偏见：裁判偏爱*它自己*觉得熟悉的文本，跟质量无关。
- 而工具一旦大规模部署，基准率很残酷：按麻省理工的数据，95% 的企业生成式 AI 试点没有带来可测量的回报，
  因为通用工具不学这个组织的工作流。

把这些放在一起，说的不是"评测很难"，而是更有用、更能照着做的一件事：**唯一既便宜又可信的评测，是你
用自己工作搭出来的那个。**一份从你实际任务里抽出来的 20 条测试集，不可能被污染（没有人拿它训练过），
不可能被排行榜操纵（它根本不公开存在），而且量的是你真正在乎的那件事。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `AI benchmark contamination gaming problem evidence models trained on test data` | anysearch | 是 | 那篇污染综述，以及流行基准会泄漏这一整体图景。 |
| 2 | `how to evaluate LLM yourself custom eval methodology guide evidence` | anysearch | 是 | 谷歌那篇《Practical Guide》，提供了本章所依据的"5 个 D"框架。 |
| 3 | `AI model benchmark overfitting leaderboard correlation real world performance study` | anysearch | 是 | 《The Leaderboard Illusion》，本章的开头。 |
| 4 | `MIT NANDA report 95 percent generative AI pilots fail enterprise study 2025` | anysearch | 是 | 部署的基准率。原始 PDF 无法提取，报道可以。 |
| 5 | `RAND report AI projects fail 80 percent twice non-AI projects study` | anysearch | 否 | RAND 那个数字被广泛引用，但它的落地页和 PDF 对本工具都返回 403。记为弃用。 |
| 6 | `LLM as judge position bias self-preference bias research evidence` | anysearch | 是 | 自偏好偏见那篇论文，堵上了"干脆把评判自动化"这个漏洞。 |

另外直接抓取过：四篇论文的 arXiv 页面，以及《财富》对麻省理工 NANDA 报告的报道。

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Singh 等 —— *The Leaderboard Illusion*（arXiv 2504.20879，2025 年 4 月）](https://arxiv.org/abs/2504.20879) | 一手 | Chatbot Arena 的结构性扭曲：未公开的私下测试、厂商撤回分数、27 个私有 Llama-4 变体、抽样不均（谷歌约 19.2%、OpenAI 约 20.4%，而 83 个开源模型合起来 29.7%）、过拟合于竞技场自身的动态而非通用质量 | 有 |
| 2 | [Xu、Guan、Greene 与 Kechadi —— *Benchmark Data Contamination of Large Language Models: A Survey*（arXiv 2406.04244，2024 年 6 月）](https://arxiv.org/html/2406.04244v1) | 一手 | 基准数据污染：评测数据泄漏进训练，抬高测量到的表现；检测与缓解方法；把"不依赖基准的评测"作为一个方向 | 有 |
| 3 | [Rudd、Andrews 与 Tully —— *A Practical Guide for Evaluating LLMs and LLM-Reliant Systems*（arXiv 2506.13023，2025 年 7 月）](https://arxiv.org/html/2506.13023v2) | 一手 | 5 个 D：范围明确、能代表生产使用、有多样性、没有污染、是动态的；公开基准"往往缺乏用例上的针对性""可能被训练数据污染"；非确定性和提示词敏感性作为评测难点 | 有 |
| 4 | [Wataoka、Takahashi 与 Ri —— *Self-Preference Bias in LLM-as-a-Judge*（arXiv 2410.21819，2024 年 10 月）](https://arxiv.org/html/2410.21819v1) | 一手 | GPT-4 表现出显著的自偏好偏见；根本原因是困惑度——模型给熟悉的文本更高评价，不管是不是它生成的，所以自动评判继承了一种系统性偏见 | 有 |
| 5 | [《财富》—— *MIT report: 95% of generative AI pilots at companies are failing*（2025 年 8 月）](https://fortune.com/2025/08/18/mit-report-95-percent-generative-ai-pilots-at-companies-failing-cfo/) | 二手（报道麻省理工 NANDA 的 *State of AI in Business 2025*） | 95% 的企业生成式 AI 试点没有带来可测量的损益影响；基于 150 次访谈、350 份员工问卷、300 个公开部署；原因是整合和一个"学习差距"，不是模型质量；从供应商那里买成功率约 67%，内部自建只有约三分之一 | 有 |

## 弃用

| 来源 | 为什么不用 |
|------|--------------|
| RAND Corporation，*The Root Causes of Failure for Artificial Intelligence Projects*（RRA2680-1） | 被广泛引用，说"超过 80% 的 AI 项目失败，是非 AI 项目的两倍"。落地页和 PDF 对本工具都返回 403。麻省理工那个数字覆盖了同样的事实，而且能打开。 |
| 麻省理工 NANDA，*The GenAI Divide: State of AI in Business 2025*——原始报告 PDF | 95% 背后的那篇。PDF 无法作为文本提取。用的是《财富》的报道，并在研究笔记和正文里说明了它的二手身份，以及出处（150 次访谈、350 份问卷、300 个部署）。 |
| "AI Benchmark Gaming"和"LLM 基准的肮脏秘密"这类博客 | 它们称职地转述了污染文献，但它们不是那份文献。改引综述和《The Leaderboard Illusion》。 |
| 排行榜截图和模型对比表 | 本章的全部论证就是这些东西是被扭曲的。印一个出来会把自己的论证拆掉。 |
| 所有"2026 年最好的 AI 工具"清单文 | 本章存在的意义就是取代这个体裁。 |
| 厂商的评测框架和"如何选择 AI 供应商"指南 | 营销。5 个 D 来自一个中立来源。 |
| 咨询博客里对 RAND、Gartner、BCG 失败率的转述 | 循环引用——都是在引同两三份一手报告。 |
| 关于模型能力与扩展律的论文 | 跑题：本章讲的是判断力，不是能力。 |
| 竞技场榜单的讨论帖 | 对"榜单可靠性"这个主张来说，它们不是证据。 |

## 悬而未决的问题

- **那个"95%"该当标题还是当提醒。** 麻省理工的数据集是 300 个部署和 150 次访谈，由一个团队收集，带着
  一个特定的论点（"生成式 AI 鸿沟"）。方向跟 RAND 以及普遍经验一致；具体数字应当被当作一项研究的估计，
  本章也这么说。
- **一份最低可行的个人评测长什么样。** 5 个 D 告诉你一份好数据集具备什么；它们不告诉你多少条才够。本章
  建议从真实工作里取一个不大的数量，并把它标成判断，不是发现。
- **自偏好偏见对一个不建基准的用户是否要紧。** 如果你的测试是"我自己的产出有没有变好"，这个偏见无关；
  而你一旦让模型替你*比较*两份产出，它就变得直接相关，本章做出了这个区分。
- **一份个人测试集能有效多久。** 这个季度搭的集合，可能被下一次模型发布打饱和，所以"动态"是 5 个 D 之一，
  也是本章让读者给集合标日期并重建的原因。

## 被降级或删掉的说法

- **"公开基准能告诉你哪个模型更好。"** 删掉。污染和榜单扭曲都拆掉了它，本章也以这个开头。
- **"让一个 AI 来评判你的 AI 就行了。"** 大幅降级。自偏好那个结果让这种方式在买家最想要的那种比较上
  不可靠，本章解释机制（困惑度／熟悉度），而不只是发出警告。
- **"95% 的 AI 项目失败。"** 说软成"在一份麻省理工的数据集里，95% 的企业试点没有带来可测量的损益影响"，
  并说明样本和单一团队的出处。RAND 那个"80%"作为无法打开的佐证被记下来。
- **一个推荐的评测条数。** 不作为发现给出。建议从真实工作里搭一个小集合，并标注为建议。
- **"工具没用。"** 明确不是这个主张。本章的要点是，工具不是决定结果的那个变量——整合才是——这才是
  麻省理工那个发现真正在说的。
