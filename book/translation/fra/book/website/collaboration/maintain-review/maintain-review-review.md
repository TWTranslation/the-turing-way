(cl-maintain-review-reviewing)=

# Révision des contributions

## Révision du processus

Dans un projet ou un code de base, un ensemble de modifications doivent être examinées avant de le fusionner dans le dépôt principal.
If the project is co-owned by many people, the review process handled by [code review assignment](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/managing-code-review-assignment-for-your-team) in which certain members of the team are assigned this task.
Les réviseurs sont souvent automatiquement suggérés sur les demandes de fusion GitHub basées sur une activité similaire de la part d'autres membres sur les fichiers identiques ou différents du projet.
However, often a project manager requests other maintainers for the review of a particular pull request based on their availability, willingness, or expertise.

The assigned or willing maintainers can review the pull request by checking the [changes locally](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/checking-out-pull-requests-locally) or on the online repository and suggest changes required.
When the review process is completed, the reviews can be approved without any change, or [with required changes](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/approving-a-pull-request-with-required-reviews) or [dismissed](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/dismissing-a-pull-request-review) according to the quality of the contribution.

## Lignes directrices pour l'examen du processus et la maintenance

Pour la collaboration de projet sur GitHub, il est important de suivre une ligne directrice définie avec les meilleures pratiques pour maintenir un projet particulier.
Le processus de maintenance peut être exécuté en douceur à l'aide des éléments suivants :

1. _Documenting the process_: A comprehensive documentation on how contributors can get started with the project and how they can make meaningful contributions is the first step to be taken while maintaining an open source project.
   These details should throw light on what the project is all about, why was it created in the first place, who maintains the project, what the community culture looks like, and who can provide guidance to new contributors.

Ces trois documents constituent un bon début pour la construction de ces documents:

- A project should contain a {ref}`README.md file<pd-project-repo-readme>` that provides the important details and links to resources that one must know to become a member of the project.
- A Code of Conduct (see _The Turing Way_ [Code of Conduct](https://github.com/the-turing-way/the-turing-way/blob/main/CODE_OF_CONDUCT.md)) must be provided in every project to establish that a welcoming and safe environment for community members while collaborating.
- A well-written contribution guideline (see _The Turing Way_ [Contributing file](#ch-contributing)) is extremely important when the collaboration is done remotely on any project to ensure clear communication between contributors and maintainers.

2. _Effective communication_: The conversations regarding any contribution can be made public for others to join for a discussion while working on small features and ideas.
   Cela impliquera un plus grand nombre de personnes et assurera la transparence dans le travail open source.
   Il est important d'écrire des messages et des commentaires sur le problème et les pull requests, de façon claire et facile à comprendre tout en faisant un examen pour aider les contributeurs à comprendre les exigences afin qu'ils puissent mieux s'engager dans leurs demandes de tirage.
   Il est préférable de mentionner des liens importants dans les messages si nécessaire.

3. _Mentored contributions_: The maintainer's role is to make the contribution a process as easy as possible.
   Les contributions open source peuvent être intimidantes pour de nombreux nouveaux contributeurs.
   Guider les gens en faisant des conversations amicales et encourageantes peut rendre le processus d'intégration pour les nouveaux contributeurs confortables.
   Il est préférable de créer des problèmes descriptifs à résoudre.
   Pour que des contributions significatives soient apportées, il est préférable de créer des problèmes différents avant de les résoudre avec des demandes de retrait.
   L'étiquetage des problèmes et les demandes d'ajout aideront à impliquer plus de contributeurs dans diverses tâches avec différentes exigences de compétences.
   Labeling seemingly easy issues as ["good first issue"](https://help.github.com/en/github/building-a-strong-community/encouraging-helpful-contributions-to-your-project-with-labels) will help new contributors to pick up easy tasks like minor changes in code and content, bug and typo fixes and small design issues.

4. _Maintaining the pull requests_: The maintenance of already existing pull requests on a project involves labeling them, reviewing them, changing their stages, merging and closing them.
   La maintenance des demandes de tirage peut être effectuée en donnant le bon contrôle au bon moment.
   On GitHub there are various ways to provide feedback while reviewing such as by giving feedback as a comment on the pull request, suggesting changes while reviewing, directly proposing changes in the branch of the contributors or discussing on the pull request how the contributions can be improved (see this [GitHub post for details](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews)).
   Les responsables peuvent communiquer un calendrier dans lequel ils examinent et fusionnent les demandes d'ajout pour un projet actif, par exemple, une semaine.
   Les étiquettes peuvent être modifiées au fil du temps et des phases afin de refléter correctement l'état d'une fonctionnalité en cours de développement.

5. _Acknowledging other's work and respecting time_: Welcoming people who contribute to a project is one of the keys to make a collaborative project a success.
   Chaque fois qu'une contribution significative est apportée et qu'une RP est fusionnée, les responsables devraient la reconnaître.
   Un petit message disant "Merci" suffit souvent, surtout pour les débutants dans les espaces open source.
   C'est toujours un bon geste de rendre hommage aux contributeurs de l'open source en les ajoutant à la liste des contributeurs.
   La meilleure façon de le faire est de créer un fichier dédié où tous les contributeurs sont mentionnés avec leurs contributions dans les projets.
   Si les contributeurs du projet sont basés dans différentes parties du monde, les responsables doivent respecter leur heure et planifier leurs travaux en conséquence.
   Au cas où quelqu'un ne serait pas en mesure de discuter d'idées en raison de son calendrier, les responsables et les contributeurs devraient essayer de coopérer autant que possible.
   C'est également une bonne pratique de demander activement aux contributeurs qui sont très occupés de prendre une pause et de revenir plus tard ou d'impliquer d'autres personnes de la communauté afin de suivre leurs contributions en cours.
