(ch风格图) =
# 在 _中使用图形图形_

我们鼓励您将图像添加到 _书写章节中。。_ 。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。 样式指南的这一部分将解释如何使用 [标记结构化文本](https://myst-parser.readthedocs.io/en/latest/) (MyST) 格式将其添加到书中，并附有适当的 {ref}`备选文本<ch-style-figures-alttext>` 和 {ref}`标题<ch-style-figures-caption>`

我们非常热衷于确保原始图像文件(包括你！)的创建者已被适当地承认了 {ref}`<ch-style-figures-licence>`。 请不要使用未被许可重新使用的图像。

In this sub-chapter we have used the term **figure** to refer to an illustration that conveys information in the context of _The Turing Way_ chapters. The term **image** is used to refer to the file object itself.

(ch风格-figures-licence)=
## 开启许可证

请确保您正确地赋予图像文件属性，并避免重复使用或缺少复制权限的文件。

下面的建议将帮助您检查您是否根据他们的许可权限使用这些图像：

* 如果您正在使用自己的图像，请将它们添加到 `数字` 文件夹中。 然后将在 [知识共享属性4下提供。 国际(CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.ast) 许可证与该书的其余部分一样。
* 或者，您可以通过适当的知识共享条款获取公共域中的图片([CC0 license](https://creativecommons.org/share-your-work/public-domain/cc0))或图片。 在 CC-BY 4 下也可用的图像。 权限非常容易与 _诱惑路径_ 交互操作，因为这是与该书其他内容相同的许可证。
* 如果图像(例如您在互联网上找到的图像) 在开放许可证下不可用，请联系图像的原作者，并寻求复制他们的图像的权限。 请问他们 **他们如何想要在图表的标题中计入**。

一般而言，确保始终正确引用图像所有人指示的图像。 “来自互联网的图像”是不够的。

(ch-风格-图像)=
## 图像类型、文件名称、大小和位置

请上传 `.jpg` or `.png` 文件低于1MB 以便更快地载入在线书中。 如果您的文件大于 1MB，请使用本地图像编辑工具或类似 [IMG2GO](https://www.img2go.com/compress-image) 的在线工具来压缩您的文件。

要命名您的图像文件，请使用小写字并使用连字符分隔。 Every image file used in this book should be located in the file `_figure-list.md` in the directory `book/website/figures` of our [GitHub Repository](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). 如果您使用了一个新的图像文件，请在 `数字` 目录中添加该文件， 并在 `_figure-list中添加详细信息。 d`.

(ch-style-figures-syntax)=
## MyST 语法以将一个数字添加到 _诱惑路径_ 章节

我们的所有章节都是用Markdown文件写的。 因此，使用 Markdown 语法在Markdown 文件中包含一个数字将会正常工作，例如 `![](../…)。 figures/file-collection.jpg`, 其中图像文件的相对路径是在圆括号内提供的 '()'。

**然而，**, 此格式不允许图像对屏幕大小做出响应， 使它们无法在小屏幕和智能手机上读取。 此外，这不允许作者调整其章节中的数字，也不允许在书中的其他地方相互参照。

因此，我们的建议是使用 [标记结构化文本](https://myst-parser.readthedocs.io/en/latest/) (MyST) 格式，可在 Jupyter Book上查阅。

您可以调整数字大小来调整它们在我们章节中的显示方式： `宽度` 和 `高度` (以px值计算) 例如, 400px或 `级` (百分比值, 例如, 50%), 特别是如果你原来的数字较大。 使用参数： `name`, 您可以类似于在 {ref}`中定义的 ch-style crossref` 的方式在其他章节中引用数字。

您的图表中的所有组件(数字位置、大小和名称)都可以被封装在一个Markdown 文件中，使用以下指令：

````
``{figure} ../../figures/file-collection.jpg
----
height: 500px
name: file-collection
----
```
````
这个数字可以在其他文件中引用，使用 {ref} 个角色：

```
{ref}`文件集合`
```
Please note that a height of 500px works very well with _The Turing Way_ book, but this is only a suggestion.
(ch样式-位数)=
## 备选文本
替代文本或备用文本用于描述一个 HTML 页面上图像的外观和功能。 我们的示例数字可以用这句话来解释： *两个人很高兴地浏览文档抽屉里的文件*
增加备选案文数字是网页无障碍性的首要原则之一。 屏幕阅读器软件可以阅读一个备用文本，更好地向用户解释数字内容。
您的图表中的所有组件(图像文件位置、大小、名称、名称) 备选文本和标题) 可以用以下指令封装在Markdown文件中的章节：

````
``{figure} ../../figures/file-collection.jpg
-
head: 500px
name: file-collection
alt: 2个人高兴地浏览文档抽屉里的文件。
---
_Ting Way_ 项目示意图由 Storeria 标明。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```
````
使用alt 文本的另一个优点是当图像无法加载到浏览器中时。 或者与图像断开的链接，它将以如下图表的形式显示：

```{figure} ../../figures/alt-text-demo.png
---
名称：alt-text-demo
备选案文：两个人很高兴地浏览文件抽屉里的文件。
---
_Ting Way_ 项目示意图由 Storeria 标明。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```

当所有这些组件使用正确时，一个文件中包含的数字将会在网上书中呈现，就像在这个页面中那样：

```{figure} ../../figures/file-collection.jpg
---
高度：500px
name: 文件收藏
alt: 两个人很高兴地浏览文档抽屉里的文件。
---
_Ting Way_ 项目示意图由 Storeria 标明。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```

(ch-样式图案)=
## 标题

字幕显示在图下面。 它们应当简短，简明扼要，并提及来源地。 尤其重要的是要说明重新使用图像的许可证。

例如，标题可以说：

> 在 GitHub 上进行第一次拉取请求。 _Stereteria的 Ting Way_ 工程图示. 在 CC-BY 4.0 许可下使用。 DOI： [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。

此图像的语法如下，以及它在书中出现的方式低于代码片段。

````
``{figure} ../../figures/first-pull-request。 ng
-
height: 400px
name: first-l-request
alt: 一个人帮助另一个人在 GitHub
上第一次提出拉取请求 -
在GitHub 上提出你的第一个拉取请求
Stereteria的绘画线路项目示例。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```
````

```{figure} ../../figures/first-pull-request.png
---
高度：400px
名称：第一个拉取请求
Alt：帮助他人在 GitHub
上提出第一个拉取请求 -
在 GitHub 上提出你的第一个拉取请求
Stereteria的绘画线路项目示例。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```

请确保与源的链接是 {term}`数字对象标识符 <Digital Object Identifier>` 而不是 Zenodo 记录。 同时确认您已经使用Markdown链接格式创建了链接到源代码: `[text](url)`.

(ch样式-高级数字) =
## 高级功能和“gobchas”

欲了解更多高级参数，请参阅 [Jupyter 书文档](https://jupyterbook.org/content/figures.html)。 That page includes information on how to [scale and align](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) the figures, and how to add the figures or their captions to the [margins](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) of the book.

We've noticed a couple of "gotchas" from contributors to _The Turing Way_ and we'll try to keep this section of the guide up to date for anyone else learning the MyST syntax for figures

* `:` and `"` 和 Sphinx 都有语法含义。 这意味着重要的是你不要在你的备用文本中使用这些字符。
