(rr-make)=

# 使用Make的可重复性

(rr-make-prerequisites)=

## 先决条件

| Prerequisite                                                               | Importance | Notes                                                        |
| -------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessary  |                                                              |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | Experience using git is useful to follow along with examples |

Recommended skill level: intermediate

(rr-make-summary)=

## 摘要

一个数据科学或研究项目可以被视为依赖树： 报告取决于数字和表格。 而这些数据又取决于数据 和用于处理这种数据的分析脚本(详见下图 )。  通过预先指定的规则，从依赖关系 创建输出文件的工具。  可以将这两种想法结合起来， 创建一个可复制的项目与 Make 。  在本章中，我们提供了一个 介绍来制作并提供一个教程，说明如何将Make 用于数据 分析管道。  我们还描述了一个可复制的真实研究 项目，该项目使用原始输入数据传输到实验中的整个 路径到pdf文件！

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## Make 简介

Make is a build automation tool. It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  前提条件 可以是您计算机或其他目标上的文件。 Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-why)=

### 为什么要使用 Make 来实现可重复性？

There are several reasons why Make is a good tool to use for reproducibility:

1. Make is easy to learn
2. Make is available on many platforms
3. Make is flexible
4. Many people are already familiar with Make
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Makefiles are human-readable and machine-readable text files. So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

您可以通过一个聪明的Makefile共享完整分析(代码、数据)。 和 计算工作流程，让合作者或您的文档 的读者重新计算您的结果。
通过使用 LaTeX 等工具，您甚至可以生成一个完整的手稿， 包含新计算的数字和结果！
This can increase the trust in the research output that you generate, it can make your research more accessible, and it can make collaborating easier. 本章可以向您展示如何开始操作。
This chapter can show you how to get started.
