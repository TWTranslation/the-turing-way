(ch-style-crossref)=

# 交叉参考章节和章节

我们建议对章节或文件使用 [Jupyter 书](https://jupyterbook.org/content/citations.html) 描述的交叉引用风格， 各章的不同内容，例如各节和各节的不同内容。

在 Jupyter 书中，标签是添加标签到您内容的部分或您以后可以参考的文件的一种方式。 这很有帮助，因为您可以在书的其他部分插入标签，而不必担心文件的相对路径或绝对路径。

在本文件中，我们提供了一些示例来描述您如何能够在书中对不同章节或部分章节使用标签。 我们还定义了 _Ting Way_ 标签的命名协议，以确保书中这些标签的位置可以通过他们的名字来确认。

## Jupyter 书中的标签

要为章节或章节/子章节添加标签，请在您想要标签的元素之前使用以下模式的语法：

```
(my-label-name)=
# 我想要标记的事项
```

您可以用以下语法插入文件中章节标签的交叉引用：

```
{ref}`my-label-name`

```

同样，您可以使用标签来交叉引用章节或分章。

详见下面的例子。

### _标签的诱惑路径_ 命名协议

We recommend using the following naming standard for labels, which will allow different authors and contributors of _The Turing Way_ to intuitively identify the locations of the files where these labels have been created.

不同章节标签的下列命名协议：

```
(sectioninitials-filename)=
```

这里, 第一个占位符 `sectioninitials` 应该被书中不同部分的初始值替换, 第二个占位符 `文件名` 应该被创建标签的文件名称替换。

对于该书的不同指南，我们将使用以下 `章节首页`：

- 可再生研究： `rr`
- 项目设计： `pd`
- 协作： `cl`
- 通信： `cm`
- 伦理研究： `er`
- Community Handbook: `ch`

例如，在指南 `可复现的研究`中，我们有一章叫做 `概述`。 我们通过使用以下指令，在标题顶部添加标签，创建了一个叫做 `rr-overview` 的标签

```
(rr-overview)=
# 概览
```

同样，对于不同的分章，我们建议用另一个位符来扩展标签，作为子章节的名称。 例如， `rrr-overview-resources` 是“可重复研究”指南(rr) 中关于“概览”章节的“资源”的标签(概览-resources)。 此标签可以通过在相应文件中使用以下指令来创建：

```
(sectioninitials-filename)=
# 资源
```

同样，对于一个小章中的不同部分，我们建议与另一个占位符扩展标签名称。 这可以由作者选择，这应该是创建标签的部分的一个简短但合理的名称。 例如， `rr-overview-resources-addmaterials` 是"可复现研究" (rr)小章“资源”中关于“附加材料”章节(概述-resources)的标签。 此标签可以通过以下指令在建议的部分名称的相应文件中创建：

```
(sectioninitials-filename-section)=
## 额外的材料
```

### 相互参照的例子

**相互参照各章和分章章节的例子**

我们将使用位于 `书/网站` 目录中的“复习研究”指南中的章节示例。

**_Case 1_**: 当您在同一文件 _中的章节被交叉引用时，_ 标签已被创建。

以上一个 `rrr-overview-resource-addmaterials`为例， 我们可以在同一文件中的一个较早的章节中使用此标签进行交叉引用 ：

```
{ref}`rr-overview-resource-addmaterial`
```

This will appear in the online book like so: {ref}`rr-overview-resources-addmaterial`.

**_Case 2_**: 当您在同一文件中引用章节 _后_ 标签已创建。

在同一小节“资源”中，我们为"进一步阅读"创建了一个标签 `rrr-overview-resources-read_`。 我们可以在同一文件中的稍后一节交叉引用：

```
{ref}`rr-overview-resource-reading`
```

这将会出现在你的章节中： {ref}`rrr-overview.review-resources-read`

**_Case 3_**: 在标签创建之前或之后, 当你在不同的文件(章节)中交叉引用章节的一部分。

在“概述”章节的小章“定义”中，我们为“重现”部分创建了标签 `rrr-overview.`

我们可以在不同的一章或一章中相互参照。 在这种情况下，让我们在“概览”章节的登陆(主页)页面使用以下内容来交叉引用：

```
{ref}`rr-overview-definitions`
```

它将会出现在你的章节中如这样： {ref}`rr-overview-definition`.

虽然我们正在为同一章(“概述”)内的小章节演示这个例子， 类似的语法可以用于书内其他章节的交叉引用。

**交叉引用章节和分章节的例子**

**_Case 4_**: 在标签创建之前或之后交叉引用不同文件中的章节或子章节(章节/子章节)。

例如，在“开放研究”章节的登陆页面中，我们创建了一个标签 `rr-open`。 我们可以在“概览”章节中的另一个小节“资源”中引用它：

```
{ref}`rr-open`
```

这将会出现在你的章节中： {ref}`rrr-open`.

虽然我们正在展示这个例子，以便在整个书中相互参照各章和分章， 同一语法可以用于在同一章中交叉引用小章。

### 为参考书提供备选标题

对于上述任何一个参考文献， 在交叉引用时，您可以通过在标签前添加标题来提供替代标题，如本示例所示：

```
{ref}`关于打开研究的章节<rr-open>`
```

这里我们给了“开放研究章节”的另一个标题， 这将出现在您的文件中： {ref}`关于开放研究的章节 <rr-open>`
