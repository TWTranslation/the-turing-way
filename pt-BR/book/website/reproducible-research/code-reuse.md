(rr-code-reuse)=

# Código reutilizável

Seu projeto de software pode variar de um pequeno script usado para processamento de dados a um notebook usado para análise de dados ou até uma biblioteca de software que implementa seus algoritmos.
Independentemente do tamanho de seu projeto de software, é importante tornar seu código reutilizável.

Diferentes tipos de software têm diferentes requisitos para serem reutilizáveis: para um pequeno script, ter uma documentação básica pode ser suficiente, enquanto para uma biblioteca de software crítica, pode ser necessário um conjunto de testes completo.
No nível mais básico, tudo o que você precisa fazer é colocar seu código on-line em algum lugar que provavelmente durará muito tempo.
A more elaborate approach to making your research software more reusable is by following the FAIR Principles for Research Software (FAIR4RS Principles) {cite:ps}`ChueHong2021FAIR4RS`.

Quando falamos em tornar o código reutilizável, é útil esclarecer o que queremos dizer.
In the {ref}`Table of Definitions for Reproducibility<rr-overview-definitions-reproducibility>` we defined reproducible research as using the same data and the same code.
However, when we talk about code reuse this can take many forms: we may want to run the exact same code (for compiled programming languages, this could even mean the exact same binary file), or we may want to modify the source code and extend it in some particular way to fit our needs.
Freire and Chirigati {cite:ps}`Freire2018Reproducibility` provide a framework of different levels of reproducibility, depending on what can be modified.
Eles definem os seguintes níveis de reprodutibilidade: repetível, reexecutável, portável, extensível e modificável.

Podemos mapear as definições de reprodutibilidade na estrutura de Freire da seguinte forma:

| Estrutura de Freire | Definições de reprodutibilidade                                                                            |
| ------------------- | ---------------------------------------------------------------------------------------------------------- |
| Repetível           | Reproduzível (mesmos dados, mesma análise)                                              |
| Reexecutável        | Robust & Replicable (same code, different data/analysis/parameters) |
| Portável            | _Not considered_ (same code/data, different environment)                                |
| Extensível          | (parcialmente) Generalizável                                                            |
| Modificável         | (parcialmente) Generalizável                                                            |

A portabilidade não era considerada anteriormente, mas para software, um ambiente diferente (como hardware diferente, sistema operacional ou até mesmo uma nova instalação em hardware comparável) pode afetar a capacidade do software de funcionar (por exemplo, pode afetar dependências).

Além disso, Generalizável encapsula dois conceitos: Extensível (a capacidade de integração com outros softwares) e Modificável (a capacidade de alterar parte da implementação para estender sua funcionalidade).

No restante deste capítulo, fornecemos uma lista de recomendações que você pode seguir para garantir que seu código seja reutilizável.
