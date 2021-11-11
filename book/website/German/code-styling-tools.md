(pd-code-styling-tools)=
# Code Styling Tools

Wie bereits erwähnt, gibt es einige automatische Tools, die Sie verwenden können, um Ihren Code zu bestehenden Richtlinien zu verlinken. Diese reichen von Plugins für IDES-Pakete, die Ihren Stil »Rechtschreibprüf« und Skripten, die automatisch für Sie linken.

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) ist ein R-Paket, das Ihren Code mit einer Vielzahl von Stilrichtlinien überprüft.  Es kann über CRAN installiert werden. Die Funktion `lint` verwendet einen Dateinamen als Argument und eine Liste von 'linters', gegen die Ihr Code überprüft werden soll. Diese reichen von Whitespace-Konventionen bis hin zur Prüfung, ob geschweifte Klammern nicht ihre Linien haben. Die Ausgabe enthält eine Liste von Markern mit Empfehlungen zur Änderung der Formatierung Ihres Codes Zeile für Zeile das bedeutet, dass es am besten frühzeitig und oft in Ihrem Projekt verwendet wird.

```{figure} ../../figures/lintr-output.png
---
Höhe: 500px
Name: lintr_output
alt: lintr Ausgabe zeigt Empfehlungen zum Hinzufügen von Leerzeichen Entfernen Sie kommentierten Code, entfernen Sie den Trainings-Whitespace, haben Zeichengröße pro Zeile weniger als 80, wenn im Eingabecode benötigt.
---
Ein Beispiel dafür, wie die lintr Ausgabe für eine Eingabedatei mit R-Code aussehen kann.
```

Für weitere Details besuchen Sie bitte das [GitHub Repository](https://github.com/jimhester/lintr).

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) ist ein Python-Modul, das vom Terminal aus gestartet werden kann und automatisch eine Datei zu [pycodestyle](https://github.com/PyCQA/pycodestyle) (ehemals pep8) Richtlinien formatiert.  
Sie ist auf [pypy](https://pypi.org) verfügbar und kann mit Pip installiert werden.

```
# Install autopep8
$ pip install --upgrade autopep8
```

Sie können eine Datei ändern, indem Sie den folgenden Befehl ausführen:

```
$ autopep8 --in-place --aggressive --aggressive <filename>
```

Bis zu einem gewissen Grad kann das Modul auch für R-Skripte verwendet werden!

## Automatische Formatierung von Schwarz

[Black](https://black.readthedocs.io/en/stable/) ist ein auto-formatierendes Paket für Python. Das bedeutet, dass es Ihren Code automatisch ändert, um bestimmte Richtlinien einzuhalten, wie z.B. Leerzeichen um Operatoren und unnötige Leerzeichen. Es ist auch konsistent, so dass der Code, an dem Sie und Ihre Mitarbeiter arbeiten, genauso aussieht wie schwarze Formate. Es ändert nichts an dem, was der Kodex tut. Dies kann die Zeit reduzieren, die die oben genannten Änderungen am Code vornimmt.
