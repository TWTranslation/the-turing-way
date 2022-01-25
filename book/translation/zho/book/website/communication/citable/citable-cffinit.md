(cm-citable-cffinit)=
# 使用 `cffinit` 创建一个 `CITATION.cff`

`cffinit` 是一个帮助用户创建 `CITATION.cff` 文件的网络应用程序。 应用程序为 [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) 的每个字段提供指导，并自动进行验证。 当出现问题时， `cffinit` 将提供相关领域的视觉反馈。

在以下章节中，您可以找到该进程每一步的详细信息。

若要开始，请访问 [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) 并点击"创建"按钮继续到 **开始** 屏幕。

```{figure} ../../figures/gifs/cffinit-0.gif
---
名称：cffinit-0
宽度：80%
Alt：贴纸着落页面
---
贴纸登陆页。 [^ cffinitversion]
```

## 开始

在应用程序的第一页输入您的作品的标题。 写一条消息，说明您希望如何提及您的软件，并选择您是否正在创建一个 `CITATION。 ff 用于软件或数据集的` 文件。

```{figure} ../../figures/gifs/cffinit-1.gif
---
名称：cffinit-1
宽度：80%
高度：应用程序的第一页，标题、信息和类型。 字段为空。
---
应用程序的第一页，标题、消息和类型。 [^ cffinitversion]
```

您可以看到右边生成的 `CITATION.cff` 文件的预览。

如果在任何字段中都有问题，它们将被高亮显示并且错误消息将被显示在红色中。 当生成的 `CITATION.cff` 文件无效时，预览小部件将有红色边框。

```{note}
作为方案要求的标题、消息和作者字段，这些字段将被高亮显示，直到您提供它们。
```

点击旁边继续到 **作者** 屏幕。

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
名称：cffinit-1填充的
宽度：80%
高度：表单的第一页，标题、信息和类型。 字段已填充。
---
表单的第一页，标题、消息和类型. 字段已填充。 [^ cffinitversion]
```

## 作者

CFF schema需要 `CITATION.cff` 文件中至少一个作者。 点击“添加作者”按钮来打开一个表单。 填写作者的相关字段。 强烈建议为作者添加ORCID。 查看 {ref}`cm-citable-orcid` 了解更多关于ORCID的信息。

```{figure} ../../figures/gifs/cffinit-2.gif
---
名称：cffinit-2
宽度：80%
高度：为作者设置的表格第二页。
---
表单第二页，供作者使用。 [^ cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
名称：cffinit-2附加作者
宽度：80%
每位作者的表格第二页。 正在添加作者。
---
表单第二页，供作者使用。 正在添加作者。 [^ cffinitversion]
```

添加作者后，您拥有有效的 `CITATION.cff` 文件所需的最低信息。 根据需要添加更多作者。 随后单击下一步继续。

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
名称：cffinit-2填充的
宽度：80%
高度：对作者而言，表格的第二页。 一名作者填写完毕。
---
表单第二页，供作者使用。 一名作者填写完毕。 [^ cffinitversion]
```

## 最小 `CITATION.cff` 文件

干得好！ 现在您的 `CITATION.cff` 文件符合最低要求。 在这个屏幕中，您可以下载生成的文件或从预览小部件复制它。 我们强烈建议您添加更多信息。 单击“添加更多”按钮以添加更多字段到您的引文文件以使其变得更好。

```{figure} ../../figures/gifs/cffinit-3.gif
---
名称：cffinit-3
宽度：80%
高度：最小表单的最后一页。
---
最小表单的最后一页。 [^ cffinitversion]
```

## 附加字段

所有附加字段都是可选的，但建议您填写与您工作最相关的字段。

```{note}
如果您决定不再继续，您可以按“完成”按钮跳过所有剩余步骤并转到最后屏幕。
```

在这个屏幕上，你将看到步骤中的新步骤。 以下是附加屏幕的简要描述：
- 标识符：添加DOI、URL和软件遗产标识符；
- 相关资源：与工作及其网站相关的仓库链接；
- 摘要：工作摘要简短摘要；
- 关键词：描述工作的关键词；
- 许可证：提供工作的许可证；
- 版本规格：关于特定发布或提交的信息，包括发布日期。

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
名称：cffinit-3-advanced
宽度：80
Alt：表格第三页。 左侧显示更多选项。
---
表格第三页。 左侧显示更多选项。 [^ cffinitversion]
```

点击下一个开始添加附加字段。

## 最终屏幕

很好你把它变成了最后屏幕！ 添加所有相关信息后，您将有一个验证的 `CITATION.cff` 文件。 下载或复制它并添加到您的公共仓库以获得您应得的信用！

```{figure} ../../figures/gifs/cffinit-final.gif
---
名称：cffinit-final
宽度：80%
高度：完整表单的最后一页。
---
完整表单的最后一页。 [^ cffinitversion]
```
