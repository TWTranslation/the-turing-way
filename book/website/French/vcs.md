(rr-vcs)=
# Contrôle de version

(rr-vcs-prerequisites)=
## Pré-requis

| Pré-requis                                                                                        | Importance | Notes |
| ------------------------------------------------------------------------------------------------- | ---------- | ----- |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Utile      |       |

**Niveau de compétence Recommandé**: _Débutant-intermédiaire_

(rr-vcs-summary)=
## Summary

Peu importe la manière dont votre groupe est organisé, le travail de nombreux contributeurs doit être géré en un seul ensemble de documents de travail partagés. Le contrôle de version est une approche pour enregistrer les modifications effectuées dans un fichier ou un ensemble de fichiers au fil du temps afin que vous et vos collaborateurs puissiez suivre leur historique, examinez toutes les modifications, puis revenez ou revenez aux versions précédentes. La gestion de modifications ou de révisions de tout type d'information effectuée dans un fichier ou un projet est appelée versioning.

Dans ce chapitre, nous discutons des meilleures pratiques qui sont pertinentes indépendamment des outils. Les pratiques de versionnage proviennent principalement de la gestion des changements dans les dépôts de code. Cependant, en réalité, vous pouvez utiliser le contrôle de version pour presque n'importe quel type de fichier sur un ordinateur. Par exemple, lorsque vous écrivez un document avec plusieurs collaborateurs, le contrôle de version peut aider à suivre ce qui a changé, qui les a modifiés et quelles mises à jour ont été faites.

Différents systèmes de contrôle de version peuvent être utilisés à travers un programme avec une interface graphique, des applications basées sur un navigateur Web ou des outils en ligne de commande. Nous avons tous vu une approche simple de versionnage de fichiers où différentes versions d'un fichier sont stockées avec un nom différent. Des outils tels que Google Drive et Dropbox proposent des plates-formes pour mettre à jour des fichiers et les partager en temps réel en collaboration. Un système de contrôle de version plus sophistiqué existe dans des outils tels que [Google docs](https://docs.google.com/) ou [HackMD](http://hackmd.io/). Celles-ci permettent aux collaborateurs de mettre à jour des fichiers tout en stockant chaque version dans son historique de version (nous en discuterons en détail). Les systèmes avancés de contrôle de version (VCS) tels que [Git](https://en.wikipedia.org/wiki/Git), [Mercurial](https://www.mercurial-scm.org/), et [SVN](https://subversion.apache.org/) fournissent des outils beaucoup plus puissants.

Ce chapitre vise à couvrir les principes généraux qui sous-tendent tous les systèmes de contrôle de version avancés et les meilleures pratiques applicables à tous ces systèmes. Nous discutons de nombreux outils et fonctionnalités; cependant, nous encourageons les lecteurs à utiliser des fonctionnalités qui sont utiles pour leur travail et les outils avec lesquels ils sont à l'aise. La plupart des instructions données dans ce chapitre seront également orientées vers Git, qui est le plus souvent utilisé par les chercheurs, et un service d'hébergement de dépôts Git basé sur le Web, [GitHub](https://github.com/), qui facilite les collaborations en ligne.

Plus tard dans ce chapitre, nous discutons également du contrôle de version des données, qui est appliqué pour garder une trace des révisions de grandes quantités de données, en particulier lorsque vous travaillez en collaboration. Il est utile de savoir que les données peuvent être volatiles et le versionnage peut améliorer la reproductibilité de vos analyses scientifiques.

```{figure}  ../figures/project-history.jpg
---
nom : historique du projet
alt : Contraste dans la gestion de l'historique du projet. Sur la gauche - choisir entre des fichiers nommés ambigus. Sur la droite - choisir entre les versions successives (de V1 à V6).
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-utiles)=
## Motivation et arrière-plan

Le contrôle de version nous aide à comprendre les changements que nous avons faits dans le passé ou pourquoi nous avons fait une analyse spécifique dans la manière dont nous l'avons fait, même des semaines ou des mois plus tard. Avec l'aide de commentaires et de messages de livraison, chaque version peut expliquer les changements qu'elle contient par rapport aux versions précédentes. Ceci est utile lorsque nous partageons notre analyse (pas seulement les données) et que nous la rendons auditable ou **reproductible** - ce qui est une bonne pratique scientifique.

Un système de contrôle de version stocke soigneusement une histoire de changements et qui les a faits, alors qu'il est toujours facile d'y accéder, votre répertoire de travail n'est pas encombré par les débris des versions précédentes qui sont nécessaires à conserver au cas où. De même, avec le contrôle de version, Il n'est pas nécessaire de laisser des morceaux de code commentés si vous avez besoin de revenir à une ancienne version.


Enfin, le contrôle de version est inestimable pour les projets collaboratifs où différentes personnes travaillent simultanément sur le même code et s'appuient sur le travail de chacun. Il permet de suivre les changements apportés par différentes personnes et de combiner automatiquement le travail des personnes tout en économisant beaucoup d'efforts pour le faire manuellement. Utiliser le contrôle de version pour votre projet de recherche signifie que votre travail est totalement transparent, et parce que toutes vos actions sont enregistrées, cela permet aux autres de reproduire vos études. De plus, les services d'hébergement de contrôle de versions tels que {ref}`GitHub<cl-github-novice-motivation>` fournissent un moyen de communiquer et de collaborer de manière plus structurée, comme dans les pull requests, les revues de code et les tickets.
