(ch-style-custom-styling)=
# 自定义样式

Although content contributed to _The Turing Way_ should be written in {ref}`Markdown <ch-consistency-formatting-hr-markdown>` where possible, sometimes, `HTML` syntax may be necessary to format your contribution the way you desire. Jupyter 书已将Markdown语法转换为 `HTML`， 让我们有一个网页版的 _Tinging Way_ 本书成为可能。 结果， 编写您自己的自定义 `HTML` 可能会在您的新内容在线出现的方式上带来一些与本书其他内容相比的变化。

为了最大限度地缩小这种差异， _诱惑方式_ 维持书签内 [样式表](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) 以控制书内容的外观和感觉。 当您的贡献包含 `HTML` 时。 请参阅这些样式表，并将相关类和 ID 添加到您 `HTML` 元素中。 这将确保您的新内容符合 _的整体风格。导星方式_ 书中。

在本小章中，我们解释了如何利用书的样式表风格来样式你在使用案例中的贡献。 如果你想要改进书的风格，本小章还简要概述了如何这样做。

(ch-style-custom-styling-stylesheets)=
## 使用样式表

(ch-style-custom-styling-videos)=
### 视频

当可以使用 Markdown 语法将图像和 GIF 嵌入您的内容时， 它目前只能嵌入 `HTML` 的视频。 更多， 我们不建议将视频直接添加到 _Ting Way's_ Github 仓库，因为视频文件通常较大，将使书载速度更慢， 尤其是对于互联网连接缓慢的读者。

若要将视频添加到您的贡献中，请先上传到 _Ting Way's_ Youtube 频道， 然后复制/粘贴 `HTML` 当您的时候生成的代码：
1. 点击视频下方的 `共享` 选项。
1. 然后点击显示的选项范围中的 `嵌入的` 选项。


The `HTML` code you copy will be an [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe) element. 例如：

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

默认情况下， `iframes` 不具有响应性，这意味着您刚刚嵌入的视频将无法在移动设备上为读者访问。 解决这个问题 _Ting Way's_ 样式表定义了类和样式，允许 `iframe` 调整大小并适应该书读取的屏幕。

利用此自定义风格， 在 `div` 标签中将 `iframe` 折叠，并给 `div` 元素一个 `视频容器` 类. 例如：

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

上面的代码会变成：

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-风格-定制风格-改进)=
## 改进 _导星怀_ 样式

Jupyter 书通过将 Markdown 语法转换为 `HTML` 来起作用。 因此，为了改进书的整体样式， `CSS` 规则应该针对 `HTML` 元素，Jupyter 书生成这些元素。

在写任意CS之前，请先检查书的 HTML 源代码。 这让您了解要攻击的元素，并且可能帮助您找到如何构建您的 CSS 规则。

所有浏览器都允许您轻松查看网站的源代码。 在运行 Windows OS的计算机上，这是使用 `CTRL + U` 完成的。 对于运行 Mac OS的计算机，这是使用 `选项 + 命令 + U` 完成的。

一旦您确定了您想要修改的元素，请在 _Ting Way's_ [样式表文件](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) 中写入您的 CSS 。 例如，如果： 您想要在整个段落文本的 `个字体类` 个完整的 _Ting ways_ book, 然后您可以将下面的 CSS 规则添加到样式表，这些样式表的目标是 所有含有 `<p>` 标签的元素：

```
p
    font-family: georgia, garamond, serif;
}
```

如果你认为 _引入的样式方式_ 可以对其他Jupyter书用户有用， 请考虑通过创建一个新的 GitHub 问题并开始与他们的维护者讨论。 [https://github，为项目做出上游贡献。 om/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
