(cl-new-community-guide)=
# Guide pour la planification d'une communauté

Que se passe-t-il si vous avez commencé un projet avec une pensée comme « J’ai cette excellente idée que je veux essayer sur ces données publiques ! » ? Il n’y a rien à craindre si vous êtes le seul à y travailler. Cependant, si vous voulez développer ce projet, vous devenez responsable de faire en sorte que les gens se sentent inclus dans votre projet.

En tant que "projet piloté", vous voulez mettre en place un environnement accueillant et inclusif et créer le premier ensemble de visions et d'objectifs pour vos collaborateurs. Vous ne pouvez pas supposer que tous ceux avec qui vous collaborez savent ce qu'on attend d'eux lorsqu'ils commencent à travailler avec d'autres personnes sur votre projet. Par conséquent, il est important de définir les bonnes attentes dès le début pour votre communauté, même si vous n'avez peut-être pas prévu d'en avoir un (voir plus de détails : {cite:ps}`Sharan2020Apr`).

(cl-new-community-guide-checklist)=
## Une liste de contrôle pour la planification de la collaboration dans votre projet

La liste de contrôle ci-dessous vous aidera à faire en sorte que le processus de collaboration à votre projet de recherche soit bien structuré.

Les pratiques énumérées ici sont dérivées et limitées par les expériences des auteurs qui participent à plusieurs communautés de recherche ouverte couronnées de succès et dirigent des projets axés sur la communauté, tels que [The Carpentries](https://carpentries.org), [Mozilla Open Leaders](https://mozilla.github.io/open-leadership-training-series/), [Open Life Science](https://openlifesci.org/) et _The Turing Way_. Lors de la lecture de ce chapitre, veuillez noter que vous devrez peut-être effectuer des ajustements pour des projets de nature très différente (par exemple, pas entièrement open source).

(cl-new-community-guide-checklist-comms-platform)=
### 1. Choisir une plateforme de communication

- En menant un projet ouvert, utilisez des plateformes collaboratives et ouvertes telles que [GitHub](http://github.com/) ou [GitLab](https://about.gitlab.com/).
- Évaluer le besoin de toute communication en temps réel, comme si un système de chat texte comme [Slack](https://slack.com) ou [Élément/Matrice](https://element.io/get-started) sera utile ou si une liste de diffusion sera suffisante (lire les détails {ref}`Chaînes de communication <cm-os-comms-channels>`).
  - Considérez une plateforme de communication interne séparée pour les membres de votre communauté et une plateforme externe pour montrer ce que vous avez fait pour le reste du monde.
- Un compte [Twitter](https://twitter.com) ou un site web simple (comme sur [pages GitHub](https://pages.github.com/)) peut être des plates-formes externes utiles.
- Assurez-vous que les choix de ces plates-formes sont faits pour s'assurer qu'il y a un faible obstacle à les rejoindre.

(cl-new-community-guide-checklist-proj-summary)=
### 2. Fournir un fichier de résumé du projet:

- Le premier document de votre projet devrait être un fichier de résumé du projet, qui dans un dépôt GitHub sera un [fichier README.md](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes).
- Cela fournira des informations de base sur votre projet afin que les gens puissent évaluer pourquoi votre projet sera intéressant pour eux.
  - Voici [un modèle](https://github.com/PurpleBooth/a-good-readme-template) de l'utilisateur GitHub [PurpleBooth](https://github.com/PurpleBooth).
- Dans ce fichier, indiquez la vision et les objectifs de votre projet, pourquoi le projet est utile, quels sont les jalons possibles dans le projet, comment un contributeur ou un utilisateur peut commencer, qui peut-il aller chercher de l'aide et ce qui fait actuellement défaut dans le projet en termes d'intervenants, de compétences ou de portée.
- Vous pouvez utiliser des émojis, des GIFs, des vidéos ou votre narration personnelle pour rendre votre projet lié.
  - Voir [Le projet Atom](https://github.com/atom/atom) par exemple.

(cl-new-community-guide-checklist-code-conduct)=
### 3. Sélectionnez un Code de Conduite:

- Ajoutez un projet Open Source [Codes of Conduct](https://opensourceconduct.com/) à votre projet.
- Ce document ne doit pas être utilisé comme un jeton, il est très important d'y consacrer des efforts intentionnels.
- Lorsque vous utilisez GitHub, vous pouvez ajouter un fichier « CODE_OF_CONDUCT.md» sur votre dépôt GitHub.
- Énumérez les comportements attendus et inacceptables, décrivez le processus de signalement et de mise en application définissez explicitement la portée et utilisez une tonalité inclusive (voir les instructions [GitHub ici](https://help.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project)).
- Chaque fois que vous mettez à jour votre code de conduite, invitez vos membres à faire part de leurs commentaires afin de s'assurer que leurs préoccupations sont prises en considération.
  - Cela peut être fait sur les [tickets GitHub](https://help.github.com/en/github/managing-your-work-on-github/about-issues), ou [Pull Requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).

(cl-new-community-contrib-guidelines)=
### 4. Fournir des directives de contribution et des voies d'interaction:

- Une directive réfléchie aide les gens à décider de la voie qu'ils peuvent choisir pour contribuer à votre projet, ou s'ils veulent être dans votre communauté du tout.
- Assurez-vous que les interactions de votre communauté et les différents chemins de contribution sont ouverts, inclusifs et clairement énoncés.
  - Si les gens ne parviennent pas à comprendre comment contribuer, ils abandonneront sans aide.
- Valeurs de différents types de contributions - les projets de codage ne concernent pas seulement le code, donc la documentation de liste et d'autres compétences de gestion.
- Vous pouvez utiliser l'outil de création de Persona {ref}`<pd-persona-creation>` ou l'exercice [Personas and Pathways](https://mozillascience.github.io/working-open-workshop/personas_pathways/) pour brainstorming qui pourrait être votre membre possible de la communauté.
- Voici un [modèle de directive communautaire](https://gist.github.com/PurpleBooth/b24679402957c63ec426) fourni par l'utilisateur GitHub [PurpleBooth](https://gist.github.com/PurpleBooth).
  - Voir le fichier de contribution de [_The Turing Way_](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) pour référence.

(cl-new-community-leadership)=
### 5. Créer une structure de gestion de base et de leadership:

- Une structure de leadership dans un projet ouvert devrait viser à responsabiliser les autres et à développer des organismes et des responsabilités au sein de votre communauté.
- Vous pouvez commencer par lister différentes tâches dans votre projet et inviter vos membres à mener ces tâches.
- Offrez des incitatifs et des remerciements appropriés pour les contributions apportées par les membres de votre communauté.
- Créez des occasions pour les membres de partager avec vous des responsabilités de leadership dans le projet.
- Lorsque vous invitez des suggestions et des idées de la communauté, fournissez le premier ensemble de plans à partir desquels votre communauté peut se développer.
- Voir ce document de [Open Source Guides](https://opensource.guide/leadership-and-governance/) pour référence.

(cl-new-community-contact)=
### 6. Fournir des informations de contact partout où cela est utile:

- La clarification des responsabilités des différents membres permettra aux personnes de s'adresser à la bonne personne pour toute requête.
- Ajoutez des détails sur les personnes de contact désignées pour les problèmes techniques, les questions de leadership ou tout rapport sur le Code de conduite.
- Cela sera particulièrement utile si quelque chose nécessite une résolution immédiate.

(cl-new-community-approaches)=
### 7. Identifier les approches échouées et Arrêter les thèmes :

- Le développement se déroule de manière itérative, donc revoyez vos plans et vos idées à intervalles réguliers et impliquez vos membres dans le processus.
- Vérifiez s'il y a des développements parallèles ou des approches multiples qui doivent être fusionnées ou modifiées.
- Échouez rapidement, échouez de façon informelle - reconnaissez ce qui ne fonctionne pas pour votre projet et empêchez-le de continuer.
- Documentez-les et dites-leur pourquoi vous avez échoué et comment vous changez votre projet ou vos approches à venir.
- Pour les communautés de recherche ouverte, vous pouvez maintenir la transparence lorsque vous discutez des échecs et des réussites, mais évitez de vous démarquer ou de blâmer les autres.
- Cette approche itérative vient des pratiques Agiles, voir ces courts messages pour référence:
  - [Le concept agile échoue rapidement et devient une mauvaise presse mais est mal compris](https://www.information-age.com/agile-concept-fail-fast-gets-bad-press-misunderstood-123460434/)
  - [Le guide du débutant vers Scrum et la gestion de projet agile](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management)

(cl-new-community-documentation)=
### 8. Ayez des plans de documentation et de diffusion pour votre projet :

- Lorsque de nouveaux membres rejoignent votre projet, ils doivent être en mesure de trouver l'information dont ils ont besoin sans vous demander.
- Investir dans des plans de documentation vous libérera de nombreux défis liés à la communication en partageant des renseignements généraux sur les décisions passées ou le processus de prise de décision que votre projet utilise.
- Un bon endroit pour stocker la documentation est [wiki](https://en.wikipedia.org/wiki/Wiki) ou des plateformes similaires (comme GitHub) où les informations peuvent être partagées de manière transparente et mises à jour démocratiquement par les membres de votre communauté.
- Pour diffuser les sorties de votre projet, vous devez utiliser des identifiants persistants qui peuvent être partagés et cités, par exemple, [identifiant d'objet numérique (DOI)](https://www.doi.org/).
  - [Figshare](https://figshare.com/) et [Zenodo](http://zenodo.org) sont de bons exemples de plates-formes qui peuvent vous fournir un DOI pour toutes vos données partagables.

Deux autres points sont cruciaux pour assurer l'efficacité d'un projet collaboratif : traiter les problèmes techniques et évaluer l'importance de la diversité dans la construction d'équipes.

Nous les avons expliqués dans les sous-chapitres suivants sur {ref}`Résoudre les problèmes techniques<cm-new-community-techissue>` et {ref}`Évaluer la diversité et les différences<cl-new-community-differences>`.
