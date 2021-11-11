(rr-make-examples-learnmake)=
# Lernen Sie "Make" nach Beispielen

(rr-make-examples-makefiles)=
## Makefiles

Eine der Dinge, die jemanden davon abhalten könnte, Make zu verwenden, ist, dass existierende Makefiles ziemlich komplex aussehen, und es mag schwierig erscheinen, eine an Ihre eigenen Bedürfnisse anzupassen. In diesem praktischen Tutorial erstellen wir von Grund auf ein Makefile für ein echtes Datenanalyseprojekt. Die Idee ist verschiedene Funktionen von Make zu erklären, indem Sie mehrere Versionen einer Makefile für dieses Projekt durchlaufen. Die Erfahrung, die Sie durch dieses Tutorial gewinnen, ermöglicht es Ihnen, Makefiles für Ihre eigenen Projekte zu erstellen.

Wir erstellen eine `Makefile` für eine Datenanalyse-Pipeline. Die Aufgabe ist wie :

> **Aufgabe: Erstellen Sie mit einigen Datensätzen einen zusammenfassenden Bericht (im pdf), der die Histogramme dieser Datensätze enthält.**

(Natürlich ist diese Datenaufgabe sehr einfach zu fokussieren, wie man Make nutzt.)

*Während des Tutorials Code Blöcke, die mit einem Dollarzeichen beginnen (`$`) sind für die Eingabe im Terminal vorgesehen.*

(rr-make-examples-settingup)=
### Einrichten

Wir haben ein grundlegendes Repository für diese Aufgabe erstellt, das bereits alles enthält, was wir brauchen (*mit Ausnahme der Makefile natürlich!*). Um zu starten, klone das Basis-Repository mit git:

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

Dieses Basis-Repository enthält den Code, den wir in diesem Tutorial benötigen, und sollte folgenden Inhalt haben:

```text
.
<unk> 文<unk> data/
<unk> <unk> <unk> <unk> <unk> <unk> input_file_1.csv
<unk> <unk> <unk> 本<unk> input_file_2.csv
<unk> 本<unk> LICENSE
<unk> <unk> <unk> <unk> <unk> <unk> Ausgabe/
<unk> 本<unk> README. d
<unk> 本<unk> report/
<unk> <unk> <unk> <unk> 日<unk> report.tex
<unk> 本<unk> Scripts/
    <unk> <unk> <unk> generate_histogram.py
```

- **Daten**: Verzeichnis mit zwei Datensätzen, die wir analysieren werden
- **Bericht**: Das Eingabeverzeichnis für den Bericht
- **Skripte**: Verzeichnis für das Analyseskript
- **Ausgabe**: Ausgabeverzeichnis für die Zahlen und den Bericht

Sie werden feststellen, dass es im **Datenverzeichnis** zwei Datensätze gibt (`input_file_1.csv` und `input_file_2. sv`) und dass es bereits ein einfaches Python-Skript in **Skripten** und eine einfache Report-LaTeX-Datei im **Report** gibt.

Wenn Sie fortfahren möchten, stellen Sie sicher, dass Sie die `matplotlib` und `numpy` Pakete installiert haben:

```bash
$ pip install matplotlib numpy
```

Sie benötigen auch eine funktionierende Version von `pdflatex` und natürlich `make`.

Für Installationsanweisungen zu Make siehe {ref}`rrr-make-appendix-Installation`.

(rr-make-examples-makefile1)=
### Makefile Nr. 1 (Die Grundlagen)

Lass uns unsere erste Makefile erstellen. Wechseln Sie im Terminal in das `IntroToMake` Repository, das Sie gerade geklont haben:

```bash
$ cd IntroToMake
```

Erstellen Sie mit Ihrem Lieblingseditor eine Datei namens `Makefile` mit dem folgenden Inhalt:

```makefile
# Makefile für den Analysebericht

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report. ex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
Die Einrückung in jedes Rezept ist ***Tabs***, Makefiles akzeptieren Einrückungen mit Leerzeichen nicht.

Sie sollten nun in der Lage sein einzutippen:

```bash
$ make output/report.pdf
```

Wenn alles richtig funktioniert hat, werden die beiden Zahlen erstellt und der PDF-Bericht wird erstellt.

Lass uns die Makefile etwas genauer durchgehen. Wir haben drei Regeln, zwei für die Zahlen und eine für den Bericht. Schauen wir uns zuerst die Regel für `output/figure_1.png` an. Diese Regel hat das Ziel `output/figure_1.png` mit zwei Voraussetzungen: `data/input_file_1.csv` und `scripts/generate_histogram.py`. Durch die Angabe der Ausgabedatei werden diese Voraussetzungen aktualisiert, wenn sich eine dieser Dateien ändert. This is one of the reasons why Make was created: to update output files when source files change.

Sie werden feststellen, dass die Rezeptlinie Python mit dem Skriptnamen aufruft und Kommandozeilenflags (`-i` und `-o`) verwendet, um die Eingabe und Ausgabe des -Skripts zu markieren. Dies ist keine Anforderung für die Verwendung von Make, aber es macht es einfach zu sehen, welche Datei eine Eingabe für das Skript ist und welche eine Ausgabe ist.

Die Regel für den PDF-Bericht ist sehr ähnlich, aber sie hat drei Voraussetzungen (die LaTeX-Quelle und beide Zahlen). Beachten Sie, dass das Rezept das Arbeitsverzeichnis ändert, bevor LaTeX aufgerufen wird und die generierte PDF auch in das Ausgabeverzeichnis verschiebt. Wir tun dies, um die LaTeX-Zwischendateien im Berichtsverzeichnis zu behalten. Es ist jedoch wichtig, die obige Regel von zu unterscheiden:

```makefile
# tun Sie dies nicht
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

Diese Regel setzt die drei Befehle auf getrennte Zeilen. **Macht jedoch jede Zeile unabhängig von** in einer separaten Subshell, so dass die Änderung des Arbeitsverzeichnisses in der ersten Zeile keine Auswirkungen auf die zweite hat, und ein Fehler in der zweiten Zeile wird nicht verhindern, dass die dritte Zeile ausgeführt wird. Daher kombinieren wir die drei Befehle in einem Rezept oben.

So sieht der Abhängigkeitsbaum für dieses Makefile aus:

![DAG für Makefile Nr. 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">Der Abhängigkeitsgraph für unsere erste Makefile, erstellt mit [makefile2graph](https://github.com/lindenb/makefile2graph). Beachte die -Ähnlichkeit mit der Zahl {ref}`in der Einführung<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=
### Makefile Nr. 2 (alles und sauber)

In unserem ersten Makefile haben wir die grundlegenden Regeln. Wir könnten bei bleiben, wenn wir wollten, aber es gibt ein paar Verbesserungen, die wir vornehmen können:

1. Wir müssen jetzt explizit `make output/report.pdf` aufrufen, wenn wir den Bericht erstellen wollen.

2. Wir haben keine Möglichkeit, aufzuräumen und neu zu beginnen.

Lassen Sie uns das beheben, indem wir zwei neue Ziele hinzufügen: `alle` und `clean`. Ändern Sie in Ihrem -Editor die Makefile-Inhalte, um `alle` und `die` Regeln wie hinzuzufügen:

```makefile
# Makefile für Analysebericht

alle: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report. ex && mv report.pdf ../output/report. df

Clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Beachten Sie, dass wir das `alle` Ziel am Anfang der Datei hinzugefügt haben. Wir tun dies, , weil Make das *erste* Ziel ausführt, wenn kein explizites Ziel angegeben wurde.  So you can now type `make` on the command line and it would do the same as `make all`.  Beachten Sie außerdem, dass wir den Bericht nur als Voraussetzung von `allen` hinzugefügt haben, weil dies unsere gewünschte Ausgabe ist und die anderen Regeln helfen, diese Ausgabe zu erstellen. Wenn Sie mehrere Ausgänge haben, können Sie diese als weitere Voraussetzungen zum `alle` Ziel hinzufügen. Das Aufruf des Hauptziels `alles` ist eine Konvention von Makefies, denen viele folgen.

Die `saubere` Regel ist normalerweise am unteren Ende, aber das ist mehr Stil als Anforderung. Beachten Sie, dass wir das `-f` Flag zu `rm` verwenden, um sicherzustellen, dass sich nicht beschwert, wenn keine Datei zu entfernen ist.

Sie können das neue Makefile ausprobieren, indem Sie ausführen:

```bash
$ make clean
$ make
```

Die Ausgabe- und Zwischendateien sollten nach dem ersten Befehl entfernt und nach der zweiten Datei erneut generiert werden.

(rr-make-examples-makefile3)=
### Makefile Nr. 3 (Phony Targets)

In der Regel werden `alle` und `clean` als sog. [Phony Ziele](https://www.gnu.org/software/make/manual/make.html#Phony-Targets) definiert. Dies sind Ziele, die keine Ausgabedatei erzeugen. If not marked as `.PHONY` these targets would always be run if they come up in a dependency, but will no longer be run if a directory/file is ever created that is called `all` or `clean`. Wir fügen daher eine Zeile oben an der Makefile hinzu, um diese beiden als phony Ziele zu definieren:

```makefile
# Makefile für Analysebericht

.PHONY: alles sauber

alle: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report. ex && mv report.pdf ../output/report. df

Clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Phonieziele sind auch nützlich, wenn du Make rekursiv verwenden möchtest. In diesem Fall würden Sie die Unterverzeichnisse als phony Ziele angeben. You can read more about [phony targets in the documentation](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), but for now it's enough to know that `all` and `clean` are typically declared as phony.

> Sidenote: Ein anderes Ziel, das normalerweise phony ist, ist **Test**, für den Fall, dass Sie ein Verzeichnis von Tests namens **Test** haben und ein Ziel haben möchten, um auszuführen, das auch **Test** heißt.

(rr-make-examples-makefile4)=
### Makefile Nr. 4 (Automatische Variablen und Musterregeln)

Es ist nichts falsch mit der Makefile die wir jetzt haben, aber es ist etwas ausführlicher weil wir alle Ziele explizit mit separaten Regeln deklariert haben. Wir können dies vereinfachen, indem wir [Automatische Variablen](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) und [Muster Regeln](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules) verwenden.

(rr-make-examples-automaticvar)=
#### Automatische Variablen.

Mit automatischen Variablen können wir die Namen der Voraussetzungen und Ziele im Rezept verwenden. So würden wir das für die -Zahlenregeln tun:

```makefile
# Makefile für Analysebericht

.PHONY: alles sauber

alle: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i $< -o $@

output/report.pdf: report/report.tex output/figure_1. ng output/figure_2.png
    cd report/ && pdflatex Bericht. ex && mv report.pdf ../output/report. df

Clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Wir haben die Dateinamen in den Rezepten von `$<`ersetzt, was die *erste* grundständige und `$@` kennzeichnet, die das *Ziel* angibt. Sie können sich `$<` erinnern, weil es wie ein Pfeil ist, der auf den Anfang verweist (*erste* Voraussetzung), und Sie können sich an `$@` (Dollar *bei*) [als Zielziel *bei*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/) erinnern.

Es gibt weitere automatische Variablen, die Sie verwenden könnten, siehe [die Dokumentation ](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).

(rr-make-examples-patternrules)=
#### Musterregeln

Beachten Sie, dass die Rezepte für die Zahlen identisch geworden sind!  Da wir uns nicht wiederholen möchten, können wir die beiden Regeln mit *Musterregeln* in einer einzigen Regel kombinieren. Pattern rules allow you to use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# Makefile für Analysebericht

.PHONY: alles sauber

alle: output/report.pdf

output/figure_%.png: data/input_file_%. sv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report. df: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report. df ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Das `%` Symbol ist nun ein Platzhalter, der (in unserem Fall) den Wert `1` oder `2` basierend auf den Eingabedateien im `Daten` Verzeichnis annimmt. Sie können überprüfen, ob alles noch funktioniert, indem Sie `make clean` follow by `make` ausführen.

Ein Vorteil davon ist, dass, wenn Sie jetzt einen weiteren Datensatz hinzufügen möchten, sagen `input_file_3`, dann müssten Sie das nur zur Regel für den Bericht hinzufügen!

(rr-make-examples-makefile5)=
### Makefile Nr. 5 (Wildcards und Path Substitution)

Wenn Makefiles komplexer werden, Sie können erweiterte Funktionen verwenden wollen, wie das Erstellen von Ausgaben für alle Dateien in einem Eingabeverzeichnis. Während Pattern-Regeln dir einen langen Weg bringen Make hat auch Funktionen für Platzhalter und String- oder Pfadmanipulation für die nicht ausreichenden Musterregeln.

Während unsere Eingabedateien bereits nummeriert waren, wechseln wir jetzt zu einem Szenario , wo sie aussagekräftigere Namen haben. Wechseln wir zum `big_data` Branch:

```bash
$ git checkout big_data # checkout the big_data branch
```

Die Verzeichnisstruktur sieht nun so aus:

```text
<unk> 本<unk> data/
<unk> <unk> <unk> 本<unk> action.csv
<unk> <unk> 本<unk> ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
<unk> 本<unk> western.csv
<unk> 本<unk> LIZENSE
<unk> 本<unk> ausgabe/
<unk> <unk> <unk> <unk> <unk> <unk> README.md
<unk> wärts Bericht/
<unk> <unk> <unk> <unk> report.tex
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> Skripte/
    <unk> <unk> <unk> <unk> <unk> Generate_histogram.py
```

Wie Sie sehen können das **Datenverzeichnis** enthält nun zusätzliche Eingabedateien die sinnvoller benannt werden (die Daten sind IMBD Filmbewertungen nach Genre). Auch die Datei **report.tex** wurde aktualisiert, um mit den erwarteten Zahlen zu arbeiten.

Wir passen unsere Makefile an, um eine Figur im Ausgabeverzeichnis namens `histogramgram_{genre}zu erstellen. ng` für jede `{genre}.csv` Datei, ohne die `input_file_{N}.csv` Dateien.

> Sidenote: Wenn wir die `input_file_{N}.csv` Dateien entfernen würden, reichen hier die Muster Regeln aus. Dies hebt hervor, dass Ihre -Verzeichnisstruktur und Makefile manchmal Hand in Hand entwickelt werden sollten.

Vor dem Ändern der Makefile, ausführen

```bash
$ sauber machen
```
um die Ausgabedateien zu entfernen.

Wir werden zuerst das komplette Makefile anzeigen und dann die verschiedenen Zeilen im detaillierter beschreiben. Die komplette Datei ist:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/input_file_%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Zuerst wir verwenden die `Platzhalter` Funktion, um eine Variable zu erstellen, die alle CSV-Dateien im Datenverzeichnis auflistet und die nur die alte `input_file_{N}auflistet. sv` Dateien:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

Eine Code-Konvention für Makefiles ist es, alle Großbuchstaben für Variablennamen zu verwenden und diese am Anfang der Datei zu definieren.

Als nächstes erstellen wir eine Variable, die nur die Datendateien auflistet, an denen wir interessiert sind: indem wir `INPUT_CSV` von `ALL_CSV` filtern:

```makefile
DATA = $(Filter $(INPUT_CSV),$(ALL_CSV))
```

Diese Zeile verwendet den [`Filter`](https://www.gnu.org/software/make/manual/make.html#index-filter) um Elemente zu entfernen, die nicht mit der `INPUT_CSV` Variable in der Variable `ALL_CSV` übereinstimmen.  Beachten Sie, dass wir sowohl die `$( ... )` Syntax für Funktionen als auch Variablen verwenden. Schließlich werden wir die `DATA` Variable verwenden, um eine `FIGURES` Variable mit der gewünschten Ausgabe zu erstellen:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Hier haben wir die Funktion [`Patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) verwendet, um die Eingabe in der Variable `DATA` zu transformieren (welche der Variable `data/{genre}folgt. sv` pattern) zu den gewünschten Dateinamen (unter Verwendung von `output/figure_{genre}.png` pattern). Beachten Sie, dass das `%` Zeichen den Teil des Dateinamens markiert, der sowohl bei der Eingabe als auch bei der Ausgabe identisch ist.

Jetzt verwenden wir diese Variablen für die Zahlenerstellungsregel wie folgt:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@
```

Diese Regel wendet erneut ein Muster an: Es benötigt eine Liste von Zielen (`$(FIGURES)`) , dass alle einem gegebenen Muster folgen (`output/figure_%. ng`) und auf dieser Grundlage erstellt eine Voraussetzung (`data/%.csv`). Eine solche Musterregel unterscheidet sich leicht von der, die wir zuvor gesehen haben, weil sie zwei `:` Symbole verwendet. Es wird als [statisches Muster Regel](https://www.gnu.org/software/make/manual/make.html#Static-Pattern) bezeichnet.

Natürlich müssen wir auch die `report.pdf` Regel aktualisieren:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

und die `Reinigen` Regel:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Wenn Sie diese Makefile ausführen, müssen Sie 28 Zahlen erstellen. Du solltest die `-j` Flagge verwenden um `` gleichzeitig zu machen, um diese Ziele **zu erstellen!**

```bash
$ make -j 4
```

Die Fähigkeit Ziele parallel zu erstellen ist sehr nützlich, wenn Ihr Projekt viele Abhängigkeiten hat!

Die resultierende PDF-Datei sollte nun so aussehen:

![Mit allen Genres melden](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">Eine komprimierte Ansicht des Berichts mit Histogrammen für alle Genres.</small>
