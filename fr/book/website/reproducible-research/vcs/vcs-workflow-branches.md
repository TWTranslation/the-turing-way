(rr-vcs-workflow-branches)=

# Développement non-linéaire de votre projet avec "Branches"

> This chapter is for more advanced users.
> It allows you to work on the code, while allowing other users to see the stable version of your data first.
> ranches are also a way to make changes that can be easily trashed.

Ainsi, vous avez votre projet et vous voulez ajouter quelque chose de nouveau ou essayer quelque chose avant de refléter les changements dans le dossier principal du projet.
Pour ajouter quelque chose de nouveau, vous pouvez continuer à éditer vos fichiers et les enregistrer avec les modifications proposées.
Supposons que vous vouliez essayer quelque chose sans refléter les changements dans le référentiel central.
Dans ce cas, vous pouvez utiliser la fonctionnalité « brancher » des systèmes de contrôle de version plus avancés tels que Git.
Une branche crée une copie locale du dépôt principal où vous pouvez travailler et essayer de nouvelles modifications.
Tout travail que vous faites sur votre succursale ne sera pas répercuté sur votre projet principal (appelé votre branche principale) de sorte qu'il reste sécurisé et exempt d'erreurs.
En même temps, vous pouvez tester vos idées et dépannage dans une branche locale.

Lorsque vous êtes satisfait des nouveaux changements, vous pouvez les présenter au projet principal.
La fonctionnalité de fusion dans Git permet aux lignes de développement indépendantes dans une branche locale d'être intégrées dans la branche principale.

```{figure} ../../../figures/one-branch.*
---
name: one-branch
alt: >
 A row of nine grey dots is labelled 'Main', representing the main branch. 
 Each of these dots is connected to the two neighbouring dots with an arrow pointing to the right.
 On top of the main branch is a line of four blue dots, that are also connected by arrows.
 These blue dots are labelled 'Feature A' and represent the development branch. 
 The development branch is connected to the main branch through the same arrows that connect the dots within a branch:
 An arrow points from grey dot number 3 to blue dot number 1, and in the same fashion an arrow points from blue dot number 4 to grey dot number 8.
---
The development and main branch in Git.
```

Vous pouvez avoir plus d'une branche de votre copie principale.
Si l'une de vos branches finit par ne pas fonctionner, vous pouvez l'abandonner ou la supprimer sans affecter la branche principale de votre projet.

```{figure} ../../../figures/two-branches.*
---
name: two-branches
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots represents development branch one (named 'Feature A').
 Additionally, below the main branch a line of two connected orange dots, representing development branch two (named 'Feature B'), is shown.
 The two development branches connect to the main branch at different positions. 
---
Two development branches and one main branch in Git.
```

Si vous le souhaitez, vous pouvez créer des branches à partir de branches (et de branches hors de ces branches et ainsi de suite).

```{figure} ../../../figures/sub-branch.*
---
name: sub-branch1
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots, representing the 'Feature A' development branch, and below the main branch line of two connected orange dots, representing the 'Feature B' development branch, are shown.
 Additionally, a line of two connected green dots shows another development branch (named 'Feature A-1') on top of the 'Feature A' development branch. 
 The Feature A-1 development branch only connects to the Feature A development branch, and not the main branch. 
---
Several development branches in Git.
```

Peu importe le nombre de succursales que vous avez, vous pouvez accéder aux anciennes versions que vous avez faites sur l'une d'elles.
Si vous êtes curieux de savoir comment utiliser cette fonctionnalité dans la pratique, vous trouverez plus de détails à l'avance.
