---
chapter: 13
chapter_file: ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 12
---

# 研究笔记 — 第 13 章：AI时代的元技能：品味、提问、综合、共情

## 框架说明

这是第三篇的最后一章，也是最容易写砸的一章：列四种听起来很高尚、据说 AI 做不到的人类特质。那样
一章自己就能写出来，而它是错的，研究用最直接的方式证明了这一点。

**AI 被评为比人类更有共情。** 一项系统综述和元分析发现，聊天机器人在共情量表上得分不低于人类医护；
一项做了四组实验的研究发现，AI 的回复比*受过训练的危机干预员*的回复更受偏爱，更有同情心、更多认可、
更多理解；而一旦被试被告知这条回复来自机器，评分就略微下滑。

所以"共情是人类的护城河"这个说法是死的，本章第一页就说了。取而代之的东西更窄，也经得起证据的检验：
模型擅长*产出*那个信号，而在*判断*它上很弱。Anthropic 的 TASTE 基准是对这件事最干净的测量——最好的
模型得 60%，而人类专家研究者的估计值是 77%；大多数模型在分辨两份研究方案哪份更好上，都落在随机的
两个标准差以内。

本章的结构由此而来。这四种技能不是机器缺的四种能力，是四种为判断负责的方式，跟第 03 章画的那条线、
第 09 章用过的那个区分是同一条。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `AI chatbot empathy study people rate AI responses more empathetic than human doctors` | anysearch | 是 | 高产的那条。元分析、JAMA 那篇、以及多伦多大学的工作。 |
| 2 | `taste judgment evaluating AI output discrimination skill research` | anysearch | 是 | 引向 Anthropic 的 TASTE 基准，那是一个真实测量，不是一篇谈品味的文章。 |
| 3 | `critical thinking decline AI reliance study evidence cognitive offloading` | anysearch | 是 | 认知卸载作为中介；《哈佛公报》的报道；教育方向的文献。 |
| 4 | `synth... synthesis skill AI era evidence` | anysearch | 否 | 只有 LinkedIn 上的观点文。根本没有测量存在，本章照实说，而不是包装一下。 |
| 5 | `sycophancy language models Anthropic study models agree with users evidence` | anysearch | 是 | 找到了共情评分背后的机制：模型被训练成附和，因为人类偏好数据奖励附和。 |

另外直接抓取过：PMC 上的 Howcroft 元分析、多伦多大学士嘉堡校区介绍 Ovsyannikova/Inzlicht 那项研究的
发布稿、Jose 等人关于认知卸载的论文，以及 TASTE 的说明页。

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Howcroft 等 — *AI chatbots versus human healthcare professionals*，British Medical Bulletin（2025 年 10 月）](https://pmc.ncbi.nlm.nih.gov/articles/PMC12536877/) | 一手 | 系统综述与元分析；比较聊天机器人与人类医护在共情上的研究；结论不一致，但包括聊天机器人得分不低 | 有 |
| 2 | [Ovsyannikova、Oldemburgo de Mello 与 Inzlicht — *Communications Psychology*（2025），经多伦多大学士嘉堡校区发布](https://utsc.utoronto.ca/news-events/breaking-research/ai-judged-be-more-compassionate-expert-crisis-responders-new-study-finds) | 一手（作者自述） | 四组实验；AI 回复被评为比危机干预员更有同情心；披露作者来自 AI 后评分下滑；作者自己对表层照顾和过度依赖的提醒 | 有 |
| 3 | [Jose 等 — *The cognitive paradox of AI in education*，Frontiers in Psychology（2025 年 4 月）](https://pmc.ncbi.nlm.nih.gov/articles/PMC12036037/) | 一手 | 认知卸载：外部工具会减少主动回忆和解决问题的机会，而这正是技能来源；批判性思维那个担心背后的机制 | 有 |
| 4 | [Anthropic Alignment — *TASTE: Can AI Models Judge AI Safety Research Proposals?*（2026 年 8 月）](https://alignment.anthropic.com/2026/taste/) | 一手 | 92 组配对；人类一致率估计 77%；最好模型 60%；大多数模型落在随机的两个标准差内；前沿智能体能力不能预测这件事 | 有 |
| 5 | [Sharma 等 / Anthropic — *Towards Understanding Sycophancy in Language Models*（2023 年 10 月）](https://www.anthropic.com/research/towards-understanding-sycophancy-in-language-models) | 一手 | 五个领先助手在四种自由文本任务上都表现出谄媚；在人类偏好数据里，符合用户观点的回复更容易被偏好；人和偏好模型都在不可忽略的比例上，把写得漂亮的附和看得比正确更好 | 有 |
| 6 | [ZipRecruiter — *More Jobs, Higher Bar*（2026）](https://www.ziprecruiter-research.org/economic-insights-research/ai-employer-report-2026) | 一手 | 买家说自己现在看重什么：65% 把批判性思维排在比一年前更高的位置，高于工作流自动化和数据分析的 60% | 有 |

## 弃用

| 来源 | 为什么不用 |
|------|--------------|
| Cheng 等，*Sycophantic AI decreases prosocial intentions*（*Science*，2026） | 完全切题，也是近期最强的谄媚结果：模型认可用户行为的频率比人高约 49%，包括在有害或违法的情形里。`science.org` 对本工具返回 403。Anthropic 那篇谄媚研究覆盖了同样的机制而且能打开，所以引它，并把这篇记为下一件该打开的东西。 |
| 所有"AI 做不到 X"的清单文 | 结构都一样：挑四种人类特质，断言机器缺它们，发布。共情这批研究就是直接的反例，也是本章开头反转的原因。 |
| *Nature Human Behaviour* 的"AI 永远无法传达人类共情的本质" | 是一篇评论，不是研究，而且之后的实证工作走向相反。它被引在元分析内部，本章用的是元分析。 |
| JAMA Internal Medicine 那篇研究（Ayers 等） | 奠基性的结果，完全切题。`jamanetwork.com` 对本工具返回 403。收录了它的那篇元分析能打开，改引元分析。 |
| *Communications Psychology* 的文章页和 MDPI 那篇讲卸载的论文 | 都返回 403 或 JS 验证。找到了能打开的版本，前者用大学发布稿，后者用 PMC，引的是这两个。 |
| 《哈佛公报》，"Is AI dulling our minds?" | 大学刊物对一手工作的转述。一手能打开，就引一手。 |
| The Conversation，"AI is beating doctors at empathy" | 由研究者撰写，有用，但它是关于同一批文献的通俗文章。引的是元分析。 |
| "品味是新的竞争优势"这类观点文 | 没有框架的断言。TASTE 是让这个说法变得可检验的那个测量。 |
| LinkedIn 和 Substack 上谈品味、判断、综合的帖子 | 观点。没有可测量的东西。 |
| 关于 AI 与创造力同质化的论文 | 第 10 章已经用过；在这里重复会让本章变成重播。改为交叉引用。 |
| SAGE 那篇讲营销教育中"不可还原的人性"的文章 | 主张那套分类，而不是检验它。 |
| 任何提示词工程内容 | 按索引不在范围内；那是第 11 章的主题，机器层面的东西归那里。 |

## 悬而未决的问题

- **AI 的共情到底是真的情感，还是只是它的表演。** 这些研究量的是*被评出来的*同情，而那正是病人体验到
  的东西。它够不够，多伦多那项研究的作者对深层照顾明确表示怀疑，这个问题没有答案，而且大概靠评分研究
  给不出答案。
- **综合到底是什么，要能量出来。** 没有基准，没有被普遍接受的操作化定义。本章从机制为它辩护，并说明
  测量还不存在。
- **认知卸载是真实的长期伤害，还是测量的假象。** 卸载方向的文献大多是相关性、自我报告。本章报机制、
  点出弱点，而不是断言一种衰退。
- **品味的差距会不会合上。** TASTE 是一个领域、92 组配对，作者说置信区间（正负约 10 个百分点）宽到
  不足以给模型排名。如果辨别是一条能力差距，本章下半部分有保质期；如果是责任差距，就没有。

## 被降级或删掉的说法

- **"共情是 AI 做不到的事。"** 按证据是错的，删掉。这是本章开头的反转，不是埋在结尾的保留意见。
- **"使用 AI 正在让人变得不会思考。"** 降级为"在大多是相关性的研究里，重度依赖与更低的批判性思维测量
  值相关，通过认知卸载这一中介"。本章说因果这个说法没有被确立。
- **"综合是一项独立的、可训练的元技能。"** 说软了。它被算进这四个里，是因为索引点了名，但没有任何对
  它的测量，本章也这么说。
- **给元技能的一套四步训练方案。** 不提供。证据真正支持的是练习"做判断并检查它"，而这个循环读者已经从
  第 10 章拿到了。
- **"AI 永远不可能有品味。"** 删掉。TASTE 显示模型在部分子集上远高于随机；诚实的说法是差距，不是不可能，
  本章就是这么框的。
