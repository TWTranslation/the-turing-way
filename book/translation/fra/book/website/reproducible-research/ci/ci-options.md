(rr-ci-options)=
# Qu'est-ce que l'intégration continue ?

L'intégration continue (CI) est la pratique d'intégrer les changements à un projet fait par les individus dans un principal, version partagée fréquemment (généralement plusieurs fois par jour). Le logiciel CI est également généralement utilisé pour identifier tous les conflits et bogues qui sont introduits par les changements, pour qu'ils soient trouvés et fixés tôt, en minimisant l'effort requis pour le faire. Les tests effectués régulièrement évitent également aux humains de devoir le faire manuellement. En informant les utilisateurs des bogues le plus tôt possible les chercheurs (si le projet est un projet de recherche) ne perdent pas beaucoup de temps à faire du travail qui pourrait devoir être jeté, qui peut être le cas si les tests sont exécutés rarement et que les résultats sont produits à l'aide d'un code défectueux.

Ce chapitre exige une compréhension approfondie du contrôle des versions. Les concepts centraux que vous devrez rappeler sont :

- Comment l'utiliser pour permettre aux personnes qui collaborent sur un seul projet de combiner leur travail par fusion
- Quels sont les conflits de fusion et les difficultés qu'ils peuvent présenter
- Ce qu'est GitHub et comment l'utiliser

En bref, si un groupe de chercheurs collaborent à un projet, il est de bonne pratique pour eux d'utiliser le contrôle de version pour garder une trace de leurs changements au fil du temps, et de combiner leur travail régulièrement. S'ils ne combinent pas (intégrent) leur travail régulièrement, alors quand ils en viennent à le faire, il est probablement très difficile car différentes personnes ont pu apporter des changements contradictoires.

L'intégration continue est une pratique de développement logiciel où les membres d'une équipe intègrent fréquemment leur travail, plutôt que de faire du travail dans l'isolement et la fusion dans de grands changements à des intervalles peu fréquents. En CI , en général, chaque personne s'intègre au moins quotidiennement. Chaque intégration est vérifiée par une version automatisée (incluant généralement des tests) pour détecter les erreurs d'intégration le plus rapidement possible.

L'idée est de minimiser le coût de l'intégration en la prenant en considération rapidement. Les chercheurs peuvent découvrir des conflits aux limites entre le code nouveau et le code existant dès le début, alors qu'ils sont relativement faciles à concilier. Une fois le conflit résolu, le travail peut se poursuivre en sachant que le nouveau code respecte les exigences de la base de code existante. L'objectif est de construire des logiciels plus sains en développant et en testant en petits incréments. De nombreuses équipes trouvent que cette approche réduit considérablement les problèmes d’intégration et permet à une équipe de se développer plus rapidement.

L'intégration de code n'offre souvent aucune garantie quant à la qualité du nouveau code ou fonctionnalité. Cela nous amène au deuxième aspect de la CI. Lorsqu'un développeur fusionne le code dans le dépôt principal, les processus automatisés construisent une version fonctionnelle du projet. Ensuite, les suites de tests sont exécutées sur la nouvelle version pour vérifier si des bogues ont été introduits. Si la compilation ou la phase de test échoue, l'équipe est alertée pour qu'elle puisse résoudre le problème. Il est plus facile de corriger un bug dans quelque chose que vous avez écrit il y a quelques minutes que quelque chose que vous avez écrit hier (ou la semaine dernière, ou le mois dernier).

En s'assurant que votre code est construit et testé régulièrement, CI aide les chercheurs à démontrer que leur code fait ce qu'ils prétendent faire, et qu'il le fait correctement. Typiquement, les serveurs d'intégration continue permettront également aux tâches de construction et de test de s'exécuter à des moments spécifiques, pour qu'une tâche [cron](https://en.wikipedia.org/wiki/Cron), une compilation et un test de nuit puissent être effectués, ainsi qu'une tâche de construction et de test exécutée à la demande.


## Quelles sont les options pour les fournisseurs de services de CI ?

Il existe de nombreux fournisseurs de services de CI tels que GitHub Actions et Travis CI. Chacun de ces services a ses propres avantages et inconvénients. Dans cette section, nous vous proposons un bref aperçu avec des liens vers des exemples pour vous aider à choisir le plus adapté à vos besoins.

 - [Actions GitHub](https://help.github.com/en/actions), pour quelques exemples, voir le [langage et les guides de framework](https://help.github.com/en/actions/language-and-framework-guides) et [ce tutoriel](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
 - [Cercle CI](https://circleci.com/), pour quelques exemples voir [ici](https://circleci.com/docs/2.0/project-walkthrough/) et [ici](https://circleci.com/docs/2.0/hello-world/).
 - [GitLab CI](https://docs.gitlab.com/ee/ci/), pour quelques exemples les [exemples de CI GitLab](https://docs.gitlab.com/ee/ci/examples/README.html) et [ce tutoriel](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
 - [Pipelines Azure](https://azure.microsoft.com/en-us/services/devops/pipelines/), pour quelques exemples voir la page de support de [l'écosystème](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) et [ce tutoriel](https://github.com/trallard/ci-research).
 - [Jenkins](https://www.jenkins.io/), pour quelques exemples voir [ce tutoriel](https://www.jenkins.io/doc/tutorials/)
 - [Travis CI](https://travis-ci.com/), pour quelques exemples le [tutoriel Travis](https://docs.travis-ci.com/user/tutorial/).

Une liste plus exhaustive des fournisseurs de services de CI peut être trouvée [ici](https://www.software.ac.uk/resources/guides/hosted-continuous-integration).
