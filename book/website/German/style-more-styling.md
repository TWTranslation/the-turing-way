(ch-style-more-features)=
# Glossar, Sonderblöcke und mehr Styling

Jupyter Book bietet weitere Optionen für die Gestaltung seiner Kapitel und die Erstellung eines umfassenderen Buches. In diesem Unterkapitel diskutieren wir ein paar weitere Funktionen, die wir empfehlen in _die Turing Way_ zu verwenden.

(ch-style-more-features-glossary)=
## Glossary

_Die Turing Way_ hat ein {ref}`Glossar` Datei im Afterword des Buchs, , die aus Definitionen verschiedener Begriffe in alphabetischer Reihenfolge besteht. Diese Datei kann mit den Definitionen neuer Begriffe aktualisiert werden , die dann mit jedem Kapitel in dem Buch, wo dieser Begriff auftritt, verknüpft werden kann.

Um einen Eintrag für einen neuen Begriff hinzuzufügen bitte springe zum richtigen alphabetischen Abschnitt der {ref}`Glossar` Datei und verwende die folgende Syntax:

```
Neuer Begriff-1
  Ein kurzer Satz, der den Begriff definiert. Dieser Satz ist unterhalb des Begriffs eingerückt.
```

Zum Beispiel [Begriffe ab 'A'](https://the-turing-way.netlify.app/afterword/afterword.html#a) werden im selben Textblock wie unten angezeigt:
```

## A

```{glossary}

Acceptance Testing
 Ein Level des Software-Testprozesses, bei dem ein System auf Akzeptanz getestet wird. Der Zweck dieses Tests ist es, die Einhaltung der Projektanforderungen durch das System zu bewerten und zu beurteilen, ob er für diesen Zweck annehmbar ist.

Füge
 Befehl hinzu, um Dateien zum Staging-Bereich hinzuzufügen. Ermöglicht dem Benutzer festzulegen, welche Dateien oder Verzeichnisse beim nächsten Commit enthalten sollen.

Autoren
  sind die Autoren in diesem Zusammenhang die Mitwirkenden des _The Turing Way_ Projekts, die einen wesentlichen Beitrag zum Projekt geleistet haben, wie zum Beispiel das Schreiben eines Unterkapitels, Unterstützung von Community-Interaktionen, Pflege der Projekt-Infrastruktur und Unterstützung der Teilnahme anderer durch Mentoring-Beiträge. Alle Autoren sind als Mitautoren im Buch als Ganzes benannt.

```

Um Begriffe in Ihrem Glossar zu referenzieren, verwenden Sie die Syntax ``[{term}`def<Term>`]``.

Zum Beispiel, um den Begriff 'Autoren' mit seiner Definition in der Glossardatei zu verknüpfen bitte verwenden Sie die Syntax ``[{term}`def<Authors>`]`` neben dem angegebenen Begriff die online wie folgt rendern sollten: "*Autoren [{term}`def<Authors>`] wurde hier referenziert.*"

(ch-style-more-features-blocks)=
## Spezielle Inhaltsblöcke

Beim Schreiben eines neuen Kapitels oder beim Überarbeiten eines existierenden Kapitels Sie möchten vielleicht Notizen hinzufügen, die nicht in den Rest des Kapitels der Erzählung passen, aber kann nützlich für die Leser sein und ihnen helfen, das Kapitel besser zu verstehen.

Jupyter Book erlaubt die Verwendung spezieller Inhaltsblöcke, um einen Text hervorzuheben, der vom Rest des Inhalts einer Seite abweichen muss. Dies trennt den Textblock vom Rest der Seite visuell und stellt sicher, dass er leicht die Aufmerksamkeit des Lesers erfasst.

Um einen speziellen Inhaltsblock (Anmerkung, Warnung oder Ermahnung) zu Ihrer Seite hinzuzufügen, verwenden Sie die folgende Richtlinie:

````
```{note}
Dies ist eine Beispiel-Notiz!
```
````
die wie folgt rendert:

```{note}
Dies ist eine Beispielnote!
```

Sie können Inhaltsblöcke benutzerdefinierte Titel und Styling geben, um Ihre beabsichtigte Nachricht zu verstärken. Wenn Sie beispielsweise den Leser vor etwas warnen wollten, können Sie mit der folgenden Direktive einen Warnblock erstellen:

````
```{warning}
Dies ist eine ernste Warnung!
```
````
Beachten Sie den neuen Titel, das Symbol und das Farbschema.

```{warning}
Das ist eine harte Warnung!
```

Es gibt viele weitere Möglichkeiten, um Inhaltsblöcke an Ihre Schreibbedürfnisse anzupassen. Weitere Empfehlungen finden Sie in der [Jupyter Book Dokumentation](https://jupyterbook.org/content/content-blocks.html#notes-warnings-and-other-admonitions) und auf der [Admonition Demo Seite](https://sphinx-book-theme.readthedocs.io/en/latest/reference/demo.html#admonitions).
