---
chapter: 10
chapter_file: ch10-finding-your-human-ai-collaboration-point.md
researched: 2026-10-01
sources_kept: 6
sources_rejected: 11
---

# 研究笔记 — 第 10 章：找到你和AI各自该站的位置

## 框架说明

这是第三篇的第一章，也是全书的枢纽。第一篇和第二篇确立了边界在哪、读者站在哪里。本章讲的是读者
自己的那条边界。那是另一个对象，而研究异常清楚地表明，它确实是另一个对象。

有三个发现塑造了本章，第三个正是它为什么少讲规则、多讲方法的原因：

1. **能力边界是锯齿状的，而且看不见。** 波士顿咨询公司那项研究发现，用 GPT-4 的顾问多做了 12.2%
   的任务，快 25.1%，质量高 40%；而在一个被有意设计在边界*之外*的任务上，他们**比完全不用 AI 的
   顾问更差**（不用 AI 时 84% 答对，用了之后 60% 到 70%）。同一个工具，同一批人，相反的结果，而任务
   本身没有任何地方提示他们正处在哪一种情况里。
2. **边界是因人而异的。** 同一项研究还发现，这个工具**拉平了技能差距**：一开始得分最差的顾问提升了
   43%，得分最高的一组提升了 17%。而 METR 那项针对开发者的随机对照试验发现，有经验的开发者在自己
   的代码库上**慢了 19%**，同时相信自己快了 20%；METR 在自己的局限说明里明确写道，这个结果很可能
   不适用于经验较少的开发者，也不适用于不熟悉的代码库。
3. **不把自己当实验对象跑一遍，就没法知道自己站在哪一边。** 这就是为什么本章要的是方法，不是清单。

我有意没有写一篇"技巧合集"。证据不支持那样写，而且机器层面的东西本来就属于第 11 章。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `BCG Harvard jagged frontier study consultants AI 758 participants results Dell'Acqua` | anysearch | 是 | 定位到研究本身、期刊版本，以及可读的报道。 |
| 2 | `centaurs cyborgs AI consultants task delegation split jagged frontier study findings` | anysearch | 是 | 确认了半人马与赛博格那套分类，并引向 HBS Working Knowledge 那篇和 Mollick 自己的帖子。 |
| 3 | `METR measuring AI ability to complete long tasks time horizon doubling 2026 update` | anysearch | 是 | 任务长度的度量，以及那条"公布数字已过时"的警告。 |
| 4 | `METR experienced developers AI slower 19 percent randomized trial follow up 2026` | anysearch | 是 | 感知与现实的落差：预期 +24%，实际 −19%，事后仍相信 +20%。说明自我报告不等于测量，最好的单一例证。 |
| 5 | `Anthropic Economic Index automation augmentation share conversations report findings` | anysearch | 是 | 增强 52% 对自动化 45%；以及按职业区分的技能降级与升级。 |
| 6 | `AI homogenization creative output diversity writers study evidence` | anysearch | 是 | 引向那篇跨大语言模型的同质性论文，它比单一模型的版本更强，因为覆盖了多个模型。 |
| 7 | `GitHub Copilot randomized controlled trial developer productivity 26 percent study` | anysearch | 部分 | 研究是真的，但能打开的material 跟厂商有关联，而一手 PDF 没能渲染。记为弃用。 |
| 8 | `task decomposition AI workflow knowledge worker productivity field study 2026` | anysearch | 否 | 咨询类博客和厂商页面。没有任何可测量的东西。 |
| 9 | `deliberate practice AI skill development deskilling study`（隐性，经由结果 6） | anysearch | 部分 | 没有关于"AI 与技能形成"的干净一手研究。记成一个悬而未决的问题，而不是绕着它写。 |

另外直接抓取过：HBS Working Knowledge 的文章、Ethan Mollick 在同一项研究上的 *One Useful Thing*
帖子、METR 的两个页面、Anthropic 的经济指数报告，以及关于创作同质性的 arXiv 论文。

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [HBS Working Knowledge — *Humans vs. Machines*（2023 年 11 月）](https://www.library.hbs.edu/working-knowledge/humans-vs-machines-untangling-the-tasks-ai-can-and-cant-handle) | 二手 | 758 名顾问；边界内 +12% 任务、快 25%、质量高 40%；边界外的下降（有培训 24 个百分点、无培训 13 个百分点）；43% 对 17% 的拉平效应；半人马与赛博格的分类 | 有 |
| 2 | [Mollick，*Centaurs and Cyborgs on the Jagged Frontier*（2023 年 9 月）](https://www.oneusefulthing.org/p/centaurs-and-cyborgs-on-the-jagged) | 一手 | 由作者之一解释锯齿边界；12.2%/25.1%/40%；边界外 84% 降到 60–70%；"开着车睡着了"；输出趋同 | 有 |
| 3 | [METR — Measuring AI Ability to Complete Long Software Tasks（2025 年 3 月）](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) | 一手 | 四分钟以内近乎 100%，四小时以上不到 10%；约 7 个月的翻倍；页面自己挂的过时警告 | 有 |
| 4 | [METR — Early-2025 AI on Experienced OSS Developer Productivity（2025 年 7 月）](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) | 一手 | 16 名开发者、246 个任务、慢 19%；预期 +24%，事后相信 +20%；明确的适用范围限制 | 有 |
| 5 | [Anthropic — Economic Index report: Economic primitives（2026 年 1 月）](https://www.anthropic.com/research/anthropic-economic-index-january-2026-report) | 一手 | Claude.ai 上增强 52% 对自动化 45%；人类任务越长成功率越低；旅行社代理降级、物业经理升级 | 有 |
| 6 | [Wenger 与 Kenett — *We're Different, We're the Same*（arXiv 2501.19361）](https://arxiv.org/html/2501.19361v1) | 一手 | 大语言模型的创作输出彼此之间的相似度远高于人类输出之间，跨多个模型成立，不只是某一个 | 有 |

## 弃用

| 来源 | 为什么不用 |
|------|--------------|
| GitHub 关于 Copilot 生产力的材料和那个 55.8% 的任务完成率 | 厂商主导或与厂商相关，而且它测的是单个自足任务，不是在真实代码库里的工作。用来跟 METR 做对比可以，作为支撑不行。 |
| Cui、Demirer 等，*The Effects of Generative AI on High-Skilled Work* | 三项真实随机对照试验，完全切题。MIT 的 PDF 没能渲染，pubpub 镜像返回 403。在章节的保留意见里记成我打不开的那个配重。 |
| 锯齿边界论文的 *MIT Sloan* SSRN PDF | PDF 是扫描式导出，文本提取失败。HBS Working Knowledge 那篇与作者合作撰写并承载了数字，Mollick 的帖子出自合著者本人，所以改引这两篇。 |
| Doshi 与 Hauser（2024）、Moon、Green 与 Kushlev（2024）关于同质化 | 单一模型的研究。就本章的目的而言，那篇跨大语言模型的论文取代了它们，因为它排除了"这只是 GPT 的问题"这一解释。 |
| 蒂尔堡大学关于同质化的新闻稿 | Cloudflare 403。它本是同一批研究可读的摘要；改引 arXiv 论文本身。 |
| *纽约客* 和 USC Dornsife 关于"AI 正在让我们的思想趋同"的文章 | 关于研究的新闻，不是研究。 |
| 任何"AI 生产力技巧"或"提示词库"内容 | 不是证据。也是本章给方法而不是给清单的原因。 |
| METR 研究的 YouTube 讲解 | 二手；METR 页面本身可以打开，说得更多。 |
| 厂商的"智能体工作流"白皮书 | 营销。 |
| Pearson/LinkedIn 的"2026 年你需要的技能"帖子 | 清单式新闻。 |
| Mollick 帖子下 1000 多条评论 | 不是证据。不过 Conor Grennan 那条评论对招聘层面的含义讲得不错，但也没引用。 |

## 悬而未决的问题

- **没有干净的研究说明使用 AI 会随时间积累还是会侵蚀技能。** Dell'Acqua 那个"开着车睡着了"的实验最接近，
  但它讲的是招聘人员和单个任务。本章点出这个风险，并说纵向证据还没有，而不是断言某个机制。
- **拉平技能这个效应，跟验证那套论证怎么相互作用。** 如果 AI 抬高地板最快，那么原本靠判断力拉开差距的
  人，应该是受影响最大的，而不是最小的。第 03 章对市场的*顶端*论证的恰好相反。两者可能在不同分布位置上
  都成立，而我能打开的范围内没有任何东西能解决它。
- **协作点是否稳定。** METR 自己的页面现在挂着警告，说它的头条数字已经过时，因为工具在一年内就变了。
  读者这个季度校准出来的任何东西，明年可能就错了，这是支持"用方法"、反对"章节里放一个让人抄下来记住
  的数字"的论据。
- **边界对每个人是不是在同样的地方呈锯齿状。** BCG 那道边界外的题是被有意设计来骗 AI 的。真实工作不会
  贴标签。没有人测量过一个劳动者*自己的*边界多久会在他们没有察觉的情况下移动。

## 被降级或删掉的说法

- **"AI 让知识工作者生产力提高 40%。"** 作为论断删掉。40% 是*边界内*的产出质量，来自一家公司的一项研究。
  同一项研究在边界外的结果是负的。只引前一个不引后一个，正是本章要讲的那种失败。
- **"AI 让开发者变快。"** 作为一般论断删掉。最好的随机试验发现，对有经验的开发者在自己代码上的效果相反，
  而这个效应的方向几乎肯定取决于经验和熟悉程度——那是要点，不是脚注。
- **"用 AI 时当赛博格而不是半人马"（或反过来）。** 作为建议删掉。研究报告说两种都有效，而且大致各占一半。
  把其中一种说成答案，是在发明权威。
- **"AI 错的时候你感觉得到。"** 与数据矛盾。在那道边界外的题上，AI 给出了一个错但很有说服力的答案，把专家
  一起带偏了。那个信号不是一种感觉，是一次核对。
- **任何具体的模型或工具推荐。** 按索引划分这不在本章范围内（那是附录 A），而且注定过期。
