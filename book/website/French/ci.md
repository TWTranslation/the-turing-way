(rr-ci)=
# Intégration continue

| Pré-requis                                                                                        | Importance | Notes                                                                                                                                             |
| ------------------------------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Nécessaire | L'intégration continue suivra les instructions de la ligne de commande                                                                            |
| {ref}`Contrôle de version<rr-vcs>`                                                          | Nécessaire | Une intégration continue s'exécute chaque fois qu'un nouveau _commit_ est fait pour votre projet                                                  |
| {ref}`Environnements de calcul reproductibles<rr-renv>`                                     | Nécessaire | L'intégration continue exécute vos tests sur un ordinateur séparé (généralement dans le cloud), donc vous devez le configurer de la même manière. |
| {ref}`Tests<rr-testing>`                                                                    | Très utile | L'intégration continue _teste_ si quelque chose d'important a changé lorsque vous faites un changement dans votre projet                          |
## Summary

L'intégration continue (CI) est la pratique d'intégrer les changements à un projet fait par les individus dans un principal, version partagée fréquemment (généralement plusieurs fois par jour). Le logiciel CI est également généralement utilisé pour identifier tous les conflits et bogues qui sont introduits par les changements, pour qu'ils soient trouvés et fixés tôt, en minimisant l'effort requis pour le faire. Les tests effectués régulièrement évitent également aux humains de devoir le faire manuellement. En informant les utilisateurs des bogues le plus tôt possible les chercheurs (si le projet est un projet de recherche) ne perdent pas beaucoup de temps à faire du travail qui pourrait devoir être jeté, qui peut être le cas si les tests sont exécutés rarement et que les résultats sont produits à l'aide d'un code défectueux.

```{figure} ../figures/continuous-integration-may19.jpg
---
hauteur : 500px
: continuous-integration-may19
alt: Une esquisse montrant comment l'intégration continue aide les développeurs à planifier, , intégrez du code dans un dépôt partagé, puis observez l'influence de tout changement.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Comment cela vous aidera / pourquoi cela est utile

CI a un certain nombre d'avantages clés :

- Aide les bugs à être trouvés plus tôt, minimisant leurs dégâts et les rendant plus faciles à réparer
- Maintient les contributeurs du projet au courant du travail de chacun afin qu'ils puissent en bénéficier dès que possible
- Encourage les utilisateurs à écrire des tests
- Automatise l'exécution des tests
- S'assurer que les tests sont exécutés fréquemment
