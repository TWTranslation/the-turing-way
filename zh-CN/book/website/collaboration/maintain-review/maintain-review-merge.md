(cl-maintain-review-merging)=

# 合并贡献

贡献者的提交请求在评审后由维护者批准或合并。
有多种合并提交请求的方法：

- _Merge pull request_: Merges all commits to base branch.
  它会让 PR 中的所有提交保持独立，并通过对基线分支的一次合并提交按原样合并它们。
- _Squash and merge_: Squashes all commits created in the pull request into one commit and merges them as a single commit (with the help of a merge commit) to the base branch (see this [blog for details](https://github.blog/2016-04-01-squash-your-commits/)).
- _Rebase and merge_: Rebases all commits individually to base branch (integrating changes from one branch to other) before merging.
  In the prompt message, the maintainer can provide a merge message along with comments(if any) and then press the “confirm merge” button.
