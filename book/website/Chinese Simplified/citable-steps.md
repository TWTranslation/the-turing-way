(cm-citable-steps)=
# 使研究对象可采性的步骤

作者不引用他们使用的数据和软件有许多原因。 但其中一个最大的问题是，如何做得不清楚。 你可以采取几个步骤尽可能轻松地减少这个屏障。

(cm-citable-steps-object)=
## 1. 识别您的研究对象

我们要强调，我们的大多数研究对象都应该共享，以便其他研究人员能够复制和再利用。 因此，第一步是确定您将在线共享的所有研究组件。 进行开放的研究对于获取您的数据或软件的功劳并不重要。 但它使其他人能够更容易地在你们工作的基础上再接再厉，承认你们的贡献。 越来越多的证据表明，公开研究往往被引用的不仅仅是质量和重要性相等的非公开研究。

作为您研究对象的引文的一部分，重要的是发表论文以外的研究对象。 例如与您的研究相关的图像、数据、软件、协议、工作流程方法。

开始这样做的最好办法是寻找一些例子，说明哪些类型的研究物件被引用或应该被引用。 查找你学科中常见的参考研究对象有两个目的：
1. 它表明软件 & 数据是可以引用的东西；
2. 它为作者提供了一个参考和格式，他们可以直接复制并粘贴到他们的文档中。
<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
你可以在第 {ref}章`让你的研究打开<rr-open>` 和 {ref}`让你的研究FAIR<rr-rdm> `中了解更多不同类型的研究对象。
```

(cm-citable-steps-publish)=
## 2. 在线发布您的工作

网上出版物附在用于列举这些出版物的持久性标识符上。 重要的是要注意到，并非所有在线发布的都能获得独特的标识符，但重要的是研究对象要像下面描述的那样与DOI一起在线发布。

(cm-citable-steps-doi)=
### DOIs

```{figure} ../../figures/DOI.jpg
---
名称：doi
备选案文：此图像显示了顶部材料的三个框。 中间的主框有“标识符”，上面有三张磁盘，贴上“数据集”标签。 这两个方框的顶部都有日记文章。 图像顶部的箭头指向这些图像为“数字对象标识符”。 图像底部有文字表示“坚持”、“统一”、“信任”。
---
数字对象标识符或 DOIs 具有持久性、独特性和可信度。 Stereteria的绘画线路项目示例。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```

数字物体的唯一标识符或持久链接更正式地称为 [数字物体标识符或 DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier)。 使用 DOI 可以让其他人更容易引用您的数据。 降低链接旋转的风险，并且你可以跟踪你的研究如何被使用和引用。

### 提供DOI的服务器

除了这份文件之外，不同的研究对象可以在提供指定经营实体的服务器上在网上公布。 Some of these servers are [Zenodo](https://zenodo.org/) and [FigShare](https://figshare.com/) (for different objects such as figures, presentations and reports), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework (OSF)](https://osf.io/) (for different components of an open research project).

直接引用数据集或软件包是完全可能的，大多数主要出版商现在都允许在他们的风格指南中使用这种方法。 然而，它有时有助于提供一份比较常规的文件来引证，这就是软件和数据期刊的使用地。 这些期刊与方法期刊相似， 因为它们往往不包括重大成果，而是侧重于充分详细地描述数据和软件，以便能够重新使用。 其中一些例子包括：
- [Journal of Open Research Software](https://openresearchsoftware.metajnl.com/)
- [开放源码软件日记](https://joss.theoj.org/)

(cm-citable-steps-referencing)=
## 3. 添加机器可读参考信息

您可以通过允许人们将有关您的研究对象的信息导入到他们首选的参考数据库中来再进一步。 如果 [BibTeX](https://en.wikipedia.org/wiki/BibTeX) 在您的字段中很受欢迎，请发布 `ib` 文件 *所有* 你的输出(不仅仅是你的文件)。 如果 [Endnote](https://endnote.com/) 更受欢迎, 请使用 Endnote 导出. 如果您使用 GitHub 、 GitLab 或类似的 考虑在每个仓库中创建一个 `CITITATION` 文件，其中包含如何引用您项目中不同的研究结果的指南。

如果可能，请提供几种格式：您不需要经常更新这些格式，它将会付款。

```{note}
许多在线工具允许以不同格式导出研究对象引用。
例如，见[https://www.citethisforme.com/](https://www.citethisforme.com/)。
```
