(rr-ci-github-actions)=
# GitHub Actions との継続的統合

このセクションでは、 **GitHub Actions (GHA)** を使用して継続的インテグレーション(CI)の基本的なセットアップについて説明します。 GHAは、GitHubと完全に統合されたタスクオートメーションシステムです。 つまり、あらゆるイベントに基づいてあらゆるワークフローをオーケストレーションするAPIです。 多くのCIサービスプロバイダがありますが、GHAはこれまで以上にCIをリポジトリに組み込むことを容易にします。 プロジェクトワークフローのほぼすべての側面を自動化する柔軟な方法を提供します。 GitHub Actionの使用例をいくつか紹介します。

- ソフトウェアの自動テスト
- リポジトリ内の任意の変更の状態のレポートを生成します
- ラベル、課題、特別なメンションなどを使用したワークフロートリガーへの対応
- コードレビューとプルリクエストをトリガーする
- ブランチの管理

GitHub Actions はイベント駆動型で、任意のイベントに応答します(例: pull request (PR) が作成されました)。 課題が作成され、アクションをトリガーします (例:ラベルを追加し、テストを実行し、並べ替えます)。 これらのアクションのコレクションはワークフローと呼ばれます。 この GitHub 関連の語彙の詳細については、次のセクションで説明します。

```{figure} ../../figures/github-actions.jpg
---
width: 700px
align: center
name: Github actions
alt: GitHub actions がイベントをリッスンする方法を記述したダイアグラム。 `PR`が作成され、問題が作成され、PRがマージされました。そしてテスト、ソート、ラベル付け、展開などのジョブをトリガーします。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```
## GitHub関連の用語

### 1. ワークフロー

**ワークフロー** は、開始から終了までのオートメーションの単位である。 オートメーション中に考慮すべきすべての側面で構成されており、どのイベントがオートメーションをトリガーするかを含みます。 ワークフローは、GitHub 上でプロジェクトをビルド、テスト、パッケージ、リリース、またはデプロイするために使用できます。 以下の概要図に示すように、ステップから形成された複数のジョブで構成されています。

```{figure} ../../figures/ci-01.png
---
name: ContinuousIntegration-Nov20
alt: メインバージョンへのマージを表示するためのステップの説明にフィードするために、複数のジョブとアクションを連続的に連携させる方法を説明します。
---
左側: _Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807) 右側: GitHub Actionsの最も重要な概念の概要図は [morioh.com](https://morioh.com/p/aadcfe6cac57)から作成されています。
```

### 2. ジョブ

**ジョブ** は、同じランナーで実行されるシーケンシャルステップのセットとして定義されます。 ワークフローは1つまたは複数のジョブを構築することができ、並列(デフォルト)または順次実行することができます。

### 3. Step

**ステップ** は一つのタスクを表します。 ステップはアクションか、Python スクリプトを実行したり、コンソールに何かを出力したりするような他のコマンドユニットです。

### 4. アクション

GitHub **アクション** はワークフローと互換性のある方法で記述されたオートメーションの一部です。 [GitHub](https://github.com/actions), open source [community](https://github.com/sdras/awesome-actions)によってアクションを書くことも、自分で書くこともできます!

## GitHubアクションを始める

GitHub Actions はYAML 構文を使用し、リポジトリの `.github/workflow` という名前のディレクトリに格納されます。 テンプレート化されたワークフローを使用するか、独自のワークフローを作成することができます。


### 1- GitHub Actions テンプレートの使用

GitHub Actionsを使い始めたい場合 以下に示すように、ワークフローを作成するリポジトリの "Actions" タブをクリックします。 format@@0タブでは、リポジトリ内のいくつかのタスクをデプロイまたは自動化するのに役立つ、一般的なCIワークフローが表示されます。

```{figure} ../../figures/gifs/start_ghactions.gif
---
width: 600px
align: center
name: GitHub action template
alt: Github Actions テンプレートをGithub repoで見つけられる場所を示すgif。
---
```
これらのスターターワークフローのいずれかを選択し、さらにカスタマイズできます。  ワークフロー内のビルディングブロックの説明は、後のセクションで説明します。


### 2- ライブラリ固有のテンプレートを使用する。


Github Actionテンプレートは、利用可能なスターターキットだけではありません。関心のある言語用のライブラリ固有のテンプレートがあります。 For example, you can  use  {usethis} package in R to create a template for R packages by running `usethis::use_github_action_check_standard()`. これにより、コミットまたはプルリクエストごとにCRANチェックを実行するGitHubアクションが生成されます。 それで十分です！


### 3- 他のプロジェクトの構成をinsprirationとして使う

よくメンテナンスされているオープンソースライブラリの多くと、設定されたプロジェクトでは、CI に GitHub Actions を使用しています。 インスピレーションやアイデアを得るために、これらのプロジェクトのプルリクエストのチェックリストをご覧ください。 CIの設定ファイルを確認することにより、次のようになります。 ほとんどの場合、彼らのライセンスは、あなたのケースで動作するビットをコピーすることを可能にします。 このアプローチの利点は、すでに動作しているいくつかのアプローチを使用することです。

例:

- チューリングウェイワークフロー [チューリングウェイブックを構築し、プルリクエストのプレビューを提供する](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- A matrix of tests on [3 operating system, and multiple Python version for the Python package NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- Python パッケージの Numpy [ビルドをテストするより複雑なセットアップ](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


次のセクションでは、ワークフローのBuilding Blockについて説明します。

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
