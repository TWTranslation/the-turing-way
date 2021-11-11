(rr-ci-github-actions)=
# 与 GitHub 操作的持续集成

本节将通过使用 **GitHub 动作 (GHA)** 的连续集成(CI)的基本设置。 GHA 是一个与GitHub 完全结合的任务自动化系统。 换言之，它是一个基于任何事件的任何工作流程的API。 虽然有许多CI 服务供应商，但GHA 比以往任何时候都更容易将CI 纳入您的资源库。 它提供了一种自动化项目工作流程几乎每个方面的灵活方法。 下面只是使用GitHub 操作的几个实例：

- 软件自动测试
- 生成存储库中任何更改状态的报告
- 响应工作流触发器使用标签、问题、特殊提示和更多
- 触发代码评论和拉取请求
- 管理分支

GitHub 操作是事件驱动的，这意味着它对任何事件的回应 (示例：已创建拉取请求 (PR) 创建问题并触发动作(例如：添加标签、运行测试、排序)。 这些行动的任何集合都被称为工作流。 下一节将更详细地介绍与GitHub有关的词汇。

```{figure} ../../figures/github-actions.jpg
---
宽度：700px
校准：居中
名称：Github 动作
每个名称：一个图表，描述GitHub 动作如何聆听某个事件(例如，例如) `PR` 创建、 创建、 PR 合并，然后触发一个可以测试、分类、标签或部署的作业。
---
_Ting Way_ 项目示意图由 Storeria 标明。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。
```
## GitHub相关词汇表

### 1. 工作流

**工作流** 是一个从开始到完成的自动化单位。 它包括自动化过程中应予考虑的所有方面，包括何种事件可引发自动化。 工作流可以用来构建、测试、包裹、释放或部署一个在 GitHub 上的项目。 它是由多个工作组成的，这些工作是通过如下概述图所示的步骤产生的。

```{figure} ../../figures/ci-01.png
---
名称：ContinuousIntegration-Nov20
备选案文：一个说明连续整合如何与多个任务和操作并肩运行，为显示合并到主版本的步骤提供一个示例。
---
左边：_Ting Way_ 项目示意图由 Stereria 绘制。 在 CC-BY 4.0 许可下使用。 DOI：[10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)。 右边：从 [morioh.com](https://morioh.com/p/aadcfe6cac57) 的 GitHub 行动最重要概念的概览图。
```

### 2. 任务

**作业** 被定义为在同一运行器上运行的一组顺序步骤。 一个工作流可以建立一个或几个工作, 可以同时运行(默认) 或顺序运行。

### 3. 步骤

**步** 是一个单独的任务。 一个步骤可以是一个动作或另一个命令单位，例如运行一个 Python 脚本或打印某些东西到控制台。

### 4. 行动

一个 GitHub **动作** 是一块以兼容工作流的方式编写的自动化。 动作可以由 [GitHub](https://github.com/actions)编写，由开源 [社区](https://github.com/sdras/awesome-actions)编写，或者您可以自己撰写！

## 开始使用 GitHub 操作

GitHub 操作使用 YAML 语法并存储在资源库中名为 `.github/workflow` 的目录。 您可以使用模板工作流或创建自己的工作流。


### 1-使用 GitHub 操作模板

如果您想开始使用 GitHub 动作， 您可以先点击仓库中的"动作"选项卡来创建一个工作流，如下所示。 在“动作”选项卡下，您将找到受欢迎的 CI 工作流，它可以帮助部署或自动化某些任务在资源库中。

```{figure} ../../figures/gifs/start_ghactions.gif
---
宽度：600px
校准：中心
名称：GitHub 动作模板
每个名称：gif显示您在 Github 仓库中可以找到 GitHub 行动模板的位置。
---
```
您可以选择这些启动器中的任何一个工作流，并且进一步定制它们。  下一节将说明工作流程中的构件的解释。


### 2- 使用针对图书馆的模板。


Github 动作模板不是唯一可用的启动包。有用于感兴趣的语言的库特定模板。 例如，你可以用  {usethis} 软件包在 R 中通过运行 `usethis::use_github_action_check_standard()` 来为R 软件包创建一个模板。 这将生成GitHub 动作，用于在每次提交或拉取请求后运行 CRAN。 这是你必须做的！


### 3- 使用其他项目的配置作为固件

许多维护良好的开放源码库和不稳定的项目使用 GitHub Activity for their CI。 查看这些项目的拉取请求的检查清单以获得启发和想法； 随后检查他们的 CI 配置文件。 在大多数情况下，他们的许可证将允许复制适用于你情况的笔记。 这种办法的优点是采用一些已经行之有效的办法。

例如：

- 为 [构建诱导路径书并为拉取请求提供预览](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- 一个 [3 运行系统测试矩阵和 Python 软件包网络X 的多个Python 版本](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- 在 Python 软件包编号的多重环境下测试 [的更加复杂的设置](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


在下一节中，我们将解释工作流程的构件。

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
