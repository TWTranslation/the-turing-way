(rr-fazer)=

# Reprodutibilidade com Make

(rr-make-pré-requisitos)=

## Pré-requisitos

| Pré-requisito                                                              | Importance | Notes                                                |
| -------------------------------------------------------------------------- | ---------- | ---------------------------------------------------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessário |                                                      |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | Experiência usando o git é útil para seguir exemplos |

Nível recomendado de habilidade: intermediário

(rr-make-sumy)=

## Resumo

Um projeto de ciência de dados ou de pesquisa pode ser visto como uma árvore de dependências: o relatório depende das figuras e tabelas, e estes, por sua vez, dependem dos dados e os scripts de análise usados para processar esses dados (ilustrado na figura abaixo).  Faça uma ferramenta para criar arquivos de saída a partir de suas dependências através de regras pré-especificadas.  É possível combinar estas duas idéias para criar um projeto reprodutível com Make.  Neste capítulo, nós apresentamos uma introdução para Criar e fornecer um tutorial sobre como Criar pode ser usado para uma análise de dados.  Também descrevemos um projeto de pesquisa reprodutível do mundo real que usa Make para ir desde os dados de entrada bruta até os experimentos até o arquivo pdf do papel!

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## Uma introdução a fazer

Criar é uma ferramenta de automação de construção. It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  Pré-requisitos podem ser arquivos em seu computador ou em outros alvos. Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-porquê)=

### Por que usar Make para a reprodutividade?

Existem várias razões pelas quais fazer é uma boa ferramenta para reprodutibilidade:

1. Tornar fácil é aprender
2. Tornar disponível em muitas plataformas
3. Tornar flexível
4. Muitas pessoas já estão familiarizadas com o Make
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Makefiles são arquivos de texto legíveis e legíveis por máquina. So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

Com um arquivo inteligente Makefile, você pode compartilhar uma análise completa (código, dados, e fluxos de trabalho computacionais) e permitem aos colaboradores ou leitores do seu papel recalcularem seus resultados.
Ao usar ferramentas como LaTeX, você pode até mesmo gerar um manuscrito completo que inclui figuras e resultados computados recentemente!
Isso pode aumentar a confiança na produção de pesquisa que você gera, isto pode tornar sua pesquisa mais acessível e pode facilitar a colaboração.
Este capítulo pode te mostrar como começar.
