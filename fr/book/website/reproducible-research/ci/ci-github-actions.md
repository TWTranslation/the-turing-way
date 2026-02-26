(rr-ci-github-actions)=

# Intégration continue avec les actions GitHub

This section will walk you through the basic setup of continuous integration (CI) using **GitHub Actions (GHA)**. GHA est un système d'automatisation de tâches entièrement intégré à GitHub. En d'autres termes, c'est une API qui orchestre n'importe quel flux de travail basé sur n'importe quel événement. Bien que de nombreux fournisseurs de services de CI soient nombreux, GHA facilite plus que jamais l'intégration de CI dans vos référentiels. Il fournit un moyen souple d'automatiser presque tous les aspects du flux de travail de votre projet. Voici quelques exemples de cas d'utilisation de GitHub Actions :

- Tests automatisés du logiciel
- Générer des rapports de l'état de tous les changements dans le référentiel
- Répondre aux déclencheurs de flux de travail en utilisant des étiquettes, des tickets, des mentions spéciales et plus encore
- Déclenchement des avis de code et des pull requests
- Gestion des branches

Les actions GitHub sont pilotées par des événements, ce qui signifie qu'elles répondent à n'importe quel événement (Exemples : pull request (PR) créé, problème créé) et déclenche une action (Exemples : ajoute une étiquette, exécute des tests, tri). Toute collection de ces actions est appelée workflow. Une description plus détaillée de ce Vocabulaire lié à GitHub est décrite dans la section suivante.

```{figure} ../../../figures/github-actions.*
---
width: 700px
align: center
name: Github actions
alt: A diagram describing how GitHub action listen to an event (for example, `PR` created, issue created, PR merged) and then trigger a job which can be testing, sorting, labelling or deployment.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Vocabulaire lié à GitHub

### 1. Flux de travail

**The workflow** is a unit of automation from start to finish. Il se compose de tous les aspects qui doivent être pris en compte lors de l'automatisation, y compris quel événement peut déclencher l'automatisation. Le workflow peut être utilisé pour construire, tester, publier, ou déployer un projet sur GitHub. Il est composé de plusieurs tâches qui sont formées à partir des étapes comme indiqué dans le diagramme d'aperçu ci-dessous.

```{figure} ../../../figures/ci-01.*
---
name: ContinuousIntegration-Nov20
alt: An illustration of how continuous integration works with multiple jobs and actions working alongside each other to feed into an illustration of steps to show merging into the main version.
---
On the left: _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). On the right: Overview diagram of the most important concepts of GitHub Actions, adapted from [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Tâche

A **job** is defined as a set of sequential steps run on the same runner. Un workflow peut construire une ou plusieurs tâches, et peut être exécuté soit en parallèle (par défaut) soit en séquentiel.

### 3. Étape

A **step** represents one individual task. Une étape peut être soit une action soit une autre unité de commande, comme exécuter un script Python ou imprimer quelque chose sur la console.

### 4. Actions

A GitHub **Action** is a piece of automation written in a way that is compatible with workflows. Actions can be written by [GitHub](https://github.com/actions), by the open source [community](https://github.com/sdras/awesome-actions), or you can write them yourself!

## Commencer avec l'action GitHub

GitHub Actions uses YAML syntax and stored in a directory called `.github/workflows` in the repository. Vous pouvez soit utiliser un modèle de workflow soit créer le vôtre.

### 1- Utilisation du modèle d'actions GitHub

Si vous voulez commencer avec GitHub Actions, vous pouvez commencer en cliquant sur l'onglet "Actions" dans le référentiel où vous voulez créer un workflow, comme indiqué ci-dessous. Dans l'onglet "Actions", vous trouverez des flux de travail très populaires qui peuvent aider à déployer ou automatiser certaines tâches dans le référentiel.

```{figure} ../../../figures/gifs/start_ghactions.gif
---
width: 600px
align: center
name: GitHub action template
alt: A gif showing where you can find GitHub Actions template in your Github repo.
---
```

Vous pouvez choisir l'un de ces workflows de démarrage et les personnaliser davantage.  Une explication des blocs de construction dans le workflow est décrite dans une section ultérieure.

### 2- Utilisation de modèles spécifiques aux bibliothèques.

Le modèle Github Action n'est pas le seul kit de démarrage disponible ; il y a des modèles spécifiques aux bibliothèques pour la langue d'intérêt. For example, you can  use  {usethis} package in R to create a template for R packages by running `usethis::use_github_action_check_standard()`. Cela générera des actions GitHub pour exécuter des vérifications CRAN après chaque commit ou pull request. C'est tout ce que vous avez à faire !

### 3- Using the configuration of other projects as inspiration

Beaucoup de bibliothèques open source bien entretenues et de projets estableshed utilisent GitHub Actions pour leur CI.
Jetez un coup d'œil aux listes de contrôle sur les demandes d'inspiration et d'idées de ces projets ;
suivre en vérifiant leurs fichiers de configuration CI.
Dans la plupart des cas, leur licence permettra de copier les bits qui pourraient fonctionner dans votre cas.
L'avantage de cette approche est d'utiliser certaines approches qui fonctionnent déjà.

For example:

- The Turing Way workflow to [build the Turing Way book and to provide a preview for the pull requests](https://github.com/the-turing-way/the-turing-way/blob/main/.github/workflows/ci.yml)
- A matrix of tests on [3 operating systems and multiple Python versions for the Python package NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- A more complex setup of testing the [build in multiple circumstances for the Python package Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)

Dans la section suivante, nous expliquerons les blocs de construction du flux de travail.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
