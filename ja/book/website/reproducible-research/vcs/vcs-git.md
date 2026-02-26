(rr-vcs-git)=

# Git 入門

始めるには、Gitがコンピュータにインストールされていることを確認してください。
Instructions for installing Git on Linux, Windows and Mac machines are available [here](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git).
Once the installation is complete, go to your project directory via terminal or command-line interface (for example, `cd my-project-folder`).
プロジェクトフォルダにはサブディレクトリを含むすべてのファイルが含まれています。

プロジェクトで作業すると、進行中にファイルに多数の変更が加えられます。
場合によっては、変更を取り消したり、過去のバージョンを再確認したり、バージョンを比較したりする必要があるかもしれません。
Saving each version individually (such as `version_1.py` and `version_2.py`) is messy and quickly becomes impractical.

コミットは、個々のファイルまたはプロジェクト全体を必要に応じて安全に元に戻すことができるチェックポイントとして機能します。
コミットを行うことで、コードのバージョンを保存し、ディレクトリを乱雑にすることなく簡単にそれらを比較/切り替えることができます。

Git リポジトリを使用するには、以下の Git コマンドをターミナルで実行して、Git リポジトリを作成/初期化します。

```
git init
```

これはプロジェクトごとに一度だけ行う必要があります。

リポジトリは歴史が保存されている場所だと考えてください。
When you first initialise a repository with `git init`, all of the files in your project would not be added to the Git repository as they are  untracked by Git by default.
したがって、次のステップは、Gitリポジトリにファイルを追加し、Gitがそれらを追跡できるようにすることです。

現在のフォルダ内のすべてのファイルを追加するには、次のコマンドを実行します。

```
git add .
```

OR run the following command to add only a specific file (called 'your_file_name' in this example):

```
git add your_file_name
```

This command puts your newly added files or any other changes into what is called the "staging" area.

```{figure} ../../../figures/change-stage-repo.*
---
name: change-stage-repo
alt: An illustration of the `git add` and git commit Commands.
---
How `git add` and `git commit` works
```

どのファイルが追加されたかがわからない場合は、どのファイルが変更されています。 追跡されていないファイルは、次のように実行できます。

```
git status
```

次のステップは、ステージングエリアに保存された変更を「コミット」し、リポジトリに記録することです。

```
git commit
```

おめでとうございます。リポジトリの設定が完了しました！

You will learn more about `git commit` in the next chapter.
