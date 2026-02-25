(cm-os-comms-issue-tracking)=

# Suivi des problèmes

La plupart des projets de développement logiciel ont une sorte de fiche pour suivre facilement les problèmes actuels dans le projet, comme la correction de bogues, le déploiement de nouvelles fonctionnalités ou les plans d'engagement de la communauté.
[GitHub](https://github.com) (a very popular collaboration platform) has a built-in [issue tracker](https://guides.github.com/features/issues/) and [project boards](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) where issues can be collated together to track progress towards a more specific, higher-level goal.

Cette section est une discussion sur les raisons pour lesquelles le suivi des problèmes est utile et où vous pouvez les stocker.

(os-comms-comms-issue-purpose)=

## Quel est le but de vos enjeux?

Il y a de nombreuses raisons différentes de maintenir ou de suivre des problèmes liés à un projet.
La plateforme de suivi des problèmes et les fonctionnalités suivies par ces problèmes peuvent influencer l'interaction de votre communauté avec votre projet.

Les problèmes sont principalement utilisés pour suivre les rapports de bogue, les demandes de fonctionnalités, les opportunités de participation des membres de la communauté, et ainsi de suite, alors un comité d'émission publique permettra à votre communauté d'obtenir un aperçu clair de ce qui arrive dans le pipeline et de la manière dont ils peuvent s'impliquer.

Examinons les tableaux de bord centralisés et décentralisés et distribués et la façon dont ils pourraient impliquer votre communauté.

(os-comms-issue-tracking-purpose-issues)=

### Problèmes par référentiel (Décentralisé/Distribué)

Si votre projet est divisé entre plusieurs référentiels, alors c'est une bonne idée de conserver les problèmes spécifiques à ce module dans ce référentiel : un système décentralisé.
Cela permet à votre communauté de concentrer leur attention sur ce qui est important pour eux.

Cette approche a plusieurs fiches plus petites pour chaque référentiel (ou module) dans votre code-base.
Cette méthode a beaucoup de résultats positifs, tels que:

- The volume of issues is more manageable
- Most contributors only need to be aware of issues relating to one or two repositories
- Contributors can subscribe to notifications or updates from only the repositories that interest them
- It feels like "divide and conquer", more people are working on more aspects to move the project as a whole forward

(os-comms-issue-tracking-purpose-issues-case-study)=

#### Étude de cas: mybinder.org

[mybinder.org](https://mybinder.org) is a platform facilitating users to easily share reproducible analyses and computational environments with one another in [Jupyter Notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) via the cloud.
Ce projet est réparti entre plusieurs référentiels, chacun un outil individuel qui peut être utilisé séparément des autres.
Voici :

- [repo2docker](https://github.com/jupyter/repo2docker)
- [JupyterHub for Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s)
- [BinderHub](https://github.com/jupyterhub/binderhub)

Il y a aussi des outils dans l'écosystème Jupyter qui ne sont que faiblement associés à Binder.
Les outils utilisés par Project Binder et les personnes associées à Binder y contribuent, mais aussi les autres communautés non liées.
Such tools are [JupyterHub](https://github.com/jupyterhub/jupyterhub) and [KubeSpawner](https://github.com/jupyterhub/kubespawner).

Chacun de ces référentiels contient des centaines de problèmes qui suivent le travail en cours effectué par la communauté et qui définissent les orientations futures à suivre pour chaque projet.

Pouvez-vous imaginer essayer de combiner toutes ces questions en un seul endroit?
Cela deviendrait très difficile, voire impossible, pour que quelqu'un trouve ce qu'il recherche et demande un schéma de marquage très intelligent, ainsi que des instructions pour le filtrage par tag.

Dans l'expérience de l'équipe Project Binder, la plupart des membres de la communauté contribuent à un ou deux de ces projets.
Ainsi, avoir un accès consolidé à toutes les questions pour toutes les pièces de travail n'est pas une priorité élevée pour leur communauté.

They find that having distributed issue tracking allows those members of the community who may only work with JupyterHub to comfortably contribute without needing to be familiar with everything that goes into running [mybinder.org](https://mybinder.org).

(os-comms-issue-tracking-purpose-issues-case-centralised-issue)=

### Dépôt centralisé de problèmes

Avec un grand projet, il peut être tentant de rassembler toutes vos questions en un seul endroit pour faciliter la gestion : un système centralisé.
Si vous utilisez des problèmes pour suivre un service central, des listes de tâches personnelles, et répondre à des questions comme si une tâche est une priorité élevée ou si elle est déjà assignée à quelqu'un alors le suivi des problèmes dans un système centralisé est une bonne option et ne doit pas nécessairement être distribué à votre communauté dans son ensemble.

Toutefois, en termes d'engagement de votre communauté, un tel système centralisé peut être problématique.
Si vos problèmes se trouvent ailleurs, cela peut créer de nombreux obstacles à l'entrée pour les membres de la communauté, tels que:

- Issues are more difficult to discover
- If they are hosted on another platform (for example, code is on GitHub but issues are on [Asana](https://asana.com/)), that's another tool community members need to learn how to use
- Issues are separated from the code they are referencing

Un impact très important sur la communauté d'avoir un tableau de tickets séparé est que lorsque des gens visitent votre référentiel de code, il ressemble à un projet inactif car il n'y a pas de problèmes ou de conversations sur l'endroit où le code est hébergé.
Cela peut faire croire aux membres de la communauté que le code n'est plus activement développé, maintenu/pris en charge et peut choisir d'utiliser une autre base de code ou un autre paquet logiciel.

(os-comms-issue-tracking-comparative-table)=

## Tableau comparatif

Le tableau ci-dessous compare les fonctionnalités des dépôts de tickets distribués et centralisés pour un projet multi-référentiel.

| Feature                                    |               Problèmes centralisés               | Dépôts de tickets distribués |
| :----------------------------------------- | :-----------------------------------------------: | :--------------------------: |
| Recherche globale de problèmes             |                         ✅                         |                              |
| Hébergé par la même plateforme que le code |         ❓(non garanti)         |               ✅              |
| Filtrer par dépôt                          | ❓(utilisateurs de puissance\*) |               ✅              |
| S'abonner aux mises à jour pertinentes     |  ❓(utilisateurs de puissance)  |               ✅              |
| Facile à découvrir                         |                                                   |               ✅              |
| Connecté à la base de code                 |                                                   |               ✅              |
| Apparaît actif à la communauté             |                                                   |               ✅              |
| Volume gérable                             |                                                   |               ✅              |

\*Utilisateurs de puissance = Ce sont des personnes qui sont déjà suffisamment familières avec une plateforme pour connaître les trucs et astuces qui rendent leur expérience plus efficace

## Further Reading

- Blog post comparing the convenience and community closeness of Mailing Lists and Forums: <https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/>
- Blog post by [Tim Head](https://github.com/betatim):  <https://betatim.github.io/posts/thoughts-on-collective-thinking/>
