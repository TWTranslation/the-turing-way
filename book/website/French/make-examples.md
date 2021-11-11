(rr-make-examples-learnmake)=
# Apprendre "Make" par Exemples

(rr-make-examples-makefiles)=
## Créer des fichiers

L'une des choses qui pourraient décourager quelqu'un d'utiliser Make est que les Makefiles existants peuvent sembler assez complexes, et il peut sembler difficile de l'adapter à vos propres besoins. Dans ce tutoriel pratique, nous allons créer un fichier Makefile à partir de zéro pour un vrai projet d'analyse de données. L'idée est d'expliquer différentes fonctionnalités de Make en itérant plusieurs versions d'un Makefile pour ce projet. Espérons que l'expérience que vous gagnez de ce tutoriel vous permet de créer des Makefiles pour vos propres projets.

Nous allons créer un `Makefile` pour un pipeline d'analyse de données. The task is as follows:

> **Tâche : Compte tenu de certains jeux de données, créez un rapport sommaire (en pdf) qui contient les histogrammes de ces jeux de données.**

(Bien sûr, cette tâche de données est très simple pour se concentrer sur la façon d'utiliser Make.)

*Tout au long du tutoriel les blocs de code qui commencent par un signe dollar (`$`) sont destinés à être tapés dans le terminal.*

(rr-make-examples-settingup)=
### Mise en place

Nous avons créé un dépôt de base pour cette tâche, qui contient déjà tout ce dont nous avons besoin (*excepté le Makefile bien sûr !*). Pour commencer, cloner le dépôt de base en utilisant git :

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

Ce dépôt de base contient tout le code dont nous aurons besoin dans ce tutoriel, et devrait avoir ce contenu:

```text
.
── data/
文─ input_file_1.csv
文<unk> ─ input_file_2.csv
── LICENSE
── output/
── README. d
── rapport/
Ω<unk> ─ report.tex
<unk> ── scripts/
    <unk> ── generate_histogram.py
```

- **données**: répertoire avec deux jeux de données que nous allons analyser
- **rapport**: le répertoire d'entrée du rapport
- **scripts**: répertoire pour le script d'analyse
- **sortie**: répertoire de sortie pour les figures et le rapport

Vous remarquerez qu'il y a deux jeux de données dans le répertoire **data** (`input_file_1.csv` et `input_file_2. sv`) et qu'il y a déjà un script Python de base dans **scripts** et un rapport de base LaTeX dans **rapport**.

Si vous voulez suivre, assurez-vous que vous avez les paquets `matplotlib` et `numpy` installés :

```bash
$ pip install matplotlib numpy
```

Vous aurez également besoin d'une version fonctionnelle de `pdflatex` et, bien sûr, de `make`.

Pour des instructions d'installation pour Make, voir {ref}`rr-make-appendix-installation`.

(rr-make-examples-makefile1)=
### Fichier n° 1 (Les bases)

Créons notre premier fichier Makefile. Dans le terminal, allez dans le dépôt `IntroToMake` que vous venez de cloner :

```bash
$ cd Introduction à faire
```

En utilisant votre éditeur favori, créez un fichier appelé `Makefile` avec le contenu suivant :

```makefile
# Makefile pour le rapport d'analyse

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram. y
    scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report. ex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
L'indentation dans chacune des recettes sont des tabulations ******, Makefiles n'accepte pas indentation avec des espaces.

Vous devriez maintenant pouvoir taper :

```bash
$ make output/report.pdf
```

Si tout a fonctionné correctement, les deux figures seront créées et le rapport PDF sera construit.

Passons en revue le fichier Makefile dans un peu plus de détails. Nous avons trois règles, deux pour les chiffres et une pour le rapport. Regardons d'abord la règle pour `output/figure_1.png`. Cette règle a la cible `output/figure_1.png` qui a deux prérequis : `data/input_file_1.csv` et `scripts/generate_histogram.py`. En donnant au fichier de sortie ces conditions préalables, il sera mis à jour si l'un de ces fichiers change. This is one of the reasons why Make was created: to update output files when source files change.

Vous remarquerez que la ligne de recette appelle Python avec le nom du script et utilise flags de ligne de commande (`-i` et `-o`) pour marquer l'entrée et la sortie du script . Ce n'est pas une condition pour utiliser Make, mais il rend facile de voir quel fichier est une entrée dans le script et qui est une sortie.

La règle pour le rapport PDF est très similaire, mais elle a trois conditions préalables (la source LaTeX et les deux chiffres). Notez que la recette change le répertoire de travail avant d'appeler LaTeX et déplace également le PDF généré vers le répertoire de sortie . Nous faisons cela pour conserver les fichiers intermédiaires LaTeX dans le dossier de rapport . Cependant, il est important de distinguer la règle ci-dessus de ce qui suit :

```makefile
# ne faites pas ceci
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

Cette règle place les trois commandes sur des lignes séparées. Cependant, **Faire exécute chaque ligne indépendamment** dans un sous-interpréteur séparé, donc le changement du répertoire de travail de la première ligne n'a aucun effet sur la seconde, et un échec dans la deuxième ligne n'empêchera pas l'exécution de la troisième ligne. Par conséquent, nous combinons les trois commandes en une seule recette ci-dessus.

C'est à quoi ressemble l'arborescence des dépendances pour ce Makefile :

![DAG pour le fichier Makefile n° 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">Le graphe de dépendance pour notre premier Makefile, créé en utilisant [makefile2graph](https://github.com/lindenb/makefile2graph). Remarquez la similitude avec la figure {ref}`dans l'introduction<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=
### Fichier n° 2 (tout et propre)

Dans notre premier fichier Makefile nous avons les règles de base en place. Nous pourrions nous en tenir à si nous le voulions, mais il y a quelques améliorations que nous pouvons faire:

1. Nous devons maintenant appeler explicitement `make output/report.pdf` si nous voulons faire le rapport.

2. Nous n'avons aucun moyen de nettoyer et de recommencer à zéro.

Réparons cela en ajoutant deux nouvelles cibles : `all` et `clean`. Dans votre éditeur , modifiez le contenu du fichier Makefile pour ajouter les règles `toutes les règles` et `nettoyer` comme :

```makefile
# Makefile for analysis report

all : output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report. ex && mv report.pdf ../output/report. df

propre :
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Notez que nous avons ajouté la cible `toutes` en haut du fichier. Nous faisons ceci car Make exécute la cible *première* si aucune cible explicite n'est donnée.  Donc vous pouvez maintenant taper `make` sur la ligne de commande et il ferait la même chose que `faire toutes`.  Aussi, notez que nous n'avons ajouté le rapport que comme condition préalable sur `tout le` parce que c'est notre sortie désirée et les autres règles aident à construire cette sortie. Si vous avez plusieurs sorties, vous pouvez les ajouter en tant que prérequis supplémentaires à la cible `toutes` la cible. Appeler la cible principale `tous` est une convention de Makefiles que beaucoup de gens suivent.

La règle `propre` est généralement en bas, mais c'est plus de style que obligatoire. Notez que nous utilisons le drapeau `-f` à `rm` pour nous assurer qu'il ne se plaint pas lorsqu'il n'y a pas de fichier à supprimer.

Vous pouvez essayer le nouveau Makefile en exécutant :

```bash
$ rendre propre
$
```

Make devrait supprimer les fichiers de sortie et intermédiaires après la première commande, et les générer à nouveau après la seconde.

(rr-make-examples-makefile3)=
### Fichier de fabrication n° 3 (Phony Targets)

Généralement, `toutes les` et `propres` sont définies comme des cibles [Phony ](https://www.gnu.org/software/make/manual/make.html#Phony-Targets). Ce sont des cibles qui ne créent pas de fichier de sortie. S'il n'est pas marqué comme `. HONY` ces cibles seraient toujours exécutées si elles apparaissent dans une dépendance, mais ne sera plus exécuté si un répertoire / fichier est jamais créé qui est appelé `all` ou `clean`. Nous ajoutons donc une ligne en haut du Makefile pour définir ces deux cibles en tant que fictives :

```makefile
# Makefile for analysis report

.PHONY : all clean

all : output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report. ex && mv report.pdf ../output/report. df

propre :
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Les cibles Phony sont également utiles lorsque vous voulez utiliser Make récursivement. Dans ce cas , vous spécifierez les sous-répertoires comme des cibles fausses. Vous pouvez en savoir plus sur [fausses cibles dans la documentation ](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), mais pour l'instant, il suffit de savoir que `tous les` et `propres` sont typiquement déclarés comme bidons.

> Sidenote : une autre cible qui est généralement maladroite est **test**, au cas où vous avez un répertoire de tests appelé **test** et que vous voulez avoir une cible pour les exécuter qui s'appelle aussi **test**.

(rr-make-examples-makefile4)=
### Fichier Makefile no. 4 (Règles de variables et de modèles automatiques)

Il n'y a rien de mal avec le fichier Makefile que nous avons maintenant, mais il est quelque peu verbeux car nous avons déclaré toutes les cibles explicitement en utilisant des règles séparées. Nous pouvons simplifier cela en utilisant [Automatic Variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) et [Modèles Règles](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(rr-make-examples-automaticvar)=
#### Variables automatiques.

Avec les variables automatiques, nous pouvons utiliser les noms des prérequis et des cibles dans la recette. Voici comment nous pourrions le faire pour les règles de la figure :

```makefile
# Makefile for analysis report

.PHONY : all clean

all : output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram. y
    scripts python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    scripts python scripts/generate_histogram. y -i $< -o $@

output/report.pdf: report/report.tex output/figure_1. ng output/figure_2.png
    rapport cd/ && rapport pdflatex. ex && mv report.pdf ../output/report. df

clean :
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Nous avons remplacé les noms de fichiers d'entrée et de sortie des recettes respectivement par `$<`, qui indique le *premier* prérequis et `$@` qui indique la cible **. Vous pouvez vous souvenir de `$<` car c'est comme une flèche qui pointe vers le début (*premier* préalable), et vous pouvez vous souvenir de `$@` (dollar *à*) [comme la cible que vous visez *à*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/).

Il y a plus de variables automatiques que vous pourriez utiliser, voir [la documentation ](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).

(rr-make-examples-patternrules)=
#### Règles de motif

Notez que les recettes des figures sont devenues identiques !  Parce que nous n'aimons pas nous répéter, nous pouvons combiner les deux règles en une seule règle en utilisant *les règles de patron*. Les règles de modèle vous permettent d'utiliser le symbole `%` comme un joker et de combiner les deux règles en une seule :

```makefile
# Makefile for analysis report

.PHONY : all clean

all : output/report.pdf

output/figure_%.png: data/input_file_%. sv scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@

output/report. df: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report. df ../output/report.pdf

propre :
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Le symbole `%` est maintenant un joker qui (dans notre cas) prend la valeur `1` ou `2` basée sur les fichiers d'entrée dans le répertoire `données`. Vous pouvez vérifier que tout fonctionne encore en exécutant `make clean` suivi de `make`.

Un avantage de ceci est que si vous voulez maintenant ajouter un autre jeu de données, disons `input_file_3`, alors vous n'aurez qu'à ajouter cela à la règle pour le rapport !

(rr-make-examples-makefile5)=
### Fichier de création no. 5 (jokers et substitutions de chemins)

Lorsque Makefiles devient plus complexe, vous pouvez utiliser des fonctionnalités plus avancées telles que la construction de sorties pour tous les fichiers dans un répertoire d'entrée. Tandis que règles de patron vous mèneront un long chemin, Make a également des fonctionnalités pour les jokers et la manipulation de chaîne de caractères ou de chemin pour lorsque les règles de masque sont insuffisantes.

Alors qu'auparavant nos fichiers d'entrée étaient numérotés, nous allons maintenant passer à un scénario où ils ont des noms plus significatifs. Passons à la branche `big_data` :

```bash
$ git checkout big_data # extraire la branche big_data
```

La structure des répertoires ressemble maintenant à ceci :

```text
─ ─ données/
文─ ─ action.csv
── ─ ─ ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
★ <unk> ─ western.csv
── LICENSE
── output/
── README.md
── rapport/
文<unk> ─ report.tex
<unk> ── scripts/
    <unk> ── generate_histogram.py
```

Comme vous pouvez le voir, le répertoire **data** contient maintenant des fichiers d'entrée supplémentaires qui sont nommés plus significativement (les données sont des évaluations de films IMBD par genre). En outre, le fichier **report.tex** a été mis à jour pour fonctionner avec les chiffres attendus.

Nous adapterons notre Makefile pour créer une figure dans le répertoire de sortie appelé `histogram_{genre}. ng` pour chaque fichier `{genre}.csv` , tout en excluant les `fichiers entrée_{N}.csv`.

> Sidenote : si nous supprimions les fichiers `input_file_{N}.csv` , les règles de patron suffiraient ici. Cela souligne que parfois votre structure de répertoire et Makefile doivent être développés main dans la main.

Avant de changer le Makefile, exécutez

```bash
$ rendre propre
```
pour supprimer les fichiers de sortie.

Nous allons d'abord afficher le fichier Makefile complet, puis décrire les différentes lignes en plus de détails. Le fichier complet est :

```makefile
# Makefile pour le rapport d'analyse
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*. sv)
DATA = $(filter $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/input_file_%. sv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%. ng: data/input_file_%.csv scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report. ex $(FIGURES)
    cd report/ && pdflatex report.tex && mv rapport. df ../$@

propre :
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Tout d'abord, nous utilisons la fonction `joker` pour créer une variable qui liste tous les fichiers CSV dans le répertoire de données et un qui ne liste que l'ancien `input_file_{N}. fichiers sv`:

```makefile
ALL_CSV = $(joker data/*.csv)
INPUT_CSV = $(joker data/input_file_*.csv)
```

Une convention de code pour Makefiles est d'utiliser toutes les majuscules pour les noms de variables et les définir en haut du fichier.

Ensuite, nous créons une variable pour lister uniquement les fichiers de données qui nous intéressent en filtrant le `INPUT_CSV` de `ALL_CSV`:

```makefile
DONNÉES = $(filtrer $(INPUT_CSV),$(ALL_CSV))
```

Cette ligne utilise la fonction [`filtre`](https://www.gnu.org/software/make/manual/make.html#index-filter) pour supprimer les éléments qui ne correspondent pas à la variable `INPUT_CSV` de la variable `ALL_CSV` .  Notez que nous utilisons à la fois la syntaxe `$( ... )` pour les fonctions et les variables . Enfin, nous utiliserons la variable `DATA` pour créer une variable `FIGURES` avec la sortie désirée :

```makefile
FIGURES = $(données patsubsta/%.csv,output/figure_%.png,$(DATA))
```

Ici, nous avons utilisé la fonction [`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) pour transformer l'entrée dans la variable `DATA` (qui suit les données `/{genre}. sv` pattern) aux noms de fichiers désirés (en utilisant le modèle `output/figure_{genre}.png`). Notez que le caractère `%` marque la partie du nom de fichier qui sera la même dans l'entrée et la sortie.

Maintenant nous utilisons ces variables pour la règle de génération de chiffres comme suit:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@
```

Cette règle applique à nouveau un patron : elle prend une liste de cibles (`$(FIGURES)`) qui suivent tous un patron donné (`output/figure_%. ng`) et basé sur cela crée un pré-requis (`data/%.csv`). Une telle règle de pratique est légèrement différente de celle que nous avons vue précédemment car elle utilise deux symboles `:`. It is called a [static pattern rule](https://www.gnu.org/software/make/manual/make.html#Static-Pattern).

Bien sûr, nous devons également mettre à jour la règle `report.pdf`:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

et la règle `clean`:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Si vous exécutez ce Makefile, il devra construire 28 chiffres. Vous pouvez utiliser le drapeau `-j` pour `faire` pour construire ces cibles **en parallèle !**

```bash
$ make -j 4
```

La capacité de construire des cibles en parallèle est assez utile lorsque votre projet a de nombreuses dépendances !

Le fichier PDF qui en résulte devrait maintenant ressembler à ceci :

![Signaler avec tous les genres](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">Une vue compressée du rapport avec histogrammes pour tous les genres.</small>
