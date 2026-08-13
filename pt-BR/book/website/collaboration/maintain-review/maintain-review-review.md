(cl-maintain-review-review)=

# Revisando contribuições

## Revisando o processo

Em um projeto ou código, um conjunto de alterações deve ser revisado antes de mesclá-lo ao repositório principal.
If the project is co-owned by many people, the review process handled by [code review assignment](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/managing-code-review-assignment-for-your-team) in which certain members of the team are assigned this task.
Os revisores geralmente são sugeridos automaticamente em pull requests do GitHub com base em uma atividade similar de outros membros no mesmo arquivo ou em diferentes arquivos no projeto.
However, often a project manager requests other maintainers for the review of a particular pull request based on their availability, willingness, or expertise.

The assigned or willing maintainers can review the pull request by checking the [changes locally](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/checking-out-pull-requests-locally) or on the online repository and suggest changes required.
When the review process is completed, the reviews can be approved without any change, or [with required changes](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/approving-a-pull-request-with-required-reviews) or [dismissed](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/dismissing-a-pull-request-review) according to the quality of the contribution.

## Diretrizes para Processo de Revisão e Manutenção

Para colaboração no GitHub, é importante seguir uma orientação definida com as melhores práticas para manter um determinado projeto.
O processo de manutenção pode ser executado sem problemas com a ajuda de:

1. _Documenting the process_: A comprehensive documentation on how contributors can get started with the project and how they can make meaningful contributions is the first step to be taken while maintaining an open source project.
   These details should throw light on what the project is all about, why was it created in the first place, who maintains the project, what the community culture looks like, and who can provide guidance to new contributors.

Estes três documentos constituem um bom começo para a construção destes documentos:

- A project should contain a {ref}`README.md file<pd-project-repo-readme>` that provides the important details and links to resources that one must know to become a member of the project.
- A Code of Conduct (see _The Turing Way_ [Code of Conduct](https://github.com/the-turing-way/the-turing-way/blob/main/CODE_OF_CONDUCT.md)) must be provided in every project to establish that a welcoming and safe environment for community members while collaborating.
- A well-written contribution guideline (see _The Turing Way_ [Contributing file](#ch-contributing)) is extremely important when the collaboration is done remotely on any project to ensure clear communication between contributors and maintainers.

2. _Effective communication_: The conversations regarding any contribution can be made public for others to join for a discussion while working on small features and ideas.
   Isso envolverá mais pessoas e garantirá transparência no trabalho de fonte aberta.
   É importante escrever mensagens e comentários no problema e pull requests, de uma maneira clara e fácil de entender enquanto faz uma revisão para ajudar os contribuidores a entender os requisitos para que eles possam fazer melhores commits em seus pull requests.
   É preferível mencionar ligações importantes nas mensagens, se necessário.

3. _Mentored contributions_: The maintainer's role is to make the contribution a process as easy as possible.
   Contribuições de código aberto podem intimidar muitos novos colaboradores.
   Guiar as pessoas, fazendo conversas amigáveis e encorajadoras pode tornar o processo de integração para novos contribuidores confortável.
   É melhor criar problemas descritivos para resolver.
   Para que sejam feitas contribuições significativas, é melhor criar diferentes problemas antes de resolvê-los com pull requests.
   Rotular problemas e pull requests ajudarão a conseguir mais colaboradores envolvidos em várias tarefas com diferentes requisitos de habilidades.
   Labeling seemingly easy issues as ["good first issue"](https://help.github.com/en/github/building-a-strong-community/encouraging-helpful-contributions-to-your-project-with-labels) will help new contributors to pick up easy tasks like minor changes in code and content, bug and typo fixes and small design issues.

4. _Maintaining the pull requests_: The maintenance of already existing pull requests on a project involves labeling them, reviewing them, changing their stages, merging and closing them.
   A manutenção de pull requests pode ser feita dando a revisão certa no momento certo.
   On GitHub there are various ways to provide feedback while reviewing such as by giving feedback as a comment on the pull request, suggesting changes while reviewing, directly proposing changes in the branch of the contributors or discussing on the pull request how the contributions can be improved (see this [GitHub post for details](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews)).
   Os mantenedores podem comunicar um calendário dentro do qual revisam e mesclam pull requests para um projeto ativo, por exemplo, uma semana.
   Os rótulos podem ser alterados ao longo do tempo e das fases para que reflictam corretamente o estado de uma característica em desenvolvimento.

5. _Acknowledging other's work and respecting time_: Welcoming people who contribute to a project is one of the keys to make a collaborative project a success.
   Sempre que é feita uma contribuição significativa e uma PR é fundida, os mantenedores devem reconhecê-la.
   Uma pequena mensagem dizendo "obrigado" é frequentemente suficiente, especialmente para iniciantes em espaços de código aberto.
   É sempre um bom gesto dar crédito aos contribuidores do código aberto adicionando-os à lista de contribuidores.
   A melhor maneira de fazer isso é criar um arquivo dedicado onde todos os contribuidores são mencionados com suas contribuições nos projetos.
   Se os contribuidores do projeto forem baseados em diferentes partes do mundo, os mantenedores devem respeitar seu tempo e agendar trabalho de acordo.
   No caso de alguém não ser capaz de discutir ideias por causa do seu calendário, mantenedores e contribuidores deveriam tentar cooperar o máximo possível.
   Também é uma boa prática pedir ativamente aos colaboradores que estão muito ocupados para pausar e voltar mais tarde ou envolver outras pessoas da comunidade para acompanhar as suas contribuições em andamento.
