(rr-vcs-checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## Fazer uso do Git

- Torne a versão do seu projeto controlada inicializando um repositório Git em seu diretório usando o `git init`.
- Adicione e commit todos os seus arquivos para o repositório usando o `git add .` e depois `git commit`.
- Continue a adicionar e fazer commit das alterações conforme o seu projeto avança. Estágio as alterações em arquivos específicos a serem confirmados com `git add o nome de arquivo`, e adicione mensagens aos seus commits.
  - Cada commit deve fazer uma alteração simples.
  - Nenhum arquivo gerado commitado.
  - Mensagens de commit são significativas, com um resumo de ~50 caracteres na parte superior.
  - As mensagens de commit estão no actual tenso e imperativo.
- Desenvolva novos recursos em seus próprios ramos, que você pode criar via `git checkout -b _name` e alternar entre via `git checkout branch`.
  - Certifique-se de que as ramificações tenham nomes informativos.
  - Certifique-se de que o galho principal seja limpo.
  - Certifique-se de que cada branch tem um único propósito e que apenas as alterações relacionadas a esse propósito são feitas nele.
- Uma vez que os recursos são concluídos, mescle os branches no branch principal ao alternar para o branch de recurso e executar `git merge principal`.
  - Mesclar outras alterações ao seu trabalho com frequência.
  - Ao lidar com conflitos de merge, certifique-se de entender completamente ambas as versões antes de tentar resolvê-las.

(rr-vcs-checklist-contribute)=
## Contribua para o projeto de outra pessoa

- Clonar o repositório do projeto do GitHub `git clone repository_url`.
- Faça e commit das alterações.
- Faça push das suas alterações no GitHub da versão do projeto.
- Faça uso de issues para discutir possíveis alterações em um projeto.
- Faça pull requests no GitHub para compartilhar seu trabalho.
  - Explique claramente as mudanças que você fez (e por quê) em seu pull request.

(rr-vcs-checklist-data)=
## Certifique-se de que seus dados são controlados por versão

- Se seus projetos envolvem dados, verifique se [Git LFS](https://git-lfs.github.com/), [git-anAnnex](https://git-annex.branchable.com/), ou [DataLad](https://www.datalad.org/) se adapta às suas necessidades de controle de versão.
- Compartilhe os dados juntamente com seu projeto para ajudar outros a reproduzir seus resultados.
