(rr-vcs-github)=
# Git 命令在 GitHub 上工作

随着研究日益相互配合，多人在同一项目中工作。 如果不系统地进行改革，就很难跟踪其他方面的变化。 此外，将不同参与者的工作手工纳入一个项目是很费时间的，即使他们的所有改变都是兼容的。 将项目托管在网上存储库托管服务上，如GitHub ，将有助于使合作公开和有效。 如果您刚刚通过 [GitHub](https://github.com)进行合作，请遵循前面章节中的全面指南。

在本节中，我们将讨论如何使用 Git 命令与在线Git 仓库合作。

请注意，本章中列出的命令(本章和以前的子章节)不是专门针对GitHub 的。 它们用于任何Git仓库的协作工作以及与任何仓库托管站点/服务器的交互。 可以是 [GitHub](https://github.com/)， 但也 [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) 或 [web 服务器上的自设置bare Git 存储库](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6)。

为了简单起见，我们将使用 GitHub 作为示例，解释用于与 Git 仓库互动的命令。

(rr-vcs-github-local)=
## 创建在线存储库的本地副本

到目前为止，本章中引入的所有Git命令都与本地、未连接的Git仓库有关。 为了与其他人合作，托管服务，如GitHub 可以存储本地版本库的 *克隆* (副本) 并向他人曝光。 通常，您将有一个本地版本库和一个 *远程版本的*。 您的本地仓库已连接到网络克隆。 从技术角度来看，基于网络的克隆是本地存储库中的 `个远程`。 通常，这个遥控器叫做“起源”。 Having a web-based remote allows you to *push* changes to your project online. 它使其他人能够获取自己的存储库克隆(将您的存储库复制到本地计算机)， 做出更改，并提交一个 *拉取请求* ，允许您整合他们的更改。 例如，可以使用下面的Git命令创建一个独立的项目本地副本：

```
git clone <insert GitHub link of the repository here>
```

Collaborators can update their local version of an online repository or *pull* other's work into their copy using the command:
```
git pull
```
Similarly, they can edit files locally and stage their updates (`git add .`), commit changes to a new version (`git commit`) and *push* changes to the remote online repository using the Git command:
```
git 推送
```
(rr-vcs-github-online)=
## 将计算机上的本地项目链接到在线仓库

要将您计算机上的一个项目连接到一个新的 GitHub 仓库(最好使用相同的名称), 您需要遵循创建Git 存储库的标准工作流(在 {ref}r-vcs-workflow`rr-vcs-workflow` subchapter中描述)，在终端中发布以下一组命令。 逐一：

```
cd <your project folder>
git init
git 添加 .
git 提交
```
假设你有一个你想要连接到这个项目的GitHub 仓库，运行以下命令：

```
git 远程添加来源 <GitHub repository link for your project>
```

Then, *push* all the files on your computer to the online version so they match:

```
git 推送-u 源主
```

然后您可以继续并在您的电脑上做更多的提交。 当你想要将他们推到你的在线版本时，你也会这样做：

```
git 推送来源 branch_you_want_to_pus_to
```

You can also make changes directly on GitHub by editing the online repository, and *pull* those changes locally by using the `git pull` command.

其他人也可以通过使用以下方式复制存储库到他们的计算机：

```
git clone git@github.com:your-github-username/repository_name
```

他们可以在不影响原始代码的情况下对代码进行更改，并通过以下方式将他们的更改推到 *他们的* 在线GitHub 帐户：

```
git 推送-u 源主
```

如果你想克隆别人的仓库，同样的程序也适用于你。

(rr-vcs-github-online-pull)=
### 拉取请求

If you are working on a personal branch and some other changes were made in the main branch, you can *pull* those changes down to your branch using the Git command:
```
git 拉取来源
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can *push* their changes to their branch using the following command:

```
git 推送源分支名称
```

然而，如果您不能直接编辑仓库(当您不是项目的所有者或管理员时)， 您将能够在 *拉取请求* 的帮助下分享您的工作。 拉取请求允许贡献者将其分支或仓库的拟议更改集成到项目的主要分支中。 也可以通过命令行提出拉取请求(见GitLab 文档 [这里](https://git-scm.com/docs/git-request-pull))。

(rr-vcs-github-contributing)=
## 为其他项目贡献

当您创建一个本地版本库时， 您只保存在创建该副本时在仓库中的文件版本。 如果此后在原始仓库中做出任何更改，您的副本将无法同步。 这可能会导致一些问题，如在提出拉取请求或合并从您的分支到主仓库的更改时发生冲突的文件内容。 因此，当处理仓库的不同分支或分叉时， 保持与主仓库的更新并与原始仓库同步是一个好的做法。

(rr-vcs-github-contributing-workflow)=
### 通过 `git` 为其他Github 项目贡献的工作流：

使用 GitHub 版本库上的分叉按钮，您想要做出贡献，在您的帐户中创建一个版本库。 你派生的主要仓库将被称为“上游”仓库.

您现在可以通过以下步骤使用命令行来复制您的副本(请确保您替换占位用户和仓库名称)：

1. 将它克隆到你的本地机器：

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. 使用 `git 远程` 命令将“上游”仓库添加到远程仓库列表中：

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. 验证新的远程“上游”仓库：

    ```
    git 远程-v
    ```

4. 先获取上游版本库的分支和最新承诺将它们带入您的版本库，更新您的分叉：

    ```
    git 获取上流
    ```

5. 查看所有分支，包括上游分支：

    ```
    git branch -va
    ```

请确保您在本地的主分支，如果没有，请使用命令 `git 结帐主分支` 签出主分支。

6. 通过将这些提交 (从上游获取) 合并到您自己的本地主分支来更新您的叉。

    ```
    git 上游/主要合并
    ```

现在，你的本地主分支是最新的，有上游修改的所有内容。 如果本地主分支没有独特的提交，git将执行快速操作。

*注意: 上游/主要是您想要贡献的原始仓库的主要部分。 原始/主指的是你在本地机器中克隆的仓库，它在GitHub 上被叉。*

一旦你的分叉与上游主仓库同步， 您总是可以通过以下方式保持本地克隆仓库与原始同步(在这种情况下分叉)：

```
git 结帐主
git 拉取
```

`git 合并` 命令合并了另外两个命令。 `git 获取` 和 `git 合并`。 当使用 `git 获取`时，结果的提交会被存储为远程分支，允许您在合并前审查更改。

同样，如果您创建了更多的分支机构而不是主分支， 一旦与上游版本库同步，您也可以保持与您主的同步。

```
git 结帐我-其他分支
git 拉取原始主要的
```

当一切都是最新的，你可以在你的分支上工作并提交更改。

当你准备好将你的本地提交推送到你的仓库(原始)，请使用以下命令。

```
git 推送原始Forked_reposition
```

现在你可以提出拉取请求！

(rr-vcs-github-contributing-practice)=
### 良好做法

在您创建一个分支之前，请确保您有来自原始/主分支的所有上游更改。


** `rebase` 命令**告诫：当试图保持分支同步时， 你可能会碰到 `rebase` 命令。 它倾向于重写历史，如果不与在同一处工作的其他人沟通，可能会引起麻烦。 尝试避免使用 `rebase` 命令， 而是使用 `拉取` 或 `提取`+`合并`，正如本节所讨论的那样。 您可以找到更多关于 [合并与重建](https://www.atlassian.com/git/tutorials/merging-vs-rebasing) 的详细信息。


## 进一步阅读
- 用于同步资源库的 [篇文章](https://help.github.com/en/articles/syncing-a-fork) 以便与上游资源库保持更新。
- 如果您想要在浏览器本身执行所有 [](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser) 的指令。
