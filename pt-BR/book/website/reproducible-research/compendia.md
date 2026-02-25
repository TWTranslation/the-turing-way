(rr-compendia)=

# Compêndio de Pesquisa

## Pré-requisito

| Pré-requisito                             | Importance | Notes                                           |
| ----------------------------------------- | ---------- | ----------------------------------------------- |
| {ref}`Version Control<rr-vcs>`            | Helpful    | Pode ser usado para a versão de compêndio       |
| {ref}`Open Research<rr-open>`             | Helpful    | Components are part of the compendium           |
| {ref}`Reproducible Environments<rr-renv>` | Helpful    | Can be used to make the compendium reproducible |
| {ref}`Binder Hub<rr-binderhub>`           | Helpful    | Pode ser usado para publicar o compêndio        |
| {ref}`Make<rr-make>`                      | Helpful    | Pode ser usado para automação no compêndio      |

## Resumo

Um compêndio de pesquisa é uma coleção de todas as partes digitais de um projeto de pesquisa, incluindo dados, código, textos (protocolos, relatórios, questionários, meta data).
The collection is created in such a way that reproducing all results is straightforward {cite:ps}`Nuest2017compendia,Gentleman2007statistical`.

Este capítulo tem muitos pré-requisitos, pois leva todos os componentes digitais de um projeto juntos num pacote de pesquisa reprodutível.
Dito isto, é possível construir um compêndio de investigação com um conhecimento técnico mínimo.
O principal objectivo é que todos os elementos de um projeto sejam publicados em conjunto, de modo que uma estrutura básica de pastas que combine todos os componentes possa ser suficiente.

```{figure} ../../figures/research-compendium.*
---
height: 500px
name: research-compendium
alt: An illustration showing a person churning a big machine that takes scientific information from multiple papers and gives one output of readable file.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

A research compendium [{term}`def<Research Compendia>`] combines all elements of your project, allowing others to reproduce your work, and should be the final product of your research project.
Publicar o seu papel de pesquisa juntamente com um compêndio de pesquisa permite que outros acessem o seu input, teste a sua análise e, se o compêndio pode ser executado, execute novamente para avaliar a saída resultante.
Isso não só ainda confia na sua pesquisa, como pode lhe dar mais visibilidade.
Others may use your research in unexpected ways, some of which are discussed below (refer to section: {ref}`Using a research compendium<rr-compendia-using>`).

## Background

Um compêndio da pesquisa no seu mais básico é um conjunto abrangente de arquivos que combina todos os componentes de um projeto.
Este compêndio pode ser baixado e executado localmente para recriar o trabalho feito, ou pode conter elementos que permitem a sua execução em um servidor remoto.
Compendia da pesquisa executável visa tornar a parte computacional de uma publicação científica reprodutível, fornecendo todos os blocos de construção disponíveis e fornecendo uma descrição de como o usuário pode executar o código contido.

### Estrutura de um compêndio de pesquisa

Three principles should be kept in mind when constructing a research compendium {cite:ps}`Marwick2018compendia`.

- Os ficheiros devem ser organizados numa estrutura de pastas convencional;
- Dados, métodos e saída devem ser claramente separados;
- O ambiente computacional deve ser especificado.

Com estes princípios, é possível uma grande variedade de empresas.
Vamos começar com a versão mais básica.

#### Compendium Básico

Um compêndio básico segue estes três princípios.
Ele separa dados e métodos em uma estrutura de pastas convencional e descreve o ambiente computacional em um arquivo designado.
Além disso, qualquer compêndio deve ter uma página inicial sob a forma de um documento README.

```text
compendium/
├── data
│   ├── my_data.csv
├── analysis
│   └── my_script.R
├── DESCRIPTION
└── README.md
```

#### Compendium Executável

A seguinte pasta pode ser considerada um compêndio de pesquisa executável.
Contém todas as partes digitais do projeto de pesquisa (código, dados, texto, números) e todas as informações sobre como obter os resultados.
The computing environment is described in the `Dockerfile`, the dependencies of files and how to automatically generate the results are described in the `Makefile`.
Additionally we have a `README.md` describing what the compendium is about and a `LICENSE` file with info on how it can be used.

```text
compendium/
├── CITATION
├── code
│   ├── analyse_data.R
│   └── clean_data.R
├── data_clean
│   └── data_clean.csv
├── data_raw
│   ├── datapackage.json
│   └── data_raw.csv
├── Dockerfile
├── figures
│   └── flow_chart.jpeg
├── LICENSE
├── Makefile
├── paper.Rmd
└── README.md
```

#### Separando Métodos, Dados, Saída

Os princípios do compêndio da pesquisa afirmam que deve separar claramente Métodos, Dados e Output.
Simplificado, isso significa que devemos distinguir entre três tipos de arquivos e pastas:

- **Read-only**: raw data (`data_raw\`), metadata (`datapackage.json`, `CITATION`)
- **Human-generated**: code (`clean_data.R`, `analyse_data.R`), paper (`paper.Rmd`), documentation (`README.md`)
- **Project-generated**: clean data (`data_clean\`, figures (`figures\`), other output

The examples mentioned here are not exhaustive and some may first be "human-generated" and at some point become "read-only" (for example a human may generate the data metadata `datapackage.json`, but once that is done it may become something not to be touched).
Por outras palavras, se uma pasta contém ficheiros em qualquer destas categorias, pode depender do ciclo de vida do projeto.

### Criando um compêndio

Se você já usa algumas das ferramentas neste livro - como controle de versão, Makefiles, e/ou reproduzíveis ambientes - pode chegar naturalmente a você criar um compêndio de pesquisa.
Isto acontece porque um repositório de controle de versão pode ser um compêndio de pesquisa; Um Makefile o torna executável; Um ambiente reprodutível o torna reproduzível.
To create a research compendium, we recommend to first think about _what the components of your project are_ and create the folder structure accordingly.
Use nomes para arquivos e pastas que tornam mais fácil para os outros entenderem o que eles contêm.
É uma boa idéia pensar sobre isso cedo no processo de pesquisa e iniciar seu projeto com a mentalidade de que o resultado final é um compêndio de pesquisa em vez de apenas um papel de pesquisa.

### Publicando um compêndio

Existem várias opções para publicar um compêndio de pesquisa:

- Em uma plataforma de versão como o GitHub ou GitLab (potencialmente com um link para o Binder).
- Em um arquivo de pesquisas, como o Zenodo ou o Open Science Framework (OSF).
- Como material complementar de uma publicação em papel.

Por exemplos, veja o rótulo/tag/comunidade "pesquisar-compendium" (aplicado no GitHub, Zenodo, OSF) ou como alternativa ao termo "pesquisa compendium" na descrição (usado no GitLab). For more info, see also [Research Compendium](https://research-compendium.science).

No futuro, o compêndio da investigação poderá até ser a própria publicação que permite uma revisão por pares de todo o projecto de investigação.

(rr-compendia-usando)=

### Usando um compêndio

Um compêndio de pesquisa pode ser utilizado de várias maneiras, incluindo (mas não limitado a):

- Avaliação por pares: Se os pares puderem verificar o que você fez, eles podem revisá-la de forma muito mais aprofundada.
- Entendimento da pesquisa: se você realmente quer entender o que alguém fez no projeto de pesquisa deles, o compêndio de pesquisa é o que você precisa olhar.
- Ensino: A compendia da pesquisa pode ser um ótimo exemplo para ser usada no ensino.
- Estudos de reprodutividade/hacks: Um compêndio de pesquisa permite que outros pesquisadores tentem (e esperamos que tenha sucesso) refazer seus computadores.

## Checklist

Para criar um compêndio de pesquisa, siga estas etapas:

- Pense em uma boa estrutura de pastas (veja o exemplo acima)
- Criar estrutura de pastas (diretório principal e sub-diretórios)
- Opcional: Faça o compendium em um repositório git
- Adicionar todos os arquivos necessários para reproduzir os resultados do projeto
- Tente fazer com que o compêndio seja tão limpo e fácil de usar quanto possível quando você o anunciar para outros
- Opcional: Faça um par verificar o compêndio e ver se ele funciona corretamente
- Publique o seu compêndio

See the [EMNLP 2020 reproducibility checklist](https://2020.emnlp.org/call-for-papers#new-reproducibility-criteria) or the [AGILE reproducible checklist](https://doi.org/10.17605/OSF.IO/CB7Z8) for conference submission checklists.

## Further Reading

- The website [Research Compendium](https://research-compendium.science) contains links to further resources and publications on research compendia as well as links to examples.
