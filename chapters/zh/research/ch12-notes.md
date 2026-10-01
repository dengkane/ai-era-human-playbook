---
chapter: 12
chapter_file: ch12-one-person-business-playbook.md
researched: 2026-10-01
sources_kept: 5
sources_rejected: 14
---

# 研究笔记 — 第 12 章：一人公司的操作手册

## 框架说明

第 06 章论证了小团队新近变得可行。本章是一个人的团队的操作系统：卖什么、收多少、怎么交付。要不
要离开雇佣关系，是第 14 章；小为什么可行，是第 06 章的论证。

研究对本章做的事，跟它对第 06 章做的事一样，而且值得放在开头说清楚，因为这就是本章读起来不像一本
商业书的原因。**一个人做生意的官方数字并不浪漫。** 人口普查局统计到 2980 万家无雇员企业、1.7 万亿
美元收入，两者相除，大约是**每家每年 5.7 万美元**，还没扣成本，也还没交税。任何一章以头部十分位的
成功故事开篇，描述的都不是这个群体。

研究修正的第二件事：那个被反复引用的说法——用"价值定价"的自由职业者比按小时计费的人多赚一大截——
**追溯不到任何我能打开的研究**。它出现在咨询公司的博客上，带着一对看起来很具体的数字，却没有任何
一手来源。所以本章论证机制（按小时计费为什么会压住你），而不引进一个并不存在的统计量。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `one person business solopreneur revenue data survey median income 2026` | anysearch | 否 | 每条结果都是聚合站在引用别的聚合站。"第一年平均收入 29.4 万美元"追溯到一个平台自己的用户群，不是群体统计。弃用。 |
| 2 | `value-based pricing professional services evidence study outcome pricing consultants` | anysearch | 否 | 卖定价建议的咨询公司。麦肯锡那句"四分之一的费用来自结果"是真的，FT 报道过，但 FT 在付费墙后，而可访问的版本都不带底层细节。 |
| 3 | `productized service pricing freelancer rates data 2026` | anysearch | 部分 | 费率调查页，全是自报且未经审计，数字彼此差得离谱。有一个产品化对按小时的算例在算术上站得住，但那是一个博客的举例，不是一项发现。 |
| 4 | `Census Bureau nonemployer statistics receipts distribution sole proprietorship data` | anysearch | 是 | 高产的那条。找到了 NES 系列，那才是真正的基线。 |
| 5 | `IRS sole proprietorship Schedule C net income distribution statistics data book` | anysearch | 部分 | 国税局 SOI 的表格确实存在，而且正好包含本章想要的规模分布，但它们是 `.xls` 文件，本工具读不了。记为修订时最该打开的第一件东西。 |
| 6 | `Fed small business credit survey self-employed sole proprietor 2026 report` | anysearch | 是 | 美联储的 SBCS，6525 家雇主企业，其中整整一节讲 AI 使用，是本章其他来源都没有提供的。 |
| 7 | `outcome based pricing consulting McKinsey percentage of fees evidence data` | anysearch | 否 | 同一份 FT 报道的转述，没有一份带方法。 |
| 8 | `freelancer hourly billing vs fixed price client preference study evidence` | anysearch | 否 | 一份 144 人自选样本的调查，加一大堆观点。那个常被引用的"9.6 万对 5.8 万"的价值定价差距，看不出任何出处。 |
| 9 | `small business failure rate BLS survival statistics first year data` | anysearch | 是 | 引向劳工统计局《商业就业动态》的存活率表，那才是官方的实际测量。 |
| 10 | `Upwork Freelance Forward 2026 report data findings` | anysearch | 否 | Upwork 自己的研究，投资者关系页和研究页两个 URL 对本工具都返回 403。它那句"38% 的技能型知识工作者在自由职业"被到处引用，而这里核实不了。 |

另外直接抓取过：劳工统计局的存活率表（全国、全行业）、普查局 NES 项目页及其 2024 年零工经济发布、
普查局无雇员企业人口特征新闻稿，以及美联储地区储备银行的《2026 Report on Employer Firms》。

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [人口普查局 — Nonemployer Statistics by Demographics（2025 年 5 月）](https://www.census.gov/newsroom/press-releases/2025/nonemployer-business-characteristics.html) | 一手 | 2022 年 2980 万家无雇员企业、1.7 万亿美元收入——本章算术所依据的那个基线 | 有 |
| 2 | [人口普查局 — Nonemployer Statistics 项目页](https://www.census.gov/programs-surveys/nonemployer-statistics.html) | 一手 | 定义（没有带薪雇员、收入 1000 美元以上），以及该系列按年更新、当前到 2024 年 | 有 |
| 3 | [劳工统计局 — Business Employment Dynamics, Establishment Age and Survival](https://www.bls.gov/bdm/bdmage.htm) 及其 [表 7](https://www.bls.gov/bdm/us_age_naics_00_table7.txt) | 一手 | 按开业年份的存活率：截至 2024 年 3 月那一年开业的单位，一年后仍有 77.9% 在；2022 年 3 月那一批，三年后存活 56.3% | 有 |
| 4 | [美联储地区储备银行 — 2026 Report on Employer Firms, Small Business Credit Survey](https://www.fedsmallbusiness.org/reports/survey/2026/2026-report-on-employer-firms) | 一手 | 46% 的小企业在用 AI，15% 计划用，三分之一毫无计划；主要用途是写作/营销（83%）、生产力（61%）、分析（51%）；最大障碍是准确性（46%）和让工具适配业务（43%）；71% 报告生产力提升 | 有 |
| 5 | [ZipRecruiter — More Jobs, Higher Bar: The 2026 AI Employer Report](https://www.ziprecruiter-research.org/economic-insights-research/ai-employer-report-2026) | 一手 | 买家现在说自己为什么付钱：74% 说 AI 技能是加分项或硬要求；65% 把批判性思维排在比一年前更高的位置；31% 提高了初级岗位的经验要求 | 有 |

## 弃用

| 来源 | 为什么不用 |
|------|--------------|
| 所有"2026 年独立创业者统计"聚合页 | 循环引用。它们互相引用，而那些好看的数字（比如某平台上首年平均收入约 29.4 万美元）描述的是那个平台的用户，不是一个人的生意。 |
| "价值定价 9.6 万、按小时 5.8 万"那个说法 | 出现在多个咨询博客上，带着一个很自信的差额，任何来源都没有。正是 `chapters/en/README.md` 点名的那种失败模式。 |
| 麦肯锡结果定价的占比（FT 与 Business Insider 报道过） | 真实也有意思，但 FT 在付费墙后。对一个正决定该收多少钱的读者毫无帮助，而且会是一条打不开的引用。 |
| Upwork 的 Future Workforce Index 2026 | Upwork 自己的研究，两个 URL 都 403。它的头条数字被到处引用，而这里核实不了。 |
| 国税局 SOI 的独资企业规模表 | 数据是对的，但格式是 `.xls`，本工具读不了。记为修订时第一件该打开的东西。 |
| 厂商的产品化服务/定价指南 | 一门课或一个平台的营销。 |
| 144 人那份自由职业定价调查 | 自选样本，没有方法说明，而且它"固定价更受欢迎"的结果是一种偏好，不是结果。 |
| "20% 的小企业在第一年倒闭"这类清单文 | 它们转述劳工统计局的存活数据，有时还转述错了。改引 BLS 的表本身。 |
| Reddit 上关于自由职业费率的帖子 | 规模化的轶事。 |
| 小企业管理局覆盖到 500 名雇员的"小企业"统计 | 群体不对。本章讲的是完全没有雇员的企业。 |
| 平台"自由职业者平均收入"页面 | 通常只是那平台上活跃用户的毛收入，把每个数字都抬高了。 |
| "AI 将取代代理商"这类观点文 | 观点，而且不在范围内：本章是操作手册，不是预测。 |
| 课程和训练营的销售页 | 卖"一个人的生意"建议的人，不构成关于一个人的生意的证据。 |

## 悬而未决的问题

- **实际分布长什么样。** 本章用的是算术平均（1.7 万亿 / 2980 万 ≈ 5.7 万美元），并明说在一个偏斜分布
  上取平均是弱证据。规模分布就在国税局 SOI 的表里，这里读不了，这是本章最大的一个缺口。
- **无雇员企业是终点还是候车室。** 普查局的定义包含任何收入 1000 美元以上的人，这会把兼职和零工收入
  一并算进来。来源里没有任何一份把"一门生意"和"我业余干的一份活"分开，本章据此作了保留。
- **存活率对没有雇员的企业意味着什么。** 劳工统计局的表数的是*营业场所*，也就是有雇主的单位。一个人
  的生意在统计意义上没有营业场所可以"关闭"，所以本章把那个数字当作"这件事有多不留情"的下限来用，
  而不是当作一条适用于读者的比率。
- **有没有哪种定价模式可测量地胜过另一种。** 没有找到研究。本章论证机制，并明确拒绝声称有被测量过的
  优势。

## 被降级或删掉的说法

- **"按价值收费的自由职业者多赚 66%。"** 删掉。没有出处。本章改为做那个结构性论证，并说明没有找到
  研究。
- **"大多数独立创业者年入六位数。"** 删掉。平均数（约 5.7 万）和偏斜都指向相反方向，而"六位数"这个
  说法追溯到平台用户群。
- **"一人生意因为 AI 而蓬勃发展。"** 说软了。美联储的数据显示小企业采用 AI 少于大企业，那是第 06 章
  的核心发现，本章保持前后一致，而不是讲一个繁荣故事。
- **一个具体的推荐价格、费率或长期服务报价。** 删掉。不在范围内，而且任何数字一年内都会过期——第 15
  章对工具推荐用的是同一套理由。
- **"把所有东西产品化。"** 说软成一条检验：产品化那些陌生人不用谈话就能买的东西。本章明说它在哪些
  地方会失败，也就是差异很大的定制工作。
