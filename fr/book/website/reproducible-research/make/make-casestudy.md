(rr-make-casestudy-rp)=

# Étude de cas : Papier reproductible en utilisant Make

Dans le tutoriel ci-dessus, nous avons utilisé les évaluations de films IMDB pour différents genres comme
exemples de données. This data was obtained from a dataset shared on
Kaggle as a CSV file.
Le fichier ressemble à ceci :

```text
fn,tid,title,wordsInTitle,url,imdbRating,ratingCount,duration,year,type,nrOfWins,nrOfNominations,nrOfPhotos,nrOfNewsArticles,nrOfUserReviews,nrOfGenre,Action,Adult,Adventure,Animation,Biography,Comedy,Crime,Documentary,Drama,Family,Fantasy,FilmNoir,GameShow,History,Horror,Music,Musical,Mystery,News,RealityTV,Romance,SciFi,Short,Sport,TalkShow,Thriller,War,Western
titles01/tt0012349,tt0012349,Der Vagabund und das Kind (1921),der vagabund und das kind,http://www.imdb.com/title/tt0012349/,8.4,40550,3240,1921,video.movie,1,0,19,96,85,3,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0015864,tt0015864,Goldrausch (1925),goldrausch,http://www.imdb.com/title/tt0015864/,8.3,45319,5700,1925,video.movie,2,1,35,110,122,3,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0017136,tt0017136,Metropolis (1927),metropolis,http://www.imdb.com/title/tt0017136/,8.4,81007,9180,1927,video.movie,3,4,67,428,376,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0
titles01/tt0017925,tt0017925,Der General (1926),der general,http://www.imdb.com/title/tt0017925/,8.3,37521,6420,1926,video.movie,1,1,53,123,219,3,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```

While on the surface this looks like a regular CSV file, when you try to open
it with the Python CSV library, or Pandas, or R's `read_csv`, or even
`readr:read_csv`, the data is not loaded correctly. This happens because the
CSV file uses an escape character `\` for movie names that have commas in
them and the CSV readers don't automatically detect this variation in the CSV
format.  It turns out that this is quite a common issue for data scientists:
CSV files are often messy and use an uncommon _dialect_: such as strange delimiters and
uncommon quote characters.  Collectivement, les chercheurs de données perdent assez de
temps sur ces problèmes de querelles de données où une intervention manuelle est nécessaire.
But this problem is also not that easy to solve: to a computer a CSV file is
simply a long string of characters and every dialect will give you _some_
table, so how do we determine the dialect accurately in general?

Récemment, les chercheurs de l'Institut Alan Turing ont présenté une méthode
qui atteint 97% de précision sur un large corpus de fichiers CSV, avec une amélioration
de 21% par rapport aux approches existantes sur les fichiers CSV non standard. This research was
made reproducible through the use of Make and is available through an online
repository:
[https://github.com/alan-turing-institute/CSV_Wrangling](https://github.com/alan-turing-institute/CSV_Wrangling).

Ci-dessous nous allons décrire brièvement à quoi ressemble le fichier Makefile pour un tel projet
.  Pour le fichier complet, veuillez consulter le dépôt. Le fichier Makefile se compose de
de plusieurs sections :

1. Data collection: because the data is collected from public sources, the
   repository contains a Python script that allows anyone to download the data
   through a simple `make data` command.

2. All the figures, tables, and constants used in the paper are generated
   based on the results from the experiments. To make it easy to recreate all
   results of a certain type, `.PHONY` targets are included that depend on
   all results of that type (so you could run `make figures`). The rules for
   these outputs follow the same pattern as those for the figures in the
   tutorial above.  Tables are created as LaTeX files so they can be directly
   included in the LaTeX source for the manuscript.

3. Les règles pour les résultats de détection suivent une signature spécifique :

   ```makefile
   $(OUT_DETECT)/out_sniffer_%.json: $(OUT_PREPROCESS)/all_files_%.txt
   	python $(SCRIPT_DIR)/run_detector.py sniffer $(DETECTOR_OPTS) $< $@
   ```

   The `%` symbol is used to create outputs for both sources of CSV files
   with a single rule in {ref}`rr-make-examples-patternrules` and the rule
   uses in {ref}`rr-make-examples-automaticvar` to extract the input and
   output filenames.

4. Some of the cleaning rules will remove output files that take a while to
   create.  Therefore, these depend on a special `check_clean` target that
   asks the user to confirm before proceeding:

   ```makefile
   check_clean:
   	@echo -n "Are you sure? [y/N]" && read ans && [ $$ans == y ]
   ```

Il est important de souligner que ce fichier n'a pas été créé en une seule fois, mais qu'il a été construit de manière itérative
. Le Makefile a commencé comme un moyen d'exécuter plusieurs méthodes de détection
dialectes sur une collection de fichiers d'entrée et s'est progressivement développé pour inclure
la création de figures et de tables à partir des fichiers de résultats. Thus the advice for
using Make for reproducibility is to _start small and start early_.

The published Makefile in the repository does not contain the paper, but this
_is_ included in the internal Makefile and follows the same structure as the
`report.pdf` file in the tutorial above. Cela s'est avéré particulièrement utile pour la collaboration
car seul un seul dépôt devait être partagé qui contient
le code, les résultats et le manuscrit.
