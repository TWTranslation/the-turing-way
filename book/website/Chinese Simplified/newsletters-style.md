(ch-newsletters-style)=
# Newsletter的样式指南

在前一小章中，我们描述了起草、审查和发布 _Ting Way_月报的过程。

在这份文件中，我们列出了一些准则，以保持所有通讯的一致性。

- **文件格式**: 草稿通讯在 [Markdown](https://en.wikipedia.org/wiki/Markdown)
- **文件名**: 用"newsletter_serial_MonthYYYY"创建一个文件名。 d “格式”，其中“序列号”应由通讯的序号(数字)取代。 月份应该由月份的短名称代替，年份应该用数字代替年。
- **文件位置在 _Ting Way_ GitHub**: 新闻通讯目前存储在路径"the-turing-ways/communications/newsletters/"中。
    - 这个位置还包含一个“README.md”文件，其中包含所有发布后更新的新闻通讯的表格。
    - 这个位置有一个名为"图像"的文件夹，它集中保存所有图像并链接到相应的新闻通讯。
- **日期**: "DD 月份YYYYY" 格式
    - 在整个文档中始终使用它
    - 要反映范围，请使用“从DD到DD月份YYYY”格式。
    - 即使判决提到了“昨天”、“今天”或“明天”的一天， 提供圆括号内的确切日期，以便如果有人今后阅读通讯仍然是有意义的。
- **时间**: 在 [格林威治平均时间](https://greenwichmeantime.com/what-is-gmt/) (GMT) 或 [英国夏季时间](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST)， 随后是来自 [的链接。 om](https://arewemeetingyet.com/#form) 检查相对时区中的时间
- **链接**: 使用Markdown格式来进行类似的链接。 `[需要链接的文本](完整的 HTTP 链接)`
    - 提供任何有用的链接，例如， [HackMD 用于协作咖啡厅](https://hackmd.io/@KirstieJane/CollabCafe)， [GitHub 问题](https://github.com/alan-turing-institute/the-turing-way/issues), [注册页面](https://www.eventbrite.co.uk/) 和 [查看详情](https://github.com/alan-turing-institute/the-turing-way).
    - 使用此Markdown 语法创建电子邮件地址链接 - `[real-email-id](mailto:reti-email-id)`
- **引用其他**: 在引用句子之前使用小于(>) 符号后面的空格。 例如： `> 这是我的传奇引号。` 将显示为： > 这是我的传奇引号。
- **头部和样式**: 新闻通讯标题是顶部的头部。
    - 通讯中所建议的不同部门是二级负责人，分部门是三级负责人。
    - 在适用的地方使用粗体字母、斜体字、超链接文本和引用
    - 项目名称， _Ting Way_, 应该是斜体的。
    - 对每一行使用与 _一致的修饰路径_ 写入格式的换行符。
    - 在每一节和小节之后留下至少一个直线空间。
- **语言和音调**: 保持整体语言简单，无需拼写，见 [_导星_ 样式指南](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md#style-guide) 以供参考。
    - 发言的基调应当是欢迎、友好、最好是非正式的。 这可能是作者写作风格的个人行为。
    - 请多个人审阅您的草稿，确保其内容易于理解和书写清晰。
    - 如果使用不同于您自己的语言或文化的内容， 请使用这种语言或文化的人审查你的草稿，确保内容不被歪曲。
- **使用 emojis**: 鼓励使用表情(*显示您的个性*) :smiling_fac_with_halo:, 但保持简单、中立和正面性。
    - 认识到这种模棱两可的表情可能被不同的读者误解。
    - 当有疑问时，请别人审查你的草稿。
- **使用图像**: 仅使用通讯中与新闻项相关的图片。
    - 确保图像在 CC-By 许可证下可用，或者被所有者批准重新使用。
    - 避免使用备忘录、带有政治色情色彩的图像或与社区没有直接关系的图像。
    - 撰写黑色MD通讯时， 拖放图像到编辑器或复制粘贴图像以自动上传图像到 [Imgur](https://en.wikipedia.org/wiki/Imgur)。
    - 在 GitHub 上撰写时事通讯时，将图像上传到文件夹“turing-ways/communications/newsletters/”。
    - 图像的文件命名协议为“短名称月YYYY”。 ng“，其短名应替换为图像的可识别短名， 月份应改为月份的短名，而YYY则应改为年份。
    - 文件扩展名可以是 '.jpg', '.png' 或其他具有兼容图像文件类型的扩展名。
    - 使用 Markdown 语法链接新闻通讯中的图像： `![](image/path)`。
    - 如 [_所建议的那样。_ 风格指南](https://the-turing-way.netlify.app/community-handbook/style/style-figures.html), 为图像创建一个备用文本： `！ Alt: 描述图像 - 这不是图像的标题，而是图像的实际解释](图像/路径)`
    - 在图像下面，为图像写一个简短的描述性标题，然后是空行。 链接标题到源代码，例如推特或相关事件。
    - 当在一个集体图像中使用多个图像作为面板时， 对每张图片进行明确数字(可以在任何照片或文本编辑器中进行此操作)，并为每张图片提供一个编号标题。 See an example [here](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/newsletter_14_May2020.md#tweets-from-the-community).
