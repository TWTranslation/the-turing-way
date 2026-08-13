(rr-ci-github-actions)=

# Integração contínua com o GitHub Actions

This section will walk you through the basic setup of continuous integration (CI) using **GitHub Actions (GHA)**. GHA é um sistema de automação de tarefas totalmente integrado com o GitHub. Em outras palavras, é uma API que orquestra qualquer fluxo de trabalho baseado em qualquer evento. Embora existam muitos prestadores de serviços CI, o GHA torna mais fácil do que nunca a incorporação da CI nos seus repositórios. Ele fornece uma maneira flexível de automatizar quase todos os aspectos do seu fluxo de trabalho do projeto. Aqui estão apenas alguns exemplos de casos de uso de ações GitHub:

- Teste automatizado do software
- Gerar relatórios sobre o estado de quaisquer alterações no repositório
- Responder a gatilhos de fluxo de trabalho usando etiquetas, issues, menções especiais e mais
- Gatilho de revisões de código e pull requests
- Gerenciamento de branches

GitHub Actions são orientadas por eventos, o que significa que ele responde a qualquer evento (Exemplos: pull request (PR) criado, issue criada e aciona uma ação (Exemplos: adiciona um rótulo, executa testes, ordenação). Qualquer coleção dessas ações é chamada de fluxo de trabalho. Uma descrição mais detalhada deste vocabulário relacionado ao GitHub é descrita na próxima seção.

```{figure} ../../../figures/github-actions.*
---
width: 700px
align: center
name: Github actions
alt: A diagram describing how GitHub action listen to an event (for example, `PR` created, issue created, PR merged) and then trigger a job which can be testing, sorting, labelling or deployment.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Vocabulário relacionado ao GitHub

### 1. WorkFlow

**The workflow** is a unit of automation from start to finish. Ele consiste em todos os aspectos que devem ser tidos em conta durante a automação, incluindo qual evento pode acionar a automação. O fluxo de trabalho pode ser usado para compilação, teste, pacote, versão ou publicar um projeto no GitHub. É feito de vários trabalhos que são formados a partir das etapas, conforme mostrado no diagrama geral abaixo.

```{figure} ../../../figures/ci-01.*
---
name: ContinuousIntegration-Nov20
alt: An illustration of how continuous integration works with multiple jobs and actions working alongside each other to feed into an illustration of steps to show merging into the main version.
---
On the left: _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). On the right: Overview diagram of the most important concepts of GitHub Actions, adapted from [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Trabalho

A **job** is defined as a set of sequential steps run on the same runner. Um fluxo de trabalho pode gerar um ou vários trabalhos e pode ser executado paralelo (padrão) ou sequencialmente.

### 3. Passo

A **step** represents one individual task. Uma etapa pode ser uma ação ou outra unidade de comando, como executar um script Python ou imprimir algo no console.

### 4. Ações.

A GitHub **Action** is a piece of automation written in a way that is compatible with workflows. Actions can be written by [GitHub](https://github.com/actions), by the open source [community](https://github.com/sdras/awesome-actions), or you can write them yourself!

## Primeiros passos com GitHub Action

GitHub Actions uses YAML syntax and stored in a directory called `.github/workflows` in the repository. Pode usar um fluxo de trabalho modelo ou criar o seu próprio.

### 1- Usando template GitHub Actions

Se você quiser começar com as ações do GitHub, você pode iniciar clicando na guia "Ações" do repositório, onde você deseja criar um fluxo de trabalho, conforme mostrado abaixo. Na guia "Ações" você encontrará fluxos de trabalho populares do CI, que podem ajudar a implantar ou automatizar algumas tarefas no repositório.

```{figure} ../../../figures/gifs/start_ghactions.gif
---
width: 600px
align: center
name: GitHub action template
alt: A gif showing where you can find GitHub Actions template in your Github repo.
---
```

Você pode escolher qualquer um destes fluxos de trabalho iniciais e personalizá-los ainda mais.  Uma explicação para a construção de blocos dentro do fluxo de trabalho é descrita em uma seção posterior.

### 2- Usando modelos específicos de bibliotecas.

O modelo de ação do Github não está o único kit inicial disponível; existem templates específicos de bibliotecas para o idioma de interesse. For example, you can  use  {usethis} package in R to create a template for R packages by running `usethis::use_github_action_check_standard()`. Isto irá gerar verificações CRAN após cada commit ou pull request. Isso é tudo o que você precisa fazer!

### 3- Using the configuration of other projects as inspiration

Muitas bibliotecas de código aberto bem mantidas e projetos estabilizados usam GitHub Actions para sua IC.
Dê uma olhada nas listas de verificações dos pull requests destes projectos para inspiração e ideias; seguindo verificando seus arquivos de configuração de CI.
Na maioria dos casos, sua licença permitirá copiar os bits que funcionariam para o seu caso.
A vantagem desta abordagem é utilizar algumas abordagens que já estão a funcionar.

For example:

- The Turing Way workflow to [build the Turing Way book and to provide a preview for the pull requests](https://github.com/the-turing-way/the-turing-way/blob/main/.github/workflows/ci.yml)
- A matrix of tests on [3 operating systems and multiple Python versions for the Python package NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- A more complex setup of testing the [build in multiple circumstances for the Python package Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)

Na próxima seção, explicaremos os blocos de construção para o fluxo de trabalho.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
