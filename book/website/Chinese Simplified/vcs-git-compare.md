(rr-vcs-git-compare)=
# 检索和比较版本

(rr-vcs-versions-retriing)=
## 检索过去的版本

要取消您最近的提交 (恢复到上一个版本)，请运行以下命令：
```
git 还原HEAD
```

此命令创建一个新的提交，恢复在最后版本中所作的更改。 如果您想要从几周或几个月前检索一个版本 首先使用 `git 日志` 来找到您想要检索的版本的 SHA 。 要重置您的整个工程到此版本，请运行以下命令：

```
git 签出SHA_of_the_version
```

如果你想要单个文件的旧版本，而不是整个项目的上一个版本。 您可以通过以下命令来做到这一点：

 ```
 git 签出SHA_of_the_version -- your_file_name
 ```

(rr-vcs-versions-retriing-practice)=
### 良好做法

承诺应该是“原子”，这意味着 **他们应该做一件简单的事情，他们应该完全做**。 例如，一个“原子”承诺可能会添加一个新的函数或重命名一个变量。 如果你的项目都有许多不同的更改，那么你的项目都会被承诺在一起。 如果在该版本中出现任何错误，很难解决问题。 此外，撤销全部承诺可能会使有效和有益的工作付诸东流。

**是很好的做法，可以指定要提交的文件**, 也就是说，。 按名称(`git 添加 your_file_name`) 将文件添加到暂存区域，而不是添加所有 (`git 添加.`。 这将防止您无意地将不同的更改捆绑在一起。 例如，如果您在主要处理B文件时对A文件作了更改， 你在提交时可能已经忘记了这一点。 使用 `git 添加。`, 文件 A 将被带到该行程上。 If there are several *unrelated* changes that should not be added together in a *single* file, `git add -p your_file_name` will let you interactively chose which changes to add. 尽管如此， **你不一定需要在处理多个文件时进行每个文件提交** ，而只需要处理一个问题。 例如，如果我们在本章中添加一个数字，选择一个可以通过以下方式获得某人的注意力：

```{figure} ../../figures/flipped-taj-mahal.png
---
名称：翻转标签页
Altt：翻转标签页照片，抓住读者的注意力。
---
翻转Taj Mahal
```

两个文件被更改：

1. 首先，图文件被添加到项目仓库中。
2. 然后在这个文件中添加一行来引用图形，所以它被显示。

所以两个文件受到影响，但“将图添加到版本控制章节”是一个单独的文件， *原子* 工作单位，所以只需要一个提交。

最后，不执行从其他文件在版本中重新生成的内容(除非这是需要几个小时才能重新生成的内容)。 生成的文件，如脚本， 整理你的资源库，可能包含一些功能，例如可能导致烦人文件冲突的时间戳(见 {ref}`rr-vcs-git-merge`)。 您可以通过创建一个名为 `的文件来指示Git 忽略某些文件。 简洁的` 并包含您不需要在 Git 仓库中存储的文件名称。 例如，配置文件可能会从环境变为环境时被忽略。

(rr-vcs-versions-comparing)=
## 比较版本

在某个时候，您可能需要/想要比较项目的版本。 例如，看看使用了什么版本来生成特定结果。

要解决这个问题，请使用 `git diff` 函数，这需要两个输入数据集并输出它们之间的更改。

`git diff` 是一个运行在 Git 数据源上的多用途函数，如提交、分支、文件等等。 默认情况下， `git diff` 会向您显示自上次提交以来任何未承诺的更改。 如果你想要比较两个特定的东西，语法是：

```
git diff thing_a thing_b
```

例如，如果你想要比较一个文件在两个提交之间的变化， 使用 `git 日志` 获取那些提交的 SHA并运行：

```
git diff SHA_a:your_file_name SHA_b:your_file_name
```

或者如果您想比较两个分支，它是：

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=
### 良好做法

稍微熟悉， `git diff` 变成了一个极为强大的工具，你可以用来跟踪哪些文件已经改变以及这些改变的具体内容。 这对于发现缺陷和比较不同人所做的工作极有价值。 Be careful to **understand what exactly is being compared** and, where possible, **only compare the relevant files** for what you are interested in to avoid large amounts of extraneous information.
