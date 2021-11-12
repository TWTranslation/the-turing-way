(rr-vcs-git-compare)=
# バージョンの取得と比較

(rr-vcs-versions-retrieving)=
## 過去のバージョンを取得中

最新のコミット (前のバージョンに戻す) をキャンセルするには、次のコマンドを実行します。
```
git revert Head
```

このコマンドは、前のバージョンで行われた変更を元に戻す新しいコミットを作成します。 数週間または数ヶ月前からバージョンを取得したい場合は、 `git log` を使用して、取得したいバージョンの SHA を見つけます。 プロジェクト全体をこのバージョンにリセットするには、次のコマンドを実行します。

```
git checkout SHA_of_the_version
```

プロジェクト全体の以前のバージョンではなく、単一のファイルの古いバージョンが必要な場合。 次のコマンドを使用することで行うことができます。

 ```
 git checkout SHA_of_the_version -- your_file_name
 ```

(rr-vcs-versions-retrieving-practice)=
### 良い練習

コミットは 'atomic' である必要があります。つまり、 **は簡単なことを一つする必要があり、完全に行う必要があります**。 例えば、'atomic' コミットは、新しい関数を追加したり、変数の名前を変更したりすることができます。 プロジェクトへの多くの変更がすべて一緒にコミットされている場合。 そのバージョンでエラーが発生した場合のトラブルシューティングは難しい場合があります。 さらに、コミット全体を元に戻すと、有効で有用な作業が捨てられる可能性があります。

It is good practice to **specify the files to be committed**, that is, adding files to the staging area by name (`git add your_file_name`) rather than adding everything (`git add .`). これにより、意図せずに別の変更をまとめることができなくなります。 たとえば、主にファイル B で作業している間にファイル A に変更を加えた場合 あなたはこれを忘れたかもしれない あなたがコミットに行くとき。 `git add .`では、ファイル A がライド用に導入されます。 If there are several *unrelated* changes that should not be added together in a *single* file, `git add -p your_file_name` will let you interactively chose which changes to add. とはいえ、 **複数のファイルを扱う場合は必ずしもファイル毎のコミット** をする必要はありませんが、1つの問題があります。 例えば、ここでこの章に図を追加した場合、スキミング中の誰かの注意を引くものを選択します。

```{figure} ../../figures/flipped-taj-mahal.png
---
name: flipped-taj-mahal
alt: 読者の注意を引くためにタージ・マハルをひっくり返した写真。
---
タージ・マハルを反転させた
```

2つのファイルが変更されました:

1. まず、図ファイルがプロジェクト・リポジトリに追加されます。
2. 次に、このファイルに図を参照する行が追加されるので、図が表示されます。

したがって、2つのファイルが影響を受けますが、「バージョン管理チャプターに図を追加」は単一です。 *原子* 作業単位なので、1つのコミットしか必要ありません。

最後に、バージョンでコミットされた他のファイルから再生成されたものをコミットしないでください (再生成に数時間かかるものでない限り)。 スクリプトなどの生成されたファイル リポジトリを混乱させ、迷惑なファイルの競合を引き起こす可能性のあるタイムスタンプなどの機能が含まれている場合があります ( {ref}`rrr-vcs-git-merge` を参照してください)。 You can instruct Git to ignore certain files by creating a file called `.gitignore` and including names of the file that you do not need to store in your Git repository. 例えば、環境から環境へ変更される可能性のある設定ファイルは無視されるべきです。

(rr-vcs-versions-comparing)=
## バージョンの比較

ある時点で、プロジェクトのバージョンを比較する必要があります。 例えば、特定の結果を生成するためにどのバージョンが使用されたかを確認します。

この問題に対処するには、2つの入力データセットを取り、それらの間の変更を出力する `git diff` 関数を使用します。

`git diff` はコミット、ブランチ、ファイルなどのGit データソース上で動作する多用途機能です。 デフォルトでは、 `git diff` は前回のコミット以降に反映されていない変更を表示します。 2つの特定のものを比較したい場合、構文は次のとおりです。

```
git diff thing_a thing_b
```

たとえば、2つのコミット間でファイルがどのように変更されたかを比較したい場合。 これらのコミットと実行のSHAを取得するには、 `git log` を使用します。

```
git diff SHA_a:your_file_name SHA_b:your_file_name
```

または、2つのブランチを比較したい場合は、次のようになります。

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=
### 良い練習

少し親しみやすさがあります `git diff` は、どのファイルが変更されたか、変更内容が正確に把握できる非常に強力なツールになります。 これはバグを解明し、さまざまな人が行った作業を比較するのに非常に価値があります。 Be careful to **understand what exactly is being compared** and, where possible, **only compare the relevant files** for what you are interested in to avoid large amounts of extraneous information.
