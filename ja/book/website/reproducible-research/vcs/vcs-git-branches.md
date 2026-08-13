(rr-vcs-git-branches)=

# Git ブランチ

プロジェクトを個別または共同で作業する場合、以下のシナリオが発生することがあります。

- プロジェクトに新しい機能を追加すると、テスト中に作業コードが誤って破損するリスクが発生します。
  これにより、アクティブなユーザーだけがあなたであっても、プロジェクトのアクティブなユーザーに予期しない問題が発生します。
- 他の人とコラボレーションし、誰もが本部で同時に作業すると、多くの混乱と矛盾する変化が生じる可能性があります。
- 一部のコード/機能は皆にとって興味深いものではないかもしれません。 すでに行われている作業を保護しながら、プロジェクトで新しい作業を行うことを可能にする方法があるかもしれません。

Git ブランチは、これらの問題のいずれかに対処する際に非常に価値があります。
Gitプロジェクトごとにデフォルトでは、すべてのコミットが記録される「main」と呼ばれる1つのブランチがあります。
Gitのブランチ機能により、すぐにメインブランチに統合せずに作業し続けることができるプロジェクトのコピーを作成することができます。
一方、他のブランチで行われた変更によって影響を受けないメインブランチにコミットを続けることができます。
ブランチで作業していたものは何でも満足したら。 メインブランチ(または他のブランチ)にマージできます。
Merging will be covered in the {ref}`rr-vcs-git-merge` subchapter.

問題が解決しないブランチで機能をテストする場合は、それを削除または放棄することができます (例えば、 メインブランチですべての作業を行っていた場合、変更を解除する時間を費やすのではなく、下図のBをご覧ください。
必要な数のブランチ(Feature A-1など)を持つことができます。

ブランチを使用すると、特にコラボレーションでは、コードが安全に動作します。
各貢献者は、準備が整ったらメインプロジェクトにのみマージされる独自のブランチまたはブランチを持つことができます。

```{figure} ../../../figures/sub-branch.*
---
name: sub-branch
alt: An illustration of branching in Git. There are four branches shown named main, Feature A, Feature B, and Feature A-1. Feature A and B are branches of the main branch, while Feature A-1 is a branch made from Feature A.
---
An illustration of branching in Git
```

ブランチを作成し、次のように切り替えることができます。

```
git checkout -b name_of_your_new_branch
```

ブランチ間で変更するには、次のコマンドを使用します。

```
git checkout name_of_the_branch
```

他のブランチに切り替える前に、進行中の作業をコミットする必要があります。

プロジェクトのすべてのブランチを使用して確認できます。

```
git branch
```

これにより、現在のブランチの隣にアスタリスクが付いたリストとして出力されます。
You can also use `git status` if you have forgotten which branch you are on.

ブランチを削除することにした場合は、以下のように削除できます:

```
git branch -D name_of_the_branch
```

(rr-vcs-branches-practice)=

## 良い練習

Branches should be used to **keep the main branch clean**.
つまり、メインは、完全でテストされ、かつ正当なものがプロジェクトのメインバージョンに属する作業だけを含める必要があります。
Similarly, you should try to keep individual branches as clean as possible by **only adding one new feature per branch**. これは、いくつかの機能に取り組んでいる場合に発生します。
開発中のものもありますが主に統合する準備が整っています ブランチをきれいに保つことは、フィーチャーのブランチ上のフィーチャーに関連する変更を行うことのみを意味します。
Give your branches **sensible names**, "new_feature" is all well and good until you start developing a newer feature on another branch.

## インタラクティブなチュートリアル

[Learn Git Branching](https://learngitbranching.js.org/) is a project to provide an interactive way to learn Git. チュートリアルを通して を行うことは、最も一般的に使用される git コマンドと分岐操作技術の実質的な経験を提供します。
