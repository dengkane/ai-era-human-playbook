# 章节（中文版）

这个目录是本书的**中文版**。它不是源文件——源文件永远是英语，在
[`chapters/en/`](../en/)。改动请先改英文，再更新译文，否则两版会分叉。

文件命名沿用英文 slug（`ch01-ai-is-not-a-tool-its-a-species.md`），不改成中文名。原因有两个：
`check-chapter.sh` 用 `ch<NN>-<slug>.md` 这个规则校验文件名，中文会直接报错；而且编号和文件名在
跨语言链接里被到处引用，改名会打断它们。

> **关于篇幅检查：** `check-chapter.sh` 用空格分词来数字数，中文没有空格，所以它会把一整章中文读成
> 几百个"词"，报出 `body is short` 警告。这是工具的已知局限，不是译文太短——这一版有意不改脚本。

## 进度

| # | 章节 | 文件 | 状态 | 译文 |
|---|---------|------|--------|------|
| 01 | AI不是工具，是物种 | [ch01-ai-is-not-a-tool-its-a-species.md](ch01-ai-is-not-a-tool-its-a-species.md) | 草稿 | 已按规范重写 |
| 02 | 你焦虑，是因为你在用旧地图 | [ch02-youre-anxious-because-youre-using-an-old-map.md](ch02-youre-anxious-because-youre-using-an-old-map.md) | 草稿 | 已按规范重写 |
| 03 | AI永远做不好的事（以及为什么那是你的护城河） | [ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md](ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md) | 草稿 | 已按规范重写 |
| 04 | 不同人群的真实处境 | [ch04-where-different-people-actually-stand.md](ch04-where-different-people-actually-stand.md) | 草稿 | 已按规范重写 |
| 05 | 上班族——从可替换的零件，到不可替代的节点 | [ch05-the-employee-from-replaceable-part-to-indispensable-node.md](ch05-the-employee-from-replaceable-part-to-indispensable-node.md) | 草稿 | 已按规范重写 |
| 06 | 创业者——为什么现在小能胜大 | [ch06-the-entrepreneur-why-small-beats-big-now.md](ch06-the-entrepreneur-why-small-beats-big-now.md) | 草稿 | 已按规范重写 |
| 07 | 自由职业者——从卖技能，到卖"你是谁" | [ch07-the-freelancer-from-selling-skills-to-selling-personality.md](ch07-the-freelancer-from-selling-skills-to-selling-personality.md) | 草稿 | 已按规范重写 |
| 08 | 学生——在AI时代选一条路 | [ch08-the-student-choosing-a-path-in-the-age-of-ai.md](ch08-the-student-choosing-a-path-in-the-age-of-ai.md) | 草稿 | 已按规范撰写 |
| 09 | 中途换赛道的人——你的判断力就是资产 | [ch09-the-mid-career-switcher-your-judgment-is-the-asset.md](ch09-the-mid-career-switcher-your-judgment-is-the-asset.md) | 草稿 | 已按规范撰写 |
| 10 | 找到你和AI各自该站的位置 | [ch10-finding-your-human-ai-collaboration-point.md](ch10-finding-your-human-ai-collaboration-point.md) | 草稿 | 已按规范撰写 |
| 11 | 上下文工程（不只是写提示词） | [ch11-context-engineering-beyond-prompt-writing.md](ch11-context-engineering-beyond-prompt-writing.md) | 草稿 | 已按规范撰写 |
| 12 | 一人公司的操作手册 | [ch12-one-person-business-playbook.md](ch12-one-person-business-playbook.md) | 草稿 | 已按规范撰写 |
| 13 | AI时代的元技能：品味、提问、综合、共情 | [ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md](ch13-meta-skills-for-the-ai-era-taste-questioning-synthesis-empathy.md) | 草稿 | 已按规范撰写 |
| 14 | 从"上班"到"自己干" | [ch14-from-employed-to-self-employed.md](ch14-from-employed-to-self-employed.md) | 草稿 | 已按规范撰写 |
| 15 | 自己判断AI工具（因为本书的工具矩阵迟早会错） | [ch15-judging-ai-tools-for-yourself.md](ch15-judging-ai-tools-for-yourself.md) | 草稿 | 已按规范撰写 |
| 16 | 当AI能生成一切，创造力是什么 | [ch16-creativity-when-ai-can-generate-everything.md](ch16-creativity-when-ai-can-generate-everything.md) | 草稿 | 已按规范撰写 |
| 17 | 数字世界里的关系与社区 | [ch17-relationships-and-community-in-a-digital-world.md](ch17-relationships-and-community-in-a-digital-world.md) | 草稿 | 已按规范撰写 |
| 18 | 重建意义 | [ch18-rebuilding-meaning.md](ch18-rebuilding-meaning.md) | 草稿 | 已按规范撰写 |

「译文」列记录的是这一章的中文**表达**有没有按[翻译约定](#翻译约定)重做过一遍——它和「状态」是两回事：
状态管的是审校和事实核查，译文管的是读起来像不像中文原创。重写不改动事实、标记和结构，所以两列互相
独立。

其余章节（19–21）尚未写出，见[英文版索引](../en/README.md)。

## 状态图例

| 状态 | 含义 |
|--------|------|
| **待翻译** | 英文版已存在，中文版还没有 |
| **草稿** | 有初稿。未经审校、未做事实核查。不要引用 |
| **审阅中** | 人工编辑并核查过。接受 PR 和勘误 |
| **稳定** | 锁进当前发布版。改动需要先开 Issue |

## 研究笔记

每一章在 `research/ch<NN>-notes.md` 有一份研究笔记，和章节一起提交，记录实际跑过的搜索、保留的
来源，以及——最有价值的那部分——**找到但弃用的来源，以及为什么弃用**。译文保留了这一记录。

第 07 章是个例外，得说明一下：它的英文稿先于研究笔记写成，笔记是事后重建的。中文版如实保留了这一段
历史，见 `research/ch07-notes.md` 的「框架说明」。

## 翻译约定

分两部分：先说**怎么写**（译文的目标），再说**不能动什么**（校验和事实核查的底线）。

### 写译文的立场：像中文原创，不像译文

译文的合格线不是"没有错译"，而是**读起来不像译文**。判断标准只有一条，可以在不自欺的前提下问
自己：一个中文读者，在不知道有英文原稿的情况下读这一章，能不能看出这是翻译过来的？

中文版要能独立成立，不是因为中文比英文好，而是因为读者是中文读者：**他们付钱买的是中文，不是对
英文的忠实度。** 忠实于英文的句子结构，是对读者的不忠实。

具体到这本书的写法（这本书的文体就是"一个聪明的朋友在跟你解释事情"，快、直白、允许刻薄）：

- **拆句。** 英文靠从句和破折号把三四个意思挂在一个句子上；中文一句最多放一个意思。原文一句，
  译文常常是两到三句。
- **破折号是稀缺资源。** 英文原稿每千词有 13–16 个 `—`，中文照搬就成了每千字 6–9 个 `——`，
  远高于中文散文的常态，读起来像在喘气。改用冒号、句号、括号、或者干脆断成两句。**每千汉字
  不超过 3 个 `——`。** 校准标准是：不要留下"英文原文这一句有一个破折号"的痕迹。
- **少用"被"。** 英文的被动语态在中文里十有八九要翻成主动或者无主句。"它被设计成…" → "它本来就是
  用来…的"；"这个判断被到处转发" → "到处都在转这个判断"。
- **`的` 不超过两个连用**，且避免 `……的……的……的……` 这种把定语一层层摞起来的结构。
- **少用普通读者不会说的翻译体词**：`张力`、`内化`、`行动化`、`预设`、`商品化`、`可核实`。能换成
  `矛盾`、`记住`、`能照着做`、`默认`、`变得不值钱` 就用换的。**注意区分：** 专业术语（`护城河`、
  `轨迹`、`判断力`）该留就留，它们在全书中反复出现；要换掉的是那些只为对应英文单词、中文里却没人
  这么说的词。
- **英文修辞手法不当字面直译。** `This is something you sit next to` 直译成"这个是你会坐在旁边的
  东西"没人看得懂；译成"这个东西，你得天天挨着它坐"才对。原文的动作和意象要保住，句子结构不必。
- **这不是改写英文。** 论证、例子、段落顺序、小标题一律不动。译文的意义就是原文的意义，错译是
  错误，不是风格问题。

### 术语表

同一概念全书用同一个词，跨章漂移读者会以为是两回事。（已发现的实例：`verifiable` 在 ch01 译成
"可验证"，在 ch07 译成"可核实"——同一个词，两个译法。）

| 英文 | 中文 | 备注 |
|---|---|---|
| trajectory | 轨迹 | ch01 的核心隐喻，全书统一 |
| moat | 护城河 | 已在 ch03 标题中使用 |
| judgment | 判断力 | |
| accountability | 责任 / 可被追究 | ch07 的关键论点 |
| taste | 品味 | ch01、ch05、ch07 共用 |
| leverage | 杠杆 | |
| structural | 结构性 | 本书判断技术限制能否被"决定掉"的核心词，见 AGENTS.md |
| verification / verify / verifiable | 验证 | ch03 的核心概念。曾散成三个译法（ch01「验证」、ch03「核验」、ch07「核实」），现在统一 |
| honest caveats | 诚实的保留意见 | 小标题，见下 |
| Do this today | 今天就开始 | 小标题，见下 |

### 不能动的东西

- **`<!-- verified -->` 标记原样保留，URL 不动。** 它们是事实核查的凭证，换掉 URL 就等于伪造凭证。
  **每章的标记条数和 URL 必须和英文版逐条一致**，译文不是重新核查，是照搬。
- **页脚保留英文原样。** `📅 Last updated:` / `🤖 Assisted by:` / `✍️  Edited by:` / `⚠️` 四个标记
  是 `check-chapter.sh` 按字面校验的，翻译它们会让校验失败。
- **两个固定小标题译成固定中文**：`## The honest caveats` → `## 诚实的保留意见`，`## Do this
  today` → `## 今天就开始`。正文小标题（各节的论证标题）**要译**，而且要译得像中文标题，不是
  英文标题的换词。
- **英文示例和代码标识符不译、不改大小写**（`SWE-bench`、`GPQA`、`MMLU`、`codex`、`o3`）。
- **搜索关键词保留英文。** 它们记录的是实际跑过的查询，改掉就无法复现。
- **章节编号在发布后固定。** 编号在文件名里、在正文的交叉引用里、在公开链接里。已发布的章节保持
  编号不变——改范围就改标题和位置。尚未发布的章节，编号仍属计划，可以调整。

### 交稿前的自检

1. `./scripts/check-chapter.sh chapters/zh/<文件>.md` —— 0 errors。（它一定会为 `body is short`
   报警告，中文没有空格，见本节开头的说明。）
2. 标记条数对得上：`grep -c '<!-- verified'` 中英两版一致。
3. 数字本地化：`17.5 万` 而不是 `17.5万`；`5,230 美元`；`4.4%`；`84%`。
4. `grep -o '——' <文件> | wc -l` 不超过该章汉字数的千分之三。
5. 通读一遍，只问一个问题：**有没有哪一句，是因为英文那么写，中文才这么写的？** 有就改。
