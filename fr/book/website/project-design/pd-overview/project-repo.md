(pd-project-repo)=

# Création de dépôts de projet

## Prerequisites

| Prerequisite            | Importance |
| ----------------------- | ---------- |
| {ref}`cl-github-novice` | Helpful    |

## Summary

Ce chapitre introduit un guide étape par étape sur la façon de configurer un référentiel de projet.
Plus précisément, nous décrivons les documents clés que vous devez ajouter à votre référentiel afin de maintenir la documentation et d'assurer une collaboration efficace.
Nous fournissons des exemples à partir du dépôt GitHub hébergé et maintenu par des chercheurs en science ouverte, cependant, les principes sont applicables à tout dépôt en ligne géré par une équipe.

## Motivation

Les dépôts de projets en ligne nécessitent de la documentation afin que tous les collaborateurs soient informés des mises à jour et que les contributeurs reçoivent les détails dont ils ont besoin pour contribuer efficacement.
Les documents partagés peuvent vous aider à faire connaître vos idées à des contributeurs nouveaux ou potentiels.
Les contributions peuvent être n'importe quoi, des nouvelles idées aux rapports de bogues et aux contributions de code réelles.
Les pratiques scientifiques ouvertes décrites ici vous permettront également de mener plus facilement des projets à source fermée en collaboration et en transparence pour vos équipes.

```{figure} ../../../figures/file-management-manual.jpg
---
name: file-management-manual
alt: image shows two people organising files. One person is holdinng up a README file and other person is reading the details to set up the data and analysis files in the drawer
---
Illustration about managing files in a repository.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

Dans ce chapitre, nous avons décrit les documents suivants qui doivent être ajoutés à un référentiel de projet :

- {ref}`Landing Page - README File<pd-project-repo-readme>`
- {ref}`Roadmapping<pd-project-repo-roadmapping>`
- {ref}`Contributor Pathways<pd-project-repo-contributors>`
- {ref}`Participation Guidelines<pd-project-repo-participation>`

(pd-project-repo-licence)=

## Commencez par ajouter une licence

Un des documents les plus importants pour votre projet est une licence.

```{note}
Without a license, all rights are with the author of the code, and that means nobody else can use, copy, distribute, or modify the work without consent.
A license gives this consent.
If you do not have a license for your software, it is effectively unusable by the whole research community.

**See {ref}`rr-licensing` chapter for details**
```

Le premier fichier que vous pouvez ajouter à votre dépôt de projet est un fichier 'LICENSE'.
You can select a license type based on the level of freedom you would like to give to your users to use and build upon your project, visit [choosealicense.com](https://choosealicense.com/).
Please follow the {ref}`Licensing Checklist<rr-licensing-checklist>` when adding a license to your project repository.
