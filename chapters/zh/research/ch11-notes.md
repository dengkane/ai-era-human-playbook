---
chapter: 11
chapter_file: ch11-context-engineering-beyond-prompt-writing.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 12
---

# 研究笔记 — 第 11 章：上下文工程（不只是写提示词）

## 框架说明

第 10 章给了读者一个找到自己边界的办法。本章讲的是这条边界在*机器那一侧*发生的事：模型在回答时
究竟能看见什么。

研究把本章推离了那个想当然的框架。想当然的框架是"提示词工程已死，上下文工程取代了它"，博客上都是
这么说的。证据说的东西更具体、也没那么戏剧化：**更多的上下文不等于更好的上下文。** 模型不是均匀地
读，它们随输入变长而退化，会漏掉中间的东西，而且可测量地会被无关材料带偏。这是一个机械性的发现，
也是本章讲的是*整理*而不是讲体量的原因。

研究做的第二件事，是让本章对它服务的人保持诚实。大部分术语来自造智能体的人，那个读者群比本书窄得
多。所以本章取的是机制（注意力有限、位置偏差、对干扰项敏感），给的是一个手上有一份文档和一个截止
日期的人用的方法，不是给一个跑工具调用循环的人。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `context engineering definition Anthropic effective context engineering agents guide` | anysearch | 是 | Anthropic 那篇工程博客，术语的通行定义就出自那里。 |
| 2 | `lost in the middle long context LLM performance degradation study Liu` | anysearch | 是 | Liu 等人的论文，后面一切都建在它上面的那个位置退化结果。 |
| 3 | `context rot long context degradation benchmark study 2026` | anysearch | 是 | Chroma 的技术报告：18 个模型，即使在琐碎任务上也随长度退化。 |
| 4 | `AI RAG retrieval augmented generation enterprise failure rate study 2026 grounding hallucination` | anysearch | 部分 | 几乎全是厂商内容，讲他们的 RAG 产品怎么修幻觉。没有可用的一手发现。 |
| 5 | `prompt engineering dead context engineering replaced evidence 2026` | anysearch | 否 | Reddit、Medium、LinkedIn。这个说法到处被断言，无处被证明。记为弃用，并作为一件*不该说*的事写进本章。 |

另外直接抓取过：干扰项结果背后的 Shi 等人那篇论文，以及 Philipp Schmid 的帖子，上下文工程那句流传
很广的一句话定义就是在那儿写的。

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Anthropic — *Effective context engineering for AI agents*（2025 年 9 月）](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) | 一手 | 通行定义；"注意力预算"；n² 成对关系的论证；上下文是边际收益递减的有限资源；系统提示词的"合适高度"；最小可用工具集；用典型例子而不是边界情况清单；随用随取的检索；压缩、笔记、子智能体 | 有 |
| 2 | [Chroma — *Context Rot: How Increasing Input Tokens Impacts LLM Performance*（2025 年 7 月）](https://www.trychroma.com/research/context-rot) | 一手 | 18 个模型，含 GPT-4.1、Claude 4、Gemini 2.5、Qwen3；随输入增长非均匀退化，即使任务很简单；大海捞针基准高估了真实的长上下文能力；干扰项有害 | 有 |
| 3 | [Liu 等 — *Lost in the Middle*（TACL 2023）](https://arxiv.org/abs/2307.03172) | 一手 | 相关内容位于输入开头或结尾时表现最高，必须从中间找出来时退化，专门的长上下文模型也一样 | 有 |
| 4 | [Shi 等 — *Large Language Models Can Be Easily Distracted by Irrelevant Context*（ICML 2023）](https://arxiv.org/abs/2302.00093) | 一手 | 加入无关信息后准确率大幅下降；在提示里指示模型忽略无关部分可以缓解 | 有 |
| 5 | [Schmid — *The New Skill in AI is Not Prompting, It's Context Engineering*（2025 年 6 月）](https://www.philschmid.de/context-engineering) | 一手 | 那句通行的定义（对的信息、对的格式、对的时机）；"上下文"如今包含什么（系统提示词、历史、长期记忆、检索文档、工具、输出格式）；"大多数智能体故障是上下文故障" | 有 |

## 弃用

| 来源 | 为什么不用 |
|------|--------------|
| 所有"提示词工程已死"的帖子（Reddit、Medium、LinkedIn、OpenAI 论坛那个帖子） | 这个说法被反复重复，出处为零。证据真正支持的更窄：提示词的质量，不如它周围有什么重要。本章说的是后者。 |
| LangChain、LlamaIndex、Sourcegraph、Neo4j 的上下文工程指南 | 卖上下文工具的公司写的上下文工程指南。用来对齐词汇可以，作为证据不行。Anthropic 那篇覆盖了同样的内容，没有那层销售框架。 |
| 厂商讲"如何阻止幻觉"的 RAG 文章 | 为检索产品做营销。唯一可复用的想法（知识库里有过期或重复文档会污染检索）只是断言，没有测量，所以不引。 |
| Simon Willison 的 *Context Engineering* 帖子 | 确实好，也被广泛链接，但它是一则简短的定义性说明，跟 Schmid 和 Anthropic 覆盖的是同一块地。一个定义有两条来源就够了。 |
| Karpathy 最初那条推文 | "整理进入有限上下文窗口的内容的艺术与科学"这句话在 Anthropic 那篇里被引用，而引的是 Anthropic。为它的措辞去引一条推文，没有增加任何东西。 |
| 关于上下文窗口*扩展*的论文（YaRN、位置插值） | 真实，Anthropic 也引用来解释长窗口为什么有代价，但技术性到了本书读者用不上的程度。改引 Anthropic 对后果的概括。 |
| 大海捞针排行榜 | Chroma 展示的正是这个基准不具代表性。引一个建立在"本章正在反驳的基准"上的排行榜，是自相矛盾。 |
| "上下文工程师薪资"和就业市场清单文 | 不是证据，而且对一章讲读者自己手上的活的文字来说是跑题。 |
| LongMemEval 和 AbsenceBench 论文 | 真实，但它们是 Chroma 报告里的基准；本章靠的是那份报告的综论。记为修订时该往下挖的下一层。 |
| MCP 规范和工具调用文档 | 给造东西的人看的机制。按索引划分不在范围内，工具选择归第 15 章。 |
| 任何模型宣传的上下文窗口大小 | 本章的论点就是那个宣传数字是错的数字。引一个会把自己的论证拆掉。 |

## 悬而未决的问题

- **这条退化曲线随模型换代移动得多快。** Chroma 测的是 2025 年中的模型，它们之间的排序已经过时。
  看起来耐久的是*形状*：退化不均匀、上下文中间丢失、对干扰项敏感；本章靠的是形状。
- **位置那个结论在推理模型上还成不成立。** *Lost in the Middle* 早于长思维链和更大的窗口。Chroma 的
  报告做了延伸，但没有人干净地测过：一个先写一堆推理再回答的模型，会不会逃出中间位置那个惩罚。
- **非文本工作的整理方法该是什么样。** 这里的每一项技术都假定上下文是文档。图像、音频和数据表有
  各自的经济账，来源材料没有涉及。
- **干扰项效应是能力差距还是永久性的。** 如果它消失了，本章很多建议就不再要紧。我能打开的范围内，
  没有任何东西说清它是否已经如此。

## 被降级或删掉的说法

- **"提示词工程已死。"** 既错又无法核实，删掉。本章给的是站得住的版本——提示词是模型所看到的东西里
  最小的一部分——并明确指出这个过度断言是不该重复的。
- **"更大的上下文窗口能解决这个问题。"** 删掉。Anthropic 直接说，各种尺寸的窗口都会继续受污染和相关
  性限制的约束，本章照实写，而不是采用读者可能带着的那种更乐观的读法。
- **"RAG 能修好幻觉。"** 不用。这是搜索结果里每个厂商页面都在做的断言，而没有一个测量过它。
- **一个具体的、质量开始下滑的 token 阈值。** 删掉。来源显示曲线因模型而异、噪声很大；给一个数字等于
  发明精确性，而这恰恰是本章警告的那种失败。
- **"让模型忽略无关文本。"** 保留但设了边界：Shi 等人确实发现那句指令有帮助，本章把它作为缓解手段报
  出来，不是作为修复，也不是作为"所以你一开始可以把无关文本放进去"的理由。
