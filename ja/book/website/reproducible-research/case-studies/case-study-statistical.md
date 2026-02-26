(rr-cs-statistical-methods-contribution)=

# 統計的手法解説

## このケーススタディについて

このケーススタディの目的は、
統計的研究の設計と実施において実施される
研究の再現性の異なる要素について議論することである。
With the help of their manuscript, the authors provide a catalog of methods
used in their research and cross-reference them to the respective
sections discussed in this {ref}`rr`.

## 本稿について

- **Title:** A review of Bayesian perspectives on sample size derivation
  for confirmatory trials{cite:ps}`Kunzmann2020CS`.
- **Authors:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee,
  David S. Robertson, Kaspar Rufibach, James M. S. Wason
- **Publication month & year**: June 2020

### Overview

The manuscript {cite:ps}`Kunzmann2020CS` itself is concerned with the problem of
deriving a suitable sample size for a clinical trial.
これは統計学における古典的な問題であり、
治験データの収集は極めて高価であり、
倫理的な考慮が必要である医療統計において特に重要である。
原稿では、サンプルサイズの誘導体に
計画不確実性を体系的に組み込む方法を検討し、拡大しています。

### 文献の概要

原稿はプレーンテキストの APA 形式で引用できます。

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020).
> 確認試験のためのサンプルサイズ導出に関するベイズ的な視点のレビュー。
> arXiv preprint arXiv:2006.15715.

BibTeX形式:

```
@article{
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     author = {Kunzmann, Kevin and Grayling, Michael J and Lee, Kim May and Robertson, David S and Rufibach, Kaspar and Wason, James},
    journal = {arXiv preprint arXiv:2006.15715},
       year = {2020}
}
```

## 再現性のある研究のためのさまざまな方法のカタログ

### バージョン管理

The git repository
[https://github.com/kkmann/sample-size-calculation-under-uncertainty](https://github.com/kkmann/sample-size-calculation-under-uncertainty)
contains all code required to produce the manuscript
[arXiv:2006.15715](https://arxiv.org/abs/2006.15715)
from scratch.
For an in-depth explanation of the importance of version control for
reproducible research, see {ref}`Version Control Systems<rr-vcs>`.

### 研究データ管理

In this particular case,
{ref}`data management <rr-rdm>` aspects are not an issue since the
manuscript is exclusively based on hypothetical examples and no
external, protected data is required.

#### Literate programming

The manuscript {cite:ps}`Kunzmann2020CS` itself is written in and built with
[LaTeX](https://www.latex-project.org/).
The source files are contained in the subfolder `latex/`.
Plain TeX files were preferred over literate programming solutions like
[knitr](https://github.com/rstudio/rmarkdown) for [R](https://www.r-project.org/)
to facilitate the use of dedicated LaTeX editors like [Overleaf](https://www.overleaf.com/project).
しかし、これは、原稿で使用されるすべての人物が別々に
作成される必要があることを意味します。
A dedicated [Jupyter notebook](https://jupyter.org/)
`notebooks/figures-for-manuscript.ipynb` combining code and rudimentary
descriptions are provided to that end.

### 再現可能なソフトウェア環境

Although this means that all code required to compile the manuscript from scratch
is available in a self-contained environment,
it is not yet sufficient for ensuring reproducibility.
すべてのコードを実行するために同じ仕様
の LaTeX、Jupyter、R をインストールすることは、経験の浅いユーザにとっては難しいことです。
To avoid this from keeping interested readers from experimenting with the code,
a combination of the Python package
[repo2docker](https://github.com/jupyter/repo2docker) and a free
[BinderHub](https://mybinder.org/) hosting service is used.
For details on these techniques, see the chapters on {ref}`Binder<binder>` and {ref}`BinderHub<rr-binderhub>`.
これにより、興味のある個人が
リポジトリのインタラクティブなバージョンを、必要なすべてのソフトウェアがプリインストールされて開始することができます - 正確に
バージョン!
Note that it is possible to provide _version stable_ binder links

[![badge](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![badge](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

このバッジは、(git タグ付け機能の
を介して)特定の時点でリポジトリの状態を指します。
これは、リポジトリの内容に
以降修正があっても、リンクは有効で変更されないことを意味します。
Binderは複数のユーザーインターフェイスをサポートしています。
This is leveraged to provide and Jupyter lab Integrated Development Environment
view on the repository to explore file, the Jupyter notebook, or to open a shell for
further commands.
2番目のバッジは、直接
原稿で議論されているポイントのいくつかを説明するインタラクティブなShinyアプリを開き、
プログラミングに全く精通する必要はありません。
All relevant configurations for Binder are located in the subfolder `.binder`.

### Snakemakeを使用したワークフロー管理

Since JupyterLab also allows to open a shell in the repository instance opened
using a Binder link,
another feature of the repository can be used to reproduce the _entire manuscript from scratch_.
The Python workflow manager [Snakemake](https://snakemake.readthedocs.io/en/stable/)
was used to define all required steps in a `Snakefile`.
To execute this workflow,
you can open a shell in the [online version of JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/).
ユーザーインターフェイスの読み込みが完了したら、新しい端末を開き、次のように入力します

```
snakemake -F --cores 1  manuscript
```

必要なすべてのステップを順番に実行します:

1. Jupyterノートブックファイルを実行してすべてのプロットを作成します
2. compiling the actual `latex/main.pdf` file from the LaTeX sources

You should then see a `main.pdf` file in the `latex` subfolder.

### ソフトウェア環境のローカルインスタンス化のサポート

Python パッケージ repo2docker は
同じコンピューティング環境を再現するためにローカルで使用することもできます。
このためには、PythonとDockerがインストールされている必要があります。
For details on Docker and container technologies in general,
please see the chapter on {ref}`reproducible environments and containers<rr-renv-containers>`.
コマンドを使用してローカルマシン上のリポジトリを単純に複製する

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

コンテナはビルド完了後に自動的に起動されます。
リポジトリをローカルで探索するために、repo2docker
によって印刷されたリンクに従うことで、通常のJupyterインターフェイスをブラウザで
使用できます。

### 継続的な統合の使用

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
後者は、計算
環境はリポジトリの内容よりもはるかに少ない頻度で変化するため、多くの計算時間を節約します。
CIを使用することで、
技術的完全性を求めるプルリクエストによる貢献度の確認が容易になり、それぞれの最新バージョンのコンテナ
を直接ダウンロードできるようになります。
つまり、repo2docker を使用してローカルにコンテナを構築する代わりに、
直接ダウンロードして、次のコマンドを使用してワークフローを実行することができます。

```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-uncertainty
docker exec --name mycontainer /
    snakemake -F --cores 1  manuscript
```

### 長期保存と<unk>

The GitHub repository is also linked with [zenodo.org](https://zenodo.org/) to ensure long-term
archiving, see {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Note that a DOI provided by Zenodo can also be used with BinderHub to turn a
repository snapshot backed up on Zenodo in an interactive environment
([see this blog post](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
