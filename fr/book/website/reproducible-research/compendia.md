(rr-compendia)=

# Recherche Compendia

## Prerequisite

| Prerequisite                              | Importance | Notes                                                      |
| ----------------------------------------- | ---------- | ---------------------------------------------------------- |
| {ref}`Version Control<rr-vcs>`            | Helpful    | Peut être utilisé pour la version du compendium            |
| {ref}`Open Research<rr-open>`             | Helpful    | Components are part of the compendium                      |
| {ref}`Reproducible Environments<rr-renv>` | Helpful    | Can be used to make the compendium reproducible            |
| {ref}`Binder Hub<rr-binderhub>`           | Helpful    | Peut être utilisé pour publier le compendium               |
| {ref}`Make<rr-make>`                      | Helpful    | Peut être utilisé pour l'automatisation dans le compendium |

## Summary

Un recueil de recherche est un recueil de toutes les parties numériques d'un projet de recherche, y compris les données, le code, les textes (protocoles, rapports, questionnaires, métadonnées).
The collection is created in such a way that reproducing all results is straightforward {cite:ps}`Nuest2017compendia,Gentleman2007statistical`.

Ce chapitre contient de nombreuses conditions préalables car il rassemble tous les composants numériques d'un projet dans un ensemble de recherches reproductibles.
Cela dit, un recueil de recherche peut être construit avec un minimum de connaissances techniques.
Le but principal est que tous les éléments d'un projet sont publiés ensemble, de sorte qu'une structure de dossier de base combinant tous les composants peut être suffisante.

```{figure} ../../figures/research-compendium.*
---
height: 500px
name: research-compendium
alt: An illustration showing a person churning a big machine that takes scientific information from multiple papers and gives one output of readable file.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

A research compendium [{term}`def<Research Compendia>`] combines all elements of your project, allowing others to reproduce your work, and should be the final product of your research project.
La publication de votre document de recherche avec un recueil de recherche permet aux autres d'accéder à vos commentaires, testez votre analyse et, si le compendium peut être exécuté, redémarrez pour évaluer la sortie résultante.
Non seulement cela vous donne confiance dans vos recherches, mais cela peut vous donner plus de visibilité.
Others may use your research in unexpected ways, some of which are discussed below (refer to section: {ref}`Using a research compendium<rr-compendia-using>`).

## Background

Un recueil de recherche à son niveau le plus fondamental est un ensemble complet de fichiers qui combine tous les composants d'un projet.
Ce compendium peut être téléchargé et exécuté localement pour recréer le travail fait, ou il peut contenir des éléments qui lui permettent d'être exécuté sur un serveur distant.
La recherche exécutable compendia vise à rendre la partie calculatrice d'une publication scientifique reproductible en fournissant tous les blocs de construction disponibles et en donnant une description de la façon dont l'utilisateur peut exécuter le code contenu.

### Structure d'un Compendium de Recherche

Three principles should be kept in mind when constructing a research compendium {cite:ps}`Marwick2018compendia`.

- Les fichiers doivent être organisés dans une structure de dossier conventionnelle ;
- Les données, méthodes et sorties doivent être clairement séparées ;
- L'environnement de calcul doit être spécifié.

Avec ces principes, une grande variété de compendia est possible.
Commençons par la version la plus basique.

#### Compendium de base

Un recueil de base suit ces trois principes.
Il sépare les données et les méthodes en une structure de dossier conventionnelle et décrit l'environnement informatique dans un fichier désigné.
De plus, tout compendium devrait avoir une page d'accueil sous la forme d'un document README.

```text
compendium/
├── data
│   ├── my_data.csv
├── analysis
│   └── my_script.R
├── DESCRIPTION
└── README.md
```

#### Compendium Exécutable

Le dossier suivant peut être considéré comme un recueil de recherche exécutable.
Il contient toutes les parties numériques du projet de recherche (code, données, textes, chiffres) et toutes les informations sur la façon d'obtenir les résultats.
The computing environment is described in the `Dockerfile`, the dependencies of files and how to automatically generate the results are described in the `Makefile`.
Additionally we have a `README.md` describing what the compendium is about and a `LICENSE` file with info on how it can be used.

```text
compendium/
├── CITATION
├── code
│   ├── analyse_data.R
│   └── clean_data.R
├── data_clean
│   └── data_clean.csv
├── data_raw
│   ├── datapackage.json
│   └── data_raw.csv
├── Dockerfile
├── figures
│   └── flow_chart.jpeg
├── LICENSE
├── Makefile
├── paper.Rmd
└── README.md
```

#### Séparer les méthodes, les données, la sortie

Les principes d'un recueil de recherche stipulent qu'il doit clairement séparer les méthodes, les données et les sorties.
Phrasé différemment, cela signifie que nous devons distinguer entre trois types de fichiers et de dossiers:

- **Read-only**: raw data (`data_raw\`), metadata (`datapackage.json`, `CITATION`)
- **Human-generated**: code (`clean_data.R`, `analyse_data.R`), paper (`paper.Rmd`), documentation (`README.md`)
- **Project-generated**: clean data (`data_clean\`, figures (`figures\`), other output

The examples mentioned here are not exhaustive and some may first be "human-generated" and at some point become "read-only" (for example a human may generate the data metadata `datapackage.json`, but once that is done it may become something not to be touched).
En d'autres termes, si un dossier contient des fichiers dans l'une de ces catégories, peut dépendre du cycle de vie du projet.

### Création d'un Compendium

Si vous utilisez déjà certains des outils de ce livre - comme le contrôle de version, Makefiles, et/ou environnements reproductibles, il peut venir naturellement à vous de créer un recueil de recherche.
C'est parce qu'un référentiel de contrôle de version peut être un compendium de recherche; Un Makefile le rend exécutable; Un environnement reproductible le rend reproductible.
To create a research compendium, we recommend to first think about _what the components of your project are_ and create the folder structure accordingly.
Utilisez des noms pour les fichiers et les dossiers qui facilitent la compréhension de ce qu'ils contiennent.
C'est une bonne idée de penser à cela dès le début du processus de recherche et de commencer votre projet avec l'esprit que la production à la fin est un recueil de recherche plutôt qu'un simple document de recherche.

### Publication d'un Compendium

Il y a plusieurs options pour publier un compendium de recherche :

- Sur une plateforme de versioning telle que GitHub ou GitLab (potentiellement avec un lien vers Binder).
- Sur une archive de recherche telle que Zenodo ou l'Open Science Framework (OSF).
- En tant que matériel supplémentaire d'une publication papier.

Pour des exemples, voir l'étiquette/tag/communauté "research-compendium" (appliqué sur GitHub, Zenodo, OSF) ou comme un repli sur le terme "research compendium" dans la description (utilisée sur GitLab). For more info, see also [Research Compendium](https://research-compendium.science).

Dans le futur, le recueil de recherche pourrait même être la publication elle-même, permettant l'examen par les pairs de l'ensemble du projet de recherche.

(rr-compendia-utilisation)=

### Utiliser un Compendium

Un recueil de recherche peut être utilisé de plusieurs façons, y compris (mais non limité à) :

- Évaluation par les pairs : Si les pairs peuvent vérifier ce que vous avez fait, ils peuvent le réviser de façon beaucoup plus approfondie.
- Comprendre la recherche : Si vous voulez vraiment comprendre ce que quelqu'un a fait dans son projet de recherche, le recueil de recherche est ce que vous devez regarder.
- Enseignement : Compendia de recherche peut être de bons exemples à utiliser dans l'enseignement.
- Reproduccibility studies / repro hacks: A research compendium allows other researchers to try (and hopefully successed) to remake your computations.

## Checklist

Pour créer un recueil de recherche, suivez ces étapes :

- Pensez à une bonne structure de dossier (voir l'exemple ci-dessus)
- Créer une structure de dossier (répertoire principal et sous-répertoires)
- Facultatif : Faire le compendium dans un dépôt git
- Ajouter tous les fichiers nécessaires à la reproduction des résultats du projet
- Essayez de faire en sorte que le compendium soit aussi propre et facile à utiliser que possible lorsque vous le publiez pour que d'autres puissent l'utiliser
- Optionnel: Demandez à un pair de vérifier le compendium et de voir s'il fonctionne correctement
- Publier votre compendium

See the [EMNLP 2020 reproducibility checklist](https://2020.emnlp.org/call-for-papers#new-reproducibility-criteria) or the [AGILE reproducible checklist](https://doi.org/10.17605/OSF.IO/CB7Z8) for conference submission checklists.

## Further Reading

- The website [Research Compendium](https://research-compendium.science) contains links to further resources and publications on research compendia as well as links to examples.
