(rr-make)=
# 使用 Make 还原性

(rr-make-requirements)=
## 必备条件

| 前提条件：                                                               | 重要性 | 注                    |
| ------------------------------------------------------------------- | --- | -------------------- |
| [命令行的经验](https://programminghistorian.org/en/lessons/intro-to-bash) | 必需的 |                      |
| {ref}`版本控制<rr-vcs>`                                           | 有帮助 | 使用 git 的经验很有用，可以随同示例 |

推荐的技能水平：中

(rr-make-summary)=
## Summary

一个数据科学或研究项目可以被视为依赖树： 报告取决于数字和表格。 而这些数据又取决于数据 和用于处理这种数据的分析脚本(详见下图 )。  通过预先指定的规则，从依赖关系 创建输出文件的工具。  可以将这两种想法结合起来， 创建一个可复制的项目与 Make 。  在本章中，我们提供了一个 介绍来制作并提供一个教程，说明如何将Make 用于数据 分析管道。  我们还描述了一个可复制的真实研究 项目，该项目使用原始输入数据传输到实验中的整个 路径到pdf文件！

```{figure} ../figures/make-research-dag.png
---
名称：make-research-dag
alt: Schematic of a research project.
---
一个研究项目的方案。
```

(rr-make-intro)=
## 要制作的简介

制作是一个构建自动化工具。 它使用一个名为 Makefile 的配置文件，其中包含 *规则* 来生成什么。 使用 *配方* 设定配置 *目标* 目标可以有可选的 *前提条件*。  前提条件 可以是您计算机或其他目标上的文件。 根据目标和前提条件的依赖树来决定构建 (技术上) 这是一个 {ref}`rr-make-resources-tools` It uses the *modification time* of prerequisites to update targets only when needed.

(rr-make-why)=
### 为什么要使用 Make for Reproduciable？

为什么Make 是一个很好的工具来用于可再生产，有几个原因：

1. 让我们轻松学习
1. 在许多平台上可用
1. 变成灵活的
1. 许多人已经熟悉Make
1. Makefile 减少认知负载，因为只要共同设定目标 `all` 和 `净化` 都存在(下文解释)， 您可以上线并 运行而不必阅读冗长的说明。 This is especially useful when you work on someone else's project or on one that you haven't used in a long time.
1. Makefile 是可读和机器可读的文本文件。 因此而不是 给人类写关于如何生成报告或输出的说明， 您 可以提供一个 Makefile 带有可以被人阅读的说明 *和* 由计算机执行。
1. 因为Makefile 是文本文件，他们很容易分享并保持在版本 控制。
1. 使用 Make 不排除使用 Travis 和 Docker等其他工具。

您可以通过一个聪明的Makefile共享完整分析(代码、数据)。 和 计算工作流程，让合作者或您的文档 的读者重新计算您的结果。 通过使用 LaTeX 等工具，您甚至可以生成一个完整的手稿， 包含新计算的数字和结果！ This can increase the trust in the research output that you generate, it can make your research more accessible, and it can make collaborating easier. 本章可以向您展示如何开始操作。
