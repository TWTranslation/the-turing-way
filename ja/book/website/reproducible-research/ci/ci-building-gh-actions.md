(rr-ci-building-gh-actions)=

# Github アクションのブロックの作成

As described previously, workflow files use YAML syntax, which has either a `.yml` or `.yaml` file extension.
If you're new to YAML and want to learn more, {ref}`see our section about YMAL<rr-renv-yaml>`.
This workflow files must be stored in the `.github/workflows` directory of your repository.

各ワークフローは個別の YAML で定義されます。 Hello Worldの例を使ってワークフローの構築ブロックを紹介します。

```
name:
    Hello World package
on:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
```

**1. name**

これはワークフローの名前であり、オプションです。 GitHub はリポジトリのアクションページに表示するためにこの名前を使用します。

```
name:
    Hello World package
```

**2. on**

The `on` field tells GHA when to run. For example, we can run the workflow anytime there's a `push` or a `pull` on the `main` branch.

```
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
```

ワークフローをトリガーするために使用できるイベントがたくさんあります。 You can explore them [here](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. jobs and steps**

このブロックは、Action ワークフローのコアコンポーネントを定義します。 Workflows are made of `jobs`.
Every job also needs a specific host machine on which to run, the `runs-on:` field is how we specify it.
The template workflow is running the `build` job in the latest version of Ubuntu, a Linux-based operating system.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

We can also separate the `build` and `test` functions of our workflow into more than one job that will run when our workflow is triggered. Jobs are made of `steps`.
これにより、各ジョブで何を実行するかを定義できます。
ステップを定義する方法は3つあります。

- With `uses`
- With `run`
- With `name`

```

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
  test:
    steps:
    - name: npm install
      run: |
        npm install
        npm test
```

The most basic action is `actions/checkout@v3`.
This uses a GitHub provided action called [`checkout`](https://github.com/actions/checkout) to allow the workflow to access the contents of the repository.
ジョブのすべてのステップは、ジョブに関連付けられたランナーで順番に実行されます。
デフォルトでは、ステップが失敗した場合、ジョブの次のステップはスキップされます。 runキーワードは、ランナー環境で新しいプロセスとシェルを表します。
複数行のコマンドを指定すると、各行は同じシェルで実行されます。

Providing a comprehensive guide of all the available options is beyond the scope of this overview, and instead, we would urge you to study [official reference documentation](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) and/or the CI configuration open-source projects references in the previous section.
