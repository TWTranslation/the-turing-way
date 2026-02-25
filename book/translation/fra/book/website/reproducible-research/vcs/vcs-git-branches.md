(rr-vcs-git-branches)=

# Branches Git

Lorsque vous travaillez sur un projet, individuellement ou en collaboration, vous pouvez rencontrer les scénarios suivants :

- Si vous ajoutez une nouvelle fonctionnalité à votre projet, vous risquez de casser accidentellement votre code de travail au fur et à mesure que vous testez la fonctionnalité.
  Cela provoquerait des problèmes inattendus pour les utilisateurs actifs de votre projet, même si le seul utilisateur actif est vous.
- Lorsque vous collaborez avec les autres, et que tout le monde travaille simultanément sur la branche principale, il peut y avoir beaucoup de confusion et de changements contradictoires.
- Certains code/fonctionnalités peuvent ne pas être intéressants pour tout le monde. Il peut être nécessaire de permettre que de nouveaux travaux soient réalisés sur un projet tout en protégeant le travail déjà accompli.

Les succursales Git sont extrêmement précieuses pour traiter chacune de ces questions.
Pour chaque projet Git, par défaut, vous avez une branche appelée 'main' où tous les commits sont enregistrés.
La fonctionnalité de branchement de Git nous permet de créer une copie d'un projet sur lequel nous pouvons travailler et continuer à faire des commits sans les intégrer dans la branche principale.
Pendant ce temps, on peut continuer à faire des commits sur la branche principale, qui n'est pas touchée par les changements effectués sur d'autres branches.
Une fois que vous êtes satisfait de ce que vous travailliez sur une branche, vous pouvez la fusionner dans votre branche principale (ou même dans toute autre branche).
Merging will be covered in the {ref}`rr-vcs-git-merge` subchapter.

Si vous testez une fonctionnalité sur une branche qui ne fonctionne pas, vous pouvez la supprimer ou l'abandonner (par exemple, Fonctionnalité B dans le diagramme ci-dessous) plutôt que de passer du temps à décocher vos changements si vous faisiez tout votre travail sur la branche principale.
Vous pouvez avoir autant de branches que vous le souhaitez (par exemple, la fonctionnalité A-1).

L'utilisation des branches maintient le code de travail en sécurité, en particulier dans les collaborations.
Chaque contributeur peut avoir sa propre branche ou branche qui ne sont fusionnées dans le projet principal que lorsqu'ils sont prêts.

```{figure} ../../../figures/sub-branch.*
---
name: sub-branch
alt: An illustration of branching in Git. There are four branches shown named main, Feature A, Feature B, and Feature A-1. Feature A and B are branches of the main branch, while Feature A-1 is a branch made from Feature A.
---
An illustration of branching in Git
```

Vous pouvez créer une branche et basculer vers celle-ci en utilisant :

```
git checkout -b name_of_your_new_branch
```

Pour changer entre les branches, utilisez la commande suivante:

```
git checkout name_of_the_branch
```

Vous devez livrer tout travail que vous avez en cours avant de pouvoir passer à une autre branche.

Vous pouvez voir toutes les branches de votre projet en utilisant :

```
git branch
```

Cela donne la sortie sous forme de liste avec un astérisque à côté de la branche sur laquelle vous êtes.
You can also use `git status` if you have forgotten which branch you are on.

Si vous décidez de vous débarrasser d'une branche, vous pouvez la supprimer avec :

```
git branch -D name_of_the_branch
```

(rr-vcs-branches-pratique)=

## Bonne pratique

Branches should be used to **keep the main branch clean**.
C'est-à-dire que le principal ne doit contenir que des travaux qui sont terminés, testés et qui appartiennent à juste titre à la version principale du projet.
Similarly, you should try to keep individual branches as clean as possible by **only adding one new feature per branch**. C'est parce que si vous travaillez sur plusieurs fonctionnalités, certains peuvent être terminés et prêts à être fusionnés en main tandis que d'autres sont encore en développement.
Garder vos branches propres signifie n'apporter que des modifications liées à la fonctionnalité sur la branche de la fonctionnalité.
Give your branches **sensible names**, "new_feature" is all well and good until you start developing a newer feature on another branch.

## Tutoriel interactif

[Learn Git Branching](https://learngitbranching.js.org/) is a project to provide an interactive way to learn Git. Passer
à travers leurs tutoriels fournira une expérience substantielle avec les commandes git les plus couramment utilisées et les techniques de manipulation de branches.
