(rr-renv-yaml)=
# YAML

YAML es un lenguaje de marcado basado en sangría que apunta a ser fácil de leer y fácil de escribir. Muchos proyectos lo usan para archivos de configuración debido a su legibilidad, simplicidad y buen soporte para muchos lenguajes de programación. Puede ser utilizado para muchas cosas, incluyendo la definición de entornos computacionales, y está bien integrado con [acciones de GitHub](https://travis-ci.org/), el cual es discutido en el capítulo {ref}`rr-ci-github-actions`.

(rr-renv-yaml-files)=
## Archivos YAML

Un archivo YAML que define un entorno computacional podría verse algo así:

```
# Define el sistema operativo como Linux
os: linux

# Utilice la distribución xenial de Linux
dist: xenial

# Utilice el lenguaje de programación Python
language: python

# Utilice la versión de Python 3.
python: 3.2

# Usa el paquete Python numpy y usa la versión 1. 6.1
paquetes:
  numpy:
    version: 1.16.1
```

Tenga en cuenta que los comentarios pueden ser añadidos precediéndolos con un `#`.

(rr-renv-yaml-sintaxis)=
## Sintaxis YAML

Un documento YAML puede consistir en los siguientes elementos.

(rr-renv-yaml-sintaxis-escalars)=
### Escalares

Los escalares son valores ordinarios: números, cadenas, booleanos.

```
number-value: 42
floating-point-value: 3.141592
boolean-value: true

# strings can be both 'single-quoted` and "double-quoted"
string-value: 'Bonjour'
```

La sintaxis YAML también permite valores de cadenas sin comillas por razones de conveniencia:

```
unquoted-string: Hola Mundo
```
(rr-renv-yaml-listas de sintaxis)=
### Listas y diccionarios

Las listas son colecciones de elementos:

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

Cada elemento de la lista está sangrado y comienza con un guión y un espacio.

Los diccionarios son colecciones de la clave `: mapeos de valor`. Todas las claves son sensibles a mayúsculas y minúsculas.

```
jedi:
  nombre: Obi-Wan Kenobi
  home-planet: especie
  Stewjon: humano
  master: Qui-Gon Jinn
  altura: 1.82m
```

Tenga en cuenta que un espacio después del coma es obligatorio.

(rr-renv-yaml-sintaxis-gotchas)=
### Gotchas YAML

Debido al formato que aspira a ser fácil de escribir y leer, hay algunas ambigüedades en YAML.

- **Caracteres especiales en cadenas sin comillas:** YAML tiene varios caracteres especiales que no puedes usar en cadenas sin comillas. Por ejemplo, el análisis del siguiente ejemplo fallará:
  ```
  sin citas: déjame poner dos puntos aquí: Oopes
  ```
  Cita el valor de la cadena hace este valor sin ambigüedades:
  ```
  sin citas: "déjame poner dos puntos aquí: oops"
  ```
  Generalmente, debes citar todas las cadenas que contienen cualquiera de los siguientes caracteres: `[] {} : > |`.
- **Tabs versus spaces for indentation:** do _not_ use tabs for indentation. Si bien el YAML resultante todavía puede ser válido, esto puede ser una fuente de muchos sutiles errores de análisis. Simplemente use espacios.

(rr-renv-yaml-entornos)=
## Cómo utilizar Yaml para definir entornos computacionales

Debido a su simplicidad, los archivos YAML pueden ser escritos a mano. Alternativamente, pueden ser generados automáticamente como se discute en el subcapítulo {ref}`rr-renv-package`. Desde un archivo YAML, un entorno computacional puede ser replicado de varias maneras.

- **Manualmente.** Se puede hacer manualmente instalando cuidadosamente los paquetes especificados. Debido a que los archivos YAML también pueden especificar sistemas operativos y versiones que pueden o no coincidir con el de la persona que intenta replicar el entorno, esto puede requerir el uso de {ref}`rr-renv-vm`.

- **A través de sistemas de gestión de paquetes como Conda.** Como {ref}`discutió <rr-renv-package>`, así como ser capaz de generar archivos YAML desde entornos computacionales, Conda también puede generar entornos computacionales a partir de archivos YAML.

(rr-renv-yaml-security)=
## Problemas de seguridad

Existe un riesgo inherente de descargar/usar archivos que no has escrito en tu ordenador, y es posible incluir código malicioso en los archivos YAML. No cargue archivos YAML ni genere entornos computacionales a partir de ellos, a menos que confíe en su fuente.
