(cm-citable-cite)=
# 引用研究对象

你应该在文件中直接引述相关的研究对象。 这是一种通常采用的引述出版物的方法，可用于引述数据和软件等其他研究内容。 引文包括以下信息：
- 作者
- 标题
- 出版年份
- 发布器 (用于数据，这常常是它所在的数据储存库)，
- 版本(如果指定)
- 访问信息 (URL 或 DOI)

引文风格是引文所需的特定安排、顺序和信息格式。 例如， 现代语言协会（最初用于人文学）开发了现代语言协会的风格，美国心理学协会（原用于心理学和社会科学）开发了美国心理学协会的风格。
- MLA 引文风格使用以下格式： `作者 “源名称” 容器的标题，其他贡献者，版本，Number，出版，出版日期，位置。`
- APA 引文风格使用以下格式： `作者 (年份)。 数据集的标题(版本号)。 [检索] ***OR*** [DOI]`

查看 [Scr引文样式指南](https://www.scribbr.com/citing-sources/citation-styles/)。 还见 [FORCE11资源](https://www.force11.org/node/4771)。

(cm-citable-cite-data)=
## 引用数据

分享数据集时。 使用专用的 DOIs 并在文档结尾处或在线存储库详细信息中添加 **数据可用性说明** (类似于确认部分)。

您可以在出版商(研究数据)的政策中找到这些声明的例子。

### 数据具备情况说明示例：

**使用 Digital Object Identifier (DOI)：** “支持本研究结果的数据可公开查阅http://doi [repositorial name] 。 rg/[doi]。”

**如果没有发布DOI：**
- “支持本研究结果的数据可公开查阅 \[URL\]\[仓库名称\]，参考号[参考号]。”

**当有一个禁运期时，你可以保留你的DOI，并且仍然在你的文件中提到数据集：**
- “支持调查结果的数据将在公布之日起\[6个月]禁运之后，以[URL/DOI\]\[存放地名\]提供，以便使研究结果商业化。”

**当无法提供数据时：**
- “这些限制适用于支持本研究结果的数据。 [举例说，限制的解释性质。] 如果数据含有可能损害研究参与者隐私的信息，则可通过联系[姓名和联系细节]并经[第三方姓名]许可，根据合理请求提供数据。”
-  “可索取支持本研究结果的数据。 访问条件和程序可以在 [EASY](https://easy.dans.knaw.nl/ui/home) 等限制访问仓库的 URL。]”

**更多数据可用性说明示例：**

您可以在 [Manchester的数据访问语句页](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/)上找到更多的示例。 [剑桥数据可用性声明示例](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), [AMS 数据可用性声明示例](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/), 或 [自然写出令人惊叹的数据可用性声明](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement)

(cm-citable-cite-software)=
## 引用软件

软件引文与上文所述的数据引文有许多相同的要素。 在 [软件引证原则](https://www.force11.org/software-citation-principles) 中详细描述. 在使用其他软件时，必须适当引述并赋予它适当的属性。

要使你的代码易于使用，你可以使用 [Zenodo](https://zenodo.org/) 和 GitHub 之间的整合。

- 创建一个文件，告诉人们如何引用您的软件。 使用此 [便捷指南](https://citation-file-format.github.io/cff-initializer-javascript/) 格式化文件。
- 将您的GitHub 帐户链接到Zenodo帐户。 本指南解释了 [如何](https://guides.github.com/activities/citable-code/)
- 您可以通过添加 `zenodo 来告诉Zenodo 你想要包含什么信息或元数据。 son` 文件，在这里介绍 [](https://guide.esciencecenter.nl/citable_software/making_software_citable.html)
- 在 Zenodo 上，将切换到你想要发布的 GitHub 仓库的“on”位置。
- 在 GitHub 上，点击 *创建新版本的* 按钮。 Zenodo应该自动收到通知，并且应该提供一个您仓库当前状态的快照副本(仅一个分支, 还应该为这个快照指定一个持久性标识符(DOI)。
- 在您的软件的任何引文中使用 DOI 并告诉任何合作者和用户也这样做！
