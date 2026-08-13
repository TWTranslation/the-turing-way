(rr-renv-yaml)=

# YAML

YAML est un langage de balisage basé sur l'indentation qui vise à être à la fois facile à lire et facile à écrire.
De nombreux projets l'utilisent pour les fichiers de configuration en raison de sa lisibilité, de sa simplicité et du bon support pour de nombreux langages de programmation.
It can be used for many things, including defining computational environments, and is well integrated with [GitHub actions](https://github.com/actions), which is discussed in the {ref}`rr-ci-github-actions` chapter.

(rr-renv-yaml-files)=

## Fichiers YAML

Un fichier YAML définissant un environnement informatique pourrait ressembler à ceci :

```
# Define the operating system as Linux
os: linux

# Use the xenial distribution of Linux
dist: xenial

# Use the programming language Python
language: python

# Use version of Python 3.2
python: 3.2

# Use the Python package numpy and use version 1.16.1
packages:
  numpy:
    version: 1.16.1
```

Note that comments can be added by preceding them with a `#`.

(rr-renv-yaml-syntaxe)=

## Syntaxe YAML

Un document YAML peut contenir les éléments suivants.

(rr-renv-yaml-syntax-scalars)=

### Écailles

Les scalaires sont des valeurs ordinaires : nombres, chaînes, booléens.

```
number-value: 42
floating-point-value: 3.141592
boolean-value: true

# strings can be both 'single-quoted` and "double-quoted"
string-value: 'Bonjour'
```

La syntaxe YAML permet également les valeurs de chaîne sans guillemets pour des raisons de commodité :

```
unquoted-string: Hello World
```

(rr-renv-yaml-syntax-lists)=

### Listes et dictionnaires

Les listes sont des collections d'éléments :

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

Chaque élément de la liste est indenté et commence par un tiret et un espace.

Dictionaries are collections of `key: value` mappings.
Toutes les clés sont sensibles à la casse.

```
jedi:
  name: Obi-Wan Kenobi
  home-planet: Stewjon
  species: human
  master: Qui-Gon Jinn
  height: 1.82m
```

Notez qu'un espace après le deux-points est obligatoire.

(rr-renv-yaml-syntax-gotchas)=

### YAML Gotchas

En raison du format qui vise à être facile à écrire et à lire, il y a quelques ambiguïtés en YAML.

- **Special characters in unquoted strings:** YAML has several special characters you cannot use in unquoted strings.
  Par exemple, l'analyse de l'échantillon suivant échouera :
  ```
  unquoted-string: let me put a colon here: oops
  ```
  Le guillemet de la chaîne rend cette valeur sans ambiguïté:
  ```
  unquoted-string: "let me put a colon here: oops"
  ```
  Generally, you should quote all strings that contain any of the following characters: `[] {} : > |`.
- **Tabs versus spaces for indentation:** do _not_ use tabs for indentation.
  Bien que le YAML résultant puisse toujours être valide, cela peut être une source de nombreuses erreurs d'analyse subtiles.
  Utilisez juste des espaces.

(rr-renv-yaml-environments)=

## Comment utiliser Yaml pour définir des environnements informatiques

En raison de leur simplicité, les fichiers YAML peuvent être manuscrits.
Alternatively, they can be automatically generated as discussed in the {ref}`rr-renv-package` subchapter.
À partir d'un fichier YAML, un environnement informatique peut être répliqué de quelques façons.

- **Manually.** It can be done manually by carefully installing the specified packages.
  Because YAML files can also specify operating systems and versions that may or may not match that of the person trying to replicate the environment, this may require the use of {ref}`rr-renv-vm`.

- **Via Package Management Systems such as Conda.** As {ref}`discussed <rr-renv-package>`, as well as being able to generate YAML files from computational environments, Conda can also generate computational environments from YAML files.

(rr-renv-yaml-security)=

## Problèmes de sécurité

Il y a un risque inhérent au téléchargement/à l'utilisation de fichiers que vous n'avez pas écrits sur votre ordinateur, et il est possible d'inclure du code malveillant dans les fichiers YAML.
Ne chargez pas les fichiers YAML ou générez des environnements de calcul à partir d'eux, à moins que vous ne fassiez confiance à leur source.
