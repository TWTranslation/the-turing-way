(rr-renv-yaml)=
# YAML

YAML est un langage de balisage basé sur l'indentation qui vise à être à la fois facile à lire et facile à écrire. De nombreux projets l'utilisent pour les fichiers de configuration en raison de sa lisibilité, de sa simplicité et du bon support pour de nombreux langages de programmation. Il peut être utilisé pour beaucoup de choses, y compris la définition d'environnements de calcul, et est bien intégré avec [les actions GitHub](https://travis-ci.org/), qui est discuté dans le chapitre {ref}`rr-ci-github-actions`.

(rr-renv-yaml-files)=
## Fichiers YAML

Un fichier YAML définissant un environnement informatique pourrait ressembler à ceci :

```
# Définir le système d'exploitation comme Linux
os: linux

# Utilisez la distribution xeniale de Linux
dist: xenial

# Utilisez le langage de programmation Python
language: python

# Utilisez la version de Python 3.
python: 3.2

# Utilisez le paquet Python numpy et utilisez la version 1. 6.1
paquets :
  numpy:
    version : 1.16.1
```

Notez que les commentaires peuvent être ajoutés en les précédant avec un `#`.

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

# chaînes peuvent être à la fois 'single-quoted` et "double-quoted"
string-value: 'Bonjour'
```

La syntaxe YAML permet également les valeurs de chaîne sans guillemets pour des raisons de commodité :

```
chaîne de caractères sans citation : Bonjour le monde
```
(rr-renv-yaml-syntax-lists)=
### Listes et dictionnaires

Les listes sont des collections d'éléments :

```
jedis :
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

Chaque élément de la liste est indenté et commence par un tiret et un espace.

Les dictionnaires sont des collections de `clés : valeur` correspondantes. Toutes les clés sont sensibles à la casse.

```
jedi :
  nom: Obi-Wan Kenobi
  maison-planète : Stewjon
  espèce : humain
  maître : Qui-Gon Jinn
  hauteur : 1.82m
```

Notez qu'un espace après le deux-points est obligatoire.

(rr-renv-yaml-syntax-gotchas)=
### YAML Gotchas

En raison du format qui vise à être facile à écrire et à lire, il y a quelques ambiguïtés en YAML.

- **Caractères spéciaux dans des chaînes sans guillemets :** YAML a plusieurs caractères spéciaux que vous ne pouvez pas utiliser dans des chaînes sans guillemets. Par exemple, l'analyse de l'échantillon suivant échouera :
  ```
  unquoted-string: permettez-moi de mettre un deux-points ici: oops
  ```
  Le guillemet de la chaîne rend cette valeur sans ambiguïté:
  ```
  unquoted-string: "Laissez-moi mettre un deux-points ici: oops"
  ```
  Généralement, vous devez cocher toutes les chaînes qui contiennent l'un des caractères suivants : `[] {} : > |`.
- **Tabs versus spaces for indentation:** do _not_ use tabs for indentation. Bien que le YAML résultant puisse toujours être valide, cela peut être une source de nombreuses erreurs d'analyse subtiles. Utilisez juste des espaces.

(rr-renv-yaml-environments)=
## Comment utiliser Yaml pour définir des environnements informatiques

En raison de leur simplicité, les fichiers YAML peuvent être manuscrits. Alternativement, ils peuvent être générés automatiquement comme discuté dans le sous-chapitre {ref}`du paquet rrr-renv-paquet`. À partir d'un fichier YAML, un environnement informatique peut être répliqué de quelques façons.

- **Manuellement.** Cela peut être fait manuellement en installant soigneusement les paquets spécifiés. Parce que les fichiers YAML peuvent également spécifier les systèmes d'exploitation et les versions qui peuvent ou non correspondre à celui de la personne essayant de répliquer l'environnement, cela peut nécessiter l'utilisation de {ref}`rr-renv-vm`.

- **Via des systèmes de gestion de paquets tels que Conda.** Comme {ref}`discuté <rr-renv-package>`, ainsi que la possibilité de générer des fichiers YAML à partir d'environnements informatiques, Conda peut également générer des environnements de calcul à partir de fichiers YAML.

(rr-renv-yaml-security)=
## Problèmes de sécurité

Il y a un risque inhérent au téléchargement/à l'utilisation de fichiers que vous n'avez pas écrits sur votre ordinateur, et il est possible d'inclure du code malveillant dans les fichiers YAML. Ne chargez pas les fichiers YAML ou générez des environnements de calcul à partir d'eux, à moins que vous ne fassiez confiance à leur source.
