(rr-vcs-workflow-branches)=

# 「ブランチ」を使用したプロジェクトの非線形開発

> This chapter is for more advanced users.
> It allows you to work on the code, while allowing other users to see the stable version of your data first.
> ranches are also a way to make changes that can be easily trashed.

したがって、プロジェクトがあり、新しいものを追加したり、メインのプロジェクトフォルダに変更を反映する前に何かを試してみたいです。
新しいものを追加するには、ファイルの編集を続けて、提案された変更とともに保存することができます。
中央リポジトリの変更を反映せずに何かを試してみたいとします。
その場合、Gitなどのより高度なバージョン管理システムの「ブランチ」機能を使用できます。
ブランチはメインリポジトリのローカルコピーを作成し、新しい変更を試すことができます。
ブランチで行う作業は、メインプロジェクト(メインブランチと呼ばれる)に反映されないため、安全でエラーが発生しません。
同時に、アイデアをテストしたり、ローカルのブランチでトラブルシューティングを行うこともできます。

新しい変更に満足している場合は、それらをメインプロジェクトに紹介できます。
Git のマージ機能により、ローカルブランチ内の独立した開発ラインをメインブランチに統合することができます。

```{figure} ../../../figures/one-branch.*
---
name: one-branch
alt: >
 A row of nine grey dots is labelled 'Main', representing the main branch. 
 Each of these dots is connected to the two neighbouring dots with an arrow pointing to the right.
 On top of the main branch is a line of four blue dots, that are also connected by arrows.
 These blue dots are labelled 'Feature A' and represent the development branch. 
 The development branch is connected to the main branch through the same arrows that connect the dots within a branch:
 An arrow points from grey dot number 3 to blue dot number 1, and in the same fashion an arrow points from blue dot number 4 to grey dot number 8.
---
The development and main branch in Git.
```

メインコピーから複数のブランチを持つことができます。
いずれかのブランチが機能しなくなった場合は、プロジェクトのメインブランチに影響を与えることなく、それを放棄または削除できます。

```{figure} ../../../figures/two-branches.*
---
name: two-branches
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots represents development branch one (named 'Feature A').
 Additionally, below the main branch a line of two connected orange dots, representing development branch two (named 'Feature B'), is shown.
 The two development branches connect to the main branch at different positions. 
---
Two development branches and one main branch in Git.
```

必要であれば、ブランチからブランチを作成することができます(ブランチなどからブランチを作成することもできます)。

```{figure} ../../../figures/sub-branch.*
---
name: sub-branch1
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots, representing the 'Feature A' development branch, and below the main branch line of two connected orange dots, representing the 'Feature B' development branch, are shown.
 Additionally, a line of two connected green dots shows another development branch (named 'Feature A-1') on top of the 'Feature A' development branch. 
 The Feature A-1 development branch only connects to the Feature A development branch, and not the main branch. 
---
Several development branches in Git.
```

いくつ枝があっても、過去のバージョンにアクセスできます。
実際にこの機能を使用する方法を知りたい場合は、より詳細にいくつかのセクションを先に見つけるでしょう。
