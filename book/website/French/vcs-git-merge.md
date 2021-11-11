(rr-vcs-git-merge)=
# Fusion des branches dans Git

(rr-vcs-merge-commande)=
## La commande `git merge`

Une fois que vous avez terminé un travail sur une branche et que vous êtes prêt à l'intégrer à votre projet principal (ou à toute autre branche), vous pouvez fusionner la branche sur laquelle vous avez travaillé dans la branche principale ou toute autre branche cible de votre intérêt. Vous pouvez également utiliser la fusion pour combiner le travail que d'autres personnes ont fait avec votre propre et vice versa.

Pour fusionner une branche, branche_A, dans une autre branche, branche_B, passez à branche_A via :
```
Branche_A git checkout
```
Fusionner dans la branche par :

```
git fusion branche_B
```

La fusion ne sera pas possible si des modifications sont apportées à votre dossier de travail ou à votre zone de pré-production qui pourraient être écrites par les fichiers dans lesquels vous êtes en train de fusionner. Si cela se produit, il n'y a pas de conflits de fusion dans les fichiers individuels. Vous devez valider ou mettre en cache les fichiers qu'il liste, puis réessayer. Les messages d'erreur sont les suivants :

```
erreur: l'entrée 'votre_nom_fichier_' n'est pas mise à jour. Impossible de fusionner. (Changements dans le répertoire de travail)
```

ou

```
erreur: L'entrée 'your_file_name' serait remplacée par la fusion. Impossible de fusionner. (Changements dans la zone de diffusion)
```

(rr-vcs-fuge-commande-pratique)=
### Bonne pratique

Tout d'abord, votre branche **principale doit toujours être stable**. Uniquement les travaux de fusion qui sont terminés et testés (par exemple, sur une branche différente). Si votre projet est collaboratif, alors c'est une bonne idée de fusionner les changements que d'autres font fréquemment dans votre propre travail ou de partager vos changements avec vos collaborateurs. Si vous ne le faites pas souvent, il est très facile de fusionner les conflits qui surviennent (section suivante).

(rr-vcs-fusion-conflits)=
## Fusionner les conflits

Lorsque des modifications sont apportées au même fichier sur différentes branches, ces modifications peuvent parfois être incompatibles. Cela se produit le plus souvent dans des projets collaboratifs, mais aussi dans des projets solos. Dire qu'il y a un projet qui contient un fichier avec cette ligne de code :

```
print('bonjour le monde')
```

Supposons qu'une seule personne, sur sa branche, décide de la "remonter" un peu et change la ligne à:

```
print('bonjour le monde!!!')
```

alors que quelqu'un d'autre, sur une autre branche, décide de le changer pour :

```
print('Bonjour le monde')
```

Ils continuent à travailler sur leurs branches respectives et décident éventuellement de fusionner. Leur logiciel de contrôle de version passe ensuite en revue et combine leurs modifications en une seule version du fichier ; *mais*, quand il arrive à l'instruction `bonjour le monde` , il ne sait pas quelle version utiliser. Il s'agit d'un conflit de fusion : des modifications incompatibles ont été apportées au même fichier.

Lorsqu'un conflit de fusion apparaît, il sera signalé pendant le processus de fusion. Dans les fichiers en conflit, les modifications incompatibles seront marquées pour que vous puissiez les corriger :

```
<<<<<<< HEAD
print('bonjour le monde!!!')
=======
print('Bonjour le monde')
>>>>>>> principal
```
`<<<<<<<`: Indique le début des lignes qui avaient un conflit de fusion. Les premières lignes sont les lignes du fichier dans lequel vous essayez de fusionner les modifications.

`=======`: Indique le point d'arrêt utilisé pour la comparaison. Il sépare les changements que l'utilisateur a commis (ci-dessus), des changements venant de la fusion (ci-dessous), pour comparaison visuelle.

`>>>>>>>`: Indique la fin des lignes qui ont eu un conflit de fusion.

Vous résolvez un conflit en éditant le fichier pour fusionner manuellement les parties du fichier que Git avait du mal à fusionner. Cela peut signifier le rejet de vos changements ou de celui d'une autre personne ou un mélange des deux. You will also need to delete the `<<<<<<<`, `=======`, and `>>>>>>>` in the file. Dans ce projet, les utilisateurs peuvent décider en faveur d'un `bonjour le monde` par rapport à un autre, ou ils peuvent décider de remplacer le conflit par :

```
print('Bonjour le monde!!!')
```

Une fois que vous avez corrigé les conflits, livrez la nouvelle version. Vous venez de résoudre le conflit. Si pendant le processus, vous avez besoin d'un rappel des fichiers dans lesquels se trouvent les conflits, vous pouvez utiliser le statut `git` pour le savoir.

Si vous trouvez qu'il y a des conflits particulièrement méchants et que vous voulez abandonner la fusion que vous pouvez utiliser:
```
Fusion git --abort
```

(rr-vcs-fusion-exercices-conflits)=
### Bonne pratique

Avant de commencer à essayer de résoudre les conflits, assurez-vous de bien comprendre les changements et comment ils sont incompatibles pour éviter le risque de rendre les choses plus enchevêtrées. Les conflits de fusion peuvent être intimidés à résoudre, surtout si vous fusionnez des branches qui ont divergé de nombreux commits il y a déjà et ont maintenant de nombreuses incompatibilités. Cependant, il est utile de se rappeler que vos versions précédentes sont sûres et que vous pouvez résoudre ce problème sans affecter les versions précédentes. C'est pourquoi il est bon de **fusionner fréquemment les modifications apportées à votre travail**.

Il y a des outils disponibles pour aider à résoudre les conflits de fusion, certains sont gratuits; d'autres non. Trouvez et familiarisez-vous avec celui qui vous convient. Les outils de fusion communément utilisés incluent [KDiff3](http://kdiff3.sourceforge.net/), [Compare au-delà](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/), et [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge). Pour définir un outil comme votre méthode par défaut:

```
config git --global merge.tool nom_de_le_outil
```

et lancez le avec :

```
git fusiontool
```

Fondamentalement, la meilleure façon de gérer les conflits de fusion est, dans la mesure du possible, d'essayer de les éviter en premier lieu. Vous pouvez améliorer vos chances à ce sujet en gardant les branches propres et en vous concentrant sur un problème unique et en impliquant le moins de fichiers possible. Avant de fusionner, assurez-vous de savoir ce qui se trouve dans les deux branches. Si vous n'êtes pas le seul à avoir travaillé sur les branches, gardez alors les lignes de communication ouvertes, donc vous êtes tous au courant de ce que font les autres.
