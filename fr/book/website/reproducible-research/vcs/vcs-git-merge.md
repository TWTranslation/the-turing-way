(rr-vcs-git-merge)=

# Fusion des branches dans Git

(rr-vcs-merge-commande)=

## The `git merge` Command

Une fois que vous avez terminé un travail sur une branche et que vous êtes prêt à l'intégrer à votre projet principal (ou à toute autre branche), vous pouvez fusionner la branche sur laquelle vous avez travaillé dans la branche principale ou toute autre branche cible de votre intérêt.
Vous pouvez également utiliser la fusion pour combiner le travail que d'autres personnes ont fait avec votre propre et vice versa.

Pour fusionner une branche, branche_A, dans une autre branche, branche_B, passez à branche_A via :

```
git checkout branch_A
```

Fusionner dans la branche par :

```
git merge branch_B
```

La fusion ne sera pas possible si des modifications sont apportées à votre dossier de travail ou à votre zone de pré-production qui pourraient être écrites par les fichiers dans lesquels vous êtes en train de fusionner.
Si cela se produit, il n'y a pas de conflits de fusion dans les fichiers individuels.
Vous devez valider ou mettre en cache les fichiers qu'il liste, puis réessayer.
Les messages d'erreur sont les suivants :

```
error: Entry 'your_file_name' not update. Cannot merge. (Changes in working directory)
```

ou

```
error: Entry 'your_file_name' would be overwritten by merge. Cannot merge. (Changes in staging area)
```

(rr-vcs-fuge-commande-pratique)=

### Good practice

First and foremost, your **main branch should always be stable**.
Uniquement les travaux de fusion qui sont terminés et testés (par exemple, sur une branche différente).
Si votre projet est collaboratif, alors c'est une bonne idée de fusionner les changements que d'autres font fréquemment dans votre propre travail ou de partager vos changements avec vos collaborateurs.
If you do not do it often, it is very easy for merge conflicts to arise (next section).

(rr-vcs-fusion-conflits)=

## Fusionner les conflits

Lorsque des modifications sont apportées au même fichier sur différentes branches, ces modifications peuvent parfois être incompatibles.
Cela se produit le plus souvent dans des projets collaboratifs, mais aussi dans des projets solos.
Dire qu'il y a un projet qui contient un fichier avec cette ligne de code :

```
print('hello world')
```

Supposons qu'une seule personne, sur sa branche, décide de la "remonter" un peu et change la ligne à:

```
print('hello world!!!')
```

alors que quelqu'un d'autre, sur une autre branche, décide de le changer pour :

```
print('Hello World')
```

Ils continuent à travailler sur leurs branches respectives et décident éventuellement de fusionner.
Their version control software then goes through and combines their changes into a single version of the file; _but_, when it gets to the `hello world` statement, it does not know which version to use.
Il s'agit d'un conflit de fusion : des modifications incompatibles ont été apportées au même fichier.

Lorsqu'un conflit de fusion apparaît, il sera signalé pendant le processus de fusion.
Dans les fichiers en conflit, les modifications incompatibles seront marquées pour que vous puissiez les corriger :

```
<<<<<<< HEAD
print('hello world!!!')
=======
print('Hello World')
>>>>>>> main
```

`<<<<<<<`: Indicates the start of the lines that had a merge conflict.
Les premières lignes sont les lignes du fichier dans lequel vous essayez de fusionner les modifications.

`=======`: Indicates the breakpoint used for comparison.
Il sépare les changements que l'utilisateur a commis (ci-dessus), des changements venant de la fusion (ci-dessous), pour comparaison visuelle.

`>>>>>>>`: Indicates the end of the lines that had a merge conflict.

Vous résolvez un conflit en éditant le fichier pour fusionner manuellement les parties du fichier que Git avait du mal à fusionner.
Cela peut signifier le rejet de vos changements ou de celui d'une autre personne ou un mélange des deux.
You will also need to delete the `<<<<<<<`, `=======`, and `>>>>>>>` in the file.
In this project, the users may decide in favour of one `hello world` over another, or they may decide to replace the conflict with:

```
print('Hello World!!!')
```

Une fois que vous avez corrigé les conflits, livrez la nouvelle version.
Vous venez de résoudre le conflit.
If during the process, you need a reminder of which files the conflicts are in, you can use `git status` to find out.

Si vous trouvez qu'il y a des conflits particulièrement méchants et que vous voulez abandonner la fusion que vous pouvez utiliser:

```
git merge --abort
```

(rr-vcs-fusion-exercices-conflits)=

### Good practice

Avant de commencer à essayer de résoudre les conflits, assurez-vous de bien comprendre les changements et comment ils sont incompatibles pour éviter le risque de rendre les choses plus enchevêtrées.
Les conflits de fusion peuvent être intimidés à résoudre, surtout si vous fusionnez des branches qui ont divergé de nombreux commits il y a déjà et ont maintenant de nombreuses incompatibilités.
Cependant, il est utile de se rappeler que vos versions précédentes sont sûres et que vous pouvez résoudre ce problème sans affecter les versions précédentes.
This is why it is good practice to **merge other's changes into your work frequently**.

Il y a des outils disponibles pour aider à résoudre les conflits de fusion, certains sont gratuits; d'autres non.
Trouvez et familiarisez-vous avec celui qui vous convient.
Commonly used merge tools include [KDiff3](http://kdiff3.sourceforge.net/), [Beyond Compare](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/), and [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge).
Pour définir un outil comme votre méthode par défaut:

```
git config --global merge.tool name_of_the_tool
```

et lancez le avec :

```
git mergetool
```

Fondamentalement, la meilleure façon de gérer les conflits de fusion est, dans la mesure du possible, d'essayer de les éviter en premier lieu.
Vous pouvez améliorer vos chances à ce sujet en gardant les branches propres et en vous concentrant sur un problème unique et en impliquant le moins de fichiers possible.
Avant de fusionner, assurez-vous de savoir ce qui se trouve dans les deux branches.
Si vous n'êtes pas le seul à avoir travaillé sur les branches, gardez alors les lignes de communication ouvertes, donc vous êtes tous au courant de ce que font les autres.
