(rr-fazer)=
# Reprodutibilidade com Make

(rr-make-pré-requisitos)=
## Pré-requisitos

| Pré-requisito                                                                                   | Importância | Observações                                          |
| ----------------------------------------------------------------------------------------------- | ----------- | ---------------------------------------------------- |
| [Experimente com a linha de comando](https://programminghistorian.org/en/lessons/intro-to-bash) | Necessário  |                                                      |
| {ref}`Controle de Versão<rr-vcs>`                                                         | Útil        | Experiência usando o git é útil para seguir exemplos |

Nível recomendado de habilidade: intermediário

(rr-make-sumy)=
## Summary

Um projeto de ciência de dados ou de pesquisa pode ser visto como uma árvore de dependências: o relatório depende das figuras e tabelas, e estes, por sua vez, dependem dos dados e os scripts de análise usados para processar esses dados (ilustrado na figura abaixo).  Faça uma ferramenta para criar arquivos de saída a partir de suas dependências através de regras pré-especificadas.  É possível combinar estas duas idéias para criar um projeto reprodutível com Make.  Neste capítulo, nós apresentamos uma introdução para Criar e fornecer um tutorial sobre como Criar pode ser usado para uma análise de dados.  Também descrevemos um projeto de pesquisa reprodutível do mundo real que usa Make para ir desde os dados de entrada bruta até os experimentos até o arquivo pdf do papel!

```{figure} ../figures/make-research-dag.png
---
nome: Faça pesquisa-dag
alt: Esquema de um projeto de pesquisa.
---
Esquema de um projeto de pesquisa.
```

(rr-make-intro)=
## Uma introdução a fazer

Criar é uma ferramenta de automação de construção. Ele usa um arquivo de configuração chamado Makefile que contém as *regras* para o que construir. Faz com que *alvos* usando *receitas*.  Os alvos podem opcionalmente ter *pré-requisitos*.  Pré-requisitos podem ser arquivos em seu computador ou em outros alvos. Determinar o que construir com base na árvore de dependências dos alvos e pré-requisitos (tecnicamente, esta é uma ferramenta de {ref}`rr-make-resources-`). Ele usa o *tempo de modificação* dos pré-requisitos para atualizar alvos apenas quando necessário.

(rr-make-porquê)=
### Por que usar Make para a reprodutividade?

Existem várias razões pelas quais fazer é uma boa ferramenta para reprodutibilidade:

1. Tornar fácil é aprender
1. Tornar disponível em muitas plataformas
1. Tornar flexível
1. Muitas pessoas já estão familiarizadas com o Make
1. Makefiles reduzem a carga cognitiva porque enquanto os alvos comuns `todas as` e `limpar` estão presentes (explicados abaixo), você pode estar pronto e funcionando sem ter que ler instruções longas. Isso é especialmente útil quando você trabalha em um projeto de outra pessoa ou em um que você não usou por muito tempo.
1. Makefiles são arquivos de texto legíveis e legíveis por máquina. So instead of writing instructions to a human for how to build a report or output, you can provide a Makefile with instructions that can be read by a human *and* executed by a computer.
1. Porque os arquivos Makefiles são arquivos de texto são fáceis de compartilhar e manter o controle da versão
1. Usar o Travis e o Docker não excluem usando outras ferramentas.

Com um arquivo inteligente Makefile, você pode compartilhar uma análise completa (código, dados, e fluxos de trabalho computacionais) e permitem aos colaboradores ou leitores do seu papel recalcularem seus resultados. Ao usar ferramentas como LaTeX, você pode até mesmo gerar um manuscrito completo que inclui figuras e resultados computados recentemente! Isso pode aumentar a confiança na produção de pesquisa que você gera, isto pode tornar sua pesquisa mais acessível e pode facilitar a colaboração. Este capítulo pode te mostrar como começar.
