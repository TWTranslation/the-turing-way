(rr-make-resources)=
# Ressources pour "Fabriquer"

(rr-make-resources-manual)=
## Manuelle

- [La Référence officielle manuel](https://www.gnu.org/software/make/manual/make.html).

(discussions sur rr-make-resources)=
## Discussions

- [Discussion sur Make sur HackerNews](https://news.ycombinator.com/item?id=15041986).

- [Récursive Make Considered Harmful](http://aegis.sourceforge.net/auug97.pdf). Ceci est un papier bien connu sur les raisons pour lesquelles vous ne devriez pas utiliser de fichiers makefiles imbriqués. Pour résumer : si vous faites cette Make ne peut pas voir le DAG en entier et cela mène à des problèmes.

- [Non-Recursive Make Considered Harmful](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): Ceci est un document de recherche décrivant les défauts de Make pour les grandes et constructions complexes.

(rr-make-resources-blogs)=
## Blogs

Bien sûr, nous ne sommes pas les premiers à suggérer l'utilisation de la marque pour la reproductibilité! Les articles de blog cités ci-dessous ont été trouvés après la rédaction du tutoriel ci-dessus, mais peuvent ajouter d'autres informations et exemples.

- [La reproduction est dure](https://kbroman.wordpress.com/tag/reproducible-research/). Discute pour rendre un projet de recherche reproductible à l'aide de Make.

- [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/). Argues pour utiliser Make for reproducible analysis dans une veine similaire à celle que nous faisons ci-dessus.

- [Pipelines Bioinformatique reproductibles en utilisant Faire](http://byronjsmith.com/make-bml/). Un tutoriel assez complet sur l'utilisation de Make for data analysis.

- [Analyse de données automatique Pipelines](http://stat545.com/automation04_make-activity.html). Un tutoriel similaire qui utilise R pour l'analyse.

- [Écriture d'un papier reproductible](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools). Un tutoriel similaire avec Python utilisant des variables pour remplir les tables dans le manuscrit de .

(rr-make-resources-tools)=
## Outils

- Tracer le DAG du Makefile avec [makefile2graph](https://github.com/lindenb/makefile2graph).

(rr-make-resources-alternatives)=
## Alternatives à faire

Il y a [de nombreuses alternatives à Make](https://en.wikipedia.org/wiki/List_of_build_automation_software). Ci-dessous les sont ceux qui ont attrapé notre œil et qui pourraient en valoir la peine.

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). Une alternative basée sur Python3 à Make. Snakemake supporte plusieurs caractères génériques dans les noms de fichiers, supporte le code Python dans les règles, et peut exécuter des workflows sur des postes de travail, clusters, la grille, et dans le cloud sans modification.

- [Tup](http://gittup.org/tup/index.html). Un système de construction rapide qui traite des prérequis ascendants au lieu du haut vers le bas de Make. La vitesse semble impressionnante et le papier qui la décrit est intéressant, mais pour les petits projets, la vitesse de Make ne sera pas un goulot d'étranglement. La syntaxe Tupfile n'est pas compatible avec celle de Makefiles.

- [Bazel](https://www.bazel.build). Une version open-source du système de compilation Blaze de Google.

- [Buck](https://buckbuild.com/). Système de construction de Facebook.


