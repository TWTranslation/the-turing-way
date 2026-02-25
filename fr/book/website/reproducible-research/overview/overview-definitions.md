(rr-overview-definitions)=

# Définitions

The most common definition of reproducibility (and replication) was first noted by Claerbout and Karrenbach in 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibility` and has been used in computational science literature since then.
Another popular definition has been introduced in 2013 by the Association for Computing Machinery (ACM) {cite:ps}`Ivie2018SciComp`, which swapped the meaning of the terms 'reproducible' and 'replicable' compared to Claerbout and Karrenbach.

The following table contrasts both definitions {cite:ps}`Heroux2018Reproducibility`.

| Condition     | Claerbout & Karrenbach                                                                                                                                                                                         | ACM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reproductible | Les auteurs fournissent toutes les données nécessaires et les codes informatiques pour exécuter à nouveau l'analyse en recréant les résultats.                                                                     | (Équipe différente, configuration expérimentale différente.) La mesure peut être obtenue avec précision par une équipe différente, un système de mesure différent, à un endroit différent sur plusieurs épreuves. Pour les expériences informatiques, cela signifie qu'un groupe indépendant peut obtenir le même résultat en utilisant des artefacts qu'ils développent de manière complètement indépendante.                                                   |
| Réplique      | Une étude qui arrive aux mêmes résultats scientifiques qu'une autre étude, la collecte de nouvelles données (éventuellement avec différentes méthodes) et la réalisation de nouvelles analyses. | (Équipe différente, même installation expérimentale.) La mesure peut être obtenue avec précision par une équipe différente en utilisant la même procédure de mesure, le même système de mesure, dans les mêmes conditions d'exploitation, dans le même endroit ou dans un endroit différent sur plusieurs épreuves. Pour les expériences de calcul, cela signifie qu'un groupe indépendant peut obtenir le même résultat en utilisant les artefacts de l'auteur. |

Barba (2018) {cite:ps}`Barba2018Reproducibility` conducted a detailed literature review on the usage of reproducible/replicable covering several disciplines.
La plupart des papiers et des disciplines utilisent la terminologie telle que définie par Claerbout et Karrenbach, alors que la microbiologie, L'immunologie et l'informatique ont tendance à suivre l'utilisation ACM de la reproductibilité et de la réplication.
Dans la littérature de la science politique et de l'économie, ces deux termes sont utilisés de manière interchangeable.

En plus de ces définitions de haut niveau de la reproductibilité, certains auteurs fournissent des distinctions plus détaillées.
Victoria Stodden {cite:ps}`Victoria2014Reproducibility`, a prominent scholar on this topic, has for example identified the following further distinctions:

- _Computational reproducibility_: When detailed information is provided about code, software, hardware and implementation details.

- _Empirical reproducibility_: When detailed information is provided about non-computational empirical scientific experiments and observations. Dans la pratique, cela est possible en rendant les données et les détails de la manière dont elles ont été collectées librement.

- _Statistical reproducibility_: When detailed information is provided, for example, about the choice of statistical tests, model parameters, and threshold values. Cela concerne principalement l'enregistrement préalable de la conception d'étude pour prévenir le piratage de la p-value et d'autres manipulations.

(rr-overview-definitions-reproduccibility)=

## Tableau des définitions pour la reproduction

At _The Turing Way_, we define **reproducible research** as work that can be independently recreated from the same data and the same code that the original team used.
La reproduction est distincte de la reproductible, robuste et généralisable comme décrit dans la figure ci-dessous.

```{figure} ../../../figures/reproducible-matrix.*
---
name: reproducible-matrix
alt: Kirstie's definition of reproducible research.
---
How the Turing Way defines reproducible research
```

Les différentes dimensions de la recherche reproductible décrites dans la matrice ci-dessus ont les définitions suivantes :

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

## Reproductible mais pas ouvert

_The Turing Way_ recognises that some research will use sensitive data that cannot be shared and this handbook will provide guides on how your research can be reproducible without all parts necessarily being open.
