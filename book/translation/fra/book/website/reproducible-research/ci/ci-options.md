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

En s'assurant que votre code est construit et testé régulièrement, CI aide les chercheurs à démontrer que leur code fait ce qu'ils prétendent faire, et qu'il le fait correctement. Typically, continuous integration servers will also allow build-and-test jobs to run at specific times, so a [cron job](https://en.wikipedia.org/wiki/Cron), nightly-build-and-test, can be done, as well as a build-and-test job run on-demand.

## Some options for CI service providers, covering the most often used ones

There are many CI service providers readily available, providing free access for open, public projects. Each of these
services however has its own advantages and disadvantages.  In this section we provide a brief overview with links to
examples to help you select the most suitable one for you.  Alternatively a few systems also provide the option of self-hosting.

- [GitHub Actions](https://help.github.com/en/actions), for some examples see the [language and framework guides](https://help.github.com/en/actions/language-and-framework-guides) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
- [GitLab CI](https://docs.gitlab.com/ee/ci/), for some examples the [GitLab CI examples](https://docs.gitlab.com/ee/ci/examples/README.html) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
- [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), for some examples see the [ecosystem support page](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) and [this tutorial](https://github.com/trallard/ci-research).
- [Circle CI](https://circleci.com/), for getting started visit [this circleCI project tutorial](https://circleci.com/docs/2.0/project-walkthrough/) or [these shorter "Hello World" examples](https://circleci.com/docs/2.0/hello-world/).
- [Jenkins](https://www.jenkins.io/), for some examples the see [this tutorial](https://www.jenkins.io/doc/tutorials/)
- [Travis CI](https://travis-ci.com/), for some examples the [Travis tutorial](https://docs.travis-ci.com/user/tutorial/).

A more extensive list of CI service providers can be found in [this guide](https://www.software.ac.uk/resources/guides/hosted-continuous-integration)
provided by the Software Sustainability Institute.
