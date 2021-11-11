(rr-make-appendix)=
# Anhang

(rr-make-appendix-dag)=
## Regriertes Acyklisches Diagramm

Ein Directed Acyclic Graph (DAG) ist ein *Graph* von Knoten und Kanten, das ist:

1. *Richtung*: Kanten haben eine Richtung und du kannst nur den Graph in dieser Richtung gehen
2. *acyclic*: enthält keine Zyklen: A cannot depends on B when B depends on A.

Letztere Eigenschaft ist natürlich recht praktisch für ein Build-System. Weitere Informationen zu den DAGs finden Sie unter [Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(rr-make-appendix-installing)=
## Make installieren

Überprüfen Sie zunächst, ob Sie GNU Make bereits installiert haben. In einem Terminaltyp:

```bash
$ make
```

Wenn du `make: Befehl nicht gefunden wurde` (oder ähnlich), hast du kein Make. Wenn erhalten Sie `make: *** Keine Ziele angegeben und keine Makefile gefunden.  Stop.` you do have Make.

Wir werden **GNU Make** in diesem Tutorial verwenden. Vergewissern Sie sich, dass dies das ist, was Sie haben, indem Sie folgendes eingeben:

```bash
$ make --version
```

Wenn Sie GNU Make nicht haben, aber die BSD-Version haben, funktionieren einige Dinge vielleicht nicht wie erwartet und wir empfehlen die Installation von GNU Make.

Um GNU Make zu installieren, folgen Sie bitte diesen Anweisungen:

- **Linux**: Verwenden Sie Ihren Paketmanager, um Make zu installieren. Zum Beispiel auf Bogen Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: Wenn Sie [Homebrew](https://brew.sh/) installiert haben, ist es einfach:

  ```bash
  $ brauen make
  ```

  Wenn Sie eine eingebaute Make Implementation haben, stellen Sie bitte sicher, dass es GNU Make ist, indem Sie `make --version` überprüfen.

(rr-make-appendix-advancedgr)=
## Erweitert: Regeln mit Anruf generieren

*Dieser Abschnitt setzt das obige Tutorial fort und demonstriert eine Funktion von Make für die automatische Generierung von Regeln.*

In einer Datenwissenschaft Pipeline Es kann durchaus üblich sein, mehrere Skripte auf die gleichen Daten anzuwenden (z.B. wenn Sie Methoden vergleichen oder verschiedene Parameter testen). In diesem Fall kann es langweilig werden, eine separate -Regel für jedes Skript zu schreiben, wenn nur der Skriptname geändert wird. Um diesen -Prozess zu vereinfachen, können wir es erlauben, ein sogenanntes [*Konserven* Rezept](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes) zu erweitern.

Um fortzufahren, wechseln Sie zum `voreingenommenen` Zweig:

```bash
$ make clean
$ git stash --all # note the '--all' flag so we also stash the Makefile
$ git checkout vorinstalliert
```

In diesem Zweig werden Sie feststellen, dass es ein neues Skript in den **Skripten** Verzeichnissen namens `generate_qplot.py` gibt. This script works similarly to the `generate_histogram.py` script (it has the same command line syntax), but it generates a [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). Die Datei **report.tex** wurde ebenfalls aktualisiert, um diese plots zu integrieren.

Nach dem Wechsel zum `voreingestellten` Zweig gibt es eine Makefile im Repository, die eine separate Regel zur Generierung der QQ-plots enthält. Das Makefile sieht so aus:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
QQPLOTS = $(patsubst data/%.csv,output/qqplot_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png: data/%.csv scripts/generate_qqplot.py
    python scripts/generate_qqplot.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Sie werden feststellen, dass die Regeln für Histogramme und QQ-Plots sehr ähnlich sind.

Da die Anzahl der Skripte, die Sie auf Ihren Daten ausführen möchten, zunimmt, dies kann zu einer großen Anzahl von Regeln im Makefile führen, die fast genau die gleichen sind. Wir können dies vereinfachen, indem wir ein [*vorgefertigte Rezept erstellen:*](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) , das sowohl den Namen des Skripts als auch den Namen des Genres als Eingabe nimmt:

```makefile
definieren Sie run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    python scripts/generate_$(1).py -i $$< -o $@
beenden
```

Beachten Sie, dass wir in diesem Rezept entweder `$(1)` für `Histogramm` oder `qqplot` und `$(2)` für das Genre verwenden. Diese entsprechen den erwarteten Funktionsargumenten dem `run-script-on-data` vorgegebenen Rezept. Beachten Sie , dass wir `$$<` und `$$@` im eigentlichen Rezept verwenden mit zwei `$` Zeichen zum Escapeen. Um tatsächlich alle Ziele zu erstellen, benötigen wir eine Zeile, die dieses Rezept aufruft.  In unserem Fall verwenden wir eine Doppel-Schleife über die Genres und die Skripte:

```makefile
$(foreach genre,$(GENRES),\
    $(foreach script,$(SCRIPTS),\
        $(eval $(call run-script-on-data,$(script),$(genre))) \
    ) \
)
```

In diesen Zeilen wird das Zeichen `\` verwendet, um lange Linien fortzusetzen.

Das gesamte Makefile wird dann:

```makefile
# Makefile für Analysebericht
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*. sv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QQPLOTS = $(patsubst %,output/qqplot_%. ng,$(GENRES))

GENRES = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histogram qqplot

.PHONY: alle sauber

alle: output/report. df

definieren Sie run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    Python-Skripte_generiert_$(1). y -i $$< -o $@
enden

$(foreach genre,$(GENRES),\
    $(foreach script,$(SCRIPTS),
        $(eval $(call run-script-on-data,$(script),$(genre))\
    )\
)

Ausgabe/Bericht. df: report/report.tex $(HISTOGRAMS) $(QQPLOTS)
    cd report/ && pdflatex report ex && mv Bericht. df ../$@

sauber:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Beachten Sie, dass wir eine `SCRIPTS` Variable mit dem `Histogramm` und `qqplot` Namen hinzugefügt haben. Wenn wir ein weiteres Skript hinzufügen sollten, das dem gleichen Muster folgt wie diese beiden, wir müssten es nur der `SCRIPTS` Variable hinzufügen.

Um all dies zu bauen, starten Sie

```bash
$ make -j 4
```
