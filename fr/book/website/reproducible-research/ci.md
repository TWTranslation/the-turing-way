(rr-ci)=

# Intégration continue

| Prerequisite                                                               | Importance | Notes                                                                                                                                                                                |
| -------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Nécessaire | L'intégration continue suivra les instructions de la ligne de commande                                                                                                               |
| {ref}`Version control<rr-vcs>`                                             | Nécessaire | Continuous integration runs every time a new _commit_ is made to your project                                                                                                        |
| {ref}`Reproducible computational environments<rr-renv>`                    | Nécessaire | L'intégration continue exécute vos tests sur un ordinateur séparé (généralement dans le cloud), donc vous devez le configurer de la même manière. |
| {ref}`Testing<rr-testing>`                                                 | Très utile | Continuous integration _tests_ if anything important has changed when you make a change in your project                                                                              |

## Summary

L'intégration continue (CI) est la pratique d'intégrer les changements à un projet fait par les individus dans un principal, version partagée fréquemment (généralement plusieurs fois par jour). Le logiciel CI est également généralement utilisé pour identifier tous les conflits et bogues qui sont introduits par les changements, pour qu'ils soient trouvés et fixés tôt, en minimisant l'effort requis pour le faire. Les tests effectués régulièrement évitent également aux humains de devoir le faire manuellement. En informant les utilisateurs des bogues le plus tôt possible les chercheurs (si le projet est un projet de recherche) ne perdent pas beaucoup de temps à faire du travail qui pourrait devoir être jeté, qui peut être le cas si les tests sont exécutés rarement et que les résultats sont produits à l'aide d'un code défectueux.

```{figure} ../../figures/continuous-integration-may19.*
---
height: 500px
name: continuous-integration-may19
alt: A sketch showing how continuous integration helps developers plan, design, integrate code into a shared repository, and then observe the influence of any changes.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation and Background

CI a un certain nombre d'avantages clés :

- Aide les bugs à être trouvés plus tôt, minimisant leurs dégâts et les rendant plus faciles à réparer
- Maintient les contributeurs du projet au courant du travail de chacun afin qu'ils puissent en bénéficier dès que possible
- Encourage les utilisateurs à écrire des tests
- Automatise l'exécution des tests
- S'assurer que les tests sont exécutés fréquemment
