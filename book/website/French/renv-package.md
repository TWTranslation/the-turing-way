(rr-renv-package)=
# Systèmes de gestion des paquets

Les gestionnaires de paquets installent et gardent une trace des différents paquets logiciels (et de leurs versions) que vous utilisez dans un environnement. Il y en a beaucoup à choisir, par exemple, Yum, Zypper, dpkg, et Nix (qui seront mentionnés dans la section {ref}`rr-renv-binder`). Nous allons nous concentrer sur [Conda](https://conda.io/en/latest/), qui a plusieurs fonctionnalités utiles.

(rr-renv-package-conda)=
## Que fait Conda?

Conda permet aux utilisateurs de créer un certain nombre d'environnements entièrement séparés et de passer rapidement entre eux. Par exemple, disons qu'un chercheur a un projet, _Projet One_, qui a son propre environnement, défini par Conda, qui est composé de l'ensemble de paquets suivants:

| **Nom du paquet** | **Version** |
| ----------------- | ----------- |
| `Paquet A`        | `1.5.2`     |
| `Paquet B`        | `2.1.10`    |
| `Paquet C`        | `0.7.9`     |

Plus tard, le chercheur démarre le _Projet 2_ dans son propre environnement, avec les paquets suivants :

| _Nom du paquet_ | _Version_ |
| --------------- | --------- |
| `Paquet B`      | `2.1.10`  |
| `Paquet C`      | `1.2.4`   |
| `Paquet D`      | `1.5.2`   |
| `Paquet E`      | `3.7.1`   |

Notez ici que la version du `paquet C` utilisée dans _Projet 2_ a été mise à jour à partir de la version utilisée dans _Projet 1_. Si ces environnements de projet n'étaient pas séparés, alors le chercheur aurait le choix de:

- A) Utilisation de l'ancienne version du paquet `C` pour toujours et ne bénéficiant pas des mises à jour et des corrections de bogues dans les versions ultérieures.
- B) Installer la version mise à jour du paquet et en espérant qu'elle n'impacte pas le _Projet One_.
- C) Installation de la version mise à jour du paquet à utiliser dans _Projet Two_, puis le désinstaller et réinstaller l'ancien quand il a besoin de travailler sur le _Projet One_. Ce serait extrêmement ennuyeux et c'est une mesure qui risque d'être oubliée.

Toutes ces options sont extrêmement mauvaises, d'où l'utilité de Conda pour créer des environnements distincts qui sont facilement interchangeables.

Conda peut également être utilisé pour capturer et exporter facilement des environnements de calcul. Il peut également aller dans l'autre direction ; il peut générer des environnements de calcul à partir de fichiers de configuration qui peuvent être utilisés pour recréer l'environnement de quelqu'un d'autre.

Un autre avantage de Conda est qu'il offre beaucoup plus de flexibilité aux utilisateurs qui n'ont pas de privilèges d'administration sur les machines sur lesquelles ils travaillent (comme c'est très courant lorsque l'on travaille avec des installations informatiques de haute performance). Sans Conda, il est généralement difficile d'installer les logiciels nécessaires sur de telles machines. Cependant, parce que Conda crée et modifie _de nouveaux environnements_ plutôt que d'apporter des changements à l'environnement système global d'une machine, les privilèges d'administration ne sont pas nécessaires.

Enfin, bien que Conda soit centré sur le Python dans une certaine mesure, il est également bien intégré pour être utilisé avec d'autres langues. Par exemple, la version de base de Conda inclut la bibliothèque standard C++.

(rr-renv-package-installing)=
## Installation de Conda

Notez que ces instructions d'installation sont dirigées vers les systèmes Linux. Les instructions d'installation de Conda sur les systèmes Windows ou Mac peuvent être trouvées [ici](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Allez sur [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) et téléchargez le dernier installateur Miniconda 3 pour votre système (32 bits ou 64 bits). Il aura un nom comme `miniconda_version_number.sh`. Exécutez l'installateur en utilisant :

```
bash Miniconda_version_number.sh
```

Vous pouvez vérifier que Conda a bien installé en tapant :

```
conda --version
```

qui devrait afficher un numéro de version.

(rr-renv-package-utilisation)=
## Créer et utiliser des environnements

Conda installe automatiquement un environnement de base avec des paquets logiciels couramment utilisés. Il est possible de travailler dans cet environnement de base; cependant, il est de bonne pratique de créer un nouvel environnement pour chaque projet que vous commencez.

Pour créer un environnement, utilisez `conda create --name your_project_env_name` suivi d'une liste de paquets à inclure. Pour inclure les paquets `scipy` et `matplotlib` , ajoutez-les à la fin de la commande :

```
conda create --name Project_One scipy matplotlib
```

Vous pouvez spécifier les versions de certains paquets (ou de tous) en utilisant `=package_number` après le nom. Par exemple, pour spécifier `scipy 1.2.1` dans l'environnement ci-dessus :

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

Lors de la création d'environnements, vous pouvez également spécifier des versions de langues à installer. Par exemple, pour utiliser `Python 3.7.1` dans l'environnement _Project_One_:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Maintenant qu'un environnement a été créé, il est temps de l'activer (commencer à l'utiliser) via `conda activer environment_name`. Donc, dans cet exemple:

```
Conda active Project_One
```

Notez que vous devrez peut-être utiliser `source` au lieu de `conda` si vous utilisez une ancienne version de Conda.

Une fois qu'un environnement est activé, vous devriez voir le nom de l'environnement avant chaque invite dans votre terminal :

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-paquet-suppression)=
## Désactivation et suppression d'environnements

Vous pouvez désactiver (sortir) un environnement en utilisant :

```
Conda désactivée
```

et supprimer (supprimer) un environnement comme indiqué ici :

```
conda env remove --name Project_One
```

Pour vérifier si un environnement a été supprimé avec succès, vous pouvez consulter une liste de tous les environnements Conda du système en utilisant :

```
liste conda env
```

Cependant, la suppression d'un environnement ne peut pas supprimer les fichiers du paquet qui lui sont associés. Cela peut faire perdre beaucoup de mémoire à des paquets qui ne sont plus nécessaires. Les paquets qui ne sont plus référencés par aucun environnement peuvent être supprimés en utilisant :

```
conda clean -pts
```

Alternativement, vous pouvez supprimer un environnement (comme _Project_One_) avec ses paquets associés via :

```
conda remove --name Project_One --all
```

(rr-renv-package-removing)=
## Installer et supprimer des paquets dans un environnement

Dans un environnement, vous pouvez installer plus de paquets en utilisant :

```
nom_du_paquet d'installation conda
```

de la même manière, vous pouvez les supprimer via :

```
conda supprimer le nom_paquet
```

C'est la meilleure façon d'installer des paquets à partir de Conda car il installera également une version adaptée à Conda du paquet. Cependant, il est possible d'utiliser d'autres méthodes si une version spécifique à Conda d'un paquet n'est pas disponible. Par exemple, `pip` est couramment utilisé pour installer des paquets Python. Donc, une commande comme :

```
pip install scipy
```

installera explicitement le paquet `scipy` tant que `pip` est installé dans l'environnement Conda actif. Malheureusement, lorsque Conda et `pip` sont utilisés ensemble pour créer un environnement, cela peut conduire à un état qui peut être difficile à reproduire. Plus précisément, l'exécution de Conda après `pip` peut potentiellement écraser ou casser les paquets installés via `pip`. Une façon d'éviter cela est d'installer autant de conditions que possible avec Conda, puis d'utiliser pip. Des informations détaillées peuvent être lues sur le post, [en utilisant Pip dans un environnement Conda](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Bien que les paquets Python aient été utilisés dans de nombreux exemples donnés ici, les paquets Conda n'ont pas besoin d'être des paquets Python. Par exemple, ici le langage de base R est installé avec le paquet R `r-yaml`:

```
conda create --name Project_One r-base r-yaml
```

Pour voir tous les paquets installés dans l'environnement actuel, utilisez :

```
liste conda
```

Pour vérifier si un paquet particulier est installé, par exemple, `scipy` dans ce cas :

```
conda list scipy
```

Un canal Conda est l'endroit où il a téléchargé un paquet. Les canaux communs incluent `Anaconda` (une entreprise qui fournit le canal par défaut de paquets conda) et `conda-forge` (une entreprise d'emballage basée sur la communauté). Vous pouvez explicitement installer un paquet depuis un certain canal en le spécifiant comme :

```
conda install -c channel_name package_name
```

(rr-renv-package-exportation)=
## Exportation et reproduction d'environnements informatiques

Les environnements Conda peuvent être exportés facilement vers des fichiers lisibles par l'homme au format YAML. Les fichiers YAML sont discutés plus en détail {ref}`plus tard <rr-renv-yaml>` dans ce chapitre.

Pour exporter un environnement conda vers un fichier appelé `environment.yml`, activez l'environnement puis exécutez :

```
export conda env > environment.yml
```

De même, les environnements Conda peuvent être créés à partir de fichiers YAML via:

```
conda env create -f environment.yml
```

Cela permet aux chercheurs de se reproduire rapidement les environnements informatiques des autres. Notez que la liste des paquets n'est pas seulement ceux explicitement installés. Il peut inclure des paquets de dépendances spécifiques au système d'exploitation, de sorte que les fichiers d'environnement peuvent nécessiter une certaine modification pour être portables sur différents systèmes d'exploitation.

Les environnements peuvent également être clonés. Cela peut être souhaitable, par exemple, si un chercheur lance un nouveau projet et veut créer un nouvel environnement dans lequel travailler ; le nouvel environnement du projet (au moins initialement) peut nécessiter les mêmes paquets que l'environnement précédent du projet.

Par exemple, pour cloner l'environnement _Project_One_ et donner à ce nouvel environnement le nom _Project_Two_:

```
conda create --name Project_Two --clone Project_One
```
