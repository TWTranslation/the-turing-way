(rr-make-appendix)=
# Annexe

(rr-make-appendix-dag)=
## Graphique Acyclic Directé

Un graphique Acyclic dirigé (DAG) est un *graphe* de noeuds et de bords qui est :

1. *orienté*: les bords ont une direction et vous ne pouvez marcher le graphique que dans cette direction
2. *acyclique*: ne contient pas de cycles : A ne peut pas dépendre de B quand B dépend de A.

La dernière propriété est bien sûr très pratique pour un système de construction. Plus d'informations sur les DAGs peuvent être trouvées sur [Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(installation rr-make-appendix-)=
## Installation de la marque

Tout d'abord, vérifiez si GNU Make est déjà installé. Dans un type de terminal :

```bash
$ faire
```

Si vous obtenez `make: commande introuvable` (ou similaire), vous n'avez pas Make. Si vous obtenez `faire : *** Aucune cible spécifiée et aucun fichier makefile trouvé.  Arrêtez.` vous avez Make.

Nous utiliserons **GNU Make** dans ce tutoriel. Vérifiez que c'est ce que vous avez en tapant :

```bash
$ make --version
```

Si vous n'avez pas GNU Make mais que vous avez la version BSD, certaines choses peuvent ne pas fonctionner comme prévu et nous vous recommandons d'installer GNU Make.

Pour installer GNU Make, veuillez suivre ces instructions :

- **Linux**: Utilisez votre gestionnaire de paquets pour installer Make. Par exemple sur Arch Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: Si vous avez [Homebrew](https://brew.sh/) installé, c'est simple:

  ```bash
  $ installation de breuvage make
  ```

  Si vous avez une implémentation builtin Make builtin, assurez-vous que c'est GNU Make en vérifiant `make --version`.

(rr-make-appendix-advancedgr)=
## Avancé : Générer des règles en utilisant un appel

*Cette section continue le tutoriel ci-dessus et démontre une fonctionnalité de Make pour la génération automatique de règles.*

Dans un pipeline de science des données, il peut être assez courant d'appliquer plusieurs scripts aux mêmes données (par exemple lorsque vous comparez des méthodes ou testez des paramètres différents). Dans ce cas, il peut devenir fastidieux d'écrire une règle séparée pour chaque script lorsque seul le nom du script change. Pour simplifier ce processus , nous pouvons laisser faire développer une recette dite de [*en conserve* ](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes).

Pour suivre, passez à la branche `en conserve`:

```bash
$ rendre propre
$ git stash --all # note le drapeau '--all' donc nous avons aussi mis le Makefile
$ git checkout en conserve
```

Sur cette branche, vous remarquerez qu'il y a un nouveau script dans le répertoire **scripts** appelé `generate_qqplot.py`. Ce script fonctionne de la même manière que le générateur `de l'histogramme. y` script (il a la même syntaxe de ligne de commande), mais génère un [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). Le fichier **report.tex** a également été mis à jour pour incorporer ces parcelles.

Après avoir basculé vers la branche `en conserve` , il y aura un fichier Makefile dans le dépôt qui contient une règle séparée pour générer les QQ-plots. Ce Makefile ressemble à ceci :

```makefile
# Makefile pour le rapport d'analyse
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%. ng,$(DATA))
QQQPLOTS = $(patsubst data/%.csv,output/qqqplot_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram. y
    scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png : data/%. sv scripts/generate_qqplot.py
    scripts/generate_qqplot.py -i $< -o $@

output/report. df: rapport/report.tex $(FIGURES)
    rapport cd/ && rapport pdflatex. ex && mv rapport. df ../$@

propre:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Vous remarquerez que les règles pour les histogrammes et les QQ-plots sont très similaires.

Au fur et à mesure que le nombre de scripts que vous voulez exécuter sur vos données augmente, ceci peut conduire à un grand nombre de règles dans le Makefile qui sont presque exactement les mêmes. Nous pouvons simplifier cela en créant une recette en conserve de [**](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) qui prend à la fois le nom du script et le nom du genre en entrée :

```makefile
définir run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    scripts python générés_$(1).py -i $$< -o $$@
endef
```

Notez que dans cette recette nous utilisons `$(1)` pour `l'histogramme` ou `qqplot` et `$(2)` pour le genre. Celles-ci correspondent aux arguments de la fonction attendue à la recette consignée `run-script-on-data`. Aussi, notez que nous utilisons `$$<` et `$$@` dans la recette réelle, avec deux symboles `$` pour échapper. Pour créer toutes les cibles, nous avons besoin d'une ligne qui appelle cette recette en conserve.  Dans notre cas, nous utilisons une boucle double sur les genres et les scripts :

```makefile
$(genre,$(GENRES),\
    $(script foreach,$(SCRIPTS),\
        $(eval $(call run-script-on-data,$(script),$(genre))) \
    ) \
)
```

Sur ces lignes, le caractère `\` est utilisé pour poursuivre de longues lignes.

Le fichier Makefile complet devient alors :

```makefile
# Makefile pour le rapport d'analyse
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*. sv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QQPLOTS = $(patsubst %,output/qqplot_%. ng,$(GENRES))

GENRES = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histogramme qqplot

.PHONY: all clean

all: output/report. df

définit run-script-on-data
output/$(1)_$(2).png : data/$(2).csv scripts/generate_$(1). y
    scripts/générer_$(1). y -i $$< -o $$$@
endef

$(genre,$(GENRES),\
    $(script foreach,$(SCRIPTS),
        $(eval $(call run-script-on-data,$(script),$(genre))))\
    )\
)

rapport/sortie. df: rapport/report.tex $(HISTOGRAMS) $(QQPLOTS)
    cd rapport/ && rapport pdflatex. rapport ex && mv. df ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Notez que nous avons ajouté une variable `SCRIPTS` avec les noms `histogramme` et `qqplot`. Si nous devions ajouter un autre script qui suit le même modèle que ces deux, nous n'aurions besoin que de l'ajouter à la variable `SCRIPTS` .

Pour compiler tout cela, exécutez

```bash
$ make -j 4
```
