(rr-ci-building-gh-actions)=
# Github アクションのブロックの作成

前述のように、ワークフローファイルは `.yml` または `.yaml` のファイル拡張子を持つ YAML 構文を使用します。 YAML を初めて利用していて、詳細を知りたい場合は、 {ref}`YMAL についてのセクション<rr-renv-yaml>` をご覧ください。 このワークフローファイルは、リポジトリの `.github/workflow` ディレクトリに保存する必要があります。

各ワークフローは個別の YAML で定義されます。 Hello Worldの例を使ってワークフローの構築ブロックを紹介します。

```
name:
    Hello World パッケージ
on:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-latest
    step:
      - uses: actions/checkout@v2
```

**1. 名前**

これはワークフローの名前であり、オプションです。 GitHub はリポジトリのアクションページに表示するためにこの名前を使用します。
```
name:
    Hello World パッケージ
```

**2. オン**

`フィールドの` は GHA を指定します。 たとえば、 `push` や `pull` が `main` ブランチにあるときはいつでもワークフローを実行できます。
```
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
```
ワークフローをトリガーするために使用できるイベントがたくさんあります。 [こちら](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions) をご覧ください。

**3. 仕事とステップ**

このブロックは、Action ワークフローのコアコンポーネントを定義します。 ワークフローは `ジョブ` で構成されます。 すべてのジョブはまた、特定のホストマシンを実行する必要があります。 `runs-on:` フィールドは、指定する方法です。 テンプレートワークフローは、LinuxベースのオペレーティングシステムであるUbuntuの最新バージョンで `build` ジョブを実行しています。

```
jobs:
  build:
  runs-on: ubuntu-latest
```

ワークフローの `ビルド` と `テスト` 関数を、ワークフローがトリガーされたときに実行される複数のジョブに分けることもできます。 ジョブは `ステップ` で構成されています。 これにより、各ジョブで何を実行するかを定義できます。 ステップを定義する方法は3つあります。

- `で` を使う
- `run` で
- `の名前` で

```

jobs:
  build:
    runs-on: ubuntu-latest
    step:
    - uses: actions/checkout@v2
  test:
    step:
    - name: npm install
      run: |
        npm install
        npm test
```

最も基本的なアクションは `actions/checkout@v2` です。 これは、ワークフローがリポジトリのコンテンツにアクセスできるようにするために、 [`checkout`](https://github.com/actions/checkout) という名前の GitHub が提供するアクションを使用します。 ジョブのすべてのステップは、ジョブに関連付けられたランナーで順番に実行されます。 デフォルトでは、ステップが失敗した場合、ジョブの次のステップはスキップされます。 runキーワードは、ランナー環境で新しいプロセスとシェルを表します。 複数行のコマンドを指定すると、各行は同じシェルで実行されます。

利用可能なすべてのオプションの包括的なガイドを提供することは、この概要の範囲を超えています。 私たちは、前のセクションの [公式リファレンスドキュメント](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) および/またはCI構成のオープンソースプロジェクトの参照を研究することを強くお勧めします。
