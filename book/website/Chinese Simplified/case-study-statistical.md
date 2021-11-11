(rr-cs-statistical-methods-manuscript)=
# 统计方法手法

## 关于此案例研究

本案例研究的目的是讨论在设计和进行一项 统计研究时实施的 种研究的不同组成部分。 在他们的手稿帮助下， 作者提供了他们研究中所使用的 方法目录，并将其与此 {ref}`rr` 中讨论过的相关 部分相互参照。

## 关于手稿信息

- **标题：** Bayesian对样品大小衍生物的看法 用于确认测试{cite:ps}`Kunzmann20CS`
- **作者：** Kevin Kunzmann, Michael J. Grayling, Kim May Lee, David S. Robertson, Kaspar Rufibach, James M. S. 瓦森文
- **出版月 & 年**: 2020 年6月

### 概览

手稿 {cite:ps}`Kunzmann20CS` 本身关注的问题是 产生一个适合临床试验的样品大小。 这是统计中的一个典型问题，在 医疗统计中尤其重要，因为在这些统计中，收集试验数据的费用极高， 个伦理因素需要得到解决。 手稿审查并扩大方法，系统地将 规划不确定性纳入样品大小衍生剂。

### 引文摘要

手稿可以用纯文本AA格式引用：

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). 审查贝叶斯对确认性审判的样品体积衍生物的看法。 arXiv preprint arXiv:2006.15715.

BibTeX 格式：

```
@article.com
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     作者 = {Kunzmann, Kevin and Graying, Michael J and Lee, Kim May and Robertson, David S and Rufibach, Kaspar and Wason, James},
    日记 = {arXiv preprint arXiv:2006.15715},
       年 = {2020}
}
```

## 可再生产研究的不同方法目录

### 版本控制

git 版本库 [https://github.com/kkmann/sample-size-calculation-minimum](https://github.com/kkmann/sample-size-calculation-under-uncertainty) 包含生成手稿所需的所有代码 [arXiv:2006/15715](https://arxiv.org/abs/2006.15715) 从零开始。 关于版本控制对 可复制研究的重要性的深入解释，请见 {ref}`版本控制系统<rr-vcs>`。


### 研究数据管理

在这一特定案件中，
{ref}`数据管理 <rr-rdm>` 个方面不是一个问题，因为 草稿完全是基于假设的示例，而不是 外部的 需要受保护的数据。


#### 扫盲方案

手稿 {cite:ps}`Kunzmann20CS` 本身是由 [LaTeX](https://www.latex-project.org/) 编写的。 源文件包含在子文件夹 `Latex/` 中。 普通TeX文件优先于识字编程解决方案，例如 [knitr](https://github.com/rstudio/rmarkdown) 用于 [R](https://www.r-project.org/) 以方便使用 LaTeX 专用编辑器，如 [Overlaf](https://www.overleaf.com/project) 然而，这意味着手稿中使用的所有数字都需要单独创建 。 专用的 [Jupyter 笔记本](https://jupyter.org/) `notebooks/figures-for-manuscript.ipynb` 将代码和基本内容结合起来 为此目的提供了描述。


### 可复现的软件环境

Although this means that all code required to compile the manuscript from scratch is available in a self-contained environment, it is not yet sufficient for ensuring reproducibility. 安装 LaTeX、Jupyter和R具有相同规格的 来运行所有代码仍然对经验较少的用户具有挑战性。 为了避免这种情况使感兴趣的读者不再尝试代码。 使用 Python 包 [repo2docker](https://github.com/jupyter/repo2docker) 和免费的 [BinderHub](https://mybinder.org/) 托管服务的组合。 关于这些技术的详细情况，请参阅关于 {ref}`BinderHub<rr-binderhub>` 的一章。 这使感兴趣的个人能够开始一个交互式版本的 存储库，所有必需的软件都已预先安装 - 完全是正确的 版本！ 请注意，可以提供 *版本稳定* 粘合器链接

[![徽章](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![徽章](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

此徽章指向存储库在特定时间点的状态 (通过 git 标签功能)。 这意味着链接仍然有效且没有改变，即使后来对资源库的内容进行了 次更正！ Binder支持多个用户界面。 此插件用于在资源库上提供 Jupyter 集成开发环境 视图以探索文件， Jupyter 笔记本，或为 进一步命令打开一个shell。 The second badge directly opens an interactive Shiny app that illustrates some of the points discussed in the manuscript and requires no familiarity with programming at all. Binder的所有相关配置都位于子文件夹 `.binder` 中。


### 使用 Snakemake 的工作流管理

既然JupyterLab 也允许在资源库实例中打开一个 shell 使用 Binder 链接打开 仓库的另一个功能可以用来从头复制 *完整的草稿*。 Python 工作流管理器 [Snakemake](https://snakemake.readthedocs.io/en/stable/) 用于在一个 `Snakefile` 中定义所有需要的步骤。 要执行此工作流程， 您可以在 JupyterHub</a> 的

在线版本中打开一个 shell。 一旦用户接口加载完毕，打开新的终端和类型</p> 


```
snakemake -F --cores 1 manuscript
```


这将轮流执行所有所需步骤：

1. 通过执行 Jupyter 笔记本文件创建所有图案
2. 正在从 LaTeX 源编译实际的 `Latex/main.pdf` 文件

然后您应该在 `latex` 子文件夹中看到一个 `main.pdf` 文件。




### 支持软件环境的本地实例

Python 软件包repo2docker也可以在本地用于复制 相同的计算环境。 为此目的，您需要安装 Python 和 Docker 。 关于Docker和集装箱技术的一般详情， 请参阅关于 {ref}`可复制环境和容器的章节<rr-renv-containers>` 然后使用命令复制存储库到您的本地机上


```
git clone git@github.com:kkmann/sample-size-calculation-underuncenty.git
cd sample-size-calculation-underunction。
```


在克隆仓库后， 你可以使用 `中提供的配置文件
来构建和运行一个 Docker 容器。 缩进/` 使用以下命令的文件夹


```
jupyter-repo2docker -E .
```


构建完成后容器会自动启动，您可以在浏览器中使用 使用通常的 Jupyter 接口 ，通过关注repo2docker 打印的链接来在本地探索资源库。




### 利用连续集成

虽然这份手稿不需要重印， 仓库还使用连续整合({ref}`CI <rr-ci>`) 使用 [GitHub 动作](https://github.com/features/actions) GitHub 操作运行器直接从 GitHub 提供(见 `rr-ci-github-actions`)。

版本库在 `.github/workflow` 目录中定义了两个工作流。 第一个， [`.github/workflows/build_and_plus。 ml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml), 每当更新资源库的主分支和规格在 `中被激活。 整数` 已更改。 此构建容器，将其推到公共容器仓库 [停泊中心](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty)， 然后检查 Snakemake 工作流程是否经过了没有任何问题。 第二个， [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), 当文件夹 `时运行。 整数` 没有更改，使用预制的 停靠容器来运行 Snakemake 的工作流。 后者节省了大量的计算时间，因为计算 环境将比仓库内的内容更少一些。 因此使用 CI 可以通过拉取请求 技术完整性来方便检查贡献，并提供所需容器的最新版本 以直接下载。 这意味着你不能使用repo2docker在本地构建容器，因此你只能 直接下载它并使用以下命令执行工作流。


```
停靠-d --name mycontainer kkkmann/sample-size-calculation-undercentity
docker exec --name mycontainer /
    snakemake -F --cores 1 manuscript
```




### 长期存档和可读性

GitHub 版本库也与 [zenodo.org](https://zenodo.org/) 链接以确保长期 归档，请参阅 {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

请注意，由 Zenodo 提供的 DOI 也可以与 BinderHub 一起转换在 Zenodo 上备份的 仓库快照，在互动环境中 ([见此博客文章](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6))。
