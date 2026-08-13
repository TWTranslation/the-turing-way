(cl-maintain-review-merging)=

# コントリビューションの結合

コントリビューターが行ったプルリクエストは、レビュー後にメンテナによって承認またはマージされます。
プルリクエストをマージするには、さまざまな方法があります。

- _Merge pull request_: Merges all commits to base branch.
  これは、PR 内で行われたすべてのコミットを個別に保持し、ベースブランチへのマージコミットを通じて、そのままマージします。
- _Squash and merge_: Squashes all commits created in the pull request into one commit and merges them as a single commit (with the help of a merge commit) to the base branch (see this [blog for details](https://github.blog/2016-04-01-squash-your-commits/)).
- _Rebase and merge_: Rebases all commits individually to base branch (integrating changes from one branch to other) before merging.
  プロンプトメッセージでは、メンテナはマージメッセージとコメント(もしあれば)を提供し、「マージの確認」ボタンを押します。
