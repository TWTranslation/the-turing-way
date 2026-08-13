(rr-vcs-git-compare)=

# バージョンの取得と比較

(rr-vcs-versions-retrieving)=

## 過去のバージョンを取得中

最新のコミット (前のバージョンに戻す) をキャンセルするには、次のコマンドを実行します。

```
git revert HEAD
```

このコマンドは、前のバージョンで行われた変更を元に戻す新しいコミットを作成します。
If you want to retrieve a version from weeks or months ago, start by using `git log` to find the SHA of the version you want to retrieve.
プロジェクト全体をこのバージョンにリセットするには、次のコマンドを実行します。

```
git checkout SHA_of_the_version
```

プロジェクト全体の以前のバージョンではなく、単一のファイルの古いバージョンが必要な場合。 次のコマンドを使用することで行うことができます。

```
git checkout SHA_of_the_version -- your_file_name
```

(rr-vcs-versions-retrieving-practice)=

### 良い練習

Commits should be 'atomic', meaning that **they should do one simple thing and they should do it completely**.
例えば、'atomic' コミットは、新しい関数を追加したり、変数の名前を変更したりすることができます。
プロジェクトへの多くの変更がすべて一緒にコミットされている場合。 そのバージョンでエラーが発生した場合のトラブルシューティングは難しい場合があります。
さらに、コミット全体を元に戻すと、有効で有用な作業が捨てられる可能性があります。

It is good practice to **specify the files to be committed**, that is, adding files to the staging area by name (`git add your_file_name`) rather than adding everything (`git add .`).
これにより、意図せずに別の変更をまとめることができなくなります。
たとえば、主にファイル B で作業している間にファイル A に変更を加えた場合 あなたはこれを忘れたかもしれない あなたがコミットに行くとき。
With `git add .`, file A would be brought along for the ride.
If there are several _unrelated_ changes that should not be added together in a _single_ file, `git add -p your_file_name` will let you interactively choose which changes to add.
That said, **you do not necessarily need to do per-file commits** when working on multiple files, but for one single problem.
例えば、ここでこの章に図を追加した場合、スキミング中の誰かの注意を引くものを選択します。

```{figure} ../../../figures/flipped-taj-mahal.*
---
name: flipped-taj-mahal
alt: A flipped photograph of the Taj Mahal to grab the reader's attention.
---
Flipped Taj Mahal
```

2つのファイルが変更されました:

1. まず、図ファイルがプロジェクト・リポジトリに追加されます。
2. 次に、このファイルに図を参照する行が追加されるので、図が表示されます。

So two files are affected, but "Add figure to version control chapter" is a single, _atomic_ unit of work, so only one commit is necessary.

最後に、バージョンでコミットされた他のファイルから再生成されたものをコミットしないでください (再生成に数時間かかるものでない限り)。
Generated files, such as scripts, clutter up your repository and may contain features such as timestamps that can cause annoying file conflicts (see {ref}`rr-vcs-git-merge`).
You can instruct Git to ignore certain files by creating a file called `.gitignore` and including names of the file that you do not need to store in your Git repository.
例えば、環境から環境へ変更される可能性のある設定ファイルは無視されるべきです。

(rr-vcs-versions-comparing)=

## バージョンの比較

ある時点で、プロジェクトのバージョンを比較する必要があります。 例えば、特定の結果を生成するためにどのバージョンが使用されたかを確認します。

To address this issue, use the `git diff` function, that takes two input data sets and outputs the changes between them.

`git diff` is a multi-use function that runs on Git data sources such as commits, branches, files and more.
By default, `git diff` will show you any uncommitted changes since the last commit.
2つの特定のものを比較したい場合、構文は次のとおりです。

```
git diff thing_a thing_b
```

For example, if you want to compare how a file has changed between two commits, use `git log` to get the SHAs of those commits and run:

```
git diff SHA_a:your_file_name SHA_b:your_file_name
```

または、2つのブランチを比較したい場合は、次のようになります。

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=

### 良い練習

With a little familiarity, `git diff` becomes an extremely powerful tool you can use to track what files have changed and exactly what those changes are.
これはバグを解明し、さまざまな人が行った作業を比較するのに非常に価値があります。
Be careful to **understand what exactly is being compared** and, where possible, **only compare the relevant files** for what you are interested in to avoid large amounts of extraneous information.
