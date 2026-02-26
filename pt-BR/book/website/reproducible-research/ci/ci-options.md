(rr-ci-opções)=

# O que é integração contínua?

Integração contínua (CI) é a prática de integração principal das alterações a um projeto feito por indivíduos versão compartilhada frequentemente (geralmente várias vezes por dia). O software de CI também é normalmente usado para identificar quaisquer conflitos e bugs que são introduzidos por mudanças, portanto são encontrados e fixados mais cedo, minimizando o esforço necessário para o fazer. Executar testes regularmente também evita que os humanos precisem fazer isso manualmente. Ao sensibilizar os usuários para erros tão cedo quanto possível pesquisadores (se o projeto é um projeto de pesquisa) não desperdice muito tempo fazendo trabalho que pode precisar ser jogado fora, o que pode ser o caso se os testes forem executados com pouca frequência e se os resultados forem produzidos com base em código defeituoso.

Este capítulo exige uma forte compreensão do controlo da versão. Os conceitos centrais que você precisa lembrar são:

- Como pode ser usado para permitir que as pessoas que colaboram em um único projeto combinem seu trabalho através da fusão
- O que os conflitos de fusão são e as dificuldades que eles podem apresentar
- O que é o GitHub e como usá-lo

Resumindo, se um grupo de pesquisadores está colaborando em um projeto, é uma boa prática para eles usar o controle de versão para acompanhar suas alterações ao longo do tempo. e combinar seu trabalho regularmente. Se eles não se combinam (integrar) seu trabalho regularmente, então quando chegam para fazer isso, é provável que seja muito difícil, pois pessoas diferentes podem ter feito mudanças contraditórias.

Integração contínua é uma prática de desenvolvimento de software onde membros de uma equipe integram seu trabalho com frequência, em vez de fazer o trabalho isoladamente e fundir-se em grandes mudanças a intervalos pouco frequentes. No CI, geralmente cada pessoa se integra pelo menos diariamente. Cada integração é verificada por uma compilação automatizada (geralmente incluindo testes) para detectar erros de integração o mais rapidamente possível.

A ideia é minimizar o custo da integração, considerando-a rapidamente. Os investigadores podem descobrir conflitos nas fronteiras entre códigos novos e existentes, embora sejam ainda relativamente fáceis de conciliar. Assim que o conflito for resolvido, o trabalho pode continuar com confiança de que o novo código honra os requisitos do código existente. O objectivo é criar software mais saudável, desenvolvendo e testando em incrementos menores. Muitas equipes acham que esta abordagem leva a problemas de integração significativamente reduzidos e permite que uma equipe se desenvolva mais rapidamente.

Frequentemente, a integração do código não oferece garantias quanto à qualidade do novo código ou funcionalidade. Isto leva-nos ao segundo aspecto da IC. Quando um desenvolvedor mescla o código no repositório principal, os processos automatizados constroem uma versão de trabalho do projeto. Posteriormente, os testes são realizados contra a nova compilação para verificar se foram introduzidos erros. Se a compilação ou a fase de teste falhar, a equipe é alertada para que eles possam trabalhar para corrigir o problema. É mais fácil corrigir um erro em algo que você escreveu há alguns minutos atrás do que algo que você escreveu ontem (ou na semana passada ou o mês passado).

Ao garantir que seu código seja construído e testado regularmente CI ajuda pesquisadores a demonstrar que seu código faz o que ele afirma fazer, e que o faça correctamente. Typically, continuous integration servers will also allow build-and-test jobs to run at specific times, so a [cron job](https://en.wikipedia.org/wiki/Cron), nightly-build-and-test, can be done, as well as a build-and-test job run on-demand.

## Some options for CI service providers, covering the most often used ones

There are many CI service providers readily available, providing free access for open, public projects. Each of these
services however has its own advantages and disadvantages.  In this section we provide a brief overview with links to
examples to help you select the most suitable one for you.  Alternatively a few systems also provide the option of self-hosting.

- [GitHub Actions](https://help.github.com/en/actions), for some examples see the [language and framework guides](https://help.github.com/en/actions/language-and-framework-guides) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
- [GitLab CI](https://docs.gitlab.com/ee/ci/), for some examples the [GitLab CI examples](https://docs.gitlab.com/ee/ci/examples/README.html) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
- [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), for some examples see the [ecosystem support page](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) and [this tutorial](https://github.com/trallard/ci-research).
- [Circle CI](https://circleci.com/), for getting started visit [this circleCI project tutorial](https://circleci.com/docs/2.0/project-walkthrough/) or [these shorter "Hello World" examples](https://circleci.com/docs/2.0/hello-world/).
- [Jenkins](https://www.jenkins.io/), for some examples the see [this tutorial](https://www.jenkins.io/doc/tutorials/)
- [Travis CI](https://travis-ci.com/), for some examples the [Travis tutorial](https://docs.travis-ci.com/user/tutorial/).

A more extensive list of CI service providers can be found in [this guide](https://www.software.ac.uk/resources/guides/hosted-continuous-integration)
provided by the Software Sustainability Institute.
