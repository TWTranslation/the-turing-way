(pd-project-repo)=
# Création de dépôts de projet

## Pré-requis

| Pré-requis              | Importance |
| ----------------------- | ---------- |
| {ref}`cl-github-novice` | Utile      |


## Summary

Ce chapitre introduit un guide étape par étape sur la façon de configurer un référentiel de projet. Plus précisément, nous décrivons les documents clés que vous devez ajouter à votre référentiel afin de maintenir la documentation et d'assurer une collaboration efficace. Nous fournissons des exemples à partir du dépôt GitHub hébergé et maintenu par des chercheurs en science ouverte, cependant, les principes sont applicables à tout dépôt en ligne géré par une équipe.

## Motivation

Les dépôts de projets en ligne nécessitent de la documentation afin que tous les collaborateurs soient informés des mises à jour et que les contributeurs reçoivent les détails dont ils ont besoin pour contribuer efficacement. Les documents partagés peuvent vous aider à faire connaître vos idées à des contributeurs nouveaux ou potentiels. Les contributions peuvent être n'importe quoi, des nouvelles idées aux rapports de bogues et aux contributions de code réelles. Les pratiques scientifiques ouvertes décrites ici vous permettront également de mener plus facilement des projets à source fermée en collaboration et en transparence pour vos équipes.

```{figure} ../figures/file-management-manual.jpg
---
nom: file-management-manual
alt : image montre deux personnes organisant des fichiers. Une personne est holdinng vers le haut un fichier README et une autre personne lit les détails pour configurer les fichiers de données et d'analyse dans le tiroir
---
Illustration sur la gestion des fichiers dans un dépôt.
Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : 10.5281/zenodo.3332807.
```

Dans ce chapitre, nous avons décrit les documents suivants qui doivent être ajoutés à un référentiel de projet :
- {ref}`Page d'accueil - Fichier README<pd-project-repo-readme>`
- {ref}`Cartographie de route<pd-project-repo-roadmapping>`
- {ref}`Chemins des contributeurs<pd-project-repo-contributors>`
- {ref}`Lignes directrices de participation<pd-project-repo-participation>`

(pd-project-repo-licence)=
## Commencez par ajouter une licence

Un des documents les plus importants pour votre projet est une licence.

```{note}
Sans licence, tous les droits sont détenus par l'auteur du code, et cela signifie que personne d'autre ne peut utiliser, copier, distribuer ou modifier l'œuvre sans consentement.
Une licence donne ce consentement.
Si vous n'avez pas de licence pour votre logiciel, elle est en fait inutilisable par l'ensemble de la communauté de recherche.

**Voir le chapitre `rr-licensing` de {ref}pour plus de détails**
```

Le premier fichier que vous pouvez ajouter à votre dépôt de projet est un fichier 'LICENSE'. Vous pouvez sélectionner un type de licence basé sur le niveau de liberté que vous souhaitez donner à vos utilisateurs pour utiliser et construire sur votre projet, visitez [le site de sélection. om](https://choosealicense.com/). Veuillez suivre la liste de contrôle de licence de {ref}`<rr-licensing-checklist>` lors de l'ajout d'une licence dans votre dépôt de projet.
