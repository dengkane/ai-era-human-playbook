---
chapter: 4
chapter_file: ch04-where-different-people-actually-stand.md
researched: 2026-09-30
sources_kept: 7
sources_rejected: 12
---

# 研究笔记 — 第 04 章：不同人群的真实处境

## 框架说明

第 03 章结尾承认，第二篇会需要它没有的数据：测量"判断力是否正在变得更值钱"的研究。这一章就是那些
数据进来的地方。它是第二篇的诊断开篇——在第 05–09 章按处境分发建议之前，读者需要知道自己实际处在
哪一种处境里。

研究两次改变了这一章，而这两次改变正是它存在的理由：

1. **暴露地图和流行叙事是反的。** AI 暴露程度最高的职业是受过教育的、报酬高的、女性比例偏高的人群。
   30% 的劳动者实际观测 AI 覆盖率为*零*，而他们是厨师、机修工、酒保和救生员。如果这一章是照着新闻
   周期写的，它会把这个搞反。
2. **存在一个可测量的变量，能在同一个职业内部把人分开。** 达拉斯联储的*经验溢价*——同一个职业里
   入门员工与资深员工的工资差距——能预测 AI 暴露上升是把工资往下推还是往上推。它把一章描述性的
   内容变成了一章诊断性的内容。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `Anthropic Economic Index occupational exposure automation augmentation share of conversations by occupation 2026` | anysearch | 是 | 找到了 2026 年 3 月那篇*实际观测暴露度*论文。直接打开了它，而不是依赖对它的报道——这个决定产出了本章的第一节。 |
| 2 | `Brynjolfsson Li Raymond generative AI at work call center 15% productivity novice workers study` | anysearch | 部分 | 确认了那个广为人知的客服结果（生产力提升 14–15%，集中在新手身上）。未引用：它是这套文献里被循环引用最多的一项研究，而第 05 章会比一章诊断更需要它。 |
| 3 | `Klarna AI assistant customer service work of 700 agents rehire human staff 2025 2026` | anysearch | 是 | Klarna 的反转。通过 CX Dive 而非厂商新闻稿来溯源——见"被拒的来源"。 |
| 4 | `freelance translator rates decline AI machine translation data 2025 2026 study` | anysearch | 部分 | 十条结果里有九条是机构营销或无出处的"费率下降 40–60%"说法。有一项学术研究可达；那个具体系数不可达。 |
| 5 | `Pew Research Center workers using AI at work share 2025 2026 survey` | anysearch | 否 | 通往 Pew 本身的每一条路都失败了（见"被拒的来源"）。返回的反而是二手引用 Pew 的聚合页，而这正是本仓库的来源规则存在是为了抓的那种模式。 |
| 6 | `which occupations wages rising AI exposure wage growth data 2026 study` | anysearch | 是 | 高产的那条线。定位到了达拉斯联储的分析，也就是本章的框架。 |
| 7 | `Hui Reshef Zhou short-term effects generative AI online labor market Upwork freelancers decline` | anysearch | 部分 | 关于自由职业市场效应，这是对的那篇论文。摘要可达，全文付费；未引用。见"被拒的来源"。 |
| 8 | `Pew Research Center AI use at work survey October 2025 share of workers report` | anysearch | 否 | 服务先报错，然后只返回对 Pew 的二手引用。放弃那个 Pew 的数字，而不是二手引用它。 |
| 9 | `Klarna customer service AI announcement February 2024 700 agents OpenAI case study` | anysearch | 是 | 定位到了厂商新闻稿和 OpenAI 的案例研究——两者都不可达。改为在 2025 年 5 月的反转报道内部印证 2024 年 2 月的那些数字。 |
| 10 | `"Lost in translation" AI impact translators foreign language skills CEPR study authors employment growth 0.7 percentage points` | anysearch | 部分 | 确认了这项研究及其作者；确认了那个 0.7 个百分点的系数存在于 CEPR 的专栏里，而该专栏拒绝提取。同一篇论文在 Oxford Martin 和 INET Oxford 的记录是可打开的，并确认了该发现的方向。 |

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Anthropic — Labor market impacts of AI: A new measure and early evidence](https://www.anthropic.com/research/labor-market-impacts) | 一手 | *实际观测暴露度*指标；30% 劳动者覆盖率为零；计算机程序员 75%、数据录入员 67%；暴露组平均多挣 47%、研究生学历占比接近四倍；暴露组劳动者失业率没有系统性上升；22–25 岁求职成功率下降 14%；覆盖率每增加 10 点，BLS 预测下降 0.6 个百分点 | 第 1、2 节 |
| 2 | [Stanford Digital Economy Lab — Canaries in the Coal Mine, August 2026 revision](https://digitaleconomy.stanford.edu/news/canariesaug26/) | 一手 | 高暴露职业中 22–25 岁人群 19% 的就业缺口；从 15% 扩大到 19%；成文与默会知识的机制；调整通过减少招聘而非解雇实现 | 第 1、2 节 |
| 3 | [Federal Reserve Bank of Dallas — AI is simultaneously aiding and replacing workers](https://www.dallasfed.org/research/economics/2026/0224) | 一手 | 最高暴露十分位就业 −1%，全国 +2.5%；计算机系统设计 −5% 而工资 +16.7%；经验溢价（中位数 40%，从 <10% 到 >100%）；−0.28 与 +0.2 个百分点的工资效应分野 | 第 2、3 节 |
| 4 | [Anthropic Economic Index — Cadences, June 2026](https://www.anthropic.com/research/economic-index-june-2026-report) | 一手 | 超过 35% 的受访用户预期 AI 能在一年内完成他们*大部分*工作；最重度自动化的用户最乐观；工作时间之外的工作对话偏向高薪职业 | 第 3 节 |
| 5 | [US Census Bureau — AI use at work, Household Trends and Outlook Pulse Survey](https://www.census.gov/library/stories/2026/08/ai-use-at-work.html) | 一手（政府调查） | 56% 的劳动者为 11 项工作任务中至少一项用过 AI；31% 报告节省了一到两小时；使用率随学历陡升，所列举的任务是检索、写作、构思和概括 | 第 1 节 |
| 6 | [INET Oxford / Frey & Llanos-Paredes — Lost in translation](https://www.inet.ox.ac.uk/publications/lost-in-translation-ais-impact-on-translators-and-foreign-language-skills) | 一手（研究记录） | 机器翻译采用率更高的地区译员就业下降，且机器翻译总体上降低了对整体外语技能的需求 | 第 1 节 |
| 7 | [CX Dive — Klarna changes its AI tune and again recruits humans for customer service](https://www.customerexperiencedive.com/news/klarna-reinvests-human-talent-customer-service-AI-chatbot/747586/) | 二手 | Klarna 2024 年 2 月的数字（230 万次对话、三分之二的对话、相当于 700 名代理）以及 CEO 2025 年承认成本是"一个过于主导的评估因素"、质量受损 | 第 3 节 |

## 被拒的来源

| 来源 | 为什么没用 |
|--------|--------------|
| **Pew Research Center — AI in the workplace** | 这个领域里被引用最多的单个数字（"大约五分之一的美国劳动者在工作中使用 AI"），而我够不到它。两种 URL 写法都返回 404；引用它的搜索结果都是聚合页（jobcannon、一个 Substack）在重述 Pew 的数字。宁可拒用，也不二手引用。因此本章没有做 Pew 的约 21% 与人口普查局 56% 之间的跨调查对照——那个对照确实有意思，也确实得不到我打开过的任何东西的支持。 |
| **WEF — *Artificial Intelligence and the Future of Entry-Level Work*（2026）** | 完全切题，但以 PDF 形式提供，提取器不支持。未引用。 |
| **Economic Policy Institute — Class of 2026 and the young college graduate workforce** | 本来可以是对 Canaries 论文有用的反证（它主张 85% 的年轻毕业生工作于就业增长强劲的职业）。每一次提取都失败。留作下一轮修订的线索。 |
| **PwC — 2026 AI Jobs Barometer** | 被广泛引用（AI 技能 62% 的工资溢价，"专业化"与"民主化"的岗位）。提取失败，而且它是一家咨询公司在推销自己的指数。未引用——它所暗示的那个经验溢价故事，由达拉斯联储实际的回归支持得更好。 |
| **Hui, Reshef & Zhou — 生成式 AI 对在线劳动力市场的短期影响** | 关于自由职业问题，这是对的那篇论文：在 ChatGPT、DALL-E 2 和 Midjourney 之后，高受影响职业的自由职业者在就业和收入上双双下降。我能打开摘要，但打不开全文（Organization Science 付费，SSRN 只有摘要，CESifo 版是 PDF）。未引用。第 1 节的自由职业论断改由那项翻译研究承担，因为我能打开它。 |
| **Klarna 自己的新闻稿（2024 年 2 月 27 日）和 OpenAI 的案例研究** | 两者都是"相当于 700 名全职代理"这个数字的一手来源，而两者都拒绝提取——Klarna 的页面是 JavaScript 挑战，OpenAI 的页面返回 403。该数字被引用在 2025 年 5 月的报道里，而那份报道我能打开，所以章节用了它，并标注了来源层级。记下来，因为这个数字是被所有人重复、却几乎没有人去溯源的。 |
| **Forbes — "Klarna reverses on AI"** | 403，广告拦截墙。被 CX Dive 取代，后者大段引用了同一场 Bloomberg 访谈。 |
| **Bloomberg — "Klarna turns from AI to real-person customer service"** | 原始访谈。付费墙，由 CX Dive 引用而非亲自读过。与第 01 章那篇 Bloomberg 文章的处理方式相同。 |
| **"自 2020 年以来，商品化翻译的费率下降了 40–60%"** | 出现在若干聚合帖里。没有可追溯的测量、没有出处，而且它与那项学术研究里更谨慎的表述相矛盾。丢弃。 |
| **Anthropic Economic Index 交互式仪表盘** | 打开过。通过提取器渲染出来的是图表界面的碎片——职业名、使用百分比，没有任何方法论。2026 年 6 月的报告用有出处的方式说了同样的事，所以这个仪表盘是个书签而不是一条引用。 |
| **各种"AI 职位大灾难"和"AI 职位大繁荣"的列表文章** | 关于工资和就业效应的查询返回的大多是互相引用的列表文章。两个方向都不能用作证据，而实际数据的方向比这两种版本都有意思。 |
| **BLS 职业预测** | 章节引用 BLS 预测*时*标注了"据 Anthropic 转述"，这对传递链条是诚实的。直接打开预测表会加强这个论断；它在下一轮的清单上。 |
| **Coface / OEM 任务暴露研究** | 第 02 章用过。刻意不再复用——一项研究不该扛两章，而这一章有更好的数据可用。 |

## 悬而未决的问题

- **本章复用了 Ch. 02 也引用的 Canaries 论文。** 这是刻意且范围很窄的：第 02 章用它论证"过期地图会
  产生错误的路口"，引用的是 −11%/+10% 的分野和成文/默会机制。第 04 章用它做*位置*论证，并以 19% 的
  缺口和"调整通过招聘而非解雇发生"这一发现领起。两章从同一来源得出不同论断，但按顺序读的读者会碰到
  这篇论文两次。如果这种重叠读起来像重复而不是强化，值得重看。
- **全章没有任何因果性论断，因为研究者拒绝做因果性论断。** 斯坦福的作者明确表示他们的模式是描述性的、
  控制教育变量后缺口会缩小、ADP 样本可能无法推广。章节把这一点直说出来。这也意味着本章的诊断是
  靠结构得到辩护的（经验溢价是对默会知识的一次*测量*，不是对 AI 效应的因果估计），而不是靠就业数据。
- **"实际观测暴露度"测量的是 Claude 的使用，所以它是某一家厂商的视角。** Anthropic 坦承这个指标
  部分建立于自己的流量之上，且 Claude 只覆盖"计算机与数学"类别中 33% 的任务。不用 Claude 的读者在
  其中是不可见的。章节倚重的是这个指标的*排名*——独立产出的 BLS 预测以"覆盖率每增 10 点、增长降
  0.6 个百分点"弱佐证了它——而不是它的绝对水平。
- **那 30% 零覆盖是一个测量下限，不是一张安全证书。** Anthropic 自己给的例子双向都有：一侧是修剪
  树木和操作农机，另一侧是在法庭上代理客户。第一种是能力缺口；第二种是第 03 章的人一侧限制。章节
  做了这个区分，但它是我的解读，不是两个来源中任何一方陈述过的。
- **经验溢价是一个代理指标，它在边缘处会误导人。** 它是用 BLS 的建模工资估计算出来的，所以它测量的
  是雇主*为经验支付的价格*，不是经验实际包含的内容。一个职业可能因为与默会知识毫无关系的原因而溢价
  很高——工会薪酬标准、执照、论资排辈的规矩。章节把它当作一个要问的问题，而不是一个要查的号码，并
  照实说了。
- **我没有找到"四个位置里各有多少人"的数据。** 本章的框架是一种给自己定位的方法，它不是一份分布。
  没人发表过计数，而编一个出来恰恰是本仓库记录在案的那种失败。

## 被降级或丢弃的说法

- **"56% 的美国劳动者在工作中使用 AI。"** 草稿里作为标题用它。这是人口普查局 2026 年 3 月脉搏调查
  的发现，但那个问题覆盖 11 项任务，包括"检索信息"——定义宽到无法与本章任何其他内容对照，而且它
  和同一份调查里"只有 24% 的使用者每天打开 AI"这个发现摆在一起显得别扭。章节现在报告这个 56% 时
  *附带*定义，且不把它当标题用。
- **"机器翻译采用率每提高一个百分点，译员就业增长就下降 0.7 个百分点。"** 一个精确而有用的系数，
  在 CEPR 专栏的搜索摘要里可见。我打不开那个专栏本身（Cloudflare），而同一论文的两份可打开记录都
  没有陈述这个系数。章节陈述了这个发现的方向，一个数字也不给。这是第 01 章的失败模式被提前一步
  抓住了。
- **"受影响职业里的自由职业者收入和工作双双流失。"** 由 Hui、Reshef & Zhou 支持，而他们的全文我打
  不开。砍掉；改由那项翻译研究承担自由职业这个点。
- **一段"Pew 说 21%，人口普查局说 56%"的差异段落。** 本来会是本章最有意思的一段，而它完全建立在
  对 Pew 的二手引用之上。砍掉。
- **"AI 正在冲着例行的、低技能的工作来。"** 这是本章原本打算用来开篇的框架，而它是反的。第 02 章在
  任务层面纠正了同一个错误；第 04 章在人的层面纠正它。
