(rr-make-resources)=
# Ressourcen für "Make"

(rr-make-resources-manual)=
## Manuell

- [Die Official Make Reference Handbuch](https://www.gnu.org/software/make/manual/make.html).

(r-make-resources-Diskussion)=
## Diskussionen

- [Diskussion über Make on HackerNews](https://news.ycombinator.com/item?id=15041986).

- [Rekursives Erwägen Schädlich](http://aegis.sourceforge.net/auug97.pdf). Dies ist ein bekanntes -Papier, warum Sie keine verschachtelten Makefiles verwenden sollten. Zusammenfassend: Wenn du machst, kann dieses Make nicht die gesamte DAG sehen und das führt zu Problemen.

- [Nicht-rekursives Stellen Schadenhaft](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): Dies ist ein Forschungspapier, in dem die Fehler von Make for large and complex builds beschrieben werden.

(rr-make-resources-blogs)=
## Blogs

Natürlich sind wir nicht die ersten, die die Verwendung von Make für Reproduzierbarkeit vorschlagen! Die unten zitierten Blogeinträge wurden gefunden, nachdem das obige Tutorial geschrieben wurde, , aber können weitere Informationen und Beispiele hinzufügen.

- [Reproduzierbarkeit ist schwer](https://kbroman.wordpress.com/tag/reproducible-research/). Diskutiert , um ein Forschungsprojekt reproduzierbar mit Make zu machen.

- [GNU Make for Reproduzible Data Analysis](http://zmjones.com/make/). Argues für die Verwendung von Make für reproduzierbare Analyse in einer ähnlichen Vene, wie wir es oben tun.

- [Reproduzierbare Bioinformatik-Pipelines mit Make](http://byronjsmith.com/make-bml/). Eine recht umfangreiche Anleitung zur Verwendung von Make for data analyse.

- [Automatische Datenanalyse Pipelines](http://stat545.com/automation04_make-activity.html). Ein ähnliches Tutorial, das R für die Analyse verwendet.

- [Schreiben eines reproduzierbaren Papiers](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools). Ein ähnliches Tutorial mit Python, das Variablen verwendet, um Tabellen im Manuskript zu füllen.

(rr-make-resources-tools)=
## Werkzeuge

- Zeichnen Sie die DAG der Makedatei mit [makefile2graph](https://github.com/lindenb/makefile2graph).

(r-make-resources-Alternativen)=
## Alternativen zu erstellen

Es gibt [viele Alternativen zu Make](https://en.wikipedia.org/wiki/List_of_build_automation_software). Unter sind einige, die unser Auge gefangen haben und das könnte einen Blick wert sein.

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). Eine Python3-basierte Alternative zum Make. Snakemake unterstützt mehrere Platzhalter in Dateinamen, unterstützt Python-Code in Regeln, und können Workflows auf Workstations, Clusters, dem Raster und in der Cloud ohne Änderungen ausführen.

- [Tup](http://gittup.org/tup/index.html). Ein schnelles Build-System, das von unten nach oben verarbeitet, anstatt von oben nach unten. Die Geschwindigkeit sieht beeindruckend aus und das Papier, das es beschreibt, ist interessant, aber für kleine Projekte wird die Geschwindigkeit von Make kein Engpass sein. Die Tupfile Syntax ist nicht kompatibel mit der von Makefiles.

- [Bazel](https://www.bazel.build). Eine Open-Source-Version des Google's Blaze Build-Systems.

- [Buck](https://buckbuild.com/). Facebook's Build-System.


