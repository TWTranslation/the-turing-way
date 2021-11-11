(pd-code-style)=
# Code Styling und Linting

Haben Sie schon zwei Jahre nach der Durchführung einer Analyse eine Syntax- oder Skriptdatei geöffnet, nur um festzustellen, dass Sie keinen unmittelbaren Speicher des Codes haben? Haben Sie Analysedateien von einem Mitarbeiter erhalten oder sie aus einem Online-Repository heruntergeladen, das Sie noch nie verwendet haben? Stellen Sie sich jetzt vor, dass diese Dateien sehr schwer zu lesen sind, oder es gibt viele Variablen, die an arkane Funktionen übergeben werden. Oder schlimmer noch, Sie können keinen nützlichen Code finden, da er mit sinnlosen Dateinamen wie `analyse_1final_FINAL gespeichert wird.`, oder `onlyusethisoneforanalysis_onamonday2a.py`.

Wenn du das nicht hast - dann bist du einer der Glücklichen! Aber wenn Sie es schon einmal erlebt haben, können Sie vielleicht wissen, wie frustrierend es ist, mit diesen Dateien zu arbeiten.

Dieses Kapitel wird Wege aufzeigen, wie solche Herausforderungen in Ihren Projekten vermieden werden können, indem einige Prinzipien der "Code-Hygiene" eingeführt werden sonst bekannt als *Linting*.

```{figure} ../figures/zen-of-python.png
---
Höhe: 500px
name: zen-of-python
alt: Der Zen von Python, von Tim Peters. Schöne ist besser als hässlich. Explizit ist besser als implizit. Einfach ist besser als komplex. Komplex ist besser als kompliziert. Flache ist besser als verschachtelt. Sparsam ist besser als dicht. Lesbarkeit zählt. Sonderfälle sind nicht spezifisch genug, um die Regeln zu brechen. Obwohl die Praktikabilität die Reinheit besiegt. Fehler sollten nie stillschweigend passieren. Sofern nicht ausdrücklich zum Schweigen gebracht. Angesichts der Unklarheit ist die Versuchung abzulehnen, zu erraten. Es sollte eine - und vorzugsweise nur eine - offensichtliche Art zu tun. Es gibt auch eine große Auswahl an Restaurants und Bars. Jetzt ist besser als nie. Obwohl nie ist oft besser als *richtig* jetzt. Wenn die Implementierung schwer zu erklären ist, ist es eine schlechte Idee. Wenn die Umsetzung leicht zu erklären ist, kann dies eine gute Idee sein. Namespaces sind eine tolle Idee - lassen Sie uns mehr davon machen!
---
*Punkt 7 des [Zen von Python](https://www.python.org/dev/peps/pep-0020/) ist "Readability Counts". (Dies kann mit dem Python-Befehl `>>> importiert werden`)*
```

## Übersicht

Linting enthält {ref}`Richtlinien für das Styling<pd-code-styling-guidelines>` wie zum Beispiel für den Namen, und stellen sicher, dass {ref}`Code lesbar ist<pd-code-styling-readability>` zum Beispiel durch die Verwendung nützlicher Formatierungen und das Schreiben von Kommentaren.  
Einige integrierte Entwicklungsumgebungen (IDEs) beinhalten automatisches Verstecken, aber es gibt kostenlose {ref}`Pakete und Werkzeuge für das Verlinken von<pd-code-styling-tools>` , die für Sie lint Code (zum Beispiel [autopep8](https://pypi.org/project/autopep8/)).

Wenn Sie die folgenden Ratschläge während der Programmierung im Hinterkopf behalten, wird Ihr Code wiederverwendbar, anpassungsfähig und übersichtlich.
