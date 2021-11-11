(rr-overview-definitions)=
# Définitions

La définition la plus commune de la reproductibilité (et de la réplication) a été notée pour la première fois par Claerbout et Karrenbach en 1992 {cite:ps}`ClaerboutKarrenbach1992Reproduccibility` et a été utilisée dans la littérature des sciences informatiques depuis lors. Une autre définition populaire a été introduite en 2013 par l'Association des Machines Informatiques (ACM) {cite:ps}`Ivie2018SciComp`, qui ont échangé la signification des termes 'reproductible' et 'reproductible' par rapport à Claerbout et Karrenbach.

Le tableau suivant contraste les deux définitions {cite:ps}`Heroux2018Reproduccibility`.

| Condition     | Claerbout & Karrenbach                                                                                                                                                                          | ACM                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reproductible | Les auteurs fournissent toutes les données nécessaires et les codes informatiques pour exécuter à nouveau l'analyse en recréant les résultats.                                                  | (Équipe différente, configuration expérimentale différente.) La mesure peut être obtenue avec précision par une équipe différente, un système de mesure différent, à un endroit différent sur plusieurs épreuves. Pour les expériences informatiques, cela signifie qu'un groupe indépendant peut obtenir le même résultat en utilisant des artefacts qu'ils développent de manière complètement indépendante.                                                   |
| Réplique      | Une étude qui arrive aux mêmes résultats scientifiques qu'une autre étude, la collecte de nouvelles données (éventuellement avec différentes méthodes) et la réalisation de nouvelles analyses. | (Équipe différente, même installation expérimentale.) La mesure peut être obtenue avec précision par une équipe différente en utilisant la même procédure de mesure, le même système de mesure, dans les mêmes conditions d'exploitation, dans le même endroit ou dans un endroit différent sur plusieurs épreuves. Pour les expériences de calcul, cela signifie qu'un groupe indépendant peut obtenir le même résultat en utilisant les artefacts de l'auteur. |

Barba (2018) {cite:ps}`Barba2018Reproduccibility` a effectué un examen détaillé de la littérature sur l'utilisation de la reproductible/reproductible couvrant plusieurs disciplines. La plupart des papiers et des disciplines utilisent la terminologie telle que définie par Claerbout et Karrenbach, alors que la microbiologie, L'immunologie et l'informatique ont tendance à suivre l'utilisation ACM de la reproductibilité et de la réplication. Dans la littérature de la science politique et de l'économie, ces deux termes sont utilisés de manière interchangeable.

En plus de ces définitions de haut niveau de la reproductibilité, certains auteurs fournissent des distinctions plus détaillées. Victoria Stodden {cite:ps}`Victoria2014Reproduccibility`, un érudit éminent sur ce sujet, a par exemple identifié les autres distinctions suivantes :

- _Reproduccibilité informatique_: Lorsque des informations détaillées sont fournies sur le code, le logiciel, le matériel et les détails d'implémentation.

- _Reproduccibilité empirique_: Lorsque des informations détaillées sont fournies à propos d'expériences et d'observations scientifiques empiriques non calculationnelles. Dans la pratique, cela est possible en rendant les données et les détails de la manière dont elles ont été collectées librement.

- _Reproduccibilité statistique_: Lorsque des informations détaillées sont fournies, par exemple, sur le choix des tests statistiques, des paramčtres modčles et des valeurs seuils. Cela concerne principalement l'enregistrement préalable de la conception d'étude pour prévenir le piratage de la p-value et d'autres manipulations.

(rr-overview-definitions-reproduccibility)=
## Tableau des définitions pour la reproduction

À _The Turing Way_, nous définissons **la recherche reproductible** comme un travail qui peut être recréé indépendamment à partir des mêmes données et du même code que l'équipe originale utilisée. La reproduction est distincte de la reproductible, robuste et généralisable comme décrit dans la figure ci-dessous.


```{figure} ../../figures/reproducible-matrix.jpg
---
nom : reproducible-matrix
alt : définition de la recherche reproductible de Kirstie.
---
Comment la voie de Turing définit la recherche reproductible
```

Les différentes dimensions de la recherche reproductible décrites dans la matrice ci-dessus ont les définitions suivantes :

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Réplicable :** Un résultat est reproductible lorsque la _męme_ analyse effectuée sur les _jeux de données différents_ produit des réponses qualitativement similaires.
- **Robustesse :** Un résultat est robuste lorsque le _męme_ jeu de données est soumis ŕ _des flux d'analyse différents_ pour répondre ŕ la męme question de recherche (par exemple un pipeline écrit en R et un autre écrit en Python) et qu'une réponse qualitativement similaire ou identique est produite. Des résultats robustes montrent que le travail ne dépend pas des spécificités du langage de programmation choisi pour effectuer l'analyse.
- **Généralisable :** La combinaison de résultats reproductibles et robustes nous permet de former des résultats généralisables. Notez que l'exécution d'une analyse sur une implémentation logicielle différente et avec un jeu de données différent ne fournit pas de _résultats généralisés_. Il y aura de nombreuses autres étapes pour savoir dans quelle mesure le travail s'applique à tous les différents aspects de la question de la recherche. La généralisation est une étape importante vers la compréhension du fait que le résultat ne dépend pas d'un jeu de données particulier ni d'une version particulière du pipeline d'analyse.

Plus d'informations sur ces définitions se trouvent dans "Reproduccibility vs. Replicability: A Brief History of a Confused Terminology" de Hans E. format@@0 Plesser {cite:ps}`Plesser2018Reproduccibility`.

```{figure} ../../figures/reproducible-definition-grid.jpg
---
nom : reproducible-definition-grille. pg
alt : Grille avec les caractéristiques de recherche reproductible, reproductible, robuste et généralisable
---
illustration du projet _The Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-reproducible)=
## Reproductible mais pas ouvert

_La méthode Turing_ reconnaît que certaines recherches utiliseront des données sensibles qui ne peuvent pas être partagées et ce manuel fournira des guides sur la façon dont votre recherche peut être reproduite sans que toutes les parties ne soient nécessairement ouvertes.
