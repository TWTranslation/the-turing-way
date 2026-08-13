(rr-cs-estatistical-métodos-manuscrito)=

# Um manuscrito de métodos estatísticos

## Sobre este estudo de caso

O objetivo deste estudo de caso é discutir os diferentes componentes da reprodutibilidade da pesquisa implementada no projeto e realização de um estudo estatístico.
With the help of their manuscript, the authors provide a catalog of methods
used in their research and cross-reference them to the respective
sections discussed in this {ref}`rr`.

## Sobre o Manuscrito

- **Title:** A review of Bayesian perspectives on sample size derivation
  for confirmatory trials{cite:ps}`Kunzmann2020CS`.
- **Authors:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee,
  David S. Robertson, Kaspar Rufibach, James M. S. Construtor
- **Publication month & year**: June 2020

### Overview

The manuscript {cite:ps}`Kunzmann2020CS` itself is concerned with the problem of
deriving a suitable sample size for a clinical trial.
Esse é um problema clássico nas estatísticas e particularmente importante nas estatísticas médicas onde coletar dados de teste é extremamente caro e considerações éticas precisam ser tratadas.
As revisões de manuscritos e estendem métodos para incorporar sistematicamente a incerteza de planejamento na derivação do tamanho da amostra.

### Resumo da citação

O manuscrito pode ser citado em formato APA de texto simples:

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020).
> Uma revisão das perspectivas bayesianas sobre a derivação de tamanho amostral para testes confirmatórios.
> arXiv preprint arXiv:2006.15715.

Formato BibTeX:

```
@article{
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     author = {Kunzmann, Kevin and Grayling, Michael J and Lee, Kim May and Robertson, David S and Rufibach, Kaspar and Wason, James},
    journal = {arXiv preprint arXiv:2006.15715},
       year = {2020}
}
```

## Catálogo de diferentes métodos para pesquisa reprodutível

### Controle de versão

The git repository
[https://github.com/kkmann/sample-size-calculation-under-uncertainty](https://github.com/kkmann/sample-size-calculation-under-uncertainty)
contains all code required to produce the manuscript
[arXiv:2006.15715](https://arxiv.org/abs/2006.15715)
from scratch.
For an in-depth explanation of the importance of version control for
reproducible research, see {ref}`Version Control Systems<rr-vcs>`.

### Gerenciamento de dados

In this particular case,
{ref}`data management <rr-rdm>` aspects are not an issue since the
manuscript is exclusively based on hypothetical examples and no
external, protected data is required.

#### Programação iterada

The manuscript {cite:ps}`Kunzmann2020CS` itself is written in and built with
[LaTeX](https://www.latex-project.org/).
The source files are contained in the subfolder `latex/`.
Plain TeX files were preferred over literate programming solutions like
[knitr](https://github.com/rstudio/rmarkdown) for [R](https://www.r-project.org/)
to facilitate the use of dedicated LaTeX editors like [Overleaf](https://www.overleaf.com/project).
Isso significa, no entanto, que todas as figuras usadas no manuscrito precisam ser criadas separadamente.
A dedicated [Jupyter notebook](https://jupyter.org/)
`notebooks/figures-for-manuscript.ipynb` combining code and rudimentary
descriptions are provided to that end.

### Ambiente de software reprodutível

Embora isso signifique que todos os códigos necessários para compilar o manuscrito do zero estão disponíveis em um ambiente auto-confinado. ainda não é suficiente para garantir a reprodução.
Instalar LaTeX, Jupyter e R com a mesma especificação necessária para executar todo o código ainda pode ser desafiador para usuários menos experientes.
To avoid this from keeping interested readers from experimenting with the code,
a combination of the Python package
[repo2docker](https://github.com/jupyter/repo2docker) and a free
[BinderHub](https://mybinder.org/) hosting service is used.
For details on these techniques, see the chapters on {ref}`Binder<binder>` and {ref}`BinderHub<rr-binderhub>`.
Isso permite que indivíduos interessados iniciem uma versão interativa do repositório com todos os programas necessários pré-instalados - em exatamente as versões certas!
Note that it is possible to provide _version stable_ binder links

[![badge](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![badge](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

Este selo aponta para o estado do repositório em um ponto específico no tempo (via o recurso de marcação do git).
Isso significa que os links permanecerão válidos e inalterados, mesmo se houver correções posteriores no conteúdo do repositório!
O Binder suporta várias interfaces de usuário.
Isto é aproveitado para fornecer e visão do laboratório integrado de ambiente de desenvolvimento no repositório para explorar o arquivo, o caderno do Jupyter, ou para abrir um shell para comandos adicionais.
O segundo selo abre diretamente um aplicativo brilhante interativo que ilustra alguns dos pontos discutidos no manuscrito e não requer nenhuma familiaridade com a programação .
All relevant configurations for Binder are located in the subfolder `.binder`.

### Gerenciamento de fluxo de trabalho usando Snakemake

Since JupyterLab also allows to open a shell in the repository instance opened
using a Binder link,
another feature of the repository can be used to reproduce the _entire manuscript from scratch_.
The Python workflow manager [Snakemake](https://snakemake.readthedocs.io/en/stable/)
was used to define all required steps in a `Snakefile`.
To execute this workflow,
you can open a shell in the [online version of JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/).
Quando a interface do usuário terminar de carregar, abra um novo terminal e digite

```
snakemake -F --cores 1  manuscript
```

Isto executará todos os passos necessários na virada:

1. crie todos os gráficos executando o arquivo de notas do Jupyter
2. compiling the actual `latex/main.pdf` file from the LaTeX sources

You should then see a `main.pdf` file in the `latex` subfolder.

### Suporte para a instanciação local do ambiente de software

O repo2docker de pacote Python também pode ser usado localmente para reproduzir o mesmo ambiente de computação.
Para isso, você precisará instalar o Python e o Docker.
For details on Docker and container technologies in general,
please see the chapter on {ref}`reproducible environments and containers<rr-renv-containers>`.
Em seguida, basta clonar o repositório na sua máquina local usando os comandos

```
git clone git@github.com:kkmann/sample-size-calculation-under-uncertainty.git
cd sample-size-calculation-under-uncertainty
```

After cloning the repository,
you can build and run a Docker container locally using the configuration files
provided in the `.binder/` folder using the following command

```
jupyter-repo2docker -E .
```

O contêiner é iniciado automaticamente após a conclusão da compilação e você pode usar a interface habitual do Jupyter no seu navegador seguindo o link impresso pelo repo2docker para explorar o repositório localmente.

### Uso da integração contínua

Although not necessary for the reproducibility of this manuscript,
the repository also makes use of continuous integration ({ref}`CI <rr-ci>`)
using [GitHub actions](https://github.com/features/actions).
GitHub actions runners are provided directly from GitHub (see `rr-ci-github-actions`).

The repository defines two workflows in `.github/workflows` directory.
The first one, [`.github/workflows/build_and_run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml),
is activated whenever the master branch of the repository is updated and the specifications in `.binder` are changed.
This builds the container, pushes it to a public container repository [docker hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty), and then checks that the Snakemake workflow runs through without problems.
The second one, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml),
runs when the folder `.binder` was not changed and uses the pre-built
Docker container to run the Snakemake workflow.
Este último economiza muito tempo da computação, já que o ambiente computacional
mudará muito menos vezes do que o conteúdo do repositório.
O uso do IPC facilita a verificação de contribuições por pull requests para integridade técnica e torna a respectiva versão mais recente do contêiner requerido disponível para download direto.
Isto significa que, em vez de construir o contêiner localmente usando repo2docker, você pode apenas baixá-lo diretamente e executar o fluxo de trabalho usando os seguintes comandos

```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-uncertainty
docker exec --name mycontainer /
    snakemake -F --cores 1  manuscript
```

### Arquivamento e citabilidade de longo prazo

The GitHub repository is also linked with [zenodo.org](https://zenodo.org/) to ensure long-term
archiving, see {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Note that a DOI provided by Zenodo can also be used with BinderHub to turn a
repository snapshot backed up on Zenodo in an interactive environment
([see this blog post](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
