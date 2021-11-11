(rr-licensing-compatibility)=
# 许可兼容性

如果您在程序中使用多个外部组件，那么您可能最终会对合并工作的许可证产生多个不同的限制。 如果这些制约因素发生冲突，那么您就不能合法地分发结果(如果涉及专利软件)。 因此，你可能在法律上根本无法完成这两项工作)。

如果两个许可协议指定了不兼容的混合工作许可限制，那么它们是 _不兼容的_。

例如，GNU GPL与专有许可证不兼容： 因为它要求合并工作必须在 GPL 下许可，但不允许附加限制。 持有专有许可证的部分作品是这种额外的限制， 所以您不能发布这种组合(除非GPL代码的版权所有者给予特殊的权限)。

当你使用不同的软件一起解决一个问题时， 并想要分发结果。这里是您必须回答的问题：

- 哪种不同的工作是在那里进行的，什么是从什么中得出的？
- 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？
- 如何授予作品许可证？

下一节举例说明了如何做到这一点。

(rr-licensing-compatibility-exampes)=
## 示例：

本节中的许多示例涉及 [xtas](http://xtas.net)。 xtas 是 Python 的一个天然语言处理工具包，它会重新使用许多第三方库， 程序和数据集，因此提供了各种出色的例子。

```{figure} ../../figures/xtas-overview96.png
---
名称：xtas-overview.96
 一个大的矩形代表合并工作的 xta。 在这个矩形中，顶部有一个低方形，代表了由 Apache License v2 授权的 xtas Python 代码。 在这种情况下，有三个旁边的方块，分别代表Python图书馆、软件和数据被xtas使用。 Python图书馆广场内有三个盒子。 第一个方框包含“BSD”、“MIT”和“ALv2”等词语。 第二个方框包含“LGPLv2.1”。 第三个方框包含"GPLv2+"。 在软件广场内有四个盒子。 第一个框包含"网页服务"。 第二个方框包含"LGPL v2.1+"。 第三个方框包含“仅研究”，第四个方框包含“GPL 2+/3+”。 数据方框还包含四个方框。 第一个方框包含"CCBY-SA 3.0"。 第二个方框包含“只研究”。 第三个方框包含“无许可证，美国”，第四个方框包含“仅适用于CoNL'02”。
---
xtas的图形概述。
```

xtas 本身是用Python写的，它使用了一些Python库，这些库是使用共同的免费许可证授权的。 这些包括简单的 BSD 和 MIT 许可证，允许的 Apache 许可证版本 2。 （ALv2）、GNU 较低一般公共许可证版本2.1（LGPLv2.1）和GNU 通用公共许可证版本2或更高版本（GPLv2+）。

(请注意，对 GPLv2+ Python 库的依赖已经废弃， 但为了这些例子，我们将假定仍然存在。)

xtas的 Python 代码在 Apache 许可版本 2.0 下分发。 既然xtas作者拥有版权。 他们可以以他们喜欢的任何方式许可它(尽管对GPL依赖关系有灰色区域, 见下文)。 xtas 作者不分发任何合并作品或二进制作品，但在下面的示例中 我们将假定有一项联合工作，以便我们能够考虑如何才能获得许可。

在下面的例子中，我们将简化其中大部分内容，依次看待一种或几种依赖关系。

(rr-licensing-compatibility-examples-apachevsbsd)=
### Apache 与 BSD

```{figure} ../../figures/xtas-snowball96.png
---
名称：xtas-snowball96
alt: xtas vs. Snowball的示例.  一个大的矩形代表合并工作的 xta。 在这个矩形中，顶部有一个低方形，代表了由 Apache License v2 授权的 xtas Python 代码。 下面是一个正方形，包含“雪球钢铁”和“Python lib BSD”。
---
是 xtas 和 Snowball的示例。
```

xtas 使用 [雪球](https://snowballstem.org/), 一个基于 Python 的根库。 雪球是在三个条款BSD 许可证下发布的。 只考虑到xtas和Snowball，我们可以回答以下三个问题：

#### 哪种不同的工作是在那里进行的，什么是从什么中得出的？

有三个作品：雪球、xtas Python 代码和合并工作 xta。 综合工作来自Snowball和xtas Python代码，这两者都是独立的工作。

请注意ALv2和LGPL v2。 明确声明原本打算与图书馆结合使用的源代码不是衍生作品。 而双进制(静态或动态) 将块连接在一起则是。 包括GPL在内的其他许可证没有对此作出任何明确说明。

据我所知，没有这方面的判例法；我们将假定这些例子是如此。

#### 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？

Snowball是在许可的许可下许可的。 它可以在该许可证下重新分发，衍生作品的许可证没有任何限制。 xtas 作者可以以他们想要的任何方式授权它。

#### 如何授予作品许可证？

xtas Python 代码和 xtas 合并工作是在 Apache 许可协议v2.0 下许可的。

如果xtas 作者重新发行雪球，他们必须使用Snowball作者颁发的 BSD 许可证这样做。 (他们不能授予Snowball更多的权限，因为他们并不拥有版权，出于同样的原因，其他限制将无法执行。)

(rr-licensing-compatibility-examples-apachevslgpl)=
### Apache 与 LGPL

```{figure} ../../figures/xtas-chardet96.png
---
名称：xtas-chardet96
alt: xtas vs. chardet 示例. 一个大的矩形代表合并工作的 xta。 在这个矩形中，顶部有一个低方形，代表了由 Apache License v2 授权的 xtas Python 代码。 下面是一个包含“chardet”和“Python lib LGPLv2.1”字样的正方形。
---
是 xtas 和 chart 示例的示例。
```

xtas 使用 [chardet](https://pypi.org/project/chardet/), 一个 Python 库用于检测文本字符集。 此图表在 GNU 较低一般公共许可证v2.1下发布。 只考虑到xtas和xtage，我们可以回答以下三个问题。

#### 哪种不同的工作是在那里进行的，什么是从什么中得出的？

有三个作品：图表、xtas Python 代码和合并工作。 合并工作来自字符串和 xtas Python 代码。 其他是独立的工作。

#### 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？

Chardet是使用软弱的左边许可证授权的，所以它可以根据该许可证的条款重新分配。 衍生作品可以根据任何许可授予执照。 然而，LGPL v2.1要求收款人可以(并被允许)修改图书馆，并用衍生作品使用经修改的图书馆。

#### 如何授予作品许可证？

整个xtas 和 xtas Python 代码可以被作者以任何方式授权，因此他们使用Apache License v2.0 如果他们发行钱，他们必须按照其版权所有人颁发的LGPL v2.1许可证这样做。

(rr-licensing-compatibility-examples-apachevsgplv2)=
### Apache 与 GPLv2

```{figure} ../../figures/xtas-unidecode96.png
---
名称：xtas-unidecode96
alt: xtas vs. unidecode 示例. 大长方形代表合并工作 xtas。 在这个矩形中，顶部有一个低方形，代表了由 Apache License v2 授权的 xtas Python 代码。 下面是一个正方形，包含“unidecode”和“Python lib GPLv2+”。
---
是 xtas vs unidecode 示例的示例。
```

xtas 先前使用 [unidecode](https://pypi.org/project/Unidecode/), Python 库，用于转换以 Unicode® Standard into a ASCII 近似值。 Undecode 发布在 GNU 通用公共许可证第2版或以后版本(GPLv2+)。 只考虑到xtas和unidecode，我们可以回答以下三个问题。

#### 哪种不同的工作是在那里进行的，什么是从什么中得出的？

有三项工作：unidecode、xtas Python代码和合并工作。 综合工作产生于Unidecode和xtas Python代码。

xtas Python代码是否是Unidecode的衍生作品，法律没有明确界定。 而且没有这方面的判例法。 Apache许可和LGPL明确声明它不是为了这些许可目的： 但GPL没有载有这样的条款。

由于它们是单独开发的，而且在xtas代码中没有来自unidecode的代码， 我们在这里认为，这不是一项衍生的工作。

#### 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？

Undecode 是使用强大的复制左边许可，因此它是根据该许可条款重新分配的。 衍生作品必须在同一许可证下领取执照。

Undecode 是在 GPL 版本 2 或更高版本下授权的。 这被称为 _禁用许可证_。 Unidecode的版权所有者向每个人提供GPLv2许可，但也提供GPLv3许可， 甚至主动地将来可能创建的 GNU GPL 的任何以后版本。 潜在的用户可以选择接受其中的任何一项许可， 如果他们想要复制作品或制作衍生物作品，或者它们的组合。

#### 如何授予作品许可证？

如果xtas 作者分发了unidecode，他们应该在GPL 2或更高版本下分发， 因为任意从别人的代码中删除许可证是没有道理的。 合并工作xtas必须以同样的许可证或其中的一个子集进行分配。 xtas Python 代码可以以他们想要的任何方式被授权使用。

xtas 作者应选择一个 xtas Python 代码的许可证，这种代码与至少一种许可证兼容，这种许可证可以根据Unidecode 进行分发，以便他人能够组装和分发合并的作品。 ALv2兼容GPLv3(但出于技术原因不符合GPLv2)，所以他们可以在这里使用。

然后应以第三版GPL颁发许可证。 如果重要的是，它也可以在GPLv2下使用， 然后xtas 作者可以通过 ALv2 和 GPLv2 授权的 xtas Python 代码(意思， 他们提供两种许可，用户可以选择接受其中一种或两种方式，并提供GPL版本2或更高版本的合并工作。

最后，可以稍后决定，xtas Python 源代码是Unidecode的衍生作品，因为它被调用。 即使工作中没有任何未列入的未列入化学品， 然后，xtas 作者必须在至少一种GPL 许可证下发布的 xtas Python 代码。 在这种情况下，他们可以根据ALv2和GPLv2+一套许可证提供xtas。

在这种情况下，最简单的解决办法是简单地授权xtas Python代码和由此产生的GPLv3下的工作。

现在可能已经很清楚。 如果你想让人能够根据你的软件制作专利作品，那么你的依赖关系会使你的生活更加复杂。

(rr-licensing-compatibility-examples-apachevsall)=
### Apache vs BSD vs LGPL vs GPL

```{figure} ../../figures/xtas-all-python-libs96.png
---
名称：xtas-all-python-libs96
Albt：xtas和所有 Python 库的示例说明。 一个大的矩形代表合并工作的 xta。 在这个矩形中，顶部有一个低方形，代表了由 Apache License v2 授权的 xtas Python 代码。 下面有三个正方形。 第一个方块包含"雪球"和"Python lib BSD"。 第二个方块包含“chardet”和“Python lib LGPLv2.1”。 第三个方格包含“unidecode”和“Python lib GPLv2+”。
---
是xtas和所有 Python 库的示例。
```

现在，我们将同时审议上述所有三个例子。

#### 有多少工作独立？ 从什么中得出什么结果？

有五个作品：雪球、图纸、未命名、xtas Python 代码和xtas 合并工作。 这项综合工作源自其所有组成部分。

#### 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？

四个非xtas组件属于免费软件许可证，xtas作者拥有xtas Python代码的版权。 这样，所有五个组件都可以由 xtas 作者分发。 BSD, LGPLv2。 和 GPLv2+ 都允许对 GPL 版本 2 或更高版本的合并工作进行许可， 所以至少有一份许可协议可以在下面授予合并工作。

#### 如何授予作品许可证？

xtas Python 代码应该在 Apache License v2 下和GPL 3或更高版本下的合并工作授权使用。 (备选案文请参阅上面的 {ref}`Unicode 示例 <rr-licensing-compatibility-examples-apachevsgplv2>`。)


### 呼叫外部程序

xtas 可以运行 [Stanford CoreNLP 程序](https://stanfordnlp.github.io/CoreNLP/)，它是在 Java 中写的，并且在 GNU GPL 版本 3 或更高版本下分发。 当用户调用对应的 xtas 函数时，CoreNLP 由 xtas： 用户的输入通过管道发送给它，然后将CorenLP的输出交还给用户或进一步处理。

```{figure} ../../figures/xtas-corenlp1-96.png
---
名称：xtas-corenlp1-96
alt: xtas 与 CoreNLP 示例的图示. 方形代表合并工作xta。 在这个正方形中，顶部有一个低方形，代表了在 Apache License v2 下许可的 xtas Python 代码。 下面是一个正方形，其中包含"Stanford CorenNLP"和"Java program GPLv3+"。
---
是 xtas 与 CoreNLP 示例的示例。
```

对这种情况的一种解释是，它与在图书馆中调用一个函数没有什么不同，而且任何xtas的分发， 因此，包括科雷尼尔民主党在内的整个国家都应置于GPLv3+之下。 如果需要，xtas将自动下载并安装 CoreNLP ，这有助于这种解释。

```{figure} ../../figures/xtas-corenlp2-96.png
---
名称：xtas-corenlp2-96
备选案文：另一个 xtas 与 CoreNLP 示例。 左侧的方形代表合并工作xtas。 在这个正方形内有一个长方形代表了在 Apache 许可协议v2 下许可的 xtas Python 代码。 右侧是一个代表CorenNLP的单独方形，其文字是“Stanford CorenNLP”和“Java program GPLv3+”。 两个正方形之间有两条箭头，一条是从xtas到CorenNLP的顶部，另一条是从CorenLP到xtas的底部。
---
另一个 xtas 与 CorenNLP 示例。
```

另一种解释是，xtas和CoreNLP是分开的工作，xtas只是就其标准用户界面与CorreNLP联系。

在这个解释中，xtas是一个帮助用户使用Python语言的 CoreNLP 程序的单独程序。 而不是CorenLP的衍生作品。 我们可以在这里考虑类似于包安装程序和命令外壳的xtas。 它们显然不是他们安装的包或他们启动的程序的衍生作品。

根据这一解释， xtas 整体(不包括CoreNLP)可在任何特定许可证下分发(但须受其他依赖方的限制)。

实际上，xtas作者根本没有分发CorreNLP。他们只是发行Apache License 第二版的 xtas Python 代码。


### GPLv3与专有许可证

在这个示例项目中，我们想把 [OpenIFS 全局循环模型](https://confluence.ecmwf.int/display/OIFS) 与 [DALES 大编辑模拟模型](https://github.com/dalesteam/dales) 结合起来。 这两种模型都可以作为图书馆使用，所以该项目需要将OpenIFS 和 Dales 图书馆合并为一个程序。

（这是一个简化的例子，这个项目的现实是一个或两个更复杂的节点。） 下面不是我们所做的。)

OpenIFS 库(ECMWF 天气模型代码的一部分)是一个专有许可证，允许运行程序和私下修改， 但不允许分配程序或任何衍生品。 DALES 发布于GPL版本3。

#### 有多少工作独立？ 从什么中得出什么结果？

有四种作品：OpenIFS，DALES，我们编写的程序的其余部分，以及所有这些作品的组合。 综合工作源自其构成部分。

#### 能否分发衍生作品？ 许可证是否允许这样做，它们是否兼容？

OpenIFS 许可证不允许重新分发，所以无法分发。 DALES 可在GPLv3下分发。 程序的其余部分由我们撰写，如果我们想要，我们可以领取许可证。

整个合并工作无法分发，因为它包含OpenIFS。 如果它不包含 OpenIFS ，它就必须在 GPLv3 下分配，因为它依赖于DALES 。

#### 我们能够私下工作而不分发任何东西吗？

GPL允许对其所覆盖的软件进行私下修改，但没有任何限制，只要改变的软件根本没有分发。 OpenIFS 许可证也允许私密修改。 因此，我们可以在不违反许可证的情况下开展这一项目(并准备和运行综合工作)。 只要我们不与任何人分享结果。

然而，如果我们想与我们组织以外的人合作，这意味着我们在不同的法律实体之间交换材料，这就算是分发。 我们可以通过自己的代码(我们甚至可以在ALv2之下公开出版)和DALES公司来做到这一点。 但不是 OpenIFS 或任何合成的作品。

#### 在这种情况下还有哪些其他选择？

我们可以试图将该系统分成独立的程序，在不同的程序中运行，并通过有充分文件记载的通用接口相互沟通。 这样，就永远不会有一种合并的工作，只有少数独立的工作来交换信息。 然而，为了不被视为一项单一的工作，方案如何分开是不清楚的。

我们还可以要求OpenIFS和DALES版权所有人允许我们的组织与外界共享联合作品。 这将消除所有不确定性，但在总体上可能并不实际。

另一种选择是用我们写的一个依赖关系代替其中的一个。 这通常是不切实际的，这既是因为时间限制，也是因为新版本没有现有版本的科学基础。

这里的根本问题是，全球公益物试图让每一个人共同管理我们所使用的软件。 而专利软件则试图将控制权控制在一个单一的所有者手中。

将它们合并在一个项目中是复杂的，并非没有法律风险，你应该避免。 如果无法做到这一点，你应该认真对待。
