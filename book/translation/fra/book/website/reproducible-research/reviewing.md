(rr-reviewing)=
# Processus d'évaluation du code

(rr-reviewing-prerequisites)=
## Pré-requis

| Pré-requis                               | Importance | Notes                                                                                                                                       |
| ---------------------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| {ref}`Contrôle de version<rr-vcs>` | Nécessaire | Comprendre la manière dont [Github](https://github.com) organise ses branches, forks, et demandes de fusion dans les dépôts est nécessaire. |

```{figure} ../figures/bug-catching.jpg
---
hauteur : 500px
: nom : capture de bugs
alt : Les gens attrapant différents insectes de différentes manières - représentant des bugs dans notre code ou dans notre projet.
---
Attrape des bugs. Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-summary)=
## Summary

La revue de code offre un moyen supplémentaire de tester la qualité du code. Au lieu de s'appuyer simplement sur les tests de {ref}`<rr-testing>` que l'auteur original met en commun eux-mêmes, permet à un autre programmeur de regarder le nouveau code et de l'évaluer. L'objectif est de souligner les points forts et les domaines d'amélioration potentiels.

L'examen du code est souvent effectué par pairs, chaque réviseur ayant également une partie de son code révisé par son partenaire. Cela peut aider les programmeurs à voir et à discuter des questions et des approches alternatives aux tâches, et à apprendre de nouveaux trucs et astuces. Cela signifie également que les pratiques de révision du code sont particulièrement bien adaptées aux projets avec plus d'un contributeur apportant des changements. où chacun travaille sur différentes parties du code. Néanmoins, même les plus petits projets peuvent exploiter ces approches grâce à une gestion de projet créative.

En raison de leur nature, les revues de code agissent comme des tests qualitatifs - plutôt que quantitatifs - mais elles ne sont pas moins précieuses pour cela.

Cette section fournira un aperçu des motifs, des meilleures pratiques et des workflows possibles pour l'examen du code. Certains détails font spécifiquement référence à la fonctionnalité de révision de code de GitHub comme un exemple puissant et largement utilisé d'un système de révision de code formel ; cependant, des systèmes équivalents et très similaires sont disponibles ailleurs (par exemple, [GitLab](https://about.gitlab.com)), et même les pratiques informelles d'examen du code peuvent également être très bénéfiques pour un projet.
