(pd-overview-version)=

# Controle de Versão e Documentação

Once the project is designed, it is important to keep track of all the changes.
Isso vai lhe poupar muito tempo e pode ajudar os outros a entender e reutilizar sua pesquisa - você tem um registro do que funcionou melhor e informações para entender o porquê.

(pd-overview-version-experiments)=

## Trabalho Experimental

É necessário anotar todos os detalhes sobre o seu trabalho experimental.
This allows future readers, a colleague and your future self to understand and reproduce all the experimental work related to your project.

A useful tool to do this is {ref}`Electronic Lab Notebooks<rr-open-notebooks>` (ELNs).
ELNs are digital versions of paper notebooks, with the added advantage of searchability, secure storage and remote access.
Também são fáceis de compartilhar entre os membros e colaboradores da equipe.

É importante documentar e partilhar a metodologia, a análise e os procedimentos utilizados, bem como informações específicas sobre os dados.

(pd-overview-version-comp)=

## Trabalho Computacional

In the active phase of a project it is important to keep consistency in your code (read this chapter on {ref}`code quality<rr-code-quality>`), as well as documenting and creating tests for it.

Documentar seu código ajudará os outros a entender seu trabalho.
Algumas ferramentas que podem ser usadas para documentar seu código mais facilmente são:

- "Docstring" em R ou Python
- Formato "Javadoc" em Java
- Desenvolvimento integrado de software (RStudio, Eclipse, VS Code) facilita o processo de escrita de comentários e a geração de documentação.

A criação de testes ajuda a economizar tempo e dinheiro.
Fornecendo uma maneira de saber se seu código funciona, erros podem ser facilmente corrigidos por você e outros.

To read more about code testing go to the {ref}`Code Testing chapter<rr-testing>`.

(pd-overview-version-vcs)=

## Controle de Versão

Gravar todas as alterações feitas durante a pesquisa é uma parte principal da pesquisa reprodutível.
Ele ajuda você e outros a entender as decisões tomadas e torna o trabalho reprodutível - você terá todas as informações sobre os passos tomados.

Se trabalhar em um projeto colaborativo, isso também ajudará a manter o controle de quem realizou cada mudança.

A vantagem adicional é que tudo estará bem organizado, com acesso fácil à versão atual do seu projeto e formas de procurar as alterações feitas no passado.

Alguns sistemas para controlar versões são:

- Git
- Mercurial
- Subversion

There is an extensive chapter about {ref}`Version Control System<rr-vcs>` in the Guide for Reproducible Research that can be helpful at this stage.
