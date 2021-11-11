(rr-open)=
# Recherche ouverte

(rr-open-prerequisites)=
## Pré-requis

| Pré-requis    | Importance | Notes                                               |
| ------------- | ---------- | --------------------------------------------------- |
| {ref}`rr-vcs` | Utile      | L'expérience avec GitHub est particulièrement utile |


```{figure} ../figures/evolution-open-research.jpg
---
name : evolution-open-research
alt : Cette image montre un chercheur qui évolue ses pratiques de recherche pour évoluer vers l'ère de la recherche ouverte.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=
## Summary

La recherche ouverte vise à transformer la recherche en la rendant plus reproductible, transparente, réutilisable, collaborative, responsable et accessible à la société. Il pousse au changement dans la manière dont la recherche est menée et diffusée par des outils numériques. Une définition de la recherche ouverte, [telle que donnée par l'Organisation de coopération et de développement économiques (OCDE)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), est la pratique consistant à rendre publiquement « les résultats primaires des résultats de la recherche financés par les deniers publics – les publications et les données de recherche – accessibles dans un format numérique sans restriction ou minime ». Pour parvenir à cette ouverture de la recherche, chaque élément du processus de recherche devrait :

- _Soyez publiquement disponible_: Il est difficile d'utiliser et de bénéficier de la connaissance cachée derrière des barrières telles que les mots de passe et les murs de paie.
- _Être réutilisable_: Les résultats de la recherche doivent être licenciés de manière appropriée, afin que les utilisateurs potentiels connaissent des limitations sur la réutilisation.
- _Soyez transparent_: Avec les métadonnées appropriées pour fournir des énoncés clairs sur la manière dont la production de la recherche a été produite et ce qu'elle contient.

Le processus de recherche a généralement la forme suivante : les données sont collectées puis analysées (généralement à l'aide de logiciels). Ce processus peut impliquer l'utilisation de matériel spécialisé. Les résultats de la recherche sont ensuite publiés. Tout au long du processus, il est de bonne pratique pour les chercheurs de documenter leur travail dans des cahiers. La recherche ouverte vise à ouvrir chacun de ces éléments:

- _Open Data_: Documenter et partager ouvertement des données de recherche pour les réutiliser.
- _Logiciel Open Source_: Documenter le code de recherche et les routines, et les rendre librement accessibles et disponibles.
- _Open Hardware_: Documenter les conceptions, matériaux et autres informations pertinentes relatives au matériel, et les rendre accessibles et disponibles librement.
- _Open Access_: Rendre toutes les sorties publiées librement accessibles pour une utilisation et un impact maximum.
- _Open Notebooks_: Une pratique émergente, documentant et partageant le processus expérimental d'essai et d'erreur.

Ces éléments sont développés dans ce chapitre.

La bourse ouverte [{term}`def<Open Scholarship>`] est un concept qui étend la recherche ouverte. Il s'agit de rendre accessibles au public d'autres aspects de la recherche scientifique, par exemple:

- _Ouvrir les ressources éducatives_: rendre publiques les ressources éducatives à réutiliser et à modifier.
- _Équité, diversité, inclusion_: Garantir la bourse est ouvert à quiconque sans barrières en se basant sur des facteurs tels que la race, l'arrière-plan, le sexe et l'orientation sexuelle.
- _Science citoyenne_: L'inclusion de membres du public dans la recherche scientifique.

Ces éléments sont également discutés en détail dans ce chapitre.

(rr-open-useful)=
## Motivation et arrière-plan

Il y a cinq grandes écoles de pratiques ouvertes qui motivent la pensée au profit de la recherche :

| École          | Croyance                                                                                           | Visée                                                                                            |
| -------------- | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Infrastructure | Une recherche efficace dépend des outils et des applications disponibles.                          | Créer des plates-formes, des outils et des services ouvertement disponibles pour les chercheurs. |
| Pragmatique    | La création de connaissances pourrait être plus efficace si les chercheurs travaillaient ensemble. | Ouverture du processus de création de connaissances.                                             |
| Mesure         | Les contributions universitaires d'aujourd'hui ont besoin de mesures d'impacts alternatives.       | Développer un système métrique alternatif pour l'impact de la recherche.                         |
| Démocratique   | L'accès à la connaissance est inégalement distribué.                                               | Rendre les connaissances disponibles gratuitement pour tout le monde.                            |
| Publique       | La recherche doit être rendue accessible au public.                                                | Rendre la recherche accessible aux citoyens.                                                     |

Les pratiques ouvertes profitent également aux chercheurs qui les diffusent. Par exemple, il y a la preuve {cite:ps}`McKiernan et al. 2016<McKiernan2016Open>` que les articles en accès libre sont cités plus souvent, comme le montre la métastuce présentée dans la figure ci-dessous.

```{figure} ../figures/open-access-citations.jpg
---
hauteur : 500px
: open-access-citation
alt: Une parcelle éparse de la relation entre les taux de citation et la discipline
---
Le taux de citation relatif (OA : non-OA) dans 19 domaines de recherche. Ce taux est défini comme le taux moyen de citation des articles OA divisé par le taux moyen de citation des articles non OA. Plusieurs points pour la même discipline indiquent des estimations différentes de la même étude ou des estimations provenant de plusieurs études. (Voir la note de bas de page 1 pour les références.)
```

Un autre avantage de l'ouverture est que, même si les collaborations de recherche sont essentielles pour faire progresser les connaissances, identifier et établir des liens avec des collaborateurs appropriés n'est pas négligeable. Des pratiques ouvertes peuvent faciliter la connexion des chercheurs en augmentant la visibilité et la capacité de découverte du travail, faciliter l'accès rapide aux nouvelles données et aux nouvelles ressources logicielles et créer de nouvelles possibilités d'interaction avec les projets communautaires en cours et de contribution.

***Mots-clés de chapitre**: Ce chapitre est supervisé pour le `Groupe d'étude de données Turing` (`turing-dsg`).*
