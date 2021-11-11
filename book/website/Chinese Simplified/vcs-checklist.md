(rr-vcs-checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## 使用 Git

- 通过使用 `git init` 初始化一个 Git 仓库来控制您的工程版本。
- 使用 `git 添加，将您所有的文件添加到资源库。` 然后 `git 提交`
- 随着您的项目的进展，继续添加和提交更改。 使用 `git 添加文件名`并将消息添加到您的承诺中，对特定文件进行修改。
  - 每项承诺都应做一个简单的改动。
  - 未提交生成的文件。
  - 提交消息有意义，顶部有 ~50 个字符摘要。
  - 提交信息目前紧张，势在必行。
- 在自己的分支开发新功能， 您可以通过 `git 结帐-b branch_name` 创建哪些，并通过 `git 结帐branch_name` 进行切换。
  - 确保分支有信息名称。
  - 确保主分支保持干净。
  - 确保每个分支都有一个单一的宗旨，只有与该宗旨有关的修改才能做到。
- 特性完成后，通过切换到功能分支并运行 `git 合并主分支` ，将其分支合并到主分支。
  - 将对方的更改经常合并到您的工作中。
  - 在处理合并冲突时，请确保您在尝试解决它们之前完全理解这两个版本。

(rr-vcs-checklist-contribute)=
## 贡献给其他人的项目

- 从GitHub `git clone repository_url` 复制他们的项目存储库。
- 做出并提交更改。
- 将您的更改推送到您的 GitHub 版本的项目。
- 利用问题来讨论项目可能发生的变化。
- 在 GitHub 上提出合并请求以分享您的工作。
  - 清楚地解释您在拉取请求中所作的更改(及其原因)。

(rr-vcs-checklist-data)=
## 确定您的数据是版本控制的

- 如果您的项目涉及数据，请检查 [Git LFS](https://git-lfs.github.com/), [git-附件](https://git-annex.branchable.com/), 或者 [DataLad](https://www.datalad.org/) 符合您对版本控制的需求。
- 与您的项目分享数据以帮助他人复制您的结果。
