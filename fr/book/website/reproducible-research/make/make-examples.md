(rr-make-examples-learnmake)=

# Apprendre "Make" par Exemples

(rr-make-examples-makefiles)=

## Créer des fichiers

L'une des choses qui pourraient décourager quelqu'un d'utiliser Make est que
les Makefiles existants peuvent sembler assez complexes, et il peut sembler difficile de
l'adapter à vos propres besoins. Dans ce tutoriel pratique, nous allons créer un
fichier Makefile à partir de zéro pour un vrai projet d'analyse de données. L'idée est d'expliquer
différentes fonctionnalités de Make en itérant plusieurs versions d'un Makefile
pour ce projet. Espérons que l'expérience que vous gagnez de ce tutoriel
vous permet de créer des Makefiles pour vos propres projets.

We will create a `Makefile` for a data analysis pipeline. The task is as
follows:

> **Task: Given some datasets, create a summary report (in pdf) that contains
> the histograms of these datasets.**

(Bien sûr, cette tâche de données est très simple pour se concentrer sur la façon d'utiliser Make.)

_Throughout the tutorial code blocks that start with a dollar sign (`$`) are
intended to be typed in the terminal._

(rr-make-examples-settingup)=

### Mise en place

We have created a basic repository for this task, that already contains
everything that we need (_except the Makefile of course!_). Pour commencer, cloner
le dépôt de base en utilisant git :

```bash
git clone https://github.com/alan-turing-institute/IntroToMake
```

Ce dépôt de base contient tout le code dont nous aurons besoin dans ce tutoriel,
et devrait avoir ce contenu:

```text
.
├── data/
│   ├── input_file_1.csv
│   └── input_file_2.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

- **data**: directory with two datasets that we're going to analyse
- **report**: the input directory for the report
- **scripts**: directory for the analysis script
- **output**: output directory for the figures and the report

You'll notice that there are two datasets in the **data** directory
(`input_file_1.csv` and `input_file_2.csv`) and that there is already a
basic Python script in **scripts** and a basic report LaTeX file in
**report**.

If you want to follow along, ensure that you have the `matplotlib` and
`numpy` packages installed:

```bash
pip install matplotlib numpy
```

You will also need a working version of `pdflatex` and, of course, `make`.

For installation instructions for Make, see {ref}`rr-make-appendix-installing`.

(rr-make-examples-makefile1)=

### Fichier n° 1 (Les bases)

Créons notre premier fichier Makefile. In the terminal, move into the
`IntroToMake` repository that you just cloned:

```bash
cd IntroToMake
```

Using your favourite editor, create a file called `Makefile` with the
following contents:

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```

The indentation in each of the recipes are _**tabs**_, Makefiles do not accept
indentation with spaces.

Vous devriez maintenant pouvoir taper :

```bash
make output/report.pdf
```

Si tout a fonctionné correctement, les deux figures seront créées et le rapport PDF
sera construit.

Passons en revue le fichier Makefile dans un peu plus de détails. Nous avons trois règles, deux
pour les chiffres et une pour le rapport. Let's look at the rule for
`output/figure_1.png` first. This rule has the target
`output/figure_1.png` that has two prerequisites: `data/input_file_1.csv`
and `scripts/generate_histogram.py`. En donnant au fichier de sortie ces
conditions préalables, il sera mis à jour si l'un de ces fichiers change. This is one
of the reasons why Make was created: to update output files when source files
change.

You'll notice that the recipe line calls Python with the script name and uses
command line flags (`-i` and `-o`) to mark the input and output of the
script. Ce n'est pas une condition pour utiliser Make, mais il rend facile de voir
quel fichier est une entrée dans le script et qui est une sortie.

La règle pour le rapport PDF est très similaire, mais elle a trois conditions préalables
(la source LaTeX et les deux chiffres). Notez que la recette change le répertoire de travail
avant d'appeler LaTeX et déplace également le PDF généré vers le répertoire de sortie
. Nous faisons cela pour conserver les fichiers intermédiaires LaTeX dans le dossier de rapport
. Cependant, il est important de distinguer la règle ci-dessus de
ce qui suit :

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/
	pdflatex report.tex
	mv report.pdf ../output/report.pdf
```

Cette règle place les trois commandes sur des lignes séparées. However, **Make
executes each line independently** in a separate subshell, so changing the
working directory in the first line has no effect on the second, and a failure
in the second line won't stop the third line from being executed. Par conséquent,
nous combinons les trois commandes en une seule recette ci-dessus.

C'est à quoi ressemble l'arborescence des dépendances pour ce Makefile :

![DAG for Makefile no. 1](../../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">The
dependency graph for our first Makefile, created using
[makefile2graph](https://github.com/lindenb/makefile2graph). Remarquez la similitude
avec la figure {ref}`dans l'introduction<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=

### Fichier n° 2 (tout et propre)

Dans notre premier fichier Makefile nous avons les règles de base en place. Nous pourrions nous en tenir à
si nous le voulions, mais il y a quelques améliorations que nous pouvons faire:

1. We now have to explicitly call `make output/report.pdf` if we want to
   make the report.

2. Nous n'avons aucun moyen de nettoyer et de recommencer à zéro.

Let's remedy this by adding two new targets: `all` and `clean`. In your
editor, change the Makefile contents to add the `all` and `clean` rules as
follows:

```makefile
# Makefile for analysis report

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Note that we've added the `all` target to the top of the file. We do this
because Make executes the _first_ target when no explicit target is given.  So
you can now type `make` on the command line and it would do the same as
`make all`.  Also, note that we've only added the report as the prerequisite
of `all` because that's our desired output and the other rules help to build
that output. If you have multiple outputs, you could add these as further
prerequisites to the `all` target. Calling the main target `all` is a
convention of Makefiles that many people follow.

The `clean` rule is typically at the bottom, but that's more style than
requirement. Note that we use the `-f` flag to `rm` to make sure it
doesn't complain when there is no file to remove.

Vous pouvez essayer le nouveau Makefile en exécutant :

```bash
make clean
make
```

Make devrait supprimer les fichiers de sortie et intermédiaires après la première commande,
et les générer à nouveau après la seconde.

(rr-make-examples-makefile3)=

### Fichier de fabrication n° 3 (Phony Targets)

Typically, `all` and `clean` are defined as so-called Phony
Targets.
Ce sont des cibles qui ne créent pas de fichier de sortie. If not marked as `.PHONY` these targets would
always be run if they come up in a dependency, but will no longer be run if a
directory/file is ever created that is called `all` or `clean`. Nous
ajoutons donc une ligne en haut du Makefile pour définir ces deux cibles en tant que
fictives :

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Les cibles Phony sont également utiles lorsque vous voulez utiliser Make récursivement. Dans ce cas
, vous spécifierez les sous-répertoires comme des cibles fausses. You can read more
about phony targets in the
documentation,
but for now it's enough to know that `all` and `clean` are typically
declared as phony.

> Sidenote: another target that's typically phony is **test**, in case you
> have a directory of tests called **test** and want to have a target to run
> them that's also called **test**.

(rr-make-examples-makefile4)=

### Fichier Makefile no. 4 (Règles de variables et de modèles automatiques)

Il n'y a rien de mal avec le fichier Makefile que nous avons maintenant, mais il est quelque peu verbeux
car nous avons déclaré toutes les cibles explicitement en utilisant des règles séparées. We can
simplify this by using Automatic
Variables
and Pattern
Rules.

(rr-make-examples-automaticvar)=

#### Variables automatiques.

Avec les variables automatiques, nous pouvons utiliser les noms des
prérequis et des cibles dans la recette. Voici comment nous pourrions le faire pour les règles de la figure
:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

We've replaced the input and output filenames in the recipes respectively by
`$<`, which denotes the _first_ prerequisite and `$@` which denotes the
_target_. You can remember `$<` because it's like an arrow that points to
the beginning (_first_ prerequisite), and you can remember `$@` (dollar
_at_) as the target you're aiming
.

There are more automatic variables that you could use, see the
documentation.

(rr-make-examples-patternrules)=

#### Règles de motif

Notez que les recettes des figures sont devenues
identiques !  Because we don't like to repeat ourselves, we can combine the two
rules into a single rule by using _pattern rules_. Pattern rules allow you to
use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

The `%` symbol is now a wildcard that (in our case) takes the value `1` or
`2` based on the input files in the `data` directory. You can check that
everything still works by running `make clean` followed by `make`.

An advantage of this is that if you now want to add another dataset, say
`input_file_3`, then you would only need to add that to the rule for the
report!

(rr-make-examples-makefile5)=

### Fichier de création no. 5 (jokers et substitutions de chemins)

Lorsque Makefiles devient plus complexe, vous pouvez utiliser des fonctionnalités plus avancées
telles que la construction de sorties pour tous les fichiers dans un répertoire d'entrée. Tandis que
règles de patron vous mèneront un long chemin, Make a également des fonctionnalités pour les jokers
et la manipulation de chaîne de caractères ou de chemin pour lorsque les règles de masque sont insuffisantes.

Alors qu'auparavant nos fichiers d'entrée étaient numérotés, nous allons maintenant passer à un scénario
où ils ont des noms plus significatifs. Let's switch over to the `big_data`
branch:

```bash
git checkout big_data         # checkout the big_data branch
```

La structure des répertoires ressemble maintenant à ceci :

```text
├── data/
│   ├── action.csv
│   ├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
│   └── western.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

As you can see, the **data** directory now contains additional input files
that are named more meaningfully (the data are IMBD movie ratings by genre).
Also, the **report.tex** file has been updated to work with the expected
figures.

We'll adapt our Makefile to create a figure in the output directory called
`histogram_{genre}.png` for each `{genre}.csv` file, while excluding the
`input_file_{N}.csv` files.

> Sidenote: if we were to remove the `input_file_{N}.csv` files, pattern
> rules would be sufficient here. This highlights that sometimes your
> directory structure and Makefile should be developed hand in hand.

Avant de changer le Makefile, exécutez

```bash
make clean
```

pour supprimer les fichiers de sortie.

Nous allons d'abord afficher le fichier Makefile complet, puis décrire les différentes lignes en
plus de détails. Le fichier complet est :

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

First, we use the `wildcard` function to create a variable that lists all
the CSV files in the data directory and one that lists only the old
`input_file_{N}.csv` files:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

Une convention de code pour Makefiles est d'utiliser toutes les majuscules pour les noms de variables et
les définir en haut du fichier.

Next, we create a variable to list only the data files that we're interested
in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
```

This line uses the
[`filter-out`](https://www.gnu.org/software/make/manual/make.html#index-filter_002dout)
function to remove items in the `INPUT_CSV` variable from the `ALL_CSV`
variable.  Note that we use both the `$( ... )` syntax for functions and
variables. Finally, we'll use the `DATA` variable to create a `FIGURES`
variable with the desired output:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Here we've used the
[`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1)
function to transform the input in the `DATA` variable (that follows the
`data/{genre}.csv` pattern) to the desired output filenames (using the
`output/figure_{genre}.png` pattern). Notice that the `%` character marks
the part of the filename that will be the same in both the input and output.

Maintenant nous utilisons ces variables pour la règle de génération de chiffres comme suit:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@
```

This rule again applies a pattern: it takes a list of targets (`$(FIGURES)`)
that all follow a given pattern (`output/figure_%.png`) and based on that
creates a prerequisite (`data/%.csv`). Such a pattern rule is slightly
different from the one we saw before because it uses two `:` symbols. It is
called a static pattern
rule.

Of course we have to update the `report.pdf` rule as well:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

and the `clean` rule:

```makefile
clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

Si vous exécutez ce Makefile, il devra construire 28 chiffres. You may want to
use the `-j` flag to `make` to build these targets **in parallel!**

```bash
make -j 4
```

La capacité de construire des cibles en parallèle est assez utile lorsque votre projet a
de nombreuses dépendances !

Le fichier PDF qui en résulte devrait maintenant ressembler à ceci :

![Report with all genres](../../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">A compressed
view of the report with histograms for all genres.</small>
