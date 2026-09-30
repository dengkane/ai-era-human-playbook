# 章节（中文版）

这个目录是本书的**中文版**。它不是源文件——源文件永远是英语，在
[`chapters/en/`](../en/)。改动请先改英文，再更新译文，否则两版会分叉。

文件命名沿用英文 slug（`ch01-ai-is-not-a-tool-its-a-species.md`），不改成中文名。原因有两个：
`check-chapter.sh` 用 `ch<NN>-<slug>.md` 这个规则校验文件名，中文会直接报错；而且编号和文件名在
跨语言链接里被到处引用，改名会打断它们。

> **关于篇幅检查：** `check-chapter.sh` 用空格分词来数字数，中文没有空格，所以它会把一整章中文读成
> 几百个"词"，报出 `body is short` 警告。这是工具的已知局限，不是译文太短——这一版有意不改脚本。

## 进度

| # | 章节 | 文件 | 状态 |
|---|---------|------|--------|
| 01 | AI不是工具，是物种 | [ch01-ai-is-not-a-tool-its-a-species.md](ch01-ai-is-not-a-tool-its-a-species.md) | 草稿 |
| 02 | 你焦虑，是因为你在用旧地图 | [ch02-youre-anxious-because-youre-using-an-old-map.md](ch02-youre-anxious-because-youre-using-an-old-map.md) | 草稿 |
| 03 | AI永远做不好的事（以及为什么那是你的护城河） | [ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md](ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md) | 草稿 |
| 04 | 不同人群的真实处境 | [ch04-where-different-people-actually-stand.md](ch04-where-different-people-actually-stand.md) | 草稿 |
| 05 | 上班族——从可替换的零件，到不可替代的节点 | [ch05-the-employee-from-replaceable-part-to-indispensable-node.md](ch05-the-employee-from-replaceable-part-to-indispensable-node.md) | 草稿 |

其余章节（06–21）尚未写出，见[英文版索引](../en/README.md)。

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

## 翻译约定

- **`<!-- verified -->` 标记原样保留，URL 不动。** 它们是事实核查的凭证，换掉 URL 就等于伪造凭证。
- **页脚保留英文原样。** `📅 Last updated:` / `🤖 Assisted by:` / `✍️  Edited by:` / `⚠️` 四个标记
  是 `check-chapter.sh` 按字面校验的，翻译它们会让校验失败。
- **搜索关键词保留英文。** 它们记录的是实际跑过的查询，改掉就无法复现。
- **章节编号在发布后固定。** 编号在文件名里、在正文的交叉引用里、在公开链接里。已发布的章节保持
  编号不变——改范围就改标题和位置。尚未发布的章节，编号仍属计划，可以调整。
