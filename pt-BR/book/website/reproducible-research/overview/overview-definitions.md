(rr-overview-definitions)=

# Definições

The most common definition of reproducibility (and replication) was first noted by Claerbout and Karrenbach in 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibility` and has been used in computational science literature since then.
Another popular definition has been introduced in 2013 by the Association for Computing Machinery (ACM) {cite:ps}`Ivie2018SciComp`, which swapped the meaning of the terms 'reproducible' and 'replicable' compared to Claerbout and Karrenbach.

The following table contrasts both definitions {cite:ps}`Heroux2018Reproducibility`.

| Período: | Claerbout & Karrenbach                                                                                                                                                            | MPC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reprodutível             | Os autores fornecem todos os dados necessários e os códigos do computador para executar a análise novamente, recriando os resultados.                                                 | (Equipe diferente, configuração experimental diferente.) (Equipe diferente, configuração experimental diferente.) A medida pode ser obtida com precisão declarada por uma equipa diferente, um sistema de medição diferente, em um local diferente em vários testes. Para experiências computacionais, isso significa que um grupo independente pode obter o mesmo resultado usando artefatos que eles se desenvolvem completamente independentemente.                                    |
| Replicável               | Um estudo que chega às mesmas descobertas científicas que outro estudo, recolhendo novos dados (possivelmente com métodos diferentes) e concluindo novas análises. | (Equipe diferente, mesma configuração experimental.) (Equipe diferente, mesma configuração experimental.) A medida pode ser obtida com precisão declarada por uma equipe diferente usando o mesmo procedimento de medição, o mesmo sistema de medição, sob as mesmas condições de operação, na mesma ou em um local diferente em múltiplos ensaios. Para experiências computacionais, isso significa que um grupo independente pode obter o mesmo resultado usando os artefatos do autor. |

Barba (2018) {cite:ps}`Barba2018Reproducibility` conducted a detailed literature review on the usage of reproducible/replicable covering several disciplines.
A maioria dos papéis e disciplinas usa a terminologia conforme definida por Claerbout e Karrenbach, enquanto a microbiologia, a imunologia e a ciência da computação tendem a acompanhar o uso de reprodutibilidade e replicação no ACM.
Na literatura política científica e económica, ambos os termos são intermutavelmente utilizados.

Para além destas definições de alto nível de reprodução, alguns autores fornecem distinções mais detalhadas.
Victoria Stodden {cite:ps}`Victoria2014Reproducibility`, a prominent scholar on this topic, has for example identified the following further distinctions:

- _Computational reproducibility_: When detailed information is provided about code, software, hardware and implementation details.

- _Empirical reproducibility_: When detailed information is provided about non-computational empirical scientific experiments and observations. Na prática, isso é possível através da disponibilização de dados e de pormenores sobre a forma como foram recolhidos livremente.

- _Statistical reproducibility_: When detailed information is provided, for example, about the choice of statistical tests, model parameters, and threshold values. Trata-se sobretudo de um pré-registo de concepção dos estudos, a fim de evitar hack de valor e outras manipulações.

(rr-overview-definitions-reproducibilidade)=

## Tabela de Definições de Reprodução

At _The Turing Way_, we define **reproducible research** as work that can be independently recreated from the same data and the same code that the original team used.
O reprodutor é diferente de replicável, robusto e generalista conforme descrito na figura abaixo.

```{figure} ../../../figures/reproducible-matrix.*
---
name: reproducible-matrix
alt: Kirstie's definition of reproducible research.
---
How the Turing Way defines reproducible research
```

As diferentes dimensões de pesquisa reprodutível descritas na matriz acima têm as seguintes definições:

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Replicable:** A result is replicable when the _same_ analysis performed on _different_ datasets produces qualitatively similar answers.
- **Robust:** A result is robust when the _same_ dataset is subjected to _different_ analysis workflows to answer the same research question (for example one pipeline written in R and another written in Python) and a qualitatively similar or identical answer is produced.
  Robust results show that the work is not dependent on the specificities of the programming language chosen to perform the analysis.
- **Generalisable:** Combining replicable and robust findings allow us to form generalisable results.
  Note that running an analysis on a different software implementation and with a different dataset does not provide _generalised_ results.
  There will be many more steps to know how well the work applies to all the different aspects of the research question.
  Generalisation is an important step towards understanding that the result is not dependent on a particular dataset nor a particular version of the analysis pipeline.

More information on these definitions can be found in "Reproducibility vs. Replicability: A Brief History of a Confused Terminology" by Hans E. Plesser {cite:ps}`Plesser2018Reproducibility`.

```{figure} ../../../figures/reproducible-definition-grid.*
---
name: reproducible-definition-grid.*
alt: "Grid with the characteristics of: Reproducible; same data, same analysis. Replicable; different data, same analysis. Robust; same data, different analysis. And generalisable; different data, different analysis; Research"
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-reproducible)=

## Reproduível, mas não aberto

_The Turing Way_ recognises that some research will use sensitive data that cannot be shared and this handbook will provide guides on how your research can be reproducible without all parts necessarily being open.
