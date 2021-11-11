(rr-vcs-git-compare)=
# Récupération et comparaison des versions

(rr-vcs-versions-récupération)=
## Récupération des versions passées

Pour annuler votre dernier commit (revenir à la version précédente), exécutez la commande suivante :
```
Git annuler la HEAD
```

Cette commande crée un nouveau commit qui annule les changements effectués dans la dernière version. Si vous voulez récupérer une version de il y a des semaines ou des mois, commencez par utiliser `git log` pour trouver la SHA de la version que vous voulez récupérer. Pour réinitialiser l'ensemble de votre projet à cette version, exécutez les commandes suivantes :

```
Git checkout SHA_of_the_version
```

Si vous voulez une ancienne version d'un seul fichier et non la version précédente de l'ensemble du projet, vous pouvez le faire en utilisant la commande suivante :

 ```
 format@@0 git checkout SHA_of_the_version -- your_file_name
 ```

(rr-vcs-versions-récupération-pratique)=
### Bonnes pratiques

Les commits devraient être 'atomiques', ce qui signifie que **ils devraient faire une chose simple et qu'ils devraient le faire complètement**. Par exemple, un commit « atomic » pourrait être l'ajout d'une nouvelle fonction ou le renommage d'une variable. Si beaucoup de changements différents à votre projet sont tous engagés ensemble, il peut être difficile de résoudre un problème si une erreur apparaît dans cette version. En outre, l'annulation de l'ensemble de la livraison peut perdre un travail valable et utile.

Il est de bonne pratique de **spécifier les fichiers à valider**, c'est-à-dire ajouter des fichiers à la zone de staging par nom (`git add your_file_name`) plutôt que d'ajouter tout (`git add .`). Cela vous empêche de regrouper involontairement différents changements. Par exemple, si vous avez modifié le fichier A pendant que vous travaillez principalement sur le fichier B, vous avez peut-être oublié cela lorsque vous allez à la livraison. Avec `git add .`, le fichier A serait emmené pour la course. S'il y a plusieurs changements *non liés* qui ne devraient pas être ajoutés ensemble dans un fichier *unique* `git add -p your_file_name` vous permettra de choisir de façon interactive les changements à ajouter. Cela dit, **vous n'avez pas nécessairement besoin de faire des commits par fichier** lorsque vous travaillez sur plusieurs fichiers, mais pour un seul problème. Par exemple, si nous ajoutons un chiffre à ce chapitre ici, en choisissant un pour attirer l'attention de quelqu'un à travers :

```{figure} ../../figures/flipped-taj-mahal.png
---
nom : flipped-taj-mahal
alt : Une photographie retournée du Taj Mahal pour attirer l'attention du lecteur.
---
a renversé Taj Mahal
```

deux fichiers ont été modifiés :

1. Tout d'abord, le fichier figure est ajouté dans le dépôt du projet.
2. Ensuite, une ligne est ajoutée dans ce fichier qui fait référence à la figure, de sorte qu'elle est affichée.

Alors deux fichiers sont affectés, mais "Ajouter un chiffre au chapitre du contrôle de version" est un seul, *unité de travail* atomique, donc un seul commit est nécessaire.

Enfin, ne livrez rien qui soit régénéré à partir d'autres fichiers livrés dans une version (à moins que ce ne soit quelque chose qui prendrait des heures à se régénérer). Fichiers générés, tels que les scripts, encombrer votre dépôt et peut contenir des fonctionnalités telles que des horodatages qui peuvent causer des conflits de fichiers ennuyeux (voir {ref}`rr-vcs-git-merge`). Vous pouvez demander à Git d'ignorer certains fichiers en créant un fichier appelé `. itignore` et y compris les noms du fichier que vous n'avez pas besoin de stocker dans votre dépôt Git. Par exemple, les fichiers de configuration qui peuvent passer de l'environnement à l'environnement doivent être ignorés.

(comparaison-rr-vcs-versions-fr)=
## Comparaison des versions

À un certain moment, vous aurez probablement besoin/envie de comparer les versions d'un projet, par exemple, pour voir quelle version a été utilisée pour générer un résultat particulier.

Pour résoudre ce problème, utilisez la fonction `git diff` qui prend deux jeux de données d'entrée et génère les changements entre eux.

`git diff` est une fonction multi-usages qui s'exécute sur les sources de données Git telles que les commits, les branches, les fichiers et plus encore. Par défaut, `git diff` vous montrera toutes les modifications non validées depuis le dernier commit. Si vous voulez comparer deux choses spécifiques, la syntaxe est :

```
format@@0 git diff thing_a thing_b
```

Par exemple, si vous voulez comparer comment un fichier a changé entre deux commits, utiliser `git log` pour obtenir les SHAs de ces commits et exécuter :

```
format@@0 git diff SHA_a:your_file_name SHA_b:your_file_name
```

Ou si vous vouliez comparer deux branches, ce serait :

```
git diff branche_name other_branch_name
```

(rr-vcs-versions-comparaison-pratique)=
### Bonne pratique

Avec un peu de familiarité, `git diff` devient un outil extrêmement puissant que vous pouvez utiliser pour suivre quels fichiers ont changé et quels sont exactement ces changements. Ceci est extrêmement précieux pour désélectionner les bogues et comparer le travail effectué par différentes personnes. Faites attention à **comprendre ce qui est exactement comparé** et, dans la mesure du possible, **ne comparer que les fichiers pertinents** pour ce qui vous intéresse pour éviter de grandes quantités d'informations externes.
