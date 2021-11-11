(rr-ci-building-gh-actions)=
# Construir un Bloque de Acciones de Github

Como se describió anteriormente, los archivos de flujo de trabajo usan la sintaxis YAML, que tiene una extensión de archivo `.yml` o `.yaml`. Si eres nuevo en YAML y quieres aprender más, {ref}`mira nuestra sección sobre YMAL<rr-renv-yaml>`. Estos archivos de flujo de trabajo deben ser almacenados en el directorio `.github/workflows` del repositorio.

Cada flujo de trabajo se define en una YAML separada. Presentaremos el bloque de construcción de un flujo de trabajo utilizando Hola Ejemplo de Mundo:

```
nombre:
    Hola paquete mundo
en:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
```

**1. nombre**

Este es el nombre del flujo de trabajo y es opcional. GitHub usará este nombre para mostrarse en la página de acciones del repositorio.
```
nombre:
    Paquete Hola Mundo
```

**2. en**

El campo `en` le dice a GHA cuándo ejecutar. Por ejemplo, podemos ejecutar el flujo de trabajo en cualquier momento que haya un `push` o un `pull` en la rama `principal`.
```
el:
  push:
    ramas: [ main ]
  pull_request:
    ramas: [ main ]
```
Hay muchos eventos que se pueden utilizar para desencadenar un flujo de trabajo. Puedes explorarlos [aquí](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. trabajos y pasos**

Este bloque define el componente principal de un flujo de trabajo de Acción. Los flujos de trabajo están hechos de `trabajos`. Cada trabajo también necesita una máquina host específica en la que ejecutarse, el campo `runs-on:` es cómo lo especificamos. El flujo de trabajo de plantilla está ejecutando el trabajo de `compilación` en la última versión de Ubuntu, un sistema operativo basado en Linux.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

También podemos separar las funciones de `compilación` y `prueba` de nuestro flujo de trabajo en más de un trabajo que se ejecutará cuando se active nuestro flujo de trabajo. Los trabajos están hechos de `pasos`. Esto le permite definir qué ejecutar en cada trabajo. Hay tres maneras de definir los pasos.

- Con `usos`
- Con `ejecutar`
- Con `nombre`

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

La acción más básica es `actions/checkout@v2`. Esto usa una acción proporcionada por GitHub llamada [`checkout`](https://github.com/actions/checkout) para permitir al flujo de trabajo acceder al contenido del repositorio. Todos los pasos de un trabajo se ejecutan secuencialmente en el corredor asociado con el trabajo. Por defecto, si un paso falla, se omiten los pasos posteriores del trabajo. Cada palabra clave de ejecución representa un nuevo proceso y shell en el entorno runner. Cuando proporciona comandos de varias líneas, cada línea se ejecuta en el mismo shell.

Proporcionar una guía completa de todas las opciones disponibles está fuera del alcance de esta visión general y, en su lugar, le recomendamos que estudie [la documentación oficial de referencia](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) y/o las referencias de proyectos de código abierto de la configuración de CI en la sección anterior.
