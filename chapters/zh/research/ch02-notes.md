---
chapter: 2
chapter_file: ch02-youre-anxious-because-youre-using-an-old-map.md
researched: 2026-09-30
sources_kept: 5
sources_rejected: 9
---

# 研究笔记 — 第 02 章：你焦虑，是因为你在用旧地图

## 搜索轨迹

| # | 查询 | 工具 | 有用？ | 备注 |
|---|-------|------|---------|-------|
| 1 | `entry level software engineer junior developer hiring decline data 2023 2024 2025 US new grad jobs` | anysearch | 是 | 最初的线索。也浮出了那个被广泛引用的 6.1% 数字，后来证明它不可靠。 |
| 2 | `NY Fed labor market recent college graduates unemployment rate computer science data 2025` | anysearch | 是 | 找到了 6.1% 那个数字背后的原始数据集。 |
| 3 | `research study AI automation entry level jobs tasks exposed academic paper task-level exposure` | anysearch | 是 | 同时指向 Coface/OEM 的任务研究和 Stanford 的 Autor 研究。 |
| 4 | `skill obsolescence half-life technical skills depreciation research study how fast skills become outdated` | anysearch | 部分 | 学术论文（Wiley、IZA）全都要么付费要么只有 PDF。返回的反而是那个被广泛引用的"五年半衰期"数字——而追溯它的来源，比那些论文本身更有用。 |
| 5 | `technology skills half-life obsolescence report engineers skill decay years data` | anysearch | 否 | 十条结果里有九条是厂商博客或列表文章在循环引用同一个没有出处的数字。 |
| 6 | `World Economic Forum Future of Jobs Report 2025 skills disruption reskilling percentage employers` | anysearch | 否 | 找到了报告，但 weforum.org 和每一个镜像都拒绝提取。留作已知线索。 |
| 7 | `Brynjolfsson canaries in the coal mine AI entry level employment young workers study` | anysearch | 是 | 突破口。找到了 Stanford Digital Economy Lab 的修订版，数据比前面所有查询产出的都好。 |

## 保留的来源

| # | 来源 | 层级 | 支持什么 | 在章节中 |
|---|--------|------|----------|-----------|
| 1 | [Stanford Digital Economy Lab — Canaries in the Coal Mine, revised Aug 2026](https://digitaleconomy.stanford.edu/news/canariesaug26/) | 一手 | AI 暴露程度最高的职业中 22–25 岁人群：就业 −11%，最低暴露组 +10%；缺口从 15% 扩大到 19%；成文知识与默会知识的机制 | "为什么现在这件事重要" |
| 2 | [NY Fed — The Labor Market for Recent College Graduates](https://www.newyorkfed.org/research/college-labor-market) | 一手 | 6.1% 这个数字的原样发表内容及其出处 | "为什么现在这件事重要" |
| 3 | [Economic Innovation Group — the viral chart is misleading](https://agglomerations.eig.org/p/a-viral-chart-on-recent-graduate) | 二手（分析） | 6.1% 估计值的置信区间为 4–11%；就业人口比为 90% | "为什么现在这件事重要" |
| 4 | [Coface / Observatory of Threatened and Emerging Jobs — task-level exposure mapping](https://www.coface.us/news-economy-and-business-insights/new-study-reveals-which-jobs-are-most-vulnerable-to-ai) | 一手（方法论） | 923 个职业被拆解为任务；暴露集中在认知性、非例行工作上；面对面和体力工作低于 10% | "地图一：职业阶梯" |
| 5 | [Stanford HAI — David Autor on the real impact of automation](https://hai.stanford.edu/news/assessing-the-real-impact-of-automation-on-jobs) | 一手 | 暴露不等于失业；丢掉例行任务、得到专家型任务的职业变得更专门、报酬更高 | "诚实的保留意见" |

## 被拒的来源

| 来源 | 为什么没用 |
|--------|--------------|
| **softwareseni.com — "What the Data Actually Shows About AI and Junior Developer Employment Decline"** | 这在本轮之前是本章唯一的来源，也正是它引入了 6.1% 这个数字，**却没有带上置信区间**。它是对纽约联储数据的一篇二手转述，重复了那个数字，却省略了"为什么它不能在那个精度上被使用"的理由。被替换为原始数据集，再加上那份解释问题的分析。这是目前最清楚的一个案例：一个准确、却仍然误导人的来源。 |
| **Emeritus — "The Half-life of Skills"** | 打开过。它引用"世界经济论坛 2017 年的研究"来支持五年半衰期，但什么也没链接，然后用自己的算术从它外推出一个"1850 万岗位缺口"。这是一家课程供应商的营销页。记录下来，因为那个*模式*很有教育意义：一个没有出处的数字，被重复了十年，积累了它从未拥有过的权威。 |
| **World Economic Forum — Future of Jobs Report 2025** | 关于技能变化这一论断的正确来源，我本来更想用它。weforum.org、它的 PDF 托管站，以及试过的每一个摘要页，全都拒绝提取。因为打不开，所以不引用。 |
| **BLS — AI exposure categories** | 政府一手来源，完全切题。拒绝提取。 |
| **St. Louis Fed — recent college grads bear the brunt** | 同样的问题。 |
| **Wiley / IZA — "Different degrees of skill obsolescence across hard and soft skills"** | 找到的关于技能贬值最相关的学术工作，而且它直接支持地图二"技能以不同速率贬值"的论断。Wiley 版付费；IZA 版只有 PDF，提取器不支持。因此地图二建立在推理而非引用之上，章节里也照实说了。 |
| **CIO — "The incredible shrinking shelf life of IT skills"** | 拒绝提取。文中引用一位高管说"今天它可能不到两年"，那是访谈里的说法，不是一项测量。 |
| **skillflow.dev — junior developer job market statistics** | 这个陷阱的第二次出现（第 01 章研究时它也冒出来过）。摘要宣称有 20 多个数据点；该 URL 返回的是一个 LeetCode 风格的刷题平台。 |
| **Reddit / LinkedIn / Medium 上的评论** | 有几个帖子引用了 Canaries 的数字。改去了 Stanford 的原始发布。有一篇 Medium 帖子确实正确概括了论文*第一版*里的约 13% —— 这是个有用的信号，说明存在一个修订版。 |

## 悬而未决的问题

- **因果性确实没有定论，章节也照实说了。** Stanford 的作者明确表示他们的模式是描述性的、不是因果性的，
  而且控制教育变量后缺口会缩小。他们还指出 ADP 样本可能无法推广。章节报告了这个发现，但没有声称它
  解决了成因问题。
- **地图二（技能栈）没有引用。** "技能被重新定价的速度快过被学会的速度"这个论断，由来源 1 的成文/默会
  机制、以及"半衰期"文献未能产出一个可用数字这件事来支撑。它没有一项测量重新定价速率的研究撑着。
  如果 IZA 那篇论文变得可获取，这里就是它该待的地方。
- **地图三（文凭）同样没有引用。** 论证是结构性的——文凭编码的是过去核验起来昂贵的东西，而核验变便宜了
  ——但我没有找到测量文凭贬值的研究。标注出来，而不是包装一下。
- **6.1% 这一段到底该不该放进章节？** 它是个插曲，而且耗字数。留着，是因为这个插曲*本身*就是本章的论点：
  关于"地图坏了"的那个流行证据，本身是一张坏地图，亲眼看到这件事发生，比被告知它会发生更有用。

## 被降级或丢弃的说法

- **"到 2025 年，计算机专业毕业生的失业率已攀升至 6.1%"** —— 替换。改为一并呈现"这是一个被广泛转发的
  数字"这一事实，然后加上限定，而不是作为事实陈述。章节现在直说：这个数字承担不起压给它的重量。
- **"美国的初级开发者招聘急剧收窄"** —— 替换为可测量的版本（按暴露程度五等分组的 −11% / +10%），来自
  Stanford 的修订版。
- **"AI 编程助手是其中一个因素；零利率时代的终结是另一个"** —— 作为一句独立的对冲话删掉。Stanford 的
  修订版直接检验了那些替代解释并报告了哪些存活，这比我的猜测是更好的答案。
- **"AI 非常擅长那些……底层可以被廉价自动化的层级"** —— 修正。任务研究（来源 4）与之矛盾：这一波打击的
  是认知性、非例行的工作，而不是最简单的任务。比喻活了下来，机制是错的。
