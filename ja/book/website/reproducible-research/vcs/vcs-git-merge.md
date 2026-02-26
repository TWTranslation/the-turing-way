(rr-vcs-git-merge)=

# Git でブランチをマージする

(rr-vcs-merge-command)=

## The `git merge` Command

ブランチの作業が終わったら、メインプロジェクト(または他のブランチ)に統合する準備が整いました。 あなたが作業したブランチをメインブランチや、関心のある他のターゲットブランチに統合できます。
マージを使用して、他の人が自分でやった作業を組み合わせることもできます。

ブランチをマージするには、branch_Aを別のブランチにマージするには、branch_Bをviaに切り替えます:

```
git checkout branch_A
```

それを branch_B にマージする方法:

```
git merge branch_B
```

作業ディレクトリまたはマージ中のファイルによって書き換えられる可能性のあるステージング領域に変更がある場合、マージはできません。
この場合、個々のファイルにマージの競合はありません。
リストされているファイルをコミットまたは隠し、再度試す必要があります。
エラーメッセージは以下の通りです:

```
error: Entry 'your_file_name' not update. Cannot merge. (Changes in working directory)
```

または

```
error: Entry 'your_file_name' would be overwritten by merge. Cannot merge. (Changes in staging area)
```

(rr-vcs-merge-command-practice)=

### 良い練習

First and foremost, your **main branch should always be stable**.
マージ作業のみが終了およびテストされます (異なるブランチなど)。
プロジェクトがコラボレーションしている場合 他の人が自分の仕事に頻繁に加わる変更をマージしたり、自分の変更を共同作業者と共有したりするのは良いアイデアです。
If you do not do it often, it is very easy for merge conflicts to arise (next section).

(rr-vcs-merge-conflicts)=

## コンフリクトの結合

異なるブランチで同じファイルに変更が加えられた場合、それらの変更は互換性がない場合があります。
これは最も一般的に共同プロジェクトで行われますが、ソロプロジェクトでも行われます。
例えば、このコード行のファイルが含まれるプロジェクトがあるとします。

```
print('hello world')
```

ある人が枝にあるとします。少し「上に上に上げて」行を変更したとします。

```
print('hello world!!!')
```

他の誰かが別の枝にそれを変更することにしました:

```
print('Hello World')
```

彼らはそれぞれの枝で作業を続け、最終的にマージすることにしました。
Their version control software then goes through and combines their changes into a single version of the file; _but_, when it gets to the `hello world` statement, it does not know which version to use.
これはマージ競合です: 互換性のない変更が同じファイルに行われています。

マージの競合が発生すると、マージ処理中にフラグが立てられます。
競合するファイル内では、互換性のない変更がマークされるため、以下のように修正できます。

```
<<<<<<< HEAD
print('hello world!!!')
=======
print('Hello World')
>>>>>>> main
```

`<<<<<<<`: Indicates the start of the lines that had a merge conflict.
行の最初のセットは、変更をマージしようとしていたファイルからの行です。

`=======`: Indicates the breakpoint used for comparison.
ユーザーがコミットした変更(上記)と、マージ(下記)から得られる変更(視覚的な比較)を区別します。

`>>>>>>>`: Indicates the end of the lines that had a merge conflict.

Gitがマージできなかったファイルの一部を手動でマージするようにファイルを編集して競合を解決します。
これは、あなたの変更または他の誰かが両方を混在させることを意味するかもしれません。
You will also need to delete the `<<<<<<<`, `=======`, and `>>>>>>>` in the file.
In this project, the users may decide in favour of one `hello world` over another, or they may decide to replace the conflict with:

```
print('Hello World!!!')
```

競合を修正したら、新しいバージョンをコミットします。
競合を解決しました。
If during the process, you need a reminder of which files the conflicts are in, you can use `git status` to find out.

特に厄介な競合があり、あなたが使用できるマージを中止したい場合:

```
git merge --abort
```

(rr-vcs-merge-conflicts-practice)=

### 良い練習

競合を解決しようとする前に 変化を十分に理解してくださいそしてそれらが両立しないように 事態をより絡ませるリスクを回避するために
Merge の競合は、特に多くのコミットを分岐し、多数の非互換性があるブランチをマージしている場合は、解決することができます。
ただし、以前のバージョンは安全であり、過去のバージョンに影響を与えずにこの問題を修正することができます。
This is why it is good practice to **merge other's changes into your work frequently**.

マージ競合の解決に役立つツールがあります。無料ツールもあります。そうでないツールもあります。
あなたのために働くものを見つけ、あなた自身をよく理解しなさい。
Commonly used merge tools include [KDiff3](http://kdiff3.sourceforge.net/), [Beyond Compare](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/), and [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge).
ツールをデフォルトとして設定するには:

```
git config --global merge.tool name_of_the_tool
```

次の場所で起動します:

```
git mergetool
```

基本的にはマージ競合に対処する最善の方法は、最初の場所でそれらを避けることを試みることです。
ブランチをきれいに保ち、1つの問題に焦点を当て、可能な限り少ないファイルを含めることで、これに対する確率を向上させることができます。
マージする前に、両方のブランチに何があるかを確認してください。
枝に取り組んでいるのはあなただけではない場合 だったらコミュニケーションの線を開けたままにしておきなさい。
