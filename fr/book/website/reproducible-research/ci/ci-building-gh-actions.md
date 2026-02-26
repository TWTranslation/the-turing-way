(rr-ci-building-gh-actions)=

# Construire un bloc d'actions d'un Github

As described previously, workflow files use YAML syntax, which has either a `.yml` or `.yaml` file extension.
If you're new to YAML and want to learn more, {ref}`see our section about YMAL<rr-renv-yaml>`.
This workflow files must be stored in the `.github/workflows` directory of your repository.

Chaque workflow est défini dans un YAML distinct. Nous allons introduire le bloc de construction d'un workflow en utilisant l'exemple de Hello World :

```
name:
    Hello World package
on:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
```

**1. name**

C'est le nom du workflow et il est optionnel. GitHub utilisera ce nom pour être affiché sur la page des actions du dépôt.

```
name:
    Hello World package
```

**2. on**

The `on` field tells GHA when to run. For example, we can run the workflow anytime there's a `push` or a `pull` on the `main` branch.

```
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
```

Il y a beaucoup d'événements qui peuvent être utilisés pour déclencher un workflow. You can explore them [here](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. jobs and steps**

Ce bloc définit le composant principal d'un flux de travail Action. Workflows are made of `jobs`.
Every job also needs a specific host machine on which to run, the `runs-on:` field is how we specify it.
The template workflow is running the `build` job in the latest version of Ubuntu, a Linux-based operating system.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

We can also separate the `build` and `test` functions of our workflow into more than one job that will run when our workflow is triggered. Jobs are made of `steps`.
Celles-ci vous permettent de définir ce qu'il faut exécuter dans chaque tâche.
Il y a trois façons de définir des étapes.

- With `uses`
- With `run`
- With `name`

```

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
  test:
    steps:
    - name: npm install
      run: |
        npm install
        npm test
```

The most basic action is `actions/checkout@v3`.
This uses a GitHub provided action called [`checkout`](https://github.com/actions/checkout) to allow the workflow to access the contents of the repository.
Toutes les étapes d'une tâche s'exécutent séquentiellement sur l'exécuteur associé à la tâche.
Par défaut, si une étape échoue, les étapes suivantes de la tâche sont ignorées. Chaque mot clé d'exécution représente un nouveau processus et un nouveau shell dans l'environnement exécuteur.
Lorsque vous fournissez des commandes multi-lignes, chaque ligne s'exécute dans le même shell.

Providing a comprehensive guide of all the available options is beyond the scope of this overview, and instead, we would urge you to study [official reference documentation](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) and/or the CI configuration open-source projects references in the previous section.
