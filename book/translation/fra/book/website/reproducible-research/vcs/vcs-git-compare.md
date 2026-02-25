(rr-vcs-git-compare)=

# Récupération et comparaison des versions

(rr-vcs-versions-récupération)=

## Récupération des versions passées

Pour annuler votre dernier commit (revenir à la version précédente), exécutez la commande suivante :

```
git revert HEAD
```

Cette commande crée un nouveau commit qui annule les changements effectués dans la dernière version.
If you want to retrieve a version from weeks or months ago, start by using `git log` to find the SHA of the version you want to retrieve.
Pour réinitialiser l'ensemble de votre projet à cette version, exécutez les commandes suivantes :

```
git checkout SHA_of_the_version
```

Si vous voulez une ancienne version d'un seul fichier et non la version précédente de l'ensemble du projet, vous pouvez le faire en utilisant la commande suivante :

```
git checkout SHA_of_the_version -- your_file_name
```

(rr-vcs-versions-récupération-pratique)=

### Bonnes pratiques

Commits should be 'atomic', meaning that **they should do one simple thing and they should do it completely**.
Par exemple, un commit « atomic » pourrait être l'ajout d'une nouvelle fonction ou le renommage d'une variable.
Si beaucoup de changements différents à votre projet sont tous engagés ensemble, il peut être difficile de résoudre un problème si une erreur apparaît dans cette version.
En outre, l'annulation de l'ensemble de la livraison peut perdre un travail valable et utile.

It is good practice to **specify the files to be committed**, that is, adding files to the staging area by name (`git add your_file_name`) rather than adding everything (`git add .`).
Cela vous empêche de regrouper involontairement différents changements.
Par exemple, si vous avez modifié le fichier A pendant que vous travaillez principalement sur le fichier B, vous avez peut-être oublié cela lorsque vous allez à la livraison.
With `git add .`, file A would be brought along for the ride.
If there are several _unrelated_ changes that should not be added together in a _single_ file, `git add -p your_file_name` will let you interactively choose which changes to add.
That said, **you do not necessarily need to do per-file commits** when working on multiple files, but for one single problem.
Par exemple, si nous ajoutons un chiffre à ce chapitre ici, en choisissant un pour attirer l'attention de quelqu'un à travers :

```{figure} ../../../figures/flipped-taj-mahal.*
---
name: flipped-taj-mahal
alt: A flipped photograph of the Taj Mahal to grab the reader's attention.
---
Flipped Taj Mahal
```

deux fichiers ont été modifiés :

1. Tout d'abord, le fichier figure est ajouté dans le dépôt du projet.
2. Ensuite, une ligne est ajoutée dans ce fichier qui fait référence à la figure, de sorte qu'elle est affichée.

So two files are affected, but "Add figure to version control chapter" is a single, _atomic_ unit of work, so only one commit is necessary.

Enfin, ne livrez rien qui soit régénéré à partir d'autres fichiers livrés dans une version (à moins que ce ne soit quelque chose qui prendrait des heures à se régénérer).
Generated files, such as scripts, clutter up your repository and may contain features such as timestamps that can cause annoying file conflicts (see {ref}`rr-vcs-git-merge`).
You can instruct Git to ignore certain files by creating a file called `.gitignore` and including names of the file that you do not need to store in your Git repository.
Par exemple, les fichiers de configuration qui peuvent passer de l'environnement à l'environnement doivent être ignorés.

(comparaison-rr-vcs-versions-fr)=

## Comparaison des versions

À un certain moment, vous aurez probablement besoin/envie de comparer les versions d'un projet, par exemple, pour voir quelle version a été utilisée pour générer un résultat particulier.

To address this issue, use the `git diff` function, that takes two input data sets and outputs the changes between them.

`git diff` is a multi-use function that runs on Git data sources such as commits, branches, files and more.
By default, `git diff` will show you any uncommitted changes since the last commit.
Si vous voulez comparer deux choses spécifiques, la syntaxe est :

```
git diff thing_a thing_b
```

For example, if you want to compare how a file has changed between two commits, use `git log` to get the SHAs of those commits and run:

```
git diff SHA_a:your_file_name SHA_b:your_file_name
```

Ou si vous vouliez comparer deux branches, ce serait :

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparaison-pratique)=

### Good practice

With a little familiarity, `git diff` becomes an extremely powerful tool you can use to track what files have changed and exactly what those changes are.
Ceci est extrêmement précieux pour désélectionner les bogues et comparer le travail effectué par différentes personnes.
Be careful to **understand what exactly is being compared** and, where possible, **only compare the relevant files** for what you are interested in to avoid large amounts of extraneous information.
