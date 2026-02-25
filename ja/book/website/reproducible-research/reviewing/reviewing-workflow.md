(rr-reviewing-workflow)=

# 典型的なワークフロー

_This chapter has particular reference to Github_

```{figure} ../../../figures/readable-code.*
---
height: 500px
name: readable-code
alt: This image highlights the importance of code readability.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Formal vs Informal Reviews

For a formal review process to work effectively, it's imperative that the project is using good {ref}`version control<rr-vcs>`.
However, it bears stating that **all review of code is very valuable**, including informal or ad-hoc approaches. 実際、このような非公式の「肩越し」のピアレビューは、高度に形式化されたレビューパイプラインにおいても重要な予備的要素を形成することができます。 大変なストレスを省いて正式なステージが始まったら議論するんだ

This section focuses on the typical workflows behind a formal review process, as commonly implemented within [Github](https://github.com/).
Other coding environments like [BitBucket](https://bitbucket.org/) or [GitLab](https://about.gitlab.com/) could have conceptually similar mechanisms but they are not explained here.

## コードを準備する

レビューを要求する前に、あなたが貢献しているプロジェクトの明白な品質のベンチマークをすべて満たしていることを確認してください。
This means making sure you have checked the review list (see {ref}`checklist for the coder<rr-checklist-for-code-review>`).

A reviewer should check these things (see {ref}`checklist for the coder<rr-checklist-for-code-review>`), but defects on these fronts should be by occasional oversight, rather than systematic.

## 変更を提案

In the GitHub system, the review is begun directly from and often accessed through the [pull request page](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
レビューステップは、コーダーが自分の貢献が完了したと思っている点と、その貢献がプロジェクトのトランクコードにマージされる点の間で行われます。 単一のプルリクエストと密接に関連付けられています

Within the Github environment, projects can be configured to _require_ a review before a given pull request can be merged.
このオプションが選択されていない場合でも、保留中のプルリクエストに対して手動でレビューをリクエストすることは可能です (そして実際にはベストプラクティス)。

## レビューの作成とディスカッション

この時点で、審査プロセスを開始することができます。 In Github, the reviewer can provide both general comments as well as line-by-line comments, see [GitHub code review](https://github.com/features/code-review).
各コメントはそれぞれのコメントスレッドになり、必要に応じて各問題についての議論を行うことができます。
この相互作用は、すべてのコメントについてコンセンサスに達することを可能にする必要があります。

レビューが完了したら、必要なコメントについて議論することができます。 次に、変更を行い、適切なコメントに対して行われた変更を記録します。
また、レビュー担当者が自分がレビューに完全に対処したと思っていることを知っていることを確認します。

変更が完了したら、レビューアは最初のコメントすべてに対処することを確認します。 必要に応じて、レビュー担当者は、コンセンサスを得るために特定のポイントに同意しない場合は、あなたと建設的に取り組んでいます。 ほとんどの場合、コンセンサスが見つからないかどうか最終的な意見があります。

レビュー後の変更がコードに加えられたら。 必要に応じてコメントを最終更新させてください何が行われたかの履歴と その背後にある推論を完了させます

## GitHubで結果を通信する

In Github, comments should be added in the `Files changed` section, so they can be attached to a particular line of code, see [GitHub reviewing changes in pullrequests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests). 異なる問題を別々に保つことができるように、テキストの大きなボールではなく、このように多くの小さなコメントを作ります。 関連する場合は、既存の問題とドキュメントを参照してください。

変更ではなく、既存のコードを確認している場合でも、プルリクエストを使用すると便利です。
明らかな修正がある問題が見つかった場合は、通常の方法でパッチを使用してプルリクエストを送信できます。

修正がない場合は、該当する行に空のコメントを追加できます。 パッチとしてプルリクエストを作成します The relevant line(s) will then light up in the pull request's `Files changed` overview, and you can add your comments there.
この場合、プルリクエストはマージされません(ただし、コメントは他の方法で処理されます)。 または、追加のコメントは元に戻され、合意された修正によって置き換えられます。

GitHubのコードレビューのサポートはかなり限られているため、いずれの大きなものではなく、多くの小さなプルリクエストを提出してください。 単一のプルリクエストに問題が多すぎると、すぐに扱いにくくなります。

## 変更をマージ

レビュープロセスが完了すると、レビュー担当者は変更を承認し、マージが行われる可能性があります。
個々のプロジェクトには通常、コーダーまたはレビュアーが実際にマージボタンを押すかどうかについてのルールおよび/またはガイドラインがありますので、確認してください。
多くの場合、プロジェクトワークフローはレビューを完了させ、レビュー担当者によるサインオフをマージを実行する正式な前提条件とします。
疑いを避けるために、この原則を小規模または非公式のプロジェクトのためにも採用することはおそらく理にかなっています。
