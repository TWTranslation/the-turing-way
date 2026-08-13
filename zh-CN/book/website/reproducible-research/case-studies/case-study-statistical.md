(rr-cs-statistical-methods-manuscript)=

# 统计方法手稿

## 关于此案例研究

本案例研究的目的是讨论在设计和进行一项 统计研究时实施的 种研究的不同组成部分。
With the help of their manuscript, the authors provide a catalog of methods
used in their research and cross-reference them to the respective
sections discussed in this {ref}`rr`.

## 关于手稿

- **Title:** A review of Bayesian perspectives on sample size derivation
  for confirmatory trials{cite:ps}`Kunzmann2020CS`.
- **Authors:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee,
  David S. Robertson, Kaspar Rufibach, James M. S. Wason
- **Publication month & year**: June 2020

### 概述

The manuscript {cite:ps}`Kunzmann2020CS` itself is concerned with the problem of
deriving a suitable sample size for a clinical trial.
这是统计中的一个典型问题，在 医疗统计中尤其重要，因为在这些统计中，收集试验数据的费用极高， 个伦理因素需要得到解决。
手稿审查并扩大方法，系统地将 规划不确定性纳入样品大小衍生剂。

### 引用摘要

稿件可以用纯文本的APA格式进行引用：

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020).
> A review of Bayesian perspectives on sample size derivation for confirmatory trials.
> arXiv preprint arXiv:2006.15715.

BibTeX格式：

```
@article{
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     author = {Kunzmann, Kevin and Grayling, Michael J and Lee, Kim May and Robertson, David S and Rufibach, Kaspar and Wason, James},
    journal = {arXiv preprint arXiv:2006.15715},
       year = {2020}
}
```

## 可再现研究的不同方法列表

### Version control

The git repository
[https://github.com/kkmann/sample-size-calculation-under-uncertainty](https://github.com/kkmann/sample-size-calculation-under-uncertainty)
contains all code required to produce the manuscript
[arXiv:2006.15715](https://arxiv.org/abs/2006.15715)
from scratch.
For an in-depth explanation of the importance of version control for
reproducible research, see {ref}`Version Control Systems<rr-vcs>`.

### 研究数据管理

In this particular case,
{ref}`data management <rr-rdm>` aspects are not an issue since the
manuscript is exclusively based on hypothetical examples and no
external, protected data is required.

#### 可读性编程

The manuscript {cite:ps}`Kunzmann2020CS` itself is written in and built with
[LaTeX](https://www.latex-project.org/).
The source files are contained in the subfolder `latex/`.
Plain TeX files were preferred over literate programming solutions like
[knitr](https://github.com/rstudio/rmarkdown) for [R](https://www.r-project.org/)
to facilitate the use of dedicated LaTeX editors like [Overleaf](https://www.overleaf.com/project).
然而，这意味着手稿中使用的所有数字都需要单独创建。
A dedicated [Jupyter notebook](https://jupyter.org/)
`notebooks/figures-for-manuscript.ipynb` combining code and rudimentary
descriptions are provided to that end.

### 可重现的软件环境

Although this means that all code required to compile the manuscript from scratch
is available in a self-contained environment,
it is not yet sufficient for ensuring reproducibility.
Although this means that all code required to compile the manuscript from scratch is available in a self-contained environment, it is not yet sufficient for ensuring reproducibility. 安装 LaTeX、Jupyter和R具有相同规格的 来运行所有代码仍然对经验较少的用户具有挑战性。
To avoid this from keeping interested readers from experimenting with the code,
a combination of the Python package
[repo2docker](https://github.com/jupyter/repo2docker) and a free
[BinderHub](https://mybinder.org/) hosting service is used.
For details on these techniques, see the chapters on {ref}`Binder<binder>` and {ref}`BinderHub<rr-binderhub>`.
这使感兴趣的个人能够开始一个交互式版本的 存储库，所有必需的软件都已预先安装 - 完全是正确的 版本！
Note that it is possible to provide _version stable_ binder links

[![badge](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![badge](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

此徽章指向存储库在特定时间点的状态 (通过 git 标签功能)。
这意味着链接仍然有效且没有改变，即使后来对资源库的内容进行了 次更正！
Binder supports multiple user interfaces.
此插件用于在资源库上提供 Jupyter 集成开发环境 视图以探索文件， Jupyter 笔记本，或为 进一步命令打开一个shell。
The second badge directly opens an interactive Shiny app that illustrates some of the points discussed in the manuscript and requires no familiarity with programming at all. Binder的所有相关配置都位于子文件夹 <code>.binder</code> 中。
All relevant configurations for Binder are located in the subfolder `.binder`.

### Workflow management using Snakemake

Since JupyterLab also allows to open a shell in the repository instance opened
using a Binder link,
another feature of the repository can be used to reproduce the _entire manuscript from scratch_.
The Python workflow manager [Snakemake](https://snakemake.readthedocs.io/en/stable/)
was used to define all required steps in a `Snakefile`.
To execute this workflow,
you can open a shell in the [online version of JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/).
Once the user interface finished loading, open a new terminal and type

```
snakemake -F --cores 1  manuscript
```

This will execute all the required steps in turn:

1. create all plots by executing the Jupyter notebook file
2. compiling the actual `latex/main.pdf` file from the LaTeX sources

You should then see a `main.pdf` file in the `latex` subfolder.

### Support for local instantiation of the software environment

Python 软件包repo2docker也可以在本地用于复制 相同的计算环境。
To this end, you will need to have Python and Docker installed.
For details on Docker and container technologies in general,
please see the chapter on {ref}`reproducible environments and containers<rr-renv-containers>`.
Then simply clone the repository on your local machine using the commands

```
git clone git@github.com:kkmann/sample-size-calculation-under-uncertainty.git
cd sample-size-calculation-under-uncertainty
```

After cloning the repository,
you can build and run a Docker container locally using the configuration files
provided in the `.binder/` folder using the following command

```
jupyter-repo2docker -E .
```

The container is started automatically after the build completes and you can
use the usual Jupyter interface in your browser
by following the link printed by repo2docker
to explore the repository locally.

### Use of continuous integration

Although not necessary for the reproducibility of this manuscript,
the repository also makes use of continuous integration ({ref}`CI <rr-ci>`)
using [GitHub actions](https://github.com/features/actions).
GitHub actions runners are provided directly from GitHub (see `rr-ci-github-actions`).

The repository defines two workflows in `.github/workflows` directory.
The first one, [`.github/workflows/build_and_run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml),
is activated whenever the master branch of the repository is updated and the specifications in `.binder` are changed.
This builds the container, pushes it to a public container repository [docker hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty), and then checks that the Snakemake workflow runs through without problems.
The second one, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml),
runs when the folder `.binder` was not changed and uses the pre-built
Docker container to run the Snakemake workflow.
后者节省了大量的计算时间，因为计算 环境将比仓库内的内容更少一些。
因此使用 CI 可以通过拉取请求 技术完整性来方便检查贡献，并提供所需容器的最新版本 以直接下载。
这意味着你不能使用repo2docker在本地构建容器，因此你只能 直接下载它并使用以下命令执行工作流。

```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-uncertainty
docker exec --name mycontainer /
    snakemake -F --cores 1  manuscript
```

### 长期存档和引用

The GitHub repository is also linked with [zenodo.org](https://zenodo.org/) to ensure long-term
archiving, see {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Note that a DOI provided by Zenodo can also be used with BinderHub to turn a
repository snapshot backed up on Zenodo in an interactive environment
([see this blog post](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
