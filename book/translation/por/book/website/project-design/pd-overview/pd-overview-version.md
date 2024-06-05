(pd-overview-version)=
# Controle de Versão e Documentação

Uma vez projetado o projeto, é importante acompanhar todas as alterações. Isso vai lhe poupar muito tempo e pode ajudar os outros a entender e reutilizar sua pesquisa - você tem um registro do que funcionou melhor e informações para entender o porquê.

(pd-overview-version-experiments)=
## Trabalho Experimental

É necessário anotar todos os detalhes sobre o seu trabalho experimental. Isso permite que o futuro leitor, um colega e seu futuro próprio compreendam e reproduzam todo o trabalho experimental relacionado ao seu projeto.

Uma ferramenta útil para fazer isso é {ref}`Notebooks do Laboratório Eletrônico<rr-open-notebooks>` (ELNs). Os ELNs são uma versão digital do caderno de papel, com a vantagem adicional de pesquisabilidade, armazenamento seguro e acesso remoto. Também são fáceis de compartilhar entre os membros e colaboradores da equipe.

É importante documentar e partilhar a metodologia, a análise e os procedimentos utilizados, bem como informações específicas sobre os dados.

(pd-overview-version-comp)=
## Trabalho Computacional

Na fase ativa de um projeto é importante para manter a consistência em seu código (leia este capítulo em {ref}`qualidade de código<rr-code-quality>`), Além de documentar e criar testes para o efeito.

Documentar seu código ajudará os outros a entender seu trabalho. Algumas ferramentas que podem ser usadas para documentar seu código mais facilmente são:
- "Docstring" em R ou Python
- Formato "Javadoc" em Java
- Desenvolvimento integrado de software (RStudio, Eclipse, VS Code) facilita o processo de escrita de comentários e a geração de documentação.

A criação de testes ajuda a economizar tempo e dinheiro. Fornecendo uma maneira de saber se seu código funciona, erros podem ser facilmente corrigidos por você e outros.

Para ler mais sobre testes de código vá para o {ref}`capítulo de teste de código<rr-testing>`.

(pd-overview-version-vcs)=
## Controle de Versão

Gravar todas as alterações feitas durante a pesquisa é uma parte principal da pesquisa reprodutível. Ele ajuda você e outros a entender as decisões tomadas e torna o trabalho reprodutível - você terá todas as informações sobre os passos tomados.

Se trabalhar em um projeto colaborativo, isso também ajudará a manter o controle de quem realizou cada mudança.

A vantagem adicional é que tudo estará bem organizado, com acesso fácil à versão atual do seu projeto e formas de procurar as alterações feitas no passado.

Alguns sistemas para controlar versões são:
- Git
- Mercurial
- Subversion

Há um capítulo extenso sobre {ref}`Sistema de Controle de Versão<rr-vcs>` no Guia de Pesquisa Reprodutiva que pode ser útil neste estágio.
