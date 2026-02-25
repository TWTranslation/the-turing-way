(rr-ci-building-gh-actions)=

# Construindo um bloco de ações do Github

As described previously, workflow files use YAML syntax, which has either a `.yml` or `.yaml` file extension.
If you're new to YAML and want to learn more, {ref}`see our section about YMAL<rr-renv-yaml>`.
This workflow files must be stored in the `.github/workflows` directory of your repository.

Cada fluxo de trabalho é definido em um YAML separado. Vamos introduzir o bloco de construção de um fluxo de trabalho usando o exemplo Hello World:

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

Esse é o nome do fluxo de trabalho e é opcional. O GitHub usará este nome para ser exibido na página de ações do repositório.

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

Há vários eventos que podem ser usados para acionar um fluxo de trabalho. You can explore them [here](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. jobs and steps**

Este bloco define o componente principal de um fluxo de trabalho Acção. Workflows are made of `jobs`.
Every job also needs a specific host machine on which to run, the `runs-on:` field is how we specify it.
The template workflow is running the `build` job in the latest version of Ubuntu, a Linux-based operating system.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

We can also separate the `build` and `test` functions of our workflow into more than one job that will run when our workflow is triggered. Jobs are made of `steps`.
Eles permitem que você defina o que será executado em cada tarefa.
Há três maneiras de definir os passos.

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
Todos os passos de um trabalho executado sequencialmente no runner associado ao trabalho.
Por padrão, se uma etapa falhar, os passos subsequentes do trabalho são ignorados. A palavra-chave de cada execução representa um novo processo e concha no ambiente de runner.
Quando você fornece comandos com várias linhas, cada linha é executada no mesmo shell.

Providing a comprehensive guide of all the available options is beyond the scope of this overview, and instead, we would urge you to study [official reference documentation](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) and/or the CI configuration open-source projects references in the previous section.
