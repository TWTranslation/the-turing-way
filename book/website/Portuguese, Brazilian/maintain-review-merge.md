(cl-maintain-review-merging)=
# Mesclando contribuições
Os pull requests feitos pelos contribuidores podem ser aprovados ou mesclados pelos mantenedores após a revisão. Existem diferentes maneiras de mesclar um pull request:
- *Mesclar pull request*: Mescla todos os commits no branch base. Ele mantém todos os commits feitos no PR como separados e os mescla como eles são, através de um único commit de merge no branch base.
- *Aplicar Squash e merge*: Aplicar Squash todos os commits criados no pull request em um commit e os mescla como um único commit (com a ajuda de um commit de merge) para o branch base (veja este [blog para detalhes](https://github.blog/2016-04-01-squash-your-commits/)).
- *Rebase e merge*: Rebase todos os commits individualmente a um branch base (integração de mudanças de um branch para outros) antes de fazer o merge. Na mensagem solicitada, o mantenedor pode fornecer uma mensagem de mesclagem juntamente com comentários (se houver) e depois pressionar o botão "Confirmar mesclagem".
