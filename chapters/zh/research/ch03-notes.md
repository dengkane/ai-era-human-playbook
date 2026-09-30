---
chapter: 3
chapter_file: ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md
researched: 2026-09-30
sources_kept: 6
sources_rejected: 11
---

# 研究笔记 — 第 03 章：AI永远做不好的事（以及为什么那是你的护城河）

## 框架说明

标题是个陷阱。"AI 永远做不好的事"恰好就是第 01 章警告过读者的那类句子——一个有保质期的论断。
所以这一章没有回答标题提出的问题，它回答了一个更好的问题：**你怎么分辨一个会过期的限制和一个不会
过期的限制？**

下面的研究逼出了这个转向。最先找到的两个来源都在试图确立一条持久的限制；两个都失败了，而它们的
失败比一份限制清单更有用。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `LLM fundamental limitations continual learning catastrophic forgetting cannot learn from interaction architecture` | anysearch | 是 | 定位到了持续学习方向的文献。真实，但论文非常技术化、切口很窄，而且那些限制正在被积极攻关——见"悬而未决的问题"。 |
| 2 | `verification bottleneck AI generation cheap verification expensive economics of verification` | anysearch | 是 | 高产的那条线。指向 MIT/WashU 的框架和 Faros AI 的数字。 |
| 3 | `embodied cognition AI without body physical experience world model grounding limitation research` | anysearch | 是 | 找到了发表在 *Neuron* 上的 USC/UCLA/DeepMind 论文。 |
| 4 | `METR randomized controlled trial experienced developers AI 19 percent slower study results` | anysearch | 是 | 去了原始来源，而不是新闻报道。正是这个决定造就了本章的主干——见"那个转折"。 |
| 5 | `AI scaling laws diminishing returns wall pretraining data exhaustion debate researchers 2026` | anysearch | 部分 | 一场真实存在的分歧，没有干净的结论。只用在保留意见那一节。 |
| 6 | `AI accountability liability cannot delegate responsibility human in the loop legal requirement regulation` | anysearch | 是 | 指向《欧盟人工智能法案》的监督条款。 |
| 7 | `EU AI Act liability human oversight requirement accountability developer responsibility article` | anysearch | 是 | 第 14 条的条文，官方。 |
| 8 | `AI progress evidence capabilities improving rapidly 2026 agent task length time horizon doubling` | anysearch | 是 | METR 关于时间跨度的工作——那个配重，防止本章变成一篇主张停滞的论证。 |

## 那个转折

本章初稿本来要把 METR 的结果作为核心：一次随机对照试验，资深开发者在自己的代码库上，AI 让他们
**慢了 19%**。这差不多是这个领域里最硬的证据，写成一节会很有说服力。

打开原始来源，这一节就死了。METR 自己的页面上挂着一条警告横幅：

> ⚠️ **这些结果已经过时。** 我们已发布了截至 2026 年初的最新结果……我们认为这些历史结果不再反映
> AI 模型当前对开源开发者生产力的影响。

更新后的结果估计是**提速 18%**；而比这个反转更有意思的是，研究者解释了这次*测量*已经崩掉了。
30% 到 50% 的参与开发者报告说自己藏了"不愿不用 AI 去做"的任务，而研究再也招不到足够愿意完全不用
它工作的开发者。

这比我原计划的那一章更好。关于"AI 哪里不行"最有力的那项研究，在一年之内就无法再测量这个问题——
与其说是因为技术变化太大，不如说是因为人改变了他们愿意做的事。

**这成了本章的第一节，也成了它的论点。**

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [METR — Early-2025 AI on Experienced OSS Developer Productivity](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) | 一手 | 19% 变慢的随机对照试验、它的置信区间，以及 METR 自己的撤回声明 | 第 1 节 |
| 2 | [METR — We are Changing our Developer Productivity Experiment Design](https://metr.org/blog/2026-02-24-uplift-update/) | 一手 | 反转为 18% 提速；选择性偏差；开发者原话 | 第 1 节 |
| 3 | [METR — Measuring AI Ability to Complete Long Software Tasks](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) | 一手 | 任务长度时间跨度六年内约每 7 个月翻一倍；四分钟以下近乎 100%，四小时以上不到 10% | 第 2 节 |
| 4 | [EU AI Act, Article 14 — Human Oversight](https://artificialintelligenceact.eu/article/14/) | 一手（法律） | 高风险系统必须由自然人有效监督；某些决定需要至少两名自然人分别确认 | 第 2 节 |
| 5 | [USC/UCLA/DeepMind in *Neuron* — embodiment and AI](https://chan.usc.edu/news/latest/why-ai-needs-body-truly-understand-world) | 一手 | "AI 并没有真正理解真实世界，因为它没有经历真实世界"；走路点阵的例子 | 第 3 节 |
| 6 | [The Technomist — The Verification Bottleneck](https://thetechnomist.com/p/the-verification-bottleneck-why-ais) | 二手 | 核验成本框架；Faros AI 的数字（评审时间 +91%、PR +154%、bug +9%）；Stack Overflow 的 84%/33% 落差 | 第 1 节 |

## 被拒的来源

| 来源 | 为什么没用 |
|--------|--------------|
| **arXiv 2509.01213 — catastrophic forgetting in continual learning** | 打开并读过。它记录了一个真实发现（微调会让此前的推理和理解能力退化；模型越大忘得越多），而我的第一版提纲把"AI 无法从经验中建立持久记忆"列为候选限制。把本章自己的测试用在它身上：那条限制是*机器一侧*的——它是当前训练方法的属性，是一个正在被积极推进的研究方向，也是那类会随一个架构层面的修复而消失的东西。引用它，会和本章里反对的正是这个错误的那个小节自相矛盾。记在这里，是因为这次拒用本身就是本章的方法在作用于本章自己。 |
| **METR 那个 19% 变慢的结果，作为一项独立发现** | 不是作为来源被拒——是作为*论断*被拒。它是本章的开篇，但呈现方式是"一项被它自己的作者判定过时的研究"，而不是"AI 在工程上不行的证据"。反过来用它，就会犯下这本书存在就是为了记录的那个错误，而且是我犯的，对着一个我打开过的来源犯的。 |
| **Coface / OEM 任务暴露研究** | 第 02 章用过，在那里很出色。这里不再复用，以免整本书变成单一来源的论证。 |
| **Cloud Security Alliance — AI liability in the agentic era** | 论断完全正确（"部署一个 agent 并不会把责任转移给 agent"）。两次提取都失败。改找到了《欧盟人工智能法案》的条文，那是一手法律而不是分析师的摘要——对同一个观点来说是更好的引用。 |
| **California AB 316** | 反复出现，作为"AI 自主行动"不构成法律抗辩的证据。在我能打开的来源里都是二手引用；我够不到法案原文，所以宁可不写，也不用二手引用它。 |
| **Ilya Sutskever 的"LLM scaling 已经见顶"** | 被广泛引用，而且它是一个确实重要的配重。拒用，因为它是通过第三方转述的一场会议发言，我够不到任何论文或讲稿。scaling 上的分歧是真实存在的，在保留意见里被承认了，但没有把某个具体说法归到他名下。 |
| **各种"AI 做不了 X"的列表文章** | 关于限制的查询结果里，很大一部分是列举永久限制却不给任何机制的列表文章。它们正是本章所反对的东西；引用它们会变成循环论证。 |
| **Faros AI — AI software engineering report** | PR 评审的那些数字（评审时间 +91%、PR 体积 +154%）对核验论证是承重的。我打不开 Faros 自己的报告；它是通过 The Technomist 引用的，而后者在来源表里被标为二手。记在这里，因为**这是一个已知的弱点**——见"悬而未决的问题"。 |
| **Harvard Business Review / UC Berkeley — AI intensifies work** | 同样的问题：40 名工作者、8 个月、62% 报告倦怠。有意思，但打不开原始来源。宁可不写，也不用二手引用。 |
| **Zylos、mbrenndoerfer 及其他持续学习方向的科普** | 对理解灾难性遗忘有帮助；被上面那篇 arXiv 论文取代。完全没有引用，因为灾难性遗忘最终被排除了。 |
| **Anthropic Economic Index** | 第 02 章的几个来源引用过它，用于自动化与增强的占比。对第 2 节本来会相关；这一轮没有打开，所以没有引用。 |

## 悬而未决的问题

- **核验那一节部分建立在二手来源上。** 框架来自一篇 MIT/华盛顿大学的论文，由 The Technomist 概括；
  我够得到摘要，够不到论文。Faros 的数字来自同一条路径。论证站得住，靠的是推理——生成一个答案并
  不会告诉你它是否正确，而核查它需要生成者没有提供的信息——但如果一手来源变得可达，它们应该替换
  掉那份摘要。
- **核验这条限制真的是结构性的，还是只是当下的？** 我主张它是结构性的，因为核验成本坐在人这一侧。
  但也可以设想核验变便宜：形式化证明、详尽的测试套件、密码学证明。那些都是真实的，而且它们占据着
  "可核验"那一栏。诚实的立场（本章采取的立场）是：核验恰好在其论断可按规则检验的地方便宜，而这是
  论断的属性，不是核验者的属性。更强的处理方式是拿一组真实任务来检验这一点。
- **具身这条论证也许是三者中最弱的，章节也这么说了。** Neuron 那篇论文主张 AI 不经历世界就无法理解
  世界。但这里的"无法"是一个关于特定架构的论断，而架构是会变的。我把它呈现为三个候选中持久性最低
  的一个，而不是把它包装成地基。
- **scaling 上的分歧未解决。** 有研究者报告见顶；也有研究者报告仍在以低于指数的速率继续改进。这对
  本章第 2 节的论证关系重大，而我无从裁定。它被作为一场未决的分歧来陈述。
- **我没有找到"判断力是否正在变得更值钱"的研究。** 那是本章的实践主张——人一侧的限制才是该定位的
  地方。它是从限制的结构论证出来的，不是从工资或招聘数据论证出来的。第二篇会需要那些数据。

## 被降级或丢弃的说法

- **"AI 让资深开发者慢了 19%。"** 本章最初的核心。现在呈现为一项被其作者判定过时的研究，并把反转
  一并写出。原始结果的置信区间（+2% 到 +39%）给了出来，因为它当时就已经几乎擦到零。
- **"幻觉率在 0.7% 到 94% 之间。"** 作为一个醒目的统计数字出现在某个来源里。丢弃：一个横跨两个数量级
  的区间，除了"测量不一致"之外什么也没告诉读者，而后者章节已经用平实的话说了。
- **"AI 无法形成长期记忆"**作为一条结构性限制。研究之后砍掉：持续学习是一个有实际进展的活跃领域，
  所以这是一条穿着结构性外衣的能力限制。这正是第 2 节存在就是为了抓住的错误，在那个小节里犯它会很
  难堪。
- **一个量化的"护城河"说法**——判断力上涨了某个百分比。从来就没有来源；章节论证的是结构性的理由，
  并明确拒绝给它定价。
