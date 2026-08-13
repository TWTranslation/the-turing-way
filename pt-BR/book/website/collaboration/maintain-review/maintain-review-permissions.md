(cl-maintain-review-permissions)=

# Propriedade e Permissões

Em qualquer equipe ou projeto de propriedade da organização, existem colaboradores diferentes.

Proprietários de um projeto são indivíduos ou equipes que geralmente iniciam um projeto, ou junte-se a ele no momento da criação de projeto com uma visão e objetivos definidos.
The owners have the right to give different [levels of permission](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization) to outside contributors.

Em Github, existem cinco níveis de permissões: ler, triagem, escrita, manter e administrar.

- Leitores não são contribuidores de código que estão lendo o conteúdo ou participando de discussões em problemas no GitHub.
- Com permissão de triagem, os colaboradores podem gerenciar problemas e pull requests sem acesso de gravação.
- Permissão de escrita permite aos colaboradores realizar push de alterações no projeto.
- A permissão de manutenção é para gerentes do projeto, mas não tem acesso a ações sensíveis ou destrutivas (como a exclusão de projeto).
- Administradores são pessoas que têm acesso total ao projeto, incluindo ações sensíveis e destrutivas, e são responsáveis por conceder permissão para fazer outros contribuidores.

These roles are often defined in a project file such as a [CODEOWNERS file](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) or a governance file (for example, {ref}`fw-governance-roles` as an example).
Esses arquivos fornecem informações sobre a equipe principal do projeto e os membros responsáveis pelos papéis de manutenção no projeto.

Neste capítulo, qualquer pessoa com triagem, escrever e manter a permissão é referido como mantenedores.
Os mantenedores estão envolvidos na criação de problemas e pull requests sempre que necessário.
Mantêm a base de código ou o projecto atualizado e ajudam na revisão das contribuições.
Eles podem muitas vezes aprovar e mesclar pull requests.
Eles também podem solicitar comentários de outra pessoa.

_For more information on permission level, please see this [documentation on GitHub](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization)._
