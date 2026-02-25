(rr-vcs-checklist)=

# Checklist

(rr-vcs-checklist-makeuseof)=

## Fazer uso do Git

- Make your project version controlled by initialising a Git repository in its directory using `git init`.
- Add and commit all your files to the repository using `git add .` then `git commit`.
- Continue a adicionar e fazer commit das alterações conforme o seu projeto avança. Stage the changes in specific files to be committed with `git add filename`, and add messages to your commits.
  - Cada commit deve fazer uma alteração simples.
  - Nenhum arquivo gerado commitado.
  - Mensagens de commit são significativas, com um resumo de ~50 caracteres na parte superior.
  - As mensagens de commit estão no actual tenso e imperativo.
- Develop new features on their own branches, which you can create via `git checkout -b branch_name` and switch between via `git checkout branch_name`.
  - Certifique-se de que as ramificações tenham nomes informativos.
  - Certifique-se de que o galho principal seja limpo.
  - Certifique-se de que cada branch tem um único propósito e que apenas as alterações relacionadas a esse propósito são feitas nele.
- Once features are complete, merge their branches into the main branch by switching to the feature branch and running `git merge main`.
  - Mesclar outras alterações ao seu trabalho com frequência.
  - Ao lidar com conflitos de merge, certifique-se de entender completamente ambas as versões antes de tentar resolvê-las.

(rr-vcs-checklist-contribute)=

## Contribua para o projeto de outra pessoa

- Clone their project's repository from GitHub `git clone repository_url`.
- Faça e commit das alterações.
- Faça push das suas alterações no GitHub da versão do projeto.
- Faça uso de issues para discutir possíveis alterações em um projeto.
- Faça pull requests no GitHub para compartilhar seu trabalho.
  - Explique claramente as mudanças que você fez (e por quê) em seu pull request.

(rr-vcs-checklist-data)=

## Certifique-se de que seus dados são controlados por versão

- If your projects involve data, check whether [Git LFS](https://git-lfs.github.com/), [git-annex](https://git-annex.branchable.com/), or [DataLad](https://www.datalad.org/) fits your needs for version-controlling it.
- Compartilhe os dados juntamente com seu projeto para ajudar outros a reproduzir seus resultados.
