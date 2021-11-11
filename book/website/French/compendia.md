(rr-compendia)=
# Recherche Compendia

## Pré-requis

| Pré-requis                                          | Importance | Notes                                                      |
| --------------------------------------------------- | ---------- | ---------------------------------------------------------- |
| {ref}`Contrôle de version<rr-vcs>`            | Utile      | Peut être utilisé pour la version du compendium            |
| {ref}`Recherche Ouverte<rr-open>`             | Utile      | Les composants font partie du compendium                   |
| {ref}`Environnements reproductibles<rr-renv>` | Utile      | Peut être utilisé pour reproduire le compendium            |
| {ref}`Hub de lieur<rr-binderhub>`             | Utile      | Peut être utilisé pour publier le compendium               |
| {ref}`Faire<rr-make>`                         | Utile      | Peut être utilisé pour l'automatisation dans le compendium |

## Summary

Un recueil de recherche est un recueil de toutes les parties numériques d'un projet de recherche, y compris les données, le code, les textes (protocoles, rapports, questionnaires, métadonnées). La collection est créée de telle sorte que la reproduction de tous les résultats soit simple {cite:ps}`Nuest2017compendia,Gentleman2007statistique`.

Ce chapitre contient de nombreuses conditions préalables car il rassemble tous les composants numériques d'un projet dans un ensemble de recherches reproductibles. Cela dit, un recueil de recherche peut être construit avec un minimum de connaissances techniques. Le but principal est que tous les éléments d'un projet sont publiés ensemble, de sorte qu'une structure de dossier de base combinant tous les composants peut être suffisante.

```{figure} ../figures/research-compendium.jpg
---
hauteur : 500px
: recherche-compendium
alt : Une illustration montrant une personne ayant une grande machine qui prend des informations scientifiques à partir de plusieurs papiers et qui donne une sortie de fichier lisible.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

Un compendium de recherche [{term}`def<Research Compendia>`] combine tous les éléments de votre projet, permettre aux autres de reproduire votre travail et devrait être le produit final de votre projet de recherche. La publication de votre document de recherche avec un recueil de recherche permet aux autres d'accéder à vos commentaires, testez votre analyse et, si le compendium peut être exécuté, redémarrez pour évaluer la sortie résultante. Non seulement cela vous donne confiance dans vos recherches, mais cela peut vous donner plus de visibilité. D'autres peuvent utiliser votre recherche de manière inattendue, dont certains sont discutés ci-dessous (reportez-vous à la section : {ref}`Utilisation d'un compendium de recherche<rr-compendia-using>`).

## Arrière-plan

Un recueil de recherche à son niveau le plus fondamental est un ensemble complet de fichiers qui combine tous les composants d'un projet. Ce compendium peut être téléchargé et exécuté localement pour recréer le travail fait, ou il peut contenir des éléments qui lui permettent d'être exécuté sur un serveur distant. La recherche exécutable compendia vise à rendre la partie calculatrice d'une publication scientifique reproductible en fournissant tous les blocs de construction disponibles et en donnant une description de la façon dont l'utilisateur peut exécuter le code contenu.


### Structure d'un Compendium de Recherche

Il faut garder à l'esprit trois principes lors de la construction d'un recueil de recherche {cite:ps}`Marwick2018compendia`.

- Les fichiers doivent être organisés dans une structure de dossier conventionnelle ;
- Les données, méthodes et sorties doivent être clairement séparées ;
- L'environnement de calcul doit être spécifié.

Avec ces principes, une grande variété de compendia est possible. Commençons par la version la plus basique.


#### Compendium de base

Un recueil de base suit ces trois principes. Il sépare les données et les méthodes en une structure de dossier conventionnelle et décrit l'environnement informatique dans un fichier désigné. De plus, tout compendium devrait avoir une page d'accueil sous la forme d'un document README.

```text
compendium/
── données
Ω── mon_data.csv
── analyse
文<unk> ─ mon_script.R
── DESCRIPTION
<unk> ─ README.md
```

#### Compendium Exécutable

Le dossier suivant peut être considéré comme un recueil de recherche exécutable. Il contient toutes les parties numériques du projet de recherche (code, données, textes, chiffres) et toutes les informations sur la façon d'obtenir les résultats. L'environnement informatique est décrit dans le `fichier Docker`, les dépendances des fichiers et comment générer automatiquement les résultats sont décrits dans le `Makefile`. De plus, nous avons un `README. d` décrivant ce qu'est le compendium et un fichier `LICENSE` avec des informations sur comment il peut être utilisé.

```text
compendium/
── CITATION
── code
── analyse_data.R
文<unk> ── clean_data.
── data_clean
Ω<unk> ── data_clean.csv
── data_raw
── datapackage. son
Ω<unk> ── data_raw.csv
── Dockerfile
── figures
文<unk> ─ flow_chart. peg
── LICENSE
── Makefile
── paper.Rmd
<unk> ─ README.md
```

#### Séparer les méthodes, les données, la sortie

Les principes d'un recueil de recherche stipulent qu'il doit clairement séparer les méthodes, les données et les sorties. Phrasé différemment, cela signifie que nous devons distinguer entre trois types de fichiers et de dossiers:

- **Lecture seule**: données brutes (``data_raw\`), métadonnées (``datapackage.json`,`CITATION`)
- **Générée par l'homme**: code (`clean_data.R`, `analyse_data.`), paper (`paper.Rmd`), documentation (`README.md`)
- **Projets générés**: nettoyer les données (``data_clean\`, figures (``figures\`), autre sortie

Les exemples mentionnés ici ne sont pas exhaustifs et certains peuvent d'abord être "générés par l'homme" et, à un moment donné, deviennent "en lecture seule" (par exemple, un humain peut générer le paquet de données `de métadonnées. fils`, mais une fois que cela est fait, cela peut devenir quelque chose à ne pas toucher). En d'autres termes, si un dossier contient des fichiers dans l'une de ces catégories, peut dépendre du cycle de vie du projet.


### Création d'un Compendium

Si vous utilisez déjà certains des outils de ce livre - comme le contrôle de version, Makefiles, et/ou environnements reproductibles, il peut venir naturellement à vous de créer un recueil de recherche. C'est parce qu'un référentiel de contrôle de version peut être un compendium de recherche; Un Makefile le rend exécutable; Un environnement reproductible le rend reproductible. Pour créer un recueil de recherche, nous vous recommandons de d'abord réfléchir à *ce que sont les composants de votre projet* et de créer la structure du dossier en conséquence. Utilisez des noms pour les fichiers et les dossiers qui facilitent la compréhension de ce qu'ils contiennent. C'est une bonne idée de penser à cela dès le début du processus de recherche et de commencer votre projet avec l'esprit que la production à la fin est un recueil de recherche plutôt qu'un simple document de recherche.


### Publication d'un Compendium

Il y a plusieurs options pour publier un compendium de recherche :

- Sur une plateforme de versioning telle que GitHub ou GitLab (potentiellement avec un lien vers Binder).
- Sur une archive de recherche telle que Zenodo ou l'Open Science Framework (OSF).
- En tant que matériel supplémentaire d'une publication papier.

Pour des exemples, voir l'étiquette/tag/communauté "research-compendium" (appliqué sur GitHub, Zenodo, OSF) ou comme un repli sur le terme "research compendium" dans la description (utilisée sur GitLab). Pour plus d'informations, voir aussi [le Compendium de recherche](https://research-compendium.science).

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

## Lecture ultérieure

- Le site web [Research Compendium](https://research-compendium.science) contient des liens vers d'autres ressources et publications sur compendia de recherche ainsi que des liens vers des exemples.


<!---
> top 3/5 resources to read on this topic (if they weren't licensed so we could include them above already) at the top, maybe in their own box/in bold.
> less relevant/favourite resources in case someone wants to dig into this in detail
-->
