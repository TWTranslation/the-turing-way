(cl-maintain-review-permissions)=
# Propriété et autorisations
Dans n'importe quel projet d'équipe ou d'organisation, il y a différents contributeurs.

Les propriétaires d'un projet sont des individus ou des équipes qui démarrent généralement un projet, ou rejoignez-la au moment de la création du projet avec une vision et des objectifs définis. Les propriétaires ont le droit de donner [niveaux d'autorisation différents](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization) à des contributeurs extérieurs.

Dans Github, il y a cinq niveaux de permissions: lecture, triage, écriture, maintenir, et admin.
* Les lecteurs sont des contributeurs non codés qui lisent le contenu ou se joignent à des discussions sur les problèmes GitHub.
* Avec la permission de triage, les contributeurs peuvent gérer les tickets et les demandes de fusion sans accès en écriture.
* La permission d'écriture permet aux contributeurs d'envoyer des changements au projet.
* Maintenir la permission est pour les gestionnaires de projet mais n'a pas accès aux actions sensibles ou destructives (comme la suppression de projet).
* Les administrateurs sont des personnes qui ont un accès complet au projet, y compris des actions sensibles et destructrices, et qui ont la responsabilité d'accorder la permission de faire d'autres contributeurs.

Ces rôles sont souvent définis dans un fichier de projet tel qu'un [fichier CODEOWNERS](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) ou un fichier Ways of Working (voir _The Turing Way_'s [Ways of Working](https://github.com/alan-turing-institute/the-turing-way/blob/main/ways_of_working.md) comme exemple). Ces fichiers fournissent un aperçu de l'équipe de projet principale et des membres responsables des rôles de maintenance dans le projet.

Dans ce chapitre, toute personne ayant un triage, une permission d'écriture et de maintenance est désignée comme responsable. Les responsables sont impliqués dans la création de tickets et de demandes de fusion chaque fois que nécessaire. Ils maintiennent la base de code ou le projet mis à jour et aident à examiner les contributions. Ils peuvent souvent approuver et fusionner les pull requests. Ils peuvent également demander des avis à quelqu'un d'autre.

*Pour plus d'informations sur le niveau d'autorisation, veuillez consulter cette [documentation sur GitHub](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization).*
