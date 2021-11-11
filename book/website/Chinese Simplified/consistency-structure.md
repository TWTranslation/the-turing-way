(ch-一致性结构)=
# 结构

结构是指如何组织 _诱惑路径_。 一个良好的结构框架可以确保 _Ting Way的_ 内容能够有序地呈现。

(ch-consistency-structure-hr)=
## 硬要求

涉及 _的硬性检查。正面怀的_ 结构包括：

(ch-consistency-structure-hr-emptyfiles)=
### 检查 1: 不要在 `_toc.yml 中添加空文件`

`_toc.yml` 文件是 _Ting Way的_ 内容表 (ToC) 存在的地方。 ToC 中引用的一些文件为空， 他们的包含意味着读者可以在阅读 _诱惑路径_ 时导航到一个空章(子)章。 这对读者在读书时的体验产生了不利影响。

```{figure} ../../figures/empty-toc-file.png
---
名称：空文件
备选案文：包含在Ting Way的目录表中的空文件。 读者仍然可以导航到空文件，当他们被包含在目录表中。
---
空文件包括Ting Way的目录仍然可以被读者访问。
```

一项一般性建议是从ToC中删除对此类文件的提及，并且在 _Ting Way_ Github [repo](https://github.com/alan-turing-institute/the-turing-way) 中提出一个为这些文件撰写的内容。 当内容写入时，文件可以添加到ToC。

例如， [这个问题](https://github.com/alan-turing-institute/the-turing-way/issues/1391) 管理了一个目前在 _的空文件和不完整文件列表_, 和 [此 PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) 为 `数据许可证` 子章节显示于 {ref}`图像 <empty-toc-file>` 编写内容。

(ch-consistency-structure-hr-structure)=
### 检查 2: 确保章节遵循一致的结构

_导星路径_ 由五个指南组成，包含几个章节和小章。 但是，这些章节的结构并不统一，脱离了读者的经验。

```{figure} ../../figures/recommended-chapter-structure.png
----
名称：推荐章节结构
备选案文：推荐章节的结构 各章应有一个登陆页，其中有关于先决条件和摘要的部分，以及为什么该章是有用的。 除了本章其他部分的内容外，各章还应有一份清单和一个资源分章。
---
推荐适合小路章节的结构。
```

- **登陆页面：**
    - 该章的登陆网页应包括关于理解该章所需的任何先决条件的信息， 概述该章的内容，并解释为什么该章有用。
- **分章：**
    - 一个章节可以包含任何几个小章，或者根本不包含任何小章。 不过，请注意关于清单和资源小章的下一个要求。
- **Checklist subchapter:**
    - 核对表分章逐项说明了读者根据该章提出的概念采取的行动要点。
- **资源子章节：**
    - 资源分章将读者指向其他来源，使他们能够更多地了解本章讨论的概念， 以及需要探讨的相关议题。


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
这些文件的引用应该在`_toc.yml`文件中的目录表中更新。
```

参考 [章模板](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) 来构建新的章节报告。 并使用它来评估目前的章节在 _The Tinging Way_ 中。 对于不适合此结构的章节，请提出Pull 请求。


(ch-一致性-结构-hr-toc)=
### 勾选3： 不要在章节或小章节中添加一个“内容表”。

_中的一些章节_ 是用手工制作的内容表格编写的。 然而，仍然存在着这种情况。 Jupyter 书自动生成一个永久性的目录，可以在 _左侧找到。Ting Way_ book， 以及位于每个页面右上角的具体页面表格。 这使得手工写的目录没有必要，可能会对读者在 _诱惑路径_ 方面的体验产生不利影响。

```{figure} ../../figures/many-table-of-contents.png
---
名称：多表内容
备选案文：带有三个内容表格的Ting Way 的一个子章节。 两份是由《木偶书》产生的，另一份是由本章作者制作的。
---
手动写的目录没有必要，因为木星书自动生成两个单独的目录表。
```
#### 演示模式

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-unience-structure-hr-citing)=
### 确保外部来源被正确引用和引用

{ref}`风格指南<ch-style-citing>`所述， _诱惑路径_书本引用被存储在名为 `的 BibTeX 文件中。 ib`. 在编写新内容时，确保引用来自外部来源的信息使用 BibTeX 格式并添加到 `引用。 ib` 文件适当。

{ref}`样式指南<ch-style-citing>` 演示如何添加一个新的引用到集中的 BibTeX 文件， 并显示如何将此引用包含在您的写入中。


(ch-consistic-structure-soft-req)=
## 软要求

处理 _的软要求。正在酝酿的怀的_ 结构包括：

(ch-compendency-structure-sr-summary)=
### 勾选1: 确保每个章节在其登陆页面都有一个很好的摘要

有一章作了很好的总结，使读者概述了以下内容。 理想的情况是，摘要应传达该章的主旨，并确定任何辅助性细节，但应简短和准确。 摘要还应充分参照该章的小节，以便读者能够迅速探讨摘要介绍的专题。 _中的章节_ 含有不符合这些标准的摘要，可能需要重新措辞或改写。


(ch-compendency-structure-sr-modular)=
### 勾选2: 将长篇章节分成较小的子章节, 因此它们是模块化的

一些读者可能很难通过长篇章。 此外，内容很长可能会使其他读者感到惊恐，他们只会对该章谈到的主要想法感兴趣。 因此，为了使  _诱惑方式_ 更容易阅读，长篇章节应该适当调节。

在保留章节单元时，确保其分章只谈论整个专题的一个方面。 例如，如果要为 _编写一个关于机器学习的章节_, 这样一章至少应包含三个小节，每个小节的重点是监督学习、无监督的学习和强化学习。
