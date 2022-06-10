(rr-ci-building-gh-actions)=
# Construire un bloc d'actions d'un Github

Comme décrit précédemment, les fichiers de workflow utilisent la syntaxe YAML, qui a soit une extension de fichier `.yml` ou `.yaml`. Si vous êtes nouveau dans YAML et que vous voulez en savoir plus, {ref}`consultez notre section sur YMAL<rr-renv-yaml>`. Ces fichiers de workflow doivent être stockés dans le répertoire `.github/workflows` de votre dépôt.

Chaque workflow est défini dans un YAML distinct. Nous allons introduire le bloc de construction d'un workflow en utilisant l'exemple de Hello World :

```
Nom :
    Hello World package
sur :
  push :
    branches : [ main ]
Jobs :
  build :
    runs-on: ubuntu-latest
    steps:
      - utilisations : actions/checkout@v2
```

**1. Nom**

C'est le nom du workflow et il est optionnel. GitHub utilisera ce nom pour être affiché sur la page des actions du dépôt.
```
Nom :
    Pack Hello World
```

**2. Activé**

Le champ `sur` indique à GHA quand s'exécuter. Par exemple, nous pouvons exécuter le workflow à chaque fois qu'il y a un `push` ou un `pull` sur la branche `principale`.
```
sur:
  push:
    branches : [ main ]
  pull_request :
    branches : [ main ]
```
Il y a beaucoup d'événements qui peuvent être utilisés pour déclencher un workflow. Vous pouvez les explorer [ici](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. emplois et étapes**

Ce bloc définit le composant principal d'un flux de travail Action. Les flux de travail sont composés de `jobs`. Chaque tâche a également besoin d'une machine hôte spécifique sur laquelle s'exécuter, le champ `runs-on:` est comment nous le spécifions. Le workflow modèle exécute la tâche `build` dans la dernière version d'Ubuntu, un système d'exploitation basé sur Linux.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

Nous pouvons également séparer les fonctions `build` et `test` de notre workflow en plus d'une tâche qui s'exécutera lorsque notre workflow sera déclenché. Les tâches sont faites de `étapes`. Celles-ci vous permettent de définir ce qu'il faut exécuter dans chaque tâche. Il y a trois façons de définir des étapes.

- Avec `utilisations`
- Avec `exécuter`
- Avec `name`

```

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
  test:
    steps:
    - name: npm install
      run: |
        npm install
        npm test
```

L'action la plus basique est `actions/checkout@v2`. Cela utilise une action fournie par GitHub appelée [`checkout`](https://github.com/actions/checkout) pour permettre au workflow d'accéder au contenu du dépôt. Toutes les étapes d'une tâche s'exécutent séquentiellement sur l'exécuteur associé à la tâche. Par défaut, si une étape échoue, les étapes suivantes de la tâche sont ignorées. Chaque mot clé d'exécution représente un nouveau processus et un nouveau shell dans l'environnement exécuteur. Lorsque vous fournissez des commandes multi-lignes, chaque ligne s'exécute dans le même shell.

Fournir un guide complet de toutes les options disponibles dépasse le cadre de cet aperçu, et au lieu de cela, nous vous invitons à étudier [la documentation officielle de référence](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) et/ou les références des projets open-source de configuration CI dans la section précédente.
