(rr-ci-resources)=
# チェックリストとリソース

## Checklist

- 少なくとも1人他の人とコラボレーションするプロジェクトがあります
- GitHubにプロジェクトを置く
- プロジェクトメンバーが定期的にこの中央リポジトリに作業をコミットさせます
- そのプロジェクトには少なくともいくつかのテストが必要です
- `ci.yml` ファイルを以下のように書きます。
  - `.github/workflow` 内でなければなりません
  - YMAL の `キー` を使用してワークフローをトリガーする GitHub イベントの名前を定義します。
  - `jobs` と `runs-on` を使用してジョブを実行する特定のホストマシンを定義します。
  - before_install ステップでプロジェクトを実行するために必要な依存関係をインストールするコードを含みます。
  - プロジェクト テストを実行するスクリプトが含まれています
- プロジェクトのGitHubリポジトリに `ci.yml` ファイルをコミット
- 新しいコミットがプッシュされるたびに、Travisはテストを実行し、結果を返します。 コミットがテスト/テストを失敗させることを報告する場合は、できるだけ早く問題を見つけて修正してください

## 次に学ぶべきこと

まだテストの章を読んでいない場合は、CIを最大限に活用するために、さまざまな種類のテストとその利点についてもっと学ぶことをお勧めします。

## 定義/用語集

**継続的な統合:** プロジェクトメンバーの作業を定期的に集中版に組み合わせるプロセス。 CIとも呼ばれる。 CIソフトウェアは通常、統合によって導入された競合やバグを特定するために、プロジェクトの統合バージョンでテストを実行します。

**構築:** ジョブのグループ。 たとえば、ビルドには2つのジョブがあり、それぞれ異なるバージョンのプログラミング言語を持つプロジェクトをテストします。 すべてのジョブが完了すると、ビルドは終了します。

**計算環境:** プロジェクトが実行されている環境(オペレーティングシステム、インストールされているソフトウェア、およびその両方のバージョンを含む)。

**GitHub:** 広く使われているバージョン管理プラットフォーム。

**GitHub Actions:** GitHubリポジトリ上で動作するCI/CDサービスです。

**Workflow** リポジトリの _.github/workflow_ ディレクトリに格納された YAML ファイルです。

**アクション** **ワークフロー** でインポートして使用できるパッケージです。 GitHub は **[Actions Marketplace](https://github.com/marketplace?type=actions)** を提供し、ワークフローで使用するアクションを見つけます。

**Job** 一連の **ステップ** を実行する仮想マシンです。 **ジョブ** はデフォルトで並列化されますが、 **ステップ** はデフォルトでシーケンシャルです。

## 実践的なチュートリアル

- GitHub Actionsを使い始めるために、Padokは [ハンドオンチュートリアル](https://github.com/padok-team/github-actions-tutorial) を提供し、自動的にテストするワークフローを構築できます。 簡単なマイクロサービスをビルド、リリース、デプロイします。
- GitHub Learning Labでは、GitHubアクションを学ぶための [実用的なプロジェクトのインタラクティブガイドも提供しています](https://lab.github.com/githubtraining/github-actions:-continuous-integration)。

## 参照

- [CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [SSI blog](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Creative Commons Attribution Non-Commercial 2.5 License**
- [連続統合、継続展開、継続配信の違い](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License**
- [python の CI](https://docs.python-guide.org/scenarios/ci/) **Attribution-NonCommercial-ShareAlike 3.0 Unported**
- [GitHub のアクションを始める: 概念とチュートリアル](https://www.padok.fr/en/blog/github-actions)
- [GitHub Actions を使用した CI/CD チュートリアル](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Docker コンテナーアクションの作成](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### 使用するマテリアル: Githubのアクションとは何ですか?どのように機能しますか?

- [GitHub Actions チートシート](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [GitHub ドキュメント: アクション - コアコンセプト](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [GitHub ドキュメント: アクション - ワークフローの構成と管理](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## 謝辞

シェフィールド大学RSEグループのDavid Jonesに有用な議論に感謝します。
