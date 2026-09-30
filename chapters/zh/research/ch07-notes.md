---
chapter: 7
chapter_file: ch07-the-freelancer-from-selling-skills-to-selling-personality.md
researched: 2026-09-30
sources_kept: 13
sources_rejected: 12
---

# 研究笔记 — 第 07 章：自由职业者——从卖技能，到卖"你是谁"

## 框架说明

第 05 章讲的是组织内部的人，第 06 章讲的是拥有某些东西的人。本章讲第三种挣钱方式：把自己卖进别人的
问题里。索引界定的范围是*计量单位如何变化*——不是定价机制（那是第 12 章），不是要不要独立的决定
（那是第 14 章），也不是怎么判断工具（那是第 15 章）。本章可以解释一个机制、交出一个测试，但不允许
给出任何具体费率。

**本章的成文顺序，是这份笔记里唯一一件应当被读者拿来对它打折的事。** 本书其他每一章的研究笔记都写
在动笔之前，这一章不是。章先存在，来源就活在 `<!-- verified -->` 标记里；本文件是事后重建的——把十三个
来源全部重新打开一遍，确认每一个都说了本章claim它说的话。这比另外六章提供的保证要弱，而这个差别
值得写出来，而不是抹平：

- **重建能确认一个说法，但证明不了这个说法是被证据塑造的。** 在研究先行的章节里，一个打不开的来源
  会在它进入正文之前就把那个说法拿掉。这里说法早已写定，而那种会被拿掉的失效模式，恰是笔记本来该
  拦住的东西。
- **下面的搜索轨迹有一部分是重建出来的。** 顺序可以从标记反推；那些死胡同只是本次会话真正撞到的。
  第 05 章和第 06 章分别记录了十二次和十四次真实搜索；本章记录得更少，因为真正做过的搜索更少。
- **重建确实产出了"弃用"这一节，而且它不是空的**——重建期间真正跑的检索，翻出了三篇直接切题的
  论文，本章此前没见过。它们记在下面，是线索，不是支撑。

有两个发现塑造了现在这一章，而两个都来自把来源放在一起读，而不是一个一个读：

1. **平台数字描述的是一次重新定价，不是崩塌。** 本章里每一家市场——Fiverr、Upwork、Freelancer.com——
   在同样的季度里报告了同样的三段式形态：买家更少、合约更少更小、每个留下来的买家带来的收入更高。
   分开读，是三家挣扎的公司；放在一起读，是一个市场在换自己的销售单位，也就是本章的论点。
2. **声誉是我原本以为的护城河，而它恰恰是证据削得最狠的东西。** "我还有什么机器没有的"这个问题，
   直觉答案是履历。Hui、Reshef 和 Zhou 检验的正是这个问题，而他们无法确认它。这次改位，把本章从
   "打造个人品牌"变成了"为结果承担责任"，也是第二节独立存在、而不是并进第三节的原因。

## 重建说明

2026-09-30 的重建中，十三个来源全部被完整打开。具体过程：

| 来源 | 打开方式 | 结果 |
|------|----------|------|
| Fiverr 的 SEC 文件 | `curl`，带声明过的 User-Agent；第一次不带 UA 返回 HTTP 403 | 707 KB，已打开；本章开头每一个数字都在公告正文里得到确认 |
| Upwork 季报与 Future Workforce Index | `curl`，HTTP 200 | 两份都打开；数字全部确认 |
| Fiverr Q2 报道（Calcalist） | `curl`，HTTP 200 | 已打开；34% / 25% 的品类拆分只出现在这里，Fiverr 自己的公告里没有 |
| Freelancer.com FY25 年报 | 先用 `curl` 抓 PDF（8 MB），再用 `pypdf` 抽取文本 | 抽出 63 页；投标数与平均项目金额读自股东信里的图表跨页 |
| *Management Science*、CESifo、*J. Int. Econ.* | RePEc 落地页，HTTP 200 | 摘要全部打开并通读。**论文本身要付费**——见"弃用"；本章的说法来自摘要，也就是作者自己的总结 |
| WashU Olin 新闻稿 | `curl`，HTTP 200 | 已打开；2% / 5.2% / 3.7% / 9.4% 确认 |
| Robert Half 新闻稿 | `curl`，HTTP 200 | 已打开；四项调查数字与样本（2,000 多名招聘经理，2025 年 11 月实施）确认 |
| World Bank 博客 | `curl`，HTTP 200 | 已打开；703 个岗位、481 名新手、44%、翻倍与 54% 确认，包括 4.5 / 3.4 个百分点的基准率 |
| PMC 系统综述 | `curl`，HTTP 200 | 已打开；47 项纳入研究、"AI 惩罚并不稳定"这一结果与"责任承担"这个调节变量确认 |

**重建改动了章里的什么。** 打开每一个来源，才翻出下面三处更正；其中第二处值得读两遍：

1. **开头的两个 Fiverr 数字，因果顺序写反了。** 「年度活跃买家下降 21.9%……每个买家的年度支出上升
   15.6%……客户群缩了五分之一，留下来的客户花得更多」读起来像一篇关于幸存者的好消息。同一份文件显示
   平台交易营收*下降 15.5%*，原稿从未提及；而且两个买家数字都是滚动十二个月的指标，不是季度环比。这
   一段现在带上了全部三个数字，并说明它们合起来意味着什么：平台从缩小的买家盘和花得更多的买家盘那里，
   拿到的都更少了。
2. **一条保留意见里含着一个看起来有出处、其实没有出处的说法。** 「一位做这行的自由撰稿人估计，随着模型
   进步，其中大部分会在五到十年内枯竭」——无标记、无姓名、无痕迹。已删除，理由记在"降级或删去的说法"
   里。
3. **同一条保留意见把清理市场建立在"不可核实是一个机器侧的局限"上。** 这是对第 03 章那把尺子的误用，
   而且误用方向让论证变弱了。可核实性恰恰是机器*能够*廉价核对产出的那种情形——第 01 章的第一个问题，
   也是自动化降临的条件——而"人们核对不了 AI 产出"并不是同一个问题。这条保留意见现在从"缺陷被产生到
   被注意之间的*窗口*"来论证，这是读者自己可核对的，也不需要本书对某条曲线判断正确。

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|------|------|--------|------|
| 1 | `Fiverr Q2 2026 results buyers spend per buyer` | anysearch | yes | 定位到 Fiverr 投资者关系站点的公告，以及 EDGAR 上的同一份文件。引用的是 EDGAR 版本，因为那是申报文件，而不是公司自己对它的呈现。 |
| 2 | `Fiverr 2026 outlook guidance decline AI demand headwinds` | anysearch | yes | 修订后的 FY2026 区间。这一次核查值得：公告给出全年 `(17)% - (14)%`，而指引是这件事里前瞻性的那一半，不是已报告的。 |
| 3 | `generative AI freelancer job posts decrease study leading platform 21%` | anysearch | yes | 直接命中 Demirci、Hannane 与 Zhu 发在 *Management Science* 上的论文。21% 与 17%，以及本章依赖的两个发现——竞争加剧、剩下的岗位更复杂且报酬更高——全在作者摘要里。 |
| 4 | `Hui Reshef Zhou freelancer earnings decline ChatGPT Upwork 5.2%` | anysearch | yes | CESifo 工作论文。同时翻出 Olin 的新闻稿，后者复述了同样的数字并补上了研究者引语；两个都引，因为新闻稿可读，而论文不可读。 |
| 5 | `Upwork Q2 2026 GSV per active client record lower-complexity work automation` | anysearch | yes | 季报。提供了四段式拆分（GSV −4%、营收 −2%、活跃客户 76.3 万、每客户 GSV +5% 至创纪录的 5,230 美元）以及 CEO 那句"低复杂度工作"的表述。 |
| 6 | `Freelancer.com average bids per project FY25 annual report` | anysearch | yes | 导向 FY25 年报 PDF。投标数在股东信的图表跨页里，所以必须下载 PDF 抽取文本，不能当 HTML 读。 |
| 7 | `Upwork Future Workforce Index 2026 skilled freelancers share 28% 38%` | anysearch | yes | 该指数公告。也是本章*没有*放任不管的两个发现的出处：AI 增强的专业服务体量增长 72%、收入增长 22%；生成式 AI／创意生产的合约启动数增长 90%，单合约收入下降 13%。 |
| 8 | `Robert Half survey AI-generated applications slowing hiring 2026` | anysearch | yes | 该新闻稿。确认了样本量、实施时间，以及"延迟超过两周"报为 20% 这个细节。 |
| 9 | `Agrawal Lacetera Lyons standardized verified work history online contract labor less developed countries` | anysearch | yes | 2016 年 *Journal of International Economics* 论文。在 RePEc 上找到；摘要带着本章使用的三项结果。 |
| 10 | `freelancers misbeliefs low wage offers quality field experiment 703 data entry jobs` | anysearch | yes | World Bank 发展影响博客。这是对该实验最直白的描述，且由研究者本人所写，因此算第一手叙述而不是对它的报道。 |
| 11 | `systematic review AI authorship disclosure credibility trust AI penalty` | anysearch | yes | *Frontiers in Artificial Intelligence* 的综述。提供了 47 项研究，以及——真正重要的那个发现——"自动化+责任承担"与"自动化-责任承担"之间的分野。 |
| 12 | `Google Search AI Overviews reduced traffic to freelance marketplaces 2026` | anysearch | partly | 本章第三条保留意见所依赖的机制。Fiverr 自己的公告说的是"流量逆风"，没有点明原因；首席执行官把它归因于 Gemini 进入搜索，这出现在行业报道（Calcalist）里，引的是那一版。其背后的原始表述是电话会，不是文件。 |
| 13 | OpenAlex API — `generative AI freelance platform earnings`，2025 年起 | OpenAlex | yes | **重建期间实时跑的。** 286 篇。翻出三篇直接切题、章里却没有的论文：*Winners and losers of generative AI: Early Evidence of Shifts in Freelancer Demand*（Journal of Economic Behavior & Organization，2025，被引 35）、*Still Waters, Rapid Currents: Early Labor Market Transformation under Generative AI*（NBER WP 33777），以及 2025 年 HICSS 的 *AI and Freelancers: Has the Inflection Point Arrived?*。记为下一版修订的线索——见"未决问题"。 |
| 14 | OpenAlex API — `verified reputation online labor market hiring`，2020 年起 | OpenAlex | partly | **同样是实时跑的。** 6,394 篇，前两页几乎全是公司声誉和职业许可类论文——这个短语命中的文献比这个问题大得多。就本章的论证而言，没有比 2016 年那篇更好的；记为一次空结果，免得下一版重复这个查询。 |
| R1 | **重建**——重新抓取章里每一个 URL，把每一个数字回读对照引用它的那句话 | `curl` + `pypdf` | yes | 上面的 1–12 是从章的标记反推出来的；这一行才是轨迹里第一手的部分。十三个来源，十三次确认，以及搜索轨迹前面列出的三处更正。 |

## 保留的来源

十三个来源，十三个不同的 URL，对应十三个 `verified` 标记。有两个标记各自引了不止一份文件——开头的两个
数字来自同一份申报文件，按人计价的发现同时标在对该论文的机构新闻稿和作者自己写的 Brookings 文章上
——这就是标记数与下表行数不是同一个数字的原因。下表每一个来源都在重建中被完整打开过，除条目中另有
说明者。

| # | 来源 | 层级 | 支撑什么 | 在章中位置 |
|---|------|------|----------|-----------|
| 1 | [Fiverr International Ltd. — 2026 年第二季度业绩（SEC EDGAR exhibit 99.1，2026 年 7 月 29 日）](https://www.sec.gov/Archives/edgar/data/1762301/000117891326003624/exhibit_99-1.htm) | 一手（发行人申报文件） | 年度活跃买家 270 万，同比 −21.9%；每买家年度支出 368 美元，+15.6%；CEO 关于"吸收高量、低值、事务性任务"的表述；平台交易营收 6,310 万美元，−15.5%；FY2026 营收指引 3.56–3.72 亿美元，即 −17% 至 −14%；完成 1,000 美元以上项目的客户数（滚动十二个月）同比 +13% | 开头、§1、保留意见、延伸阅读 |
| 2 | [Demirci, Hannane & Zhu — *Who Is AI Replacing? The Impact of Generative AI on Online Freelancing Platforms*（Management Science 71(10):8097–8108，2025）](https://ideas.repec.org/a/inm/ormnsc/v71y2025i10p8097-8108.html) | 一手（同行评议论文，摘要已打开；全文需付费） | 与写作、编程相关、易被自动化的岗位发布量，相对同期手工密集型岗位下降 21%（ChatGPT 发布后八个月内）；图像生成模型出现后，图像创作岗位发布量下降 17%；岗位减少使自由职业者之间竞争加剧；剩下的易自动化岗位更复杂、报酬更高；降幅与公众对 ChatGPT 替代性的认知程度相关 | §1 |
| 3 | [圣路易斯华盛顿大学 Olin 商学院 — *Study: AI tools cause a decline in freelance work and income*（2023 年 8 月 24 日）](https://olin.washu.edu/about/news-and-media/news/2023/08/study-ai-tools-cause-a-decline-in-freelance-work-and-incomeat-least-in-the-short-run.php) | 二手（机构新闻稿，报道作者自己的工作论文，含直接引语） | 写作相关 Upwork 自由职业者：月度岗位 −2%，月度收入 −5.2%；图像相关从业者在 DALL·E（2022 年 4 月）与 Midjourney（2022 年 7 月）之后：月度岗位 −3.7%，收入 −9.4%；影响并未随经验更丰富、报价更高而减弱 | §1、§2 |
| 4 | [Brookings Institution — *Is generative AI a job killer? Evidence from the freelance market*](https://www.brookings.edu/articles/is-generative-ai-a-job-killer-evidence-from-the-freelance-market/) | 二手（作者本人谈自己的论文） | 同样的 2% 合约下降与 5% 收入下降，并说明研究设计（两类模型、高频平台数据）；明确写出影响在从事更高价服务的有经验自由职业者中最为显著 | §1 |
| 5 | [CESifo Working Paper 10601 — Hui, Reshef & Zhou，*The Short-Term Effects of Generative Artificial Intelligence on Employment: Evidence from an Online Labor Market*](https://ideas.repec.org/p/ces/ceswps/_10601.html) | 一手（工作论文，摘要已打开；PDF 未取得） | 高受影响职业的自由职业者就业与收入双双下降；没有证据表明由过往表现衡量的高质量服务会削弱这一影响；暗示性证据显示头部自由职业者受冲击不成比例地更大 | §1、§2 |
| 6 | [Upwork Inc. — 2026 年第二季度财务业绩（2026 年 8 月 10 日）](https://www.globenewswire.com/news-release/2026/08/10/3342306/0/en/upwork-reports-second-quarter-2026-financial-results.html) | 一手（发行人业绩公告） | GSV 9.664 亿美元，同比 −4%；营收 1.917 亿美元，−2%；活跃客户 76.3 万；每活跃客户 GSV 5,230 美元，+5%，连续第八个季度环比增长；"低复杂度的工作持续向自动化转移"这句引语 | §1 |
| 7 | [Calcalist / CTech — 对 Fiverr 2026 年第二季度业绩的报道](https://www.calcalistech.com/ctechnews/article/ryiwuedhml) | 二手（行业报道，含署名的 CEO 表态） | 平台交易营收 −15.5% 至 6,310 万美元；1,000 美元以上项目的客户数 +13%；大型编程与技术项目订单总额 +34%、图形与设计 +25%；把流量下降归因于 Google 将 Gemini 整合进搜索；疲弱集中在基础文案、简易设计和入门级编程这一品类细节 | §1、保留意见 |
| 8 | [Upwork — *Future Workforce Index 2026*（2026 年 7 月 14 日）](https://www.globenewswire.com/news-release/2026/07/14/3326964/0/en/upwork-s-future-workforce-index-2026-how-ai-is-redefining-the-value-of-work-as-skilled-freelancing-accelerates.html) | 其平台数据为一手；调查部分为二手（厂商研究，方法已披露） | 技术型自由职业者占美国知识工作者比例一年内由 28% 升至 38%；58% 的全职员工正在考虑做自由职业，上年为 36%；做复杂 AI 增强工作的自由职业者收入同比 +45%；AI 增强的专业服务体量 +72%、收入 +22%；使用 AI 的自由职业者时薪高 34%；生成式 AI 与创意生产合约启动数 +90%，单合约收入 −13% | §1、§3 |
| 9 | [Freelancer Limited — 2025 年年报（ASX，2025 年 3 月 26 日）](https://www.freelancer.com/about/investor-pdf.php?id=293558903&name=FY25_AR_PAGES+FINAL) | 一手（经审计的年报） | 每项目平均投标 54 份，同比 +8.0%；平均项目金额 413 美元，+19.4%；每个悬赏任务的参赛作品 761 份，+50.7%；集团营收 5,530 万美元，+4.1% | §1 |
| 10 | [Robert Half — *67% of HR leaders report AI-generated applications are slowing hiring*（2026 年 3 月 10 日）](https://press.roberthalf.com/2026-03-10-Robert-Half-survey-67-of-HR-leaders-report-AI-generated-applications-are-slowing-hiring) | 该调查为一手（公司自有研究，2025 年 11 月由独立研究公司实施）；该公司本身是它所描述的这个招聘市场里的当事人 | 2,000 多名美国招聘经理；67% 说审阅 AI 生成的申请拖慢了招聘；20% 报告延迟超过两周；65% 说 AI 增强的申请让技能更难核实；84% 报告 HR 工作负担加重 | §2、保留意见 |
| 11 | [Agrawal, Lacetera & Lyons — *Does standardized information in online markets disproportionately benefit job applicants from less developed countries?*（Journal of International Economics 103:1–12，2016）](https://ideas.repec.org/a/eee/inecon/v103y2016icp1-12.html) | 一手（同行评议论文，摘要已打开；全文仅限 ScienceDirect 订阅者） | 在控制了可观测特征之后，发达国家的雇主仍更不愿雇用欠发达国家的承接者；拥有标准化、可核实工作履历的劳动者更可能被雇用；这种好处不成比例地落在欠发达国家承接者身上；一个在线监控工具可以**替代**可核实的工作履历 | §2 |
| 12 | [World Bank Blogs — *Lower prices, lower chances: how misbeliefs keep freelancers out*](https://blogs.worldbank.org/en/impactevaluations/lower-prices--lower-chances--how-misbeliefs-keep-freelancers-out) | 一手（跑这些实验的研究者本人的第一手叙述） | 对来自 37 个低中收入国家的 481 名新手自由职业者的基线调查；44% 认为低于预算的报价意味着质量差；实验以新手和老手两种身份向 703 个数据录入岗位投递申请并随机化报价；低价使雇主打开申请的概率翻倍，使回电率提高 54%，而基准率分别为 4.5 和 3.4 个百分点；雇主对新手低价的反应比对手老的更积极 | §2 |
| 13 | [Licenji & Hoxha — *When news is "written by artificial intelligence": a systematic review of provenance and disclosure cues in journalism*（Frontiers in Artificial Intelligence 9:1815243，2026 年 5 月 5 日）](https://pmc.ncbi.nlm.nih.gov/articles/PMC13183635/) | 一手（同行评议系统综述，说明了 PRISMA 2020 方法） | 2026 年 2 月 2 日检索 Scopus 与 Web of Science；492 条记录，47 项具有可获取全文的研究被纳入；AI 来源线索并不对应一种稳定的"AI 惩罚"，多数可提取结果显示 AI 署名与人类署名之间没有差别；效应取决于议题、基线信任，以及是否给出了人类监督的信号；当披露暗示完全自动化、**却不**附带责任承担或监督信息时，怀疑更可能出现；关于披露线索的证据仅 10 项，且以零结果或条件性结果为主 | §2、§3 |

## 弃用

| 来源 | 为何不用 |
|------|----------|
| **来源 #2、#5、#11 背后那三篇付费论文**（*Management Science* 71(10)、CESifo WP 10601、*J. Int. Econ.* 103） | 这三篇是本章最承重的学术引用，而本章引的是**摘要**，不是论文。三处 RePEc 页面给出的都是出版方的摘要，摘要就是作者自己的总结——引它是站得住的，但它不等于读过论文。仅凭摘要无法核实的具体内容：Demirci 等人的识别策略与控制变量集合；Hui 等人"头部自由职业者"这个结果能否通过他们自己的稳健性检验（摘要本身也只是说"暗示性"）；以及 Agrawal 等人所用平台的真实身份与样本期。记录下来，是因为本章在升到 `draft` 以上之前，下一版修订应当先拿到全文。 |
| **CESifo WP 10601 的完整 PDF** | `https://www.ifo.de/DocDL/cesifo1_wp10601.pdf` 返回 3 KB 的响应，`file` 判定为 HTML 而非 PDF。取全文的另一条路（SSRN）没有尝试。未打开，未引用。 |
| **OpenAlex 命中：*Winners and losers of generative AI: Early Evidence of Shifts in Freelancer Demand***（J. Econ. Behav. Organ.，2025；DOI 10.1016/j.jebo.2024.106845，被引 35，开放获取） | 这次实时检索翻出的最有希望的东西，而它不在本章里：标题、期刊、年份、被引数都来自 OpenAlex 索引，论文本身从未打开。它可能说出一些会改变 §1 关于"是哪些自由职业者失去了需求"的叙述——"赢家与输家"恰恰是本章用平台申报文件而不是用研究来回答的那个问题。记为下一版修订第一件该读的东西。 |
| **NBER Working Paper 33777 — *Still Waters, Rapid Currents: Early Labor Market Transformation under Generative AI*** | 同样处理：找到了，没打开。NBER 工作论文通常是可打开的，所以这一条是缺口，不是墙。 |
| ***AI and Freelancers: Has the Inflection Point Arrived?***（HICSS 2025；DOI 10.24251/hicss.2025.222） | 同一次检索里找到。一篇切题程度正对本章的会议论文，未打开。宁可不引，也不凭一个标题引用。 |
| **Vanderbilt／第三方对 Hui、Reshef & Zhou 论文的摘要** | 搜索结果里出现好几篇，对同样结果给出了略有差异的表述。不用，因为本章够得着 Olin 的新闻稿和 Brookings 的文章，它们离作者更近，而且彼此不矛盾。 |
| **Fiverr 自己那份 Q2 投资者关系演示材料** | 关于一家公司某一季度的正确一手材料是申报文件，本章引的是 EDGAR。演示材料只会用更友好的排版给出同样的数字。 |
| **Freelancer.com 的悬赏参赛数（每个任务 761 份，+50.7%）** | 打开并确认过，随后从章里去掉。它是供给侧竞争论证里最强的单一数字——一年内每个任务的参赛数涨了一半——但它衡量的是*悬赏*任务，与投标数所在的固定价项目是不同的产品，把两者放进同一句话会诱导读者去做比较。§1 改用投标数与平均项目金额。如果供给侧那一段以后要扩写，这才是该加进来的数字，并且要和悬赏对应地标价。 |
| **Freelancer.com 的集团营收（5,530 万美元，+4.1%）** | 打开并确认；未使用。那是另一家公司的财务数据，而本章已经跑了三份平台申报文件分量的数字。之所以记这一行而不是记进上一节，只是因为它和那些市场指标出现在同一个跨页里。 |
| **Google／Alphabet 自己关于 AI Overview 与搜索流量的表述** | "Gemini 进入搜索"这个归因来自 Fiverr 的 CEO，经由行业报道转述，不是 Google 说的，而 Google 没有动机公布它。检索其原始版本也没有结果。因此章里是把它作为**有归属的**表述来写的（"Fiverr 自己的首席执行官把……归因于"），而不是当事实陈述。 |
| **把 Upwork Future Workforce Index 的调查部分当作独立证据** | 38%／58% 来自 Upwork 自己做的一份 2,400 人调查，和 Upwork 自己的平台数据并排放在同一份公告里。它们是厂商关于自己市场的数字——本章在 §1 里把它们当供给侧背景使用，保留意见一节也这么说了。厂商报告是定位工具，不是承重的测量。 |
| **围绕这些结果的那套"AI 抢走工作／AI 正在摧毁自由职业"叙事** | 同一批数字的头条读法。本章整个论证就是在说，这套叙事搞错了*哪一种*收入发生了移动，而上面"保留的来源"里每一个来源支持的都只是更窄的那个版本。记在这里，是为了改版时这套叙事不要溜回来。 |

## 未决问题

- **本章没有任何东西测量一位有经验的自由职业者，在核实变得更难时收入会怎样。** 那是本章的核心主张，
  而它是靠类比支撑的：2016 年那篇论文显示买家为可核实的履历付钱，2025 年那个实验显示新手误判买方如何
  读价格，2026 年那篇综述显示受众并不因为 AI 署名本身而惩罚作品。三块拼图指向同一个机制，但没有一块
  是在本章所谈的人群——2026 年的成熟自由职业者——上测量它的。本章在保留意见里承认这一点，而不是糊
  过去。
- **34% 的时薪数字与 45% 的收入数字，是不是同一个测量。** Upwork 的公告把它们作为同一段里的两个独立
  发现（时薪溢价 *vs.* 收入同比增长），却没有说明一位自由职业者怎样才被归为"在做 AI 工作"。本章只把
  45% 当作"钱往哪儿移动"的证据，从不把它当作读者可以期待的一个费率。
- **综述里那个"责任承担"调节变量，能否移出新闻业。** 那 47 项研究测量的是受众在判断*新闻*的可信度；
  本章把该发现用到客户判断一项*服务*上。机制是可信的，本章也明说了这是一次迁移——但这是全章唯一一处
  用某个领域的证据支撑另一个领域的说法。改版时值得说得更响一点，或者找到一个服务市场里的对应研究。
- **那篇 *Winners and losers of generative AI*，未读。** 见"弃用"。它是最有可能单独一篇就能强化或更正
  §1 的来源，读它是改版能做的价值最高的一件事。
- **新手盲区那条文献的边界。** World Bank 那组实验研究的是从低中收入国家进入全球市场的新手，研究者自己
  的博客也是这么框定的。那个关于低价的误信是否也适用于成熟的自由职业者，在这里读到的任何材料里都没有
  检验——而本章 §2 对它的用法（作为"价格成为兜底信号"的证据）并不取决于这个答案，所以章里把它写成机制，
  而不是写给读者的效应量。
- **Fiverr 的"流量逆风"没有一手来源。** 在"弃用"一节已经说了。章里把该说法归给说出它的人。

## 降级或删去的说法

- **任何针对判断类工作的具体费率或价位。** 本章停在"给结果定价"，把机制交给第 12 章。这是有意的：平台
  数据支持一个移动方向，却完全没有说任何个人该收多少，而在这里编一个数字会是全章最站不住的一句。
- **"AI 已经摧毁了自由职业市场。"** 头条标题邀请的那个版本，也是本章保留意见一节不得不一直顶回去的
  版本。同一个季度、同一份文件：买家下降 21.9%，每买家支出上升 15.6%。本章两个都报，并拒绝单边读法。
- **一个第一人称的"收拾烂摊子"场景，以及附着在它上面的那个研究者估计。** 本章的一个早期版本，按它
  自己的保留意见所描述，是以某人修复 AI 产出开篇的，保留意见一节也曾指向"开头那个场景"——但开头场景
  在现稿里并不存在：现稿以 Fiverr 的数字开篇，改而在 §3 的四格表里指向"收拾烂摊子"这个*市场*。更糟的
  是，那条保留意见还带着第二个完全没有出处的说法：「一位做这行的自由撰稿人估计，其中大部分会在五到十年
  内枯竭」。重建期间找不到这样一位撰稿人、这样一句引语或这样一份调查，它没有列在"弃用"里，因为它从来
  不是来源——它是一句被当成来源写出来的话。两者都已删除。这条保留意见现在只做本章真正站得住的论证
  （收拾烂摊子这个生意的多少，取决于 AI 缺陷被注意到所需要的时间，而这个窗口读者自己能量），不再说
  它有多大、也不说谁在讲它在缩小。
- **把收拾烂摊子当作一个成长故事。** §3 的表格原本把这个格子写成"真实、在增长、而且照样按小时计价"。
  "在增长"是一个关于市场规模的断言，而本章任何来源都没有测量它——没有哪个平台把修复类工作量单列为一
  个品类，这里读到的任何研究也没有统计它。改写为描述*这份工作是什么、如何定价*（这站得住），而不是
  它变得多大（这站不住）。
- **把"由人类制作"的标签当作答案。** 那个"披露能保护自由职业者价格"的直觉。那篇 47 项研究的综述说 AI
  来源线索并不带来稳定的惩罚，所以标签不是护城河，责任承担才是。§2 和 §3 都明说了这一点，也正是这个
  发现让本章标题的含义不再是"魅力"。
- **"声誉会保护你。"** 被 Hui、Reshef 与 Zhou 直接检验过，他们没有发现质量会削弱这一效应的证据，反而
  有暗示性证据显示头部自由职业者受冲击最大。§2 正是因为这一结果而存在。本章的措辞——"作者自己对结论
  的总结是……他们无法确认"——刻意比"声誉不保护你"更弱，因为那篇论文的发现是一次未能成立的确认加上
  暗示性的反向证据，而不是已被证明的反转。
- **把"平台名+数字"式的开头当作一个*全市场*断言。** Fiverr 是一家市场的一个季度，它的下降也可能是它
  自己的执行问题。本章以它开篇，但并不依赖它：后面每一家平台都独立地报告了同样的形态，而保留意见一节
  把每一家公司都点为它所描述的那个机制里的当事人。
