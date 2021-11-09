(ch-一致性格式)=
# 格式化

格式化是指如何编写 _诱惑路径_ 书，并直接影响书的外观和演示。

_Ting Way_ 是作为Jupyter 书在线托管的，使用了他们 [文档](https://jupyterbook.org/intro.html) 中描述的格式化建议。 正确格式化确保 _诱惑路径_ 是可读、可访问的，并类似于模块化的工作。


(ch-uniency-forming-hr)=
## 硬要求

一致性清单中的硬性要求确保 _优秀方式_ 优先访问、协作、可读性和易于使用。 涉及 _Ting Way的_ 格式化的检查包括：

(ch-uniency-forming-hr-markdown)=
### 检查1：使用Markdown 来创建您的内容

_只要有可能，就应该在 [Markdown](https://en.wikipedia.org/wiki/Markdown) 中写入诱惑路径_ ，以便Jupyter 书能够像预定的那样渲染。


#### Markdown x HTML

Parts of earlier chapters in _The Turing Way_ were written in `HTML`, making some of their content hard to read.

例如， {ref}`到Markdown` 描述了一个在 `HTML` 中写入的表。

```{figure} ../../figures/html-to-markdown.png
---
名称：html到Markdown
alt：用HTML写入的格式不正确的表的截图。 这个表格被浪费在一起，而且没有一列或一列边界。 这使得读者难以解读其含义。
---
在 HTML 中写入的内容可能无法正常渲染。
```

当改装为Markdown 时，表格变得更干净，更容易做到：

```{figure} ../../figures/html-to-markdown2.png
---
名称：html-markdown2
Alt：从HTML转换为Markdown 的表的截图 当转换为Markdown时，该表更容易阅读和理解。
---
将 HTML 转换为 Markdown 使得读取诱惑路径书更加容易。
```
```{note} A PR that addresses this check can be found [here](https://github.com/alan-turing-institute/the-turing-way/pull/1460).
```

在 `HTML` 中写入的章节内容通常包含在以角度括号开始和结尾的<> `的标签中。
[W3Schools](https://www.w3schools.com/html/html/html_elements.asp) 是一个很好的资源来理解这些标签意味着什么，Markdown reference guides, such as [this cheatsheet](https://www) 。 arkdownguide.org/cheat-sheet/)，可以帮助将 `HTML` 格式翻译成Markdown。
网站上还有一些有用的工具，例如 [Turndown](https://domchristie.github.io/turdown/) 和 [CloudConvert](https://cloudconvert.com/htmlto-md)，只需单击即可将`HTML`转换为Markdown。

请注意，如果`HTML`是你想要的格式化文本的唯一选项， 您只能在仍然可以阅读和理解在线书中的内容时才能使用它(在您的 PR 中使用 Netlify 预览进行测试)。
例如，[overcript and subscripts](https://support.squarespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-abescript-and-subscript) 可以写入`HTML` ，因为它们总是按原意出现。
此外，跨越多列或行的YouTube视频和带有头部的表格等内容可以使用 `HTML` 写入。


```{attention} A Note About Styling
:class: tip

_The Ting Way_ has a [booksible stylesheet](https://github)。 Oom/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) 控制`HTML`所写内容的外观。
如果您在您的贡献中包含 `HTML` ，请确保您的格式包含相关的类和样式表中的ID。

例如，如果您想要使用 `<iframe>` 标签将YouTube 视频添加到您的内容中。 把<iframe>`作为一个`<div>`标签，然后给`div` 一个`video-container` 类，如下所示。

<div class="video-container">
    <iframe>....</iframe>
</div>

```

{ref}`风格指南<ch-style-custom-styling-videos>` 中也描述了这一点。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### 写入清单

编写新章节时 _正在酝酿的路径_您可能会包含一个核对表子章, 其中包含您想要读者根据章节内容使用的关键行动点。 对于 _的早期章节_, 此子章节是用Markdown编写的带有复选框的任务列表：

```
# 清单
- [ ] 项目一
- [ ] 项目二
- [ ] 项目三

```

然而，复选框并未按该书在线版本中显示，例如：

```{figure} ../../figures/checklist-formatting.png
---
名称：复选列表格式
备选案文：当任何章节的复选列表子章节被标记为带复选框的任务列表时， 在书的网页版中显示方括号而不是复选框。
---
复选框以方括号显示在书的网页版中。
```

因此，我们建议您在今后的报告中将核对表分章格式化为无序列表，并在其他公约后编辑更早的章节：

```
# 清单
- 项目一
- 项目二
- 项目三

```
#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-unience-forming-hr-headers)=
### 检查 2: 按顺序使用标题。

非连续标题是指头部水平增加了一个以上。 例如：

```
# 标题
### 另一个标题
```
这种增加两个顶部级别会导致在本地构建 _Ting Way_ 时发出警告。 理想的情况是，所有Markdown 文件应该以一级标题开头，并酌情相继增加：

```
# 标题
## 另一个标题
```

_中的几个文件。_ 书没有遵循这个公约。 这种文件列表可以在 [这个问题](https://github.com/alan-turing-institute/the-turing-way/issues/1321)中找到。 and [此 PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) 是一个很好的例子，说明如何修复一个非连续标题的文件。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-uniency-forming-hr-labels)=
### 勾选3：在章节、小章、小节和图像中添加标签以启用交叉引用。

一个章节往往可以从另一个章节中提及内容，以解释概念或扩大内容。 交叉引用有助于实现这一点，确保所引用的内容易于通过简单点击查找。 这有助于使 _诱惑路径_ 更易于导航和访问。

{ref}`交叉引用 <ch-style-crossref>` 在 {ref}`ch-style` 中详细讨论。 该小章解释了什么标签，提供了 _标签的 Ting Way_的命名协议， 并举出一些有用的例子，说明如何进行相互参照。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consisting-hr-images)=
### 检查 4：在图像格式中使用 `MyST`

_中的一些数字和图像。正在使用 Markdown 语法嵌入。_。。 虽然这个作品，但它不允许图像适应该书读取的设备的屏幕大小。

Markdown Text (`MyST`) 是一个触发此问题的Markdown的闪烁，它使得在 _Ting Way_ 中的响应图像成为可能。

它还允许使用标题和备选案文（ALT案文）， 这些是向使用屏幕阅读器的 _诱惑路径_ 读者大声读取的隐形图像描述。 如果没有为 ALT 文本提供图像，这些用户将无法理解图像的目的。

写入 ALT 文本时，记住：
- **描述性** - 使用图像的内容和上下文来描述图像。 在这样做时，您的描述中无需“宣布”一个图像(例如) 使用"示意图"或"画面") 因为屏幕阅读器已经这样做了。
- **保持尽可能短的** - 虽然某些图像可能需要长度描述， 最好保持尽可能短的时间。 这确保了这些描述易于理解。

请注意，包含在 _Ting 路径_ 书中的图像应该小于 1MB。 这使书载量更快，尤其是对于网络连接速度较慢的读者。

关于使用 `MyST` 格式化图像的示例，请参考 {ref}`样式指南 <ch-style-figures>` 并向它们添加ALT 文本。 何时将图像纳入您的报告中。 最好是避免高度参数，因为错误的值可能会使您的图像在移动设备上被扭曲。 当您制作PR时，您应该随时检查您的图像如何在 Netlify 预览中看到。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-一致性格式-sr)=
## 软要求

Soft requirements help improve the overall look and feel of _The Turing Way_. 一旦实施，这些检查可能不受注意，但它们也有助于使 _诱惑之路_ 成为一件已磨成的工作。 处理 _的软要求。正在酝酿的怀_ 格式包括：

(ch-一致性格式-sr-one)=
### 勾选1： 确保章节/子章节的名称较短，并准确映射它们在 `_toc.yml 中的标题`

_中的一些章节和小章节_ 与页面左边出现的全书目录中的相应引用不匹配。 对于使用者来说，这可能会引起混淆，尤其是当目录中的章节/小章的名称与小章/小章的名称大不相同时。

```{figure} ../../figures/mismatched-title-toc.png
---
名称：不匹配的标题
备选案文：其标题不同于其在目录表中的参考内容的子章节。 该小章的标题是“使用预报表作为研究数据”，但在内容表中却称为“Spreadsheets中的数据组织”。
---
本分章的标题是“使用预告式表作为研究数据” 但内容表指的是“Spreadsheets中的数据组织”相同的文件。
```

为了确保 _Ting Way的_ 内容通过这次检查，需要遵循的一条建议是保留标题。 在撰写新章节时，确保其标题较短，并在目录中具有相同的名称。 同样，在审查现有各章时，如果其标题和目录中的参考内容不同， 使这两个章节的较短标题成为章节的标题，并更新 `_toc。 如有必要，ml`

```{note}
`_toc.yml` 是指_Ting Way_live的全书目录的文件。
```

不过，请记住，最后标题应适当地告诉读者对某一章或某一小章的期望。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-一致性格式-sr-2)=
### 检查 2: 确保标题适当的标题

_中一些章节的标题_ 不使用标题。 [标题外壳](https://en.wikipedia.org/wiki/Title_case) 是一种资本化风格，用于格式化已发布作品的标题和标题。 作为寻求在 _中进行可复制的数据科学、标题和标题的个人可引用的参考资料。Ting Way_ 应该是标题。

虽然 _诱惑方式_ 并不遵循特定的标题资本化风格，但一些一般性的、非详尽无遗的规则包括：
- 使用主或重要单词
- 小写文章、连结和前置(除非有压力)
- 使用第一个和最后一个单词

有一些有用的工具，例如 [CapitalizeMyTitle](https://capitalizemytitle.com/) and [Title Case 转换器](https://titlecaseconverter.com/), 在撰写您的内容时可以用于标题栏标题。 此外， _的标题可以通过这些工具来操作_ ，以确保它们遵循标题传输公约。 然后可以在章节内并酌情在 `_toc.yml` 中替换它们。

例如，在上面的 {ref}`个不匹配的标题` 中。 **使用电子表格进行研究数据** 应命名为 **使用电子表格进行研究数据**

根据使用的背景，某些标题可能不需要头衔。 例如，由于本章的一些标题构成了核对表——它们不必打标题。

#### 演示模式

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
