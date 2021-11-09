(cm-os-comms-issue-tracking)=
# 问题跟踪

大多数软件开发项目都有某种问题板，可以方便地跟踪项目中的当前问题。 例如修复错误，展开新功能，或社区参与计划。 [GitHub](https://github.com) (一个非常受欢迎的协作平台) 有一个内置的 [问题跟踪器](https://guides.github.com/features/issues/) 和 [项目板](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) 可以将问题一起进行比较以追踪更具体的进度。 更高级别的目标。

本节讨论了为什么问题跟踪是有用的，以及你可以在哪里储存它们。

(os-comms-issue-tracking-purpose)=
## 您的问题的目的是什么？

保持/跟踪项目相关问题有许多不同的原因。 问题跟踪平台和这些问题跟踪的功能可以影响您的社区如何与您的项目互动。

大多数问题被用来跟踪错误报告、功能要求、社区成员参与的机会等等。 然后一个公开的议题板将使您的社区能够清楚地了解管道下来的情况以及他们如何能够参与。

让我们看看集中和分散/分布式的问题板以及它们如何能够让您的社区参与。

(os-comms-issue-tracking-purpose-issues)=
### 每个存储库的问题 (分散/分发)

如果您的项目被拆分到多个仓库， 然后将与该模块具体相关的问题保留在该仓库中是一个好主意：一个分散的系统。 这使你们的社区能够把注意力集中在对他们重要的问题上。

这个方法为您的代码库中的每个存储库(或模块)设置了几个较小的问题看板。 这种方法有许多积极的结果，例如：

- 问题的数量更易于管理；
- 大多数贡献者只需要知道与一个或两个仓库有关的问题；
- 贡献者只能订阅对他们感兴趣的通知或更新；
- 它感到“分裂和征服”，更多的人正在更多地努力推动整个项目。

(os-comms-issue-tracking-purpose-issues-case study)=
#### 案例研究：mybinder.org

[mybinder。 rg](https://mybinder.org) 是一个方便用户通过云端轻松分享可重复分析和计算环境的平台。 [Jupyter 笔记本](https://jupyter-notebook.readthedocs.io/en/stable/) 这个项目分散在若干不同的仓库，每个仓库都是一个单独的工具，可以与其他仓库分开使用。 它们是：

- [repo2docker](https://github.com/jupyter/repo2docker) , ,
- [Kubernetes JupyterHub](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
- [绑定Hub](https://github.com/jupyterhub/binderhub).

Jupyter生态系统中还有一些与Binder联系很薄弱的工具。 项目Binder使用的工具以及与Binder相关的人都可以帮助其他不相关的社区。 这些工具是 [JupyterHub](https://github.com/jupyterhub/jupyterhub) 和 [Kubepawner](https://github.com/jupyterhub/kubespawner)。

每个储存库都有数百个问题，追踪社区正在进行的工作，并确定每个项目今后的方向。

你能想象把所有这些问题合并成一个地方吗？ 如果不是不可能的话，也会变得非常困难。 要有人找到他们正在寻找的东西，并且需要一个非常聪明的标记方案加上通过标签进行过滤的说明。

根据Binder项目小组的经验，大多数社区成员只为其中一个或两个项目作出贡献。 因此，让所有工作部门更多地接触所有问题并不是他们所在社区的高度优先事项。

他们发现，分发问题跟踪后，社区中那些只能在朱皮特尔胡布工作的成员能够轻松地作出贡献，而不需要熟悉运行 [mybinder的一切。 rg](https://mybinder.org)。

(os-comms-issue-tracking-designe-issues-centralised-issue)=
### 集中问题仓库

有了一个大型项目，为了更容易的管理而将你的所有问题整理成一个地方是有吸引力的。 如果您正在使用问题跟踪中央服务，个人待办事宜列表。 并回答问题，如某项任务是高优先级还是它已经分配给某人， 然后在中央系统中跟踪问题是一个很好的选择，它不一定需要分发给你们更广泛的社区。

然而，在让你们的社区参与方面，这种中央化制度可能会产生问题。 如果您的问题在其他地方，这会给社区成员的进入设置许多障碍，例如：

- 这些问题更难发现；
- 如果它们在另一个平台上托管(例如，代码在 GitHub 上，但问题在 [Asana](https://asana.com/)上) ， 这是社区成员需要学习如何使用的另一个工具；
- 问题从他们要引用的代码中分离出来。

一个单独的议题板对社区的影响非常大，当人们访问你的代码仓库时， 它看起来像一个不活跃的项目，因为没有问题或会话在代码托管中。 这可能会使社区成员相信代码不再被积极开发/维护/支持，并且可能选择使用另一个代码或软件包。

(os-comms-issue-tracking-comparative-table)=
## 对比表

下表比较了一个多版本库项目的分布式和集中式问题仓库的特征。

| 功能          |     集中的问题Repo      | 已分发的问题仓库 |
|:----------- |:------------------:|:--------:|
| 全局问题搜索      |         ✅          |          |
| 由与代码相同的平台主机 |       ❓(不保证)       |    ✅     |
| 按资源库筛选      | :ques_mark:(电源用户*) |    ✅     |
| 订阅相关更新      | :ques_mark:(电源用户)  |    ✅     |
| 轻松发现        |                    |    ✅     |
| 已连接到代码库     |                    |    ✅     |
| 在社区活动时显示    |                    |    ✅     |
| 可管理的音量      |                    |    ✅     |

*电源用户 = 这些人已经非常熟悉一个平台，知道使他们的体验更有效率的获得方法和技巧。

## 进一步阅读

- 博客文章比较邮件列表和论坛的方便性和社区近似性： [https://psychcentral.com/blog/mailing-lists-versus-forums-community-closeness/](https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/)
- 博客文章由 [Tim Head](https://github.com/betatim):  [https://betatim.github.io/posts/posts-on-collective-thinking/](https://betatim.github.io/posts/thoughts-on-collective-thinking/)
