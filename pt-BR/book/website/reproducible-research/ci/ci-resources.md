(rr-ci-resources)=

# Lista de verificação e recursos

## Checklist

- Tenha um projeto em que você colabore com pelo menos uma outra pessoa
- Coloque o projeto no GitHub
- Os membros do projeto devem fazer um commit regular do seu trabalho para este repositório central
- Esse projeto deve ter pelo menos alguns testes
- Write a `ci.yml` file which:
  - Must be inside `.github/workflows`
  - Define the name of the GitHub event that triggers the workflow using `on` key on the YMAL.
  - Defines a specific host machine on which to run the job using `jobs` and `runs-on`.
  - Inclui código para instalar quaisquer dependências necessárias para executar o projeto em um passo anterior à instalação
  - Contém um script para executar os testes do projeto
- Commit the `ci.yml` file to the project's GitHub repository
- Each time a new commit is pushed CI will run the tests and return the results. Se esses relatórios de commit fazem com que o teste / testes falhe, então encontre e corrija o problema o mais rápido possível

## What to learn next

Se já não leu o capítulo de teste, é sugerido que o façamos para aprender mais sobre os diferentes tipos de testes e os seus benefícios, a fim de tirar o máximo proveito da IC.

## Definitions/glossary

**Continuous integration:** The process of regularly combining the work of project members into a centralised version. Also called CI. O software de CI normalmente executa testes na versão integrada de um projeto para identificar conflitos e bugs introduzidos pela integração.

**Build:** A group of jobs. For example, a build might have two jobs, each of which tests a project with a different version of a programming language. A build finishes when all of its jobs are finished.

**Computational environment:** The environment where a project is run, including the operating system, the software installed on it, and the versions of both.

**GitHub:** A widely used version control platform.

**GitHub Actions:** It is a CI/CD service that runs on GitHub repos.

**Workflows** They are YAML files stored in the _.github/workflows_ directory of a repository.

**Action** It is a package you can import and use in your **workflow**. GitHub provides an **[Actions Marketplace](https://github.com/marketplace?type=actions)** to find actions to use in workflows.

**Job** It is a virtual machine that runs a series of **steps**. **Jobs** are parallelized by default, but **steps** are sequential by default.

## Tutoriais práticos

- To get you started with GitHub Actions, Padok provides [a hand-on tutorial](https://github.com/padok-team/github-actions-tutorial) where you can build a workflow that automatically tests, builds, releases, and deploys a simple microservice.
- GitHub Learning Lab also offers an interactive guide for [practical projects to learn GitHub actions](https://lab.github.com/githubtraining/github-actions:-continuous-integration).

## Referências

- [What is CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [SSI blog](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Creative Commons Attribution Non-Commercial 2.5 License**
- [The difference between continuous integration, continuous deployment, and continuous delivery](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.**
- [CI with python](https://docs.python-guide.org/scenarios/ci/) **Attribution-NonCommercial-ShareAlike 3.0 Unported**
- [Getting started with GitHub Actions: concepts and tutorial](https://www.padok.fr/en/blog/github-actions)
- [CI/CD tutorial using GitHub Actions](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Creating a Docker container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### Materiais usados: O que são ações Github e como ele funciona?

- [GitHub Actions Cheat Sheet](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [GitHub docs: Actions - Core concepts](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [GitHub docs: Actions - Configuring and managing workflows](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## Reconhecimentos

Graças ao grupo da Universidade de Sheffield RSE David Jones, que realizou discussões úteis.
