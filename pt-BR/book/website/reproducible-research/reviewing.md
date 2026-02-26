(rr-reviewing)=

# Processo de revisão de código

(rr-reviewing-pré-requisitos)=

## Pré-requisitos

| Pré-requisito                  | Importance | Notes                                                                                                                                                  |
| ------------------------------ | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| {ref}`Version Control<rr-vcs>` | Necessário | Understanding the way that [GitHub](https://github.com) arranges its branches, forks, and pull requests within repositories is needed. |

```{figure} ../../figures/bug-catching.*
---
height: 500px
name: bug-catching
alt: People catching different insects in different ways - representing bugs in our code or project.
---
Catching bugs. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-sumy)=

## Resumo

A revisão de código fornece uma forma adicional de testar a qualidade de código.
Instead of relying simply on {ref}`tests<rr-testing>` which the original author puts together themselves, code review gets another programmer to look over the new code and assess it. The goal is to point out strengths and also potential areas of improvement.

A revisão do código é frequentemente feita em pares, com cada revisor também tendo alguns de seus códigos revisados por seu parceiro.
Fazer isso pode ajudar os programadores a ver e discutir questões e abordagens alternativas às tarefas, e a aprender novas dicas e truques.
Isso também significa que as práticas de revisão de código são particularmente adequadas para projetos com mais de um colaborador fazendo alterações, onde cada um está trabalhando em diferentes partes do código.
No entanto, mesmo os projectos de menor dimensão podem utilizar estas abordagens com uma gestão criativa de projectos.

Devido à sua natureza, as revisões de código funcionam como testes qualitativos - e não quantitativos - mas não são menos valiosos para isso.

Esta seção fornecerá uma visão geral de racionais, melhores práticas e alguns possíveis fluxos de trabalho para a revisão de código.
Some details refer specifically to GitHub's code review functionality as a powerful and widely-used example of a formal code review system; however, equivalent and very similar systems are available elsewhere (for example, [GitLab](https://about.gitlab.com)), and even informal code review practices can also be very beneficial to a project.
