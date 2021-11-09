# 数据分析的高级结构

## 前提/推荐技能级别

| 前提条件：                        | 重要性 | 注                |
| ---------------------------- | --- | ---------------- |
| {ref}`版本控制<rr-vcs>`    | 有帮助 | 使用 git 进行版本控制的知识 |
| {ref}`打开研究<rr-open>`   | 有帮助 | 组件是简编的一部分        |
| {ref}`可复现的环境<rr-renv>` | 有帮助 | 可以用来使简编可复制。      |

## Summary

在规划一项研究时，一个关键的而且常常被遗忘的组成部分是建立一个储存库。 本节将概述设计仓库的好处和考虑因素， 还有一个示例结构和更多的资源来指导您的工作流程。

本章的前提条件可能因项目的组织需要而异。 创建一个具有简单研究项目布局的仓库可能需要最小的技术知识(例如只管理输入数据和输出结果)。 同时，可能需要对更复杂的项目（例如依赖其他项目的项目）进行高级存放布局。

## 二. 背景

仓库(或“仓库”)是您的研究项目的存储位置。 存储库可以包含一系列数码对象，并且可以通过使用 GitHub 等在线平台来存储您的项目。 存储库的目的是以这样的方式组织您的项目，这既可供他人访问又有效使用。

到目前为止，我们看到了在启动或建立一个项目储存库时应该添加的关键文件。 如果您一直在跟随，您的项目应该包含以下文件：

```
项目文件夹/
/ ---- ---社区项目的 CODE_OF_CONDUCT          <- 社区项目的行为守则
| -- --CONTRIBUTING             <- 合作者的贡献指南
------- LICENSE                  <- 软件许可证
---. 。                      <- 您可能已经为您的项目添加的任何其他文件
--README d                <- 关于仓库的信息
```

在本小章中，我们概述了设计一个仓库的好处和考虑因素，以及一个示例结构和指导您工作流程的进一步资源。

```{note}
通过故意添加文档来设计您的存储库的主要优点， 资源和相关信息使得能够建立起一种基础设施，从而能够进行符合道德、公开和高质量的研究。
```

## 主要考虑

当通过你的资源库分享你的资源时，请在你的研究中考虑下面的可复制性方面：

- 透明度和公开性
- 版本控制系统 (没有更多文件像final_v1_FINAL.R, final_v2_FINAL.R, ...)
- 方便导航，为所有参与者节省时间
- 考虑 {ref}`pd-overview.repro-` 方面
- 请确保您提供足够的详细信息，以便其他人可以在您的工作基础上继续工作

## 主要建议

始终如一地考虑设计你们的合作项目，增加说明项目目标、远景、路线图、贡献和交流过程的关键文件(如上文小节所述)。
- 在 {ref}`README 文件<pd-project-repo-readme>中包含详细信息`描述 _仓库是什么_ 和 _如何导航它_
- 尽可能提供视野、目标和行进图(例如，参见 [Kamran Ahmed开发者的行进图](https://github.com/kamranahmedse/developer-roadmap))
- 一般结构应区分输入(数据)、方法(脚本)和输出(结果、 数字、 脚本)
- 指定 `.gitignore` 文件中不应该跟踪的内容，例如敏感/私有文件、大型数据集或个人笔记
- 包含您的计算环境 {ref}`可复现环境<rr-renv>` 以确保复现(这也可以在README中指定)

## 示例仓库结构

### 研究项目示例

这里是一个研究项目必须有的文件和文件夹的建议。

```
项目文件夹/
/ *--docs                     <- 文档
codex. --codelist.txt 
cernet---project_plan.txt
codes--- ...
│   └── deliverables.txt
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── analysis                 <- scripts
│   └── my_script.R
├── results                  <- analysis output     
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── install.R                <- environment setup
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── LICENSE                  <- software license
├── README.md                <- information about the repo
└── report.md                <- report of project
```

### 每个可能文件夹的示例

此示例显示一个项目在构建软件应用程序或研究工程工具时可以包含的不同文件和目录。

```
Project Folder/                        
├── analysis                 <- scripts
│   └── my_script.R
├── build                    <- built files, Makefile
|   ├── debug
|   └── release
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── docs                     <- documentation
│   └── codelist.txt 
├── project-management       <- project management related documents
│   └── communication.md
│   └── people.md
│   └── project-report.md
│   └── tools.md
├── res                      <- static resources (images and audio files)
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── lib                      <- dependencies (shared components that can be used across an application or across projects, code that supports the core application)
├── logs.txt                 <- history of all major updates like feature release, bug fix, updates
├── example                  <- example code application
├── LICENSE                  <- software license
├── environment.yml          <- anaconda environment setup   
├── install.R                <- R environment setup
├── requirements.txt         <- python environment setup
├── runtime.txt              <- R in binder setup
├── report.md                <- report of analysis
├── README.md                <- information about the repo
├── src                      <- source files
└── test                     <- unit tests  
```

## 资源

### R 和 Python 包

| R                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [模版](https://github.com/Pakillo/template)                         | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [重新创建](https://github.com/richfitz/remake)                        |                                                              |

### GitHub 仓库管理示例

- [_诱惑路径_ 工程repo](https://github.com/alan-turing-institute/the-turing-way)
- [Jupyter 书项目repo](https://github.com/executablebooks/jupyter-book)
- [Pandas 软件包repo](https://github.com/pandas-dev/pandas)
- [Atom 文本编辑器](https://github.com/atom/atom)

欲了解更多详情，请按照 {ref}`project-repo-repo-recommendations-advances-advance` 进行操作。
