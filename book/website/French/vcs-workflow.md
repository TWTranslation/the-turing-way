(rr-vcs-workflow)=
# Flux de travail général

Le contrôle de version est une approche systématique des modifications effectuées dans un fichier ou un ensemble de fichiers au fil du temps. Cela permet à vous et à vos collaborateurs de suivre l'historique, de voir ce qui a changé et de rappeler des versions spécifiques plus tard lorsque nécessaire. Une procédure typique pour utiliser le contrôle de version est la suivante:

1. Créer des fichiers - ceux-ci peuvent contenir du texte, du code ou les deux.
2. Travaillez sur ces fichiers, en changant, en supprimant ou en ajoutant un nouveau contenu.
3. Créer un instantané du statut du fichier (également connu sous le nom de version) pour le moment.

Ce processus de création d'un instantané est décrit différemment dans différents logiciels de contrôle de version. Par exemple, Git le décrit comme « un engagement ». Certains systèmes l'appellent "un point de temps" ou "un point de contrôle"; et cela est appelé "sauvegarde de votre travail" dans d'autres cas, comme dans [Google docs](https://docs.google.com/) ou [HackMD](http://hackmd.io/).

Au fur et à mesure que vous enregistrez votre travail en ajoutant des modifications, vous faites de plus en plus d'instantanés. Vous pouvez les considérer comme une sauvegarde des versions de ces fichiers tout en documentant leur historique. Si vous devez retourner à une version précédente d'un fichier à cause d'une erreur, ou si vous avez changé d'avis à propos d'une mise à jour précédente, vous pouvez accéder au fichier dans votre version préférée, ou renvoyer tout votre projet à un état antérieur.

Une illustration de cela est illustrée ci-dessous.

```{figure} ../../figures/main-branch.png
---
nom : branche main-
alt : Une illustration d'une branche principale
---
Une illustration d'une branche principale
```

Dans de nombreux systèmes de contrôle de version, vous pourrez ajouter un commentaire à chaque fois que vous enregistrez une nouvelle version. Ces commentaires devraient être clairs et concis afin de faciliter la compréhension des modifications proposées et des mises à jour apportées dans une version. Cela garantit qu'il est facile de trouver ce que vous cherchez quand vous avez besoin de revenir à une version antérieure. Vos collaborateurs vous remercieront, mais les versions futures de vous-même.

(rr-vcs-workflow-branches)=
## Développement non-linéaire de votre projet avec "Branches"

Ainsi, vous avez votre projet et vous voulez ajouter quelque chose de nouveau ou essayer quelque chose avant de refléter les changements dans le dossier principal du projet. Pour ajouter quelque chose de nouveau, vous pouvez continuer à éditer vos fichiers et les enregistrer avec les modifications proposées. Supposons que vous vouliez essayer quelque chose sans refléter les changements dans le référentiel central. Dans ce cas, vous pouvez utiliser la fonctionnalité « brancher » des systèmes de contrôle de version plus avancés tels que Git. Une branche crée une copie locale du dépôt principal où vous pouvez travailler et essayer de nouvelles modifications. Tout travail que vous faites sur votre succursale ne sera pas répercuté sur votre projet principal (appelé votre branche principale) de sorte qu'il reste sécurisé et exempt d'erreurs. En même temps, vous pouvez tester vos idées et dépannage dans une branche locale.

Lorsque vous êtes satisfait des nouveaux changements, vous pouvez les présenter au projet principal. La fonctionnalité de fusion dans Git permet aux lignes de développement indépendantes dans une branche locale d'être intégrées dans la branche principale.

```{figure} ../../figures/one-branch.png
---
nom : une branche
alt : Une illustration d'un développement et d'une branche principale dans git
---
Une illustration d'un développement et d'une branche principale dans git.
```

Vous pouvez avoir plus d'une branche de votre copie principale. Si l'une de vos branches finit par ne pas fonctionner, vous pouvez l'abandonner ou la supprimer sans affecter la branche principale de votre projet.

```{figure} ../../figures/two-branches.png
---
nom : deux branches
alt : Une illustration de deux branches de développement et d'une branche principale dans git
---
Deux branches de développement et une branche principale dans git.
```

Si vous le souhaitez, vous pouvez créer des branches à partir de branches (et de branches hors de ces branches et ainsi de suite).

```{figure} ../../figures/sub-branch.png
---
nom: sous-branche1
alt: Une illustration d'une branche de développement dans git.
---
Une branche de développement dans git.
```

Peu importe le nombre de succursales que vous avez, vous pouvez accéder aux anciennes versions que vous avez faites sur l'une d'elles. Si vous êtes curieux de savoir comment utiliser cette fonctionnalité dans la pratique, vous trouverez plus de détails à l'avance.
