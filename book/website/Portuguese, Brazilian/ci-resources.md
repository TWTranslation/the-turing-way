(rr-ci-resources)=
# Lista de verificação e recursos

## Checklist

- Tenha um projeto em que você colabore com pelo menos uma outra pessoa
- Coloque o projeto no GitHub
- Os membros do projeto devem fazer um commit regular do seu trabalho para este repositório central
- Esse projeto deve ter pelo menos alguns testes
- Escreva um arquivo `ci.yml` que:
  - Deve estar dentro de `.github/workflows`
  - Defina o nome do evento do GitHub que dispara o fluxo de trabalho usando o `na tecla` no YMAL.
  - Define uma máquina de host específica na qual executar o trabalho usando `jobs` e `runs-on`.
  - Inclui código para instalar quaisquer dependências necessárias para executar o projeto em um passo anterior à instalação
  - Contém um script para executar os testes do projeto
- Envie o arquivo `ci.yml` para o repositório do projeto no GitHub
- Cada vez que um novo compromisso for levado a cabo pelo Travis executará os testes e dará os resultados. Se esses relatórios de commit fazem com que o teste / testes falhe, então encontre e corrija o problema o mais rápido possível

## O que aprender a seguir

Se já não leu o capítulo de teste, é sugerido que o façamos para aprender mais sobre os diferentes tipos de testes e os seus benefícios, a fim de tirar o máximo proveito da IC.

## Definições/glossário

**Integração contínua:** O processo de combinar regularmente o trabalho dos membros do projeto em uma versão centralizada. Também chamado CI. O software de CI normalmente executa testes na versão integrada de um projeto para identificar conflitos e bugs introduzidos pela integração.

**Build:** Um grupo de trabalhos. Por exemplo, uma construção pode ter dois empregos, cada um deles testa um projeto com uma versão diferente de uma linguagem de programação. Uma construção termina quando todas as suas tarefas são concluídas.

**Ambiente computacional:** O ambiente onde um projeto é executado, incluindo o sistema operacional, o software instalado nele e as versões de ambos.

**GitHub:** Uma plataforma de controle de versão amplamente utilizada.

**Ações GitHub:** É um serviço de CI/CD que é executado em repositórios GitHub.

**Fluxos de trabalho** Eles são arquivos YAML armazenados no diretório _.github/workflows_ de um repositório.

**Ação** É um pacote que você pode importar e usar no seu **workflow**. O GitHub fornece um **[Mercado de Ações](https://github.com/marketplace?type=actions)** para encontrar ações para usar nos fluxos de trabalho.

**Trabalho** É uma máquina virtual que executa uma série de **etapas**. **Tarefas** são paralelas por padrão, mas **passos** são sequenciais por padrão.

## Tutoriais práticos

- Para começar com o GitHub Actions, o Padok fornece [um tutorial prático](https://github.com/padok-team/github-actions-tutorial) onde você pode criar um fluxo de trabalho que testa automaticamente, compila, lança e implementa um simples microserviço.
- O GitHub Learning Lab também oferece um guia interativo para [projetos práticos para aprender sobre as ações do GitHub](https://lab.github.com/githubtraining/github-actions:-continuous-integration).

## Referências

- [O que é CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [Blog SSI](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Licença Creative Commons Attribution Non-Commercial 2.5**
- [A diferença entre integração contínua, implantação contínua e entrega contínua](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.**
- [CI com python](https://docs.python-guide.org/scenarios/ci/) **Attribution-NonCommercial-ShareAlike 3.0 Unported**
- [Começando com as ações do GitHub: conceitos e tutorial](https://www.padok.fr/en/blog/github-actions)
- [Tutorial CI/CD usando GitHub Actions](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Criando uma ação de contêiner Docker](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### Materiais usados: O que são ações Github e como ele funciona?

- [Folha de Trapaças do GitHub Ações](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [Docs GitHub: Actions - Conceitos principais](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [Docs GitHub: Ações - Configurar e gerenciar fluxos de trabalho](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## Reconhecimentos

Graças ao grupo da Universidade de Sheffield RSE David Jones, que realizou discussões úteis.
