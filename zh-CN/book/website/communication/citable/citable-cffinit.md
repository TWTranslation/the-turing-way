(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

在以下章节中，您可以找到该进程每一步的详细信息。

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## Start

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

如果在任何字段中都有问题，它们将被高亮显示并且错误消息将被显示在红色中。
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## 作者

The CFF schema requires at least one author in the `CITATION.cff` file.
点击“添加作者”按钮来打开一个表单。
填写作者的相关字段。
强烈建议为作者添加ORCID。
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
根据需要添加更多作者。
随后单击下一步继续。

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

干得好！
Now your `CITATION.cff` file meets the minimum requirements.
在这个屏幕中，您可以下载生成的文件或从预览小部件复制它。
我们强烈建议您添加更多信息。
单击“添加更多”按钮以添加更多字段到您的引文文件以使其变得更好。

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## 附加字段

所有附加字段都是可选的，但建议您填写与您工作最相关的字段。

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

在这个屏幕上，你将看到步骤中的新步骤。
以下是附加屏幕的简要描述：

- 标识符：添加DOI、URL和软件遗产标识符；
- 相关资源：与工作及其网站相关的仓库链接；
- 摘要：工作摘要简短摘要；
- 关键词：描述工作的关键词；
- 许可证：提供工作的许可证；
- 版本规格：关于特定发布或提交的信息，包括发布日期。

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

点击下一个开始添加附加字段。

## 最终屏幕

很好你把它变成了最后屏幕！
After adding all the relevant information, you will have a validated `CITATION.cff` file.
下载或复制它并添加到您的公共仓库以获得您应得的信用！

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
