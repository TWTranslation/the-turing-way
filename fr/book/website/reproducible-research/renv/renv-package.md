(rr-renv-package)=

# Systèmes de gestion des paquets

Les gestionnaires de paquets installent et gardent une trace des différents paquets logiciels (et de leurs versions) que vous utilisez dans un environnement.
There are quite a few to choose from, for example, Yum, Zypper, dpkg, Nix (which will be mentioned in the {ref}`rr-binderhub` section), and language specific package managers [Python Packages](https://py-pkgs.org/) and [R Packages](https://r-pkgs.org/). We are going to focus on [Conda](https://conda.io/en/latest/), which has several useful functionalities.

(rr-renv-package-conda)=

## Que fait Conda?

Conda permet aux utilisateurs de créer un certain nombre d'environnements entièrement séparés et de passer rapidement entre eux.
For example, say a researcher has a project, _Project One_, which has its own environment, defined by Conda, that is made up of the following set of packages:

| **Package Name** | **Version** |
| ---------------- | ----------- |
| `Package A`      | `1.5.2`     |
| `Package B`      | `2.1.10`    |
| `Package C`      | `0.7.9`     |

Later, the researcher starts _Project Two_ in its own environment, with the following packages:

| _Package Name_ | _Version_ |
| -------------- | --------- |
| `Package B`    | `2.1.10`  |
| `Package C`    | `1.2.4`   |
| `Package D`    | `1.5.2`   |
| `Package E`    | `3.7.1`   |

Note here that the version of `package C` used in _Project Two_ has been updated from the version used in _Project One_.
Si ces environnements de projet n'étaient pas séparés, alors le chercheur aurait le choix de:

- A) Using the older version of `package C` forever and not benefiting from updates and bugfixes in later versions.
- B) Installing the updated version of the package and hoping that it does not impact _Project One_.
- C) Installing the updated version of the package for use in _Project Two_, then uninstalling it and reinstalling the old one whenever they need to do work on _Project One_.
  Ce serait extrêmement ennuyeux et c'est une mesure qui risque d'être oubliée.

Toutes ces options sont extrêmement mauvaises, d'où l'utilité de Conda pour créer des environnements distincts qui sont facilement interchangeables.

Conda peut également être utilisé pour capturer et exporter facilement des environnements de calcul.
Il peut également aller dans l'autre direction ; il peut générer des environnements de calcul à partir de fichiers de configuration qui peuvent être utilisés pour recréer l'environnement de quelqu'un d'autre.

Un autre avantage de Conda est qu'il offre beaucoup plus de flexibilité aux utilisateurs qui n'ont pas de privilèges d'administration sur les machines sur lesquelles ils travaillent (comme c'est très courant lorsque l'on travaille avec des installations informatiques de haute performance).
Sans Conda, il est généralement difficile d'installer les logiciels nécessaires sur de telles machines.
However, because Conda creates and changes _new_ environments rather than making changes to a machine's overall system environment, admin privileges are not required.

Enfin, bien que Conda soit centré sur le Python dans une certaine mesure, il est également bien intégré pour être utilisé avec d'autres langues.
Par exemple, la version de base de Conda inclut la bibliothèque standard C++.

(rr-renv-package-installing)=

## Installation de Conda

Notez que ces instructions d'installation sont dirigées vers les systèmes Linux.
Instructions for installing Conda on Windows or Mac systems can be found [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Go to [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) and download the latest Miniconda 3 installer for your system (32 bit or 64 bit). It will have a name like `miniconda_version_number.sh`.
Exécutez l'installateur en utilisant :

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

Conda installe automatiquement un environnement de base avec des paquets logiciels couramment utilisés.
Il est possible de travailler dans cet environnement de base; cependant, il est de bonne pratique de créer un nouvel environnement pour chaque projet que vous commencez.

To create an environment, use `conda create --name your_project_env_name` followed by a list of packages to include.
To include the `scipy` and `matplotlib` packages, add them to the end of the command:

```
conda create --name Project_One scipy matplotlib
```

You can specify the versions of certain (or all) packages by using `=package_number` after the name. For example, to specify `scipy 1.2.1` in the above environment:

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

Lors de la création d'environnements, vous pouvez également spécifier des versions de langues à installer. For example, to use `Python 3.7.1` in the _Project_One_ environment:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Now that an environment has been created, it is time to activate (start using) it via `conda activate environment_name`.
Donc, dans cet exemple:

```
conda activate Project_One
```

Note that you may need to use `source` instead of `conda` if you are using an old version of Conda.

Une fois qu'un environnement est activé, vous devriez voir le nom de l'environnement avant chaque invite dans votre terminal :

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-paquet-suppression)=

## Désactivation et suppression d'environnements

Vous pouvez désactiver (sortir) un environnement en utilisant :

```
conda deactivate
```

et supprimer (supprimer) un environnement comme indiqué ici :

```
conda env remove --name Project_One
```

Pour vérifier si un environnement a été supprimé avec succès, vous pouvez consulter une liste de tous les environnements Conda du système en utilisant :

```
conda env list
```

Cependant, la suppression d'un environnement ne peut pas supprimer les fichiers du paquet qui lui sont associés.
Cela peut faire perdre beaucoup de mémoire à des paquets qui ne sont plus nécessaires.
Les paquets qui ne sont plus référencés par aucun environnement peuvent être supprimés en utilisant :

```
conda clean -pts
```

Alternatively, you can delete an environment (such as _Project_One_) along with its associated packages via:

```
conda remove --name Project_One --all
```

(rr-renv-package-removing)=

## Installer et supprimer des paquets dans un environnement

Dans un environnement, vous pouvez installer plus de paquets en utilisant :

```
conda install package_name
```

de la même manière, vous pouvez les supprimer via :

```
conda remove package_name
```

C'est la meilleure façon d'installer des paquets à partir de Conda car il installera également une version adaptée à Conda du paquet.
Cependant, il est possible d'utiliser d'autres méthodes si une version spécifique à Conda d'un paquet n'est pas disponible.
For example, `pip` is commonly used to install Python packages.
Donc, une commande comme :

```
pip install scipy
```

will install the `scipy` package explicitly - as long as `pip` is installed inside the currently active Conda environment.
Unfortunately, when Conda and `pip` are used together to create an environment, it can lead to a state that can be hard to reproduce.
Specifically, running Conda after `pip` may potentially overwrite or break packages installed via `pip`.
Une façon d'éviter cela est d'installer autant de conditions que possible avec Conda, puis d'utiliser pip.
Detailed information can be read on the post, [Using Pip in a Conda Environment](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Bien que les paquets Python aient été utilisés dans de nombreux exemples donnés ici, les paquets Conda n'ont pas besoin d'être des paquets Python. For example, here the R base language is installed along with the R package `r-yaml`:

```
conda create --name Project_One r-base r-yaml
```

Pour voir tous les paquets installés dans l'environnement actuel, utilisez :

```
conda list
```

To check if a particular package is installed, for example, `scipy` in this case:

```
conda list scipy
```

Un canal Conda est l'endroit où il a téléchargé un paquet.
Common channels include `Anaconda` (a company which provides the defaults conda package channel), and `conda-forge` (a community-driven packaging endeavour).
Vous pouvez explicitement installer un paquet depuis un certain canal en le spécifiant comme :

```
conda install -c channel_name package_name
```

(rr-renv-package-exportation)=

## Exportation et reproduction d'environnements informatiques

Les environnements Conda peuvent être exportés facilement vers des fichiers lisibles par l'homme au format YAML.
YAML files are discussed in more detail {ref}`later <rr-renv-yaml>` in this chapter.

To export a conda environment to a file called `environment.yml`, activate the environment and then run:

```
conda env export > environment.yml
```

De même, les environnements Conda peuvent être créés à partir de fichiers YAML via:

```
conda env create -f environment.yml
```

Cela permet aux chercheurs de se reproduire rapidement les environnements informatiques des autres.
Notez que la liste des paquets n'est pas seulement ceux explicitement installés.
Il peut inclure des paquets de dépendances spécifiques au système d'exploitation, de sorte que les fichiers d'environnement peuvent nécessiter une certaine modification pour être portables sur différents systèmes d'exploitation.

Les environnements peuvent également être clonés.
Cela peut être souhaitable, par exemple, si un chercheur lance un nouveau projet et veut créer un nouvel environnement dans lequel travailler ; le nouvel environnement du projet (au moins initialement) peut nécessiter les mêmes paquets que l'environnement précédent du projet.

For example, to clone the _Project_One_ environment, and give this new environment the name _Project_Two_:

```
conda create --name Project_Two --clone Project_One
```
