(ch-componency)=
# 保持一致性

_诱惑方式_ 是一个开放源码项目，它使世界各地的贡献者能够利用他们的技能。 建立和扩大其内容所需的知识和专门知识。 _导星路径_ 指南正在不断演变。 与来自不同背景的个人共同开发的多个章节――他们都热衷于围绕数据科学和研究分享知识。 为了维持和支持这个充满活力的社区， _正在前进的道路_ 书应该保持连贯性和可访问性。
{ref}`ch样式` 章节已经为整个书中保持一致风格提供了指导方针。 然而，并非所有章节都遵循这些建议，因为它们往往是由不同的作者异常写成的。 Reviewing consistency across _The Turing Way_ alone is reasonably challenging. This points towards a need to encourage and support our contributors to maintain consistency throughout the chapters in _The Turing Way_ guides. 因此，本章将概述一份逐步一致的核对清单，用以指导我们的贡献者。 Each step will emphasize a consistency check to look out for as they design and develop chapters in _The Turing Way_ or bring consistency to existing chapters.

(ch-一致性要求)=
## 硬对软要求

一致性清单中的项目分为硬要求和软要求。 硬性要求是必要的一致性检查，必须经过一章才能使 _Ting Way_ 在没有错误的情况下构建。 此外，它们使该章可以读取，人人都可以查阅。

另一方面，软性要求是一章应通过的对一致性的适当检查。 这些检查大大提高了书的整体外观和感受，但如果不能融入你的贡献，这些检查就可以安全地被忽略。 您总是可以返回查看您过去的贡献并提升他们的内容。

An overview of these requirements is itemised {ref}`below <ch-consistency-requirements-checklist>`. 为便于描述，这些一致性检查按格式、结构和语言分类。 各分章更详细地解释了这些问题，并说明了如何能够实现这些目标。

```{important} Please note that these requirements are not exhaustive or definitive, and neither are their classifications rigid.
此外，没有任何物品本质上比其他物品更重要。

如果您发现更多需要解决的一致性问题，请加入对话 [here](https://github.com/alan-turing-institute/the-turing-way/issues/1174)。

```

```{figure} ../figures/theturingway-consistency.jpg
---
高度：400px
名称：剧情线路一致性
Alt：此示例显示了一个楼梯图案，以保持具有三个支柱-格式化的一致性。 结构和语言。 有一人正在指导两个新的捐助国。
---
保持一致性的路径。 Stereteria的绘画线路项目示例。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```

(ch-consisty-requires-checklist)=
### 一致性清单

#### 格式化

| 请求  | 搜索                                                                                               |
| --- | ------------------------------------------------------------------------------------------------ |
| 难度: | 使用 Markdown 创建您的内容(见此 [WordPress 作弊板](https://wordpress.com/support/markdown-quick-reference/))。 |
| 难度: | 按顺序使用标题。 例如，以h1标签 `#`为起点，以h2标签 `#` 为起点的二级标题。                                                     |
| 难度: | 向章节、分章和图像添加标签以启用 {ref}`样式指南中描述的交叉引用<ch-style-crossref>`                                    |
| 难度: | 使用 `MyST` 来格式化在 {ref}`样式指南<ch-style-figures>` | 使用尺寸小于1MB 的公共域图片，并适当引用。                    |
| 软体  | 确保章节/子章节的名称较短，并准确映射它们在 `_toc.yml` 中的标题                                                           |
| 软体  | 确保头部的适当标题 | 将每个头部的第一个、最后一个和重要的词大写；例如“雪白和七个战士”。                                                   |


#### 结构

| 请求  | 搜索                                                                                                                       |
| --- | ------------------------------------------------------------------------------------------------------------------------ |
| 难度: | 确保章节遵循新的 [章节模板](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) 描述的结构 |
| 难度: | 不要在章节或分章中添加一个“内容表”，因为它是由木星书自动生成的                                                                                         |
| 难度: | 确保外部源被正确引用并包含在集中的 BibTeX 文件中，如 {ref}`样式指南<ch-style-citing>`                                                        |
| 难度: | 不要在 `_toc.yml`中添加任何空文件，而是为新章节创建一个问题                                                                                      |
| 软体  | 确保每一章在其登陆页面上都有一个很好的摘要以及与各小节的链接。                                                                                          |
| 软体  | 将长篇章节分成较小的小章节，使其成为模块。                                                                                                    |


#### 语言

| 请求  | 搜索                                             |
| --- | ---------------------------------------------- |
| 难度: | 确保章节不使用 {ref}`样式指南<ch-style>中讨论过的任何拉丁缩写` |
| 难度: | 在1-2名审核员的帮助下，确保整个书中正确的语法和一致的音调                 |
| 难度: | 确保章节使用前后一致的语言，例如，如果您选择用英格兰书写，则保持这段时间           |

These checks are further explained in the {ref}`Formatting<ch-consistency-formatting>`, {ref}`Structure<ch-consistency-structure>`, and {ref}`Language<ch-consistency-language>` subchapters.
