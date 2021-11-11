(rr-ci-github-actions)=
# Intégration continue avec les actions GitHub

Cette section vous guidera à travers la configuration de base de l'intégration continue (CI) en utilisant **GitHub Actions (GHA)**. GHA est un système d'automatisation de tâches entièrement intégré à GitHub. En d'autres termes, c'est une API qui orchestre n'importe quel flux de travail basé sur n'importe quel événement. Bien que de nombreux fournisseurs de services de CI soient nombreux, GHA facilite plus que jamais l'intégration de CI dans vos référentiels. Il fournit un moyen souple d'automatiser presque tous les aspects du flux de travail de votre projet. Voici quelques exemples de cas d'utilisation de GitHub Actions :

- Tests automatisés du logiciel
- Générer des rapports de l'état de tous les changements dans le référentiel
- Répondre aux déclencheurs de flux de travail en utilisant des étiquettes, des tickets, des mentions spéciales et plus encore
- Déclenchement des avis de code et des pull requests
- Gestion des branches

Les actions GitHub sont pilotées par des événements, ce qui signifie qu'elles répondent à n'importe quel événement (Exemples : pull request (PR) créé, problème créé) et déclenche une action (Exemples : ajoute une étiquette, exécute des tests, tri). Toute collection de ces actions est appelée workflow. Une description plus détaillée de ce Vocabulaire lié à GitHub est décrite dans la section suivante.

```{figure} ../../figures/github-actions.jpg
---
largeur : 700px
alignement : centre
: actions Github
alt: Un schéma décrivant comment l'action GitHub écoute un événement (par exemple, `PR` créé, problème créé, PR fusionné) puis déclenche une tâche qui peut être tester, trier, étiqueter ou déployer.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
## Vocabulaire lié à GitHub

### 1. Flux de travail

**Le workflow** est une unité d'automatisation du début à la fin. Il se compose de tous les aspects qui doivent être pris en compte lors de l'automatisation, y compris quel événement peut déclencher l'automatisation. Le workflow peut être utilisé pour construire, tester, publier, ou déployer un projet sur GitHub. Il est composé de plusieurs tâches qui sont formées à partir des étapes comme indiqué dans le diagramme d'aperçu ci-dessous.

```{figure} ../../figures/ci-01.png
---
nom : ContinuousIntegration-Nov20
alt : Une illustration de la façon dont l'intégration continue fonctionne avec de multiples tâches et actions qui travaillent les uns avec les autres pour alimenter une illustration d'étapes à montrer la fusion dans la version principale.
---
À gauche : illustration du projet _The Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). À droite : Aperçu du diagramme des concepts les plus importants de GitHub Actions, adapté à partir de [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Tâche

Une tâche **** est définie comme un ensemble d'étapes séquentielles exécutées sur le même exécuteur. Un workflow peut construire une ou plusieurs tâches, et peut être exécuté soit en parallèle (par défaut) soit en séquentiel.

### 3. Étape

Une **étape** représente une tâche individuelle. Une étape peut être soit une action soit une autre unité de commande, comme exécuter un script Python ou imprimer quelque chose sur la console.

### 4. Actions

Une action **GitHub** est un morceau d'automatisation écrit d'une manière compatible avec les flux de travail. Les actions peuvent être écrites par [GitHub](https://github.com/actions), par la communauté [open source](https://github.com/sdras/awesome-actions), ou vous pouvez les écrire vous-même !

## Commencer avec l'action GitHub

Les actions GitHub utilisent la syntaxe YAML et stockées dans un répertoire appelé `.github/workflows` dans le dépôt. Vous pouvez soit utiliser un modèle de workflow soit créer le vôtre.


### 1- Utilisation du modèle d'actions GitHub

Si vous voulez commencer avec GitHub Actions, vous pouvez commencer en cliquant sur l'onglet "Actions" dans le référentiel où vous voulez créer un workflow, comme indiqué ci-dessous. Dans l'onglet "Actions", vous trouverez des flux de travail très populaires qui peuvent aider à déployer ou automatiser certaines tâches dans le référentiel.

```{figure} ../../figures/gifs/start_ghactions.gif
---
largeur : 600px
align: centre
nom: Modèle d'action GitHub
alt: Un gif montrant où vous pouvez trouver le modèle d'actions GitHub dans votre dépôt Github.
---
```
Vous pouvez choisir l'un de ces workflows de démarrage et les personnaliser davantage.  Une explication des blocs de construction dans le workflow est décrite dans une section ultérieure.


### 2- Utilisation de modèles spécifiques aux bibliothèques.


Le modèle Github Action n'est pas le seul kit de démarrage disponible ; il y a des modèles spécifiques aux bibliothèques pour la langue d'intérêt. Par exemple, vous pouvez utiliser le paquet  {usethis} en R pour créer un modèle pour les paquets R en exécutant `usethis::use_github_action_check_standard()`. Cela générera des actions GitHub pour exécuter des vérifications CRAN après chaque commit ou pull request. C'est tout ce que vous avez à faire !


### 3- Utiliser la configuration d'autres projets comme inspriration

Beaucoup de bibliothèques open source bien entretenues et de projets estableshed utilisent GitHub Actions pour leur CI. Jetez un coup d'œil aux listes de contrôle sur les demandes d'inspiration et d'idées de ces projets ; suivre en vérifiant leurs fichiers de configuration CI. Dans la plupart des cas, leur licence permettra de copier les bits qui pourraient fonctionner dans votre cas. L'avantage de cette approche est d'utiliser certaines approches qui fonctionnent déjà.

Par exemple :

- Le flux de travail de Turing Way pour [construire le livre de Turing Way et fournir un aperçu des pull requests](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- Une matrice de tests sur [3 systèmes d'exploitation et plusieurs versions Python pour le paquet Python NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- Une configuration plus complexe de tester la compilation [dans de multiples circonstances pour le paquet Python Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


Dans la section suivante, nous expliquerons les blocs de construction du flux de travail.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
