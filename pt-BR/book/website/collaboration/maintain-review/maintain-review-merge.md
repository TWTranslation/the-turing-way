(cl-maintain-review-merging)=

# Mesclando contribuições

Os pull requests feitos pelos contribuidores podem ser aprovados ou mesclados pelos mantenedores após a revisão.
Existem diferentes maneiras de mesclar um pull request:

- _Merge pull request_: Merges all commits to base branch.
  Ele mantém todos os commits feitos no PR como separados e os mescla como eles são, através de um único commit de merge no branch base.
- _Squash and merge_: Squashes all commits created in the pull request into one commit and merges them as a single commit (with the help of a merge commit) to the base branch (see this [blog for details](https://github.blog/2016-04-01-squash-your-commits/)).
- _Rebase and merge_: Rebases all commits individually to base branch (integrating changes from one branch to other) before merging.
  Na mensagem solicitada, o mantenedor pode fornecer uma mensagem de mesclagem juntamente com comentários (se houver) e depois pressionar o botão "Confirmar mesclagem".
