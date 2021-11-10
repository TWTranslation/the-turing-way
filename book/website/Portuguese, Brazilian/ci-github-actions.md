(rr-ci-github-actions)=
# Integração contínua com o GitHub Actions

Esta seção irá guiá-lo através da configuração básica da integração contínua (CI) usando o **GitHub Actions (GHA)**. GHA é um sistema de automação de tarefas totalmente integrado com o GitHub. Em outras palavras, é uma API que orquestra qualquer fluxo de trabalho baseado em qualquer evento. Embora existam muitos prestadores de serviços CI, o GHA torna mais fácil do que nunca a incorporação da CI nos seus repositórios. Ele fornece uma maneira flexível de automatizar quase todos os aspectos do seu fluxo de trabalho do projeto. Aqui estão apenas alguns exemplos de casos de uso de ações GitHub:

- Teste automatizado do software
- Gerar relatórios sobre o estado de quaisquer alterações no repositório
- Responder a gatilhos de fluxo de trabalho usando etiquetas, issues, menções especiais e mais
- Gatilho de revisões de código e pull requests
- Gerenciamento de branches

GitHub Actions são orientadas por eventos, o que significa que ele responde a qualquer evento (Exemplos: pull request (PR) criado, issue criada e aciona uma ação (Exemplos: adiciona um rótulo, executa testes, ordenação). Qualquer coleção dessas ações é chamada de fluxo de trabalho. Uma descrição mais detalhada deste vocabulário relacionado ao GitHub é descrita na próxima seção.

```{figure} ../../figures/github-actions.jpg
---
largura: 700px
align: centro
nome: ações do Github
alt: um diagrama descrevendo como a ação do GitHub ouve um evento (por exemplo, `PR` criado, issue criada, PR merged) e em seguida, disparar um trabalho que pode ser testes, classificação, rotulagem ou implantação.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
## Vocabulário relacionado ao GitHub

### 1. WorkFlow

**O fluxo de trabalho** é uma unidade de automação do início ao fim. Ele consiste em todos os aspectos que devem ser tidos em conta durante a automação, incluindo qual evento pode acionar a automação. O fluxo de trabalho pode ser usado para compilação, teste, pacote, versão ou publicar um projeto no GitHub. É feito de vários trabalhos que são formados a partir das etapas, conforme mostrado no diagrama geral abaixo.

```{figure} ../../figures/ci-01.png
---
nome: Contínuo - Nov20
alt: Uma ilustração de como a integração contínua funciona com vários trabalhos e ações trabalhando lado a lado para ilustrar os passos para mostrar a integração com a versão principal.
---
À esquerda: ilustração de projeto The Turing Way_ por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). À direita: Diagrama geral dos conceitos mais importantes das Ações GitHub, adaptado de [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Trabalho

Uma tarefa de **** é definida como um conjunto de passos sequenciais executados no mesmo runner. Um fluxo de trabalho pode gerar um ou vários trabalhos e pode ser executado paralelo (padrão) ou sequencialmente.

### 3. Passo

Um **passo** representa uma tarefa individual. Uma etapa pode ser uma ação ou outra unidade de comando, como executar um script Python ou imprimir algo no console.

### 4. Ações.

Uma **Ação do GitHub** é um pedaço de automação escrita de uma forma que é compatível com fluxos de trabalho. Ações podem ser escritas pelo [GitHub](https://github.com/actions), pela [comunidade](https://github.com/sdras/awesome-actions)de código aberto, ou você pode escrevê-las você mesmo!

## Primeiros passos com GitHub Action

O GitHub Actions usa a sintaxe YAML e armazenado em um diretório chamado `.github/workflows` no repositório. Pode usar um fluxo de trabalho modelo ou criar o seu próprio.


### 1- Usando template GitHub Actions

Se você quiser começar com as ações do GitHub, você pode iniciar clicando na guia "Ações" do repositório, onde você deseja criar um fluxo de trabalho, conforme mostrado abaixo. Na guia "Ações" você encontrará fluxos de trabalho populares do CI, que podem ajudar a implantar ou automatizar algumas tarefas no repositório.

```{figure} ../../figures/gifs/start_ghactions.gif
---
width: 600px
align: center
name: GitHub action template
alt: A gif showing where you can find GitHub Actions template in your Github repo.
---
```
Você pode escolher qualquer um destes fluxos de trabalho iniciais e personalizá-los ainda mais.  Uma explicação para a construção de blocos dentro do fluxo de trabalho é descrita em uma seção posterior.


### 2- Usando modelos específicos de bibliotecas.


O modelo de ação do Github não está o único kit inicial disponível; existem templates específicos de bibliotecas para o idioma de interesse. Por exemplo, você pode usar o pacote  {usethis} no R para criar um modelo para pacotes R executando `usethis::use_github_action_check_standard()`. Isto irá gerar verificações CRAN após cada commit ou pull request. Isso é tudo o que você precisa fazer!


### 3 - Usando a configuração de outros projetos como insultação

Muitas bibliotecas de código aberto bem mantidas e projetos estabilizados usam GitHub Actions para sua IC. Dê uma olhada nas listas de verificações dos pull requests destes projectos para inspiração e ideias; seguindo verificando seus arquivos de configuração de CI. Na maioria dos casos, sua licença permitirá copiar os bits que funcionariam para o seu caso. A vantagem desta abordagem é utilizar algumas abordagens que já estão a funcionar.

Por exemplo:

- O workflow Caminho de Turing para [construir o livro Way Turing e fornecer uma prévia para as pull requests](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- Uma matriz de testes em [3 sistemas operacionais e várias versões Python para o pacote Python NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- Uma configuração mais complexa do teste da [compilação em várias circunstâncias para o pacote Python Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


Na próxima seção, explicaremos os blocos de construção para o fluxo de trabalho.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
