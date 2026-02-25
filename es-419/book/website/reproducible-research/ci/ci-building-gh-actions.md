(rr-ci-building-gh-actions)=

# Construyendo un bloque de acciones de Github

As described previously, workflow files use YAML syntax, which has either a `.yml` or `.yaml` file extension.
If you're new to YAML and want to learn more, {ref}`see our section about YMAL<rr-renv-yaml>`.
This workflow files must be stored in the `.github/workflows` directory of your repository.

Cada flujo de trabajo se define en un YAML independiente. Presentaremos el bloque de construcción de un flujo de trabajo utilizando el ejemplo de Hello World:

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

Este es el nombre del flujo de trabajo y es opcional. GitHub utilizará este nombre para mostrarlo en la página de acciones del repositorio.

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

Hay muchos eventos que se pueden utilizar para activar un flujo de trabajo. You can explore them [here](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. jobs and steps**

Este bloque define el componente central de un flujo de trabajo de Acción. Workflows are made of `jobs`.
Every job also needs a specific host machine on which to run, the `runs-on:` field is how we specify it.
The template workflow is running the `build` job in the latest version of Ubuntu, a Linux-based operating system.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

We can also separate the `build` and `test` functions of our workflow into more than one job that will run when our workflow is triggered. Jobs are made of `steps`.
Permiten definir qué se debe ejecutar en cada trabajo.
Hay tres maneras de definir los pasos.

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
Todos los pasos de un trabajo se ejecutan secuencialmente en el corredor asociado al trabajo.
De forma predeterminada, si un paso falla, se omiten los pasos posteriores del trabajo.  Cada palabra clave run representa un nuevo proceso y shell en el entorno runner.
Cuando proporciona comandos de varias líneas, cada línea se ejecuta en el mismo shell.

Providing a comprehensive guide of all the available options is beyond the scope of this overview, and instead, we would urge you to study [official reference documentation](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) and/or the CI configuration open-source projects references in the previous section.
