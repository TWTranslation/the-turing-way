(rr-cs-statistical-methods-contribution)=
# 統計的手法解説

## このケーススタディについて

このケーススタディの目的は、 統計的研究の設計と実施において実施される 研究の再現性の異なる要素について議論することである。 With the help of their manuscript, the authors provide a catalog of methods used in their research and cross-reference them to the respective sections discussed in this {ref}`rr`.

## 本稿について

- **Title:** A review of Bayesian perspectives on sample size derivation for confirmatory trials{cite:ps}`Kunzmann2020CS`.
- **著者:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee, David S. Robertson, Kaspar Rufibach, James M. S. Wason
- **公開月 & 年**: 2020 年 6 月

### 概要

本 {cite:ps}`Kunzmann2020CS` 自体は、 臨床試験に適したサンプルサイズを導き出すという問題に関係している。 これは統計学における古典的な問題であり、 治験データの収集は極めて高価であり、 倫理的な考慮が必要である医療統計において特に重要である。 原稿では、サンプルサイズの誘導体に 計画不確実性を体系的に組み込む方法を検討し、拡大しています。

### 文献の概要

原稿はプレーンテキストの APA 形式で引用できます。

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). 確認試験のためのサンプルサイズ導出に関するベイズ的な視点のレビュー。 arXiv preprint arXiv:2006.15715.

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

git リポジトリ [https://github.com/kkmann/sample-size-calculation-under-concertain](https://github.com/kkmann/sample-size-calculation-under-uncertainty) には、原稿を作成するために必要なすべてのコードが含まれています [arXiv:2006.15715](https://arxiv.org/abs/2006.15715) 最初から。 再現可能な研究におけるバージョン管理の重要性について詳しく説明するには、 {ref}`バージョン管理システム<rr-vcs>` を参照してください。


### 研究データ管理

この特定の場合
{ref}`データ管理 <rr-rdm>` の側面は問題ではありません。なぜなら、 原稿は仮説的な例にのみ基づいており、 外部ではないからです。 保護されたデータが必要だ


#### Literate programming

本 {cite:ps}`Kunzmann2020CS` 自体は、 [LaTeX](https://www.latex-project.org/) で書かれています。 ソース ファイルは、サブフォルダー `latex/` に含まれています。 Plain TeX files were preferred over literate programming solutions like [knitr](https://github.com/rstudio/rmarkdown) for [R](https://www.r-project.org/) to facilitate the use of dedicated LaTeX editors like [Overleaf](https://www.overleaf.com/project). しかし、これは、原稿で使用されるすべての人物が別々に 作成される必要があることを意味します。 A dedicated [Jupyter notebook](https://jupyter.org/) `notebooks/figures-for-manuscript.ipynb` combining code and rudimentary descriptions are provided to that end.


### 再現可能なソフトウェア環境

Although this means that all code required to compile the manuscript from scratch is available in a self-contained environment, it is not yet sufficient for ensuring reproducibility. すべてのコードを実行するために同じ仕様 の LaTeX、Jupyter、R をインストールすることは、経験の浅いユーザにとっては難しいことです。 これを避けるために、興味のある読者がコードを試してみるのを防ぎます。 Pythonパッケージ [repo2docker](https://github.com/jupyter/repo2docker) と無料の [BinderHub](https://mybinder.org/) ホスティングサービスの組み合わせが使用されます。 これらのテクニックの詳細については、 {ref}`BinderHub<rr-binderhub>` の章を参照してください。 これにより、興味のある個人が リポジトリのインタラクティブなバージョンを、必要なすべてのソフトウェアがプリインストールされて開始することができます - 正確に バージョン! *バージョン安定版* バインダーリンクを提供することが可能であることに注意してください。

[![バッジ](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![バッジ](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAB8lBMVEX///9XmsrmZYH1olJXmsr1olJXmsrmZYH1olJXmsr1olJXmsrmZYH1olL1olJXmsr1olJXmsrmZYH1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olJXmsrmZYH1olL1olL0nFf1olJXmsrmZYH1olJXmsq8dZb1olJXmsrmZYH1olJXmspXmspXmsr1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olLeaIVXmsrmZYH1olL1olL1olJXmsrmZYH1olLna31Xmsr1olJXmsr1olJXmsrmZYH1olLqoVr1olJXmsr1olJXmsrmZYH1olL1olKkfaPobXvviGabgadXmsqThKuofKHmZ4Dobnr1olJXmsr1olJXmspXmsr1olJXmsrfZ4TuhWn1olL1olJXmsqBi7X1olJXmspZmslbmMhbmsdemsVfl8ZgmsNim8Jpk8F0m7R4m7F5nLB6jbh7jbiDirOEibOGnKaMhq+PnaCVg6qWg6qegKaff6WhnpKofKGtnomxeZy3noG6dZi+n3vCcpPDcpPGn3bLb4/Mb47UbIrVa4rYoGjdaIbeaIXhoWHmZYHobXvpcHjqdHXreHLroVrsfG/uhGnuh2bwj2Hxk17yl1vzmljzm1j0nlX1olL3AJXWAAAAbXRSTlMAEBAQHx8gICAuLjAwMDw9PUBAQEpQUFBXV1hgYGBkcHBwcXl8gICAgoiIkJCQlJicnJ2goKCmqK+wsLC4usDAwMjP0NDQ1NbW3Nzg4ODi5+3v8PDw8/T09PX29vb39/f5+fr7+/z8/Pz9/v7+zczCxgAABC5JREFUeAHN1ul3k0UUBvCb1CTVpmpaitAGSLSpSuKCLWpbTKNJFGlcSMAFF63iUmRccNG6gLbuxkXU66JAUef/9LSpmXnyLr3T5AO/rzl5zj137p136BISy44fKJXuGN/d19PUfYeO67Znqtf2KH33Id1psXoFdW30sPZ1sMvs2D060AHqws4FHeJojLZqnw53cmfvg+XR8mC0OEjuxrXEkX5ydeVJLVIlV0e10PXk5k7dYeHu7Cj1j+49uKg7uLU61tGLw1lq27ugQYlclHC4bgv7VQ+TAyj5Zc/UjsPvs1sd5cWryWObtvWT2EPa4rtnWW3JkpjggEpbOsPr7F7EyNewtpBIslA7p43HCsnwooXTEc3UmPmCNn5lrqTJxy6nRmcavGZVt/3Da2pD5NHvsOHJCrdc1G2r3DITpU7yic7w/7Rxnjc0kt5GC4djiv2Sz3Fb2iEZg41/ddsFDoyuYrIkmFehz0HR2thPgQqMyQYb2OtB0WxsZ3BeG3+wpRb1vzl2UYBog8FfGhttFKjtAclnZYrRo9ryG9uG/FZQU4AEg8ZE9LjGMzTmqKXPLnlWVnIlQQTvxJf8ip7VgjZjyVPrjw1te5otM7RmP7xm+sK2Gv9I8Gi++BRbEkR9EBw8zRUcKxwp73xkaLiqQb+kGduJTNHG72zcW9LoJgqQxpP3/Tj//c3yB0tqzaml05/+orHLksVO+95kX7/7qgJvnjlrfr2Ggsyx0eoy9uPzN5SPd86aXggOsEKW2Prz7du3VID3/tzs/sSRs2w7ovVHKtjrX2pd7ZMlTxAYfBAL9jiDwfLkq55Tm7ifhMlTGPyCAs7RFRhn47JnlcB9RM5T97ASuZXIcVNuUDIndpDbdsfrqsOppeXl5Y+XVKdjFCTh+zGaVuj0d9zy05PPK3QzBamxdwtTCrzyg/2Rvf2EstUjordGwa/kx9mSJLr8mLLtCW8HHGJc2R5hS219IiF6PnTusOqcMl57gm0Z8kanKMAQg0qSyuZfn7zItsbGyO9QlnxY0eCuD1XL2ys/MsrQhltE7Ug0uFOzufJFE2PxBo/YAx8XPPdDwWN0MrDRYIZF0mSMKCNHgaIVFoBbNoLJ7tEQDKxGF0kcLQimojCZopv0OkNOyWCCg9XMVAi7ARJzQdM2QUh0gmBozjc3Skg6dSBRqDGYSUOu66Zg+I2fNZs/M3/f/Grl/XnyF1Gw3VKCez0PN5IUfFLqvgUN4C0qNqYs5YhPL+aVZYDE4IpUk57oSFnJm4FyCqqOE0jhY2SMyLFoo56zyo6becOS5UVDdj7Vih0zp+tcMhwRpBeLyqtIjlJKAIZSbI8SGSF3k0pA3mR5tHuwPFoa7N7reoq2bqCsAk1HqCu5uvI1n6JuRXI+S1Mco54YmYTwcn6Aeic+kssXi8XpXC4V3t7/ADuTNKaQJdScAAAAAElFTkSuQmCC)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

このバッジは、(git タグ付け機能の を介して)特定の時点でリポジトリの状態を指します。 これは、リポジトリの内容に 以降修正があっても、リンクは有効で変更されないことを意味します。 Binderは複数のユーザーインターフェイスをサポートしています。 This is leveraged to provide and Jupyter lab Integrated Development Environment view on the repository to explore file, the Jupyter notebook, or to open a shell for further commands. 2番目のバッジは、直接 原稿で議論されているポイントのいくつかを説明するインタラクティブなShinyアプリを開き、 プログラミングに全く精通する必要はありません。 Binderに関連するすべての設定は、サブフォルダ `.binder`にあります。


### Snakemakeを使用したワークフロー管理

JupyterLab はバインダーリンクを使用して 開いたリポジトリインスタンスのシェルを開くこともできます。 リポジトリのもう一つの機能は、 *原稿全体をゼロから* 再現するために使用することができます。 Python ワークフローマネージャー [Snakemake](https://snakemake.readthedocs.io/en/stable/) は、 `Snakefile` 内の必要なすべてのステップを定義するために使用されました。 このワークフローを実行するには、 JupyterHub [オンライン版の](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/) でシェルを開きます。 ユーザーインターフェイスの読み込みが完了したら、新しい端末を開き、次のように入力します
```
snakemake -F --cores 1本
```
必要なすべてのステップを順番に実行します:

1. Jupyterノートブックファイルを実行してすべてのプロットを作成します
2. LaTeX ソースから実際の `latex/main.pdf` ファイルをコンパイル

`latex` サブフォルダに `main.pdf` ファイルが表示されます。


### ソフトウェア環境のローカルインスタンス化のサポート

Python パッケージ repo2docker は 同じコンピューティング環境を再現するためにローカルで使用することもできます。 このためには、PythonとDockerがインストールされている必要があります。 Dockerとコンテナ技術の一般的な詳細については、
 {ref}`再現可能な環境とコンテナ<rr-renv-containers>` の章を参照してください。 コマンドを使用してローカルマシン上のリポジトリを単純に複製する
```
git clone git@github.com:kkmann/sample-size-calculation-under-concerty.git
cd sample-size-calculation-under-concerty.
```
After cloning the repository, you can build and run a Docker container locally using the configuration files provided in the `.binder/` folder using the following command
```
jupyter-repo2docker -E .
```
コンテナはビルド完了後に自動的に起動されます。 リポジトリをローカルで探索するために、repo2docker によって印刷されたリンクに従うことで、通常のJupyterインターフェイスをブラウザで 使用できます。


### 継続的な統合の使用

この写本の再現性には不要ですが。 リポジトリは継続的な統合 ({ref}`CI <rr-ci>)`) [GitHub アクション](https://github.com/features/actions) を使用しています。 GitHub アクション Runner は GitHub から直接提供されます ( `rr-ci-github-actions` を参照)。

リポジトリは、 `.github/workflow` ディレクトリ内の 2 つのワークフローを定義します。 The first one, [`.github/workflows/build_and_run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml), is activated whenever the master branch of the repository is updated and the specifications in `.binder` are changed. これはコンテナをビルドし、パブリックコンテナリポジトリ [docker hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty)にプッシュします そして、スネークメークのワークフローが問題なく実行されることを確認します。 The second one, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), runs when the folder `.binder` was not changed and uses the pre-built Docker container to run the Snakemake workflow. 後者は、計算 環境はリポジトリの内容よりもはるかに少ない頻度で変化するため、多くの計算時間を節約します。 CIを使用することで、 技術的完全性を求めるプルリクエストによる貢献度の確認が容易になり、それぞれの最新バージョンのコンテナ を直接ダウンロードできるようになります。 つまり、repo2docker を使用してローカルにコンテナを構築する代わりに、 直接ダウンロードして、次のコマンドを使用してワークフローを実行することができます。
```
docker run -d -name mycontainer kkkmann/sample-size-calculation-under-concert
docker exec --name mycontainer /
    snakemake -F --cores 1 本
```

### 長期保存と<unk>

GitHub リポジトリは [zenodo.org](https://zenodo.org/) とリンクされており、長期的な アーカイブを確保しています。参照: {ref}`cm-citable-cite-site-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Zenodo が提供する DOI は BinderHub でも使用でき、インタラクティブな環境 で Zenodo にバックアップされた リポジトリスナップショットを有効にすることができます ([このブログの記事](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6) を参照してください)。
