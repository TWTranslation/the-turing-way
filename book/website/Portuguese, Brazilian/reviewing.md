(rr-reviewing)=
# Processo de revisão de código

(rr-reviewing-pré-requisitos)=
## Pré-requisitos

| Pré-requisito                           | Importância | Observações                                                                                                                            |
| --------------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| {ref}`Controle de Versão<rr-vcs>` | Necessário  | Entender como o [Github](https://github.com) organiza seus branches, bifurcações e pull requests dentro dos repositórios é necessário. |

```{figure} ../figures/bug-catching.jpg
---
height: 500px
nome: caçando bugs
alt: pessoas pegando insetos diferentes de maneiras diferentes - representando bugs em nosso código ou projeto.
---
Caçando bugs. _O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-sumy)=
## Summary

A revisão de código fornece uma forma adicional de testar a qualidade de código. Em vez de depender simplesmente de {ref}`testa<rr-testing>` que o autor original se reúne, a revisão de código pega outro programador para examinar o novo código e avaliá-lo. O objectivo é chamar a atenção para os pontos fortes e também para as potenciais áreas de melhoria.

A revisão do código é frequentemente feita em pares, com cada revisor também tendo alguns de seus códigos revisados por seu parceiro. Fazer isso pode ajudar os programadores a ver e discutir questões e abordagens alternativas às tarefas, e a aprender novas dicas e truques. Isso também significa que as práticas de revisão de código são particularmente adequadas para projetos com mais de um colaborador fazendo alterações, onde cada um está trabalhando em diferentes partes do código. No entanto, mesmo os projectos de menor dimensão podem utilizar estas abordagens com uma gestão criativa de projectos.

Devido à sua natureza, as revisões de código funcionam como testes qualitativos - e não quantitativos - mas não são menos valiosos para isso.

Esta seção fornecerá uma visão geral de racionais, melhores práticas e alguns possíveis fluxos de trabalho para a revisão de código. Alguns detalhes referem-se especificamente à funcionalidade de revisão de código do GitHub como um exemplo poderoso e amplamente utilizado de um sistema formal de revisão de código; no entanto, sistemas equivalentes e muito similares estão disponíveis em outro lugar (por exemplo, [GitLab](https://about.gitlab.com)), e mesmo práticas informais de revisão de código também podem ser muito benéficas para um projeto.
