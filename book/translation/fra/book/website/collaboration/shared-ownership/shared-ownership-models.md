(cl-shared-ownership-models)=
# Modèles de propriété partagée

Au moment d'écrire ce chapitre, nous avons identifié les modèles suivants de propriété de code partagé:

## Rôles basés sur le niveau d'accès

Pour les utilisateurs de GitHub qui contribuent à un projet open source, les rôles suivants sont définis par les niveaux d'accès : « Lire -> Triage -> Écrire -> Maintenir -> Administrateur » (voir [Page GitHub pour référence](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/managing-team-access-to-an-organization-repository)). Les différents niveaux d'accès définissent l'ordre croissant des droits et des responsabilités qu'un contributeur a dans un projet (voir la [documentation GitHub](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-permission-levels-for-an-organization) pour plus de détails).

Pour les organisations GitHub, il y a des options pour [organiser des membres en équipes](https://docs.github.com/en/organizations/organizing-members-into-teams/about-teams) avec différents rôles et niveaux d'accès. Les autorisations de propriétaire pour une organisation GitHub peuvent être accordées à un groupe de personnes qui gèrent le compte de l'organisation telles que l'octroi de niveaux de permission aux contributeurs au besoin ([voir les détails](https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/permission-levels-for-an-organization)).

Les permissions minimales par défaut pour les membres permettent la lecture, le forking, la création de problèmes, la correction de bogues et la suggestion de modifications mineures. C'est une voie facile pour les nouveaux contributeurs d'entrer dans un projet, cependant, pas suffisant pour se sentir comme une partie de la communauté. Pour favoriser un sentiment de propriété partagée, le niveau d'accès de base devrait être « écrivains », qui peuvent examiner les nouvelles contributions, et apporter et approuver les changements qui leur permettent de partager la responsabilité du développement et de la maintenance d'un projet.

Si ces rôles ne sont pas explicitement définis, la charge qui pèsera sur les contributeurs pour savoir quel niveau d'accès ils ont et comment ils peuvent être promus aux niveaux suivants.

## Leadership et gouvernance Open Source

Contrairement à l'exemple précédent, où les rôles sont « assumés » en fonction du niveau d'accès, une approche plus intentionnelle peut être adoptée pour formaliser les rôles de tous les contributeurs sous l'aspect de la direction et de la gouvernance d'un projet open source. Cela permet aux contributeurs ayant des intérêts ou une disponibilité spécifiques d'identifier et d'entrer dans le projet. Le projet [Open Source Guides](https://opensource.guide/leadership-and-governance/) fournit un cadre de base pour définir les rôles des responsables, des contributeurs et des éditeurs. En outre, ils décrivent comment rencontrer les contributeurs où ils doivent [faciliter la propriété partagée](https://opensource.guide/building-community/#share-ownership-of-your-project). Dans les communautés plus grandes, les rôles peuvent être élargis pour inclure des membres de différents comités, des groupes de travail, des groupes d'intérêt spécial, mentors, formateurs et gestionnaires communautaires qui se concentrent sur différents domaines du développement, de la maintenance et de la durabilité. En plus des rôles, la gouvernance comprend également les processus décisionnels - comment les différentes parties prenantes sont impliquées et comment elles sont communiquées de manière transparente.

## Définition des rôles et des chemins pour les contributeurs

Comme il a été dit, un ensemble de rôles et de responsabilités clairement définis permettent à des personnes ou à des groupes de se forger un sens du but commun et de définir une attente claire autour de la propriété partagée du projet. Ces rôles peuvent être développés en fonction des tâches, des responsabilités et des compétences requises dans le projet.

```{figure} ../../figures/mountain-of-engagement.png
---
name : mountain-of-engage
alt: Cinq étapes pour le développement d'une « montagne d'engagement » pour les contributeurs de projets Open Source décrits dans le titre de la figure.
---
Une « montagne d'engagement » pour le projet Open Source commence par (1) une liste d'interaction des gens avec votre travail, et (2) 3-5 niveaux d'approfondissement des groupes/niveaux d'engagement. (3) Ensuite vous pouvez faire un remue-méninges et regrouper vos interactions en bandes d'engagement, et donner un nom à chaque groupe. (4) Avec votre travail, vous pouvez ensuite identifier ce qui fonctionne et ce qui ne fonctionne pas. (5) Cela donne une idée de la priorité à votre travail afin de créer plus d'opportunités pour vos contributeurs.
```

Ces rôles peuvent être contractuels ou informels, pris par des volontaires payés ou non rémunérés et appuyés par des politiques juridiques ou sociales. Ces rôles et chemins d'engagement pour les contributeurs peuvent être compris en utilisant [Mountain of Engagement](https://docs.google.com/presentation/d/1ipIUc1t6ogOpyK9gU_PPgD-UvW0Gs73pMIAdCLOG72Y/present?token=AC4w5VhpTqbOWqPsxwOsnzqMG_DYvAqvGA%3A1596111012295&includes_info_params=1&eisi=CJfzpO_49OoCFYbTJAodKr0HAQ#slide=id.p) comme décrit par [Mozilla Open Leadership](https://mozilla.github.io/open-leadership-training-series/articles/building-communities-of-contributors/) et [Open Life Science](https://openlifesci.org/). Le but est d’identifier les niveaux d’engagement des contributeurs au moment où ils se déplacent de leurs rôles d’« observateurs », de « endosseurs », de « contributeurs », de « dirigeants » et, finalement, de « propriétaires ».
