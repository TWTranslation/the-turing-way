(ch-style-Zahlen)=
# Verwendung von Figuren in _The Turing Way_

Wir empfehlen Ihnen, Bilder zu _der Turing Way_ Buchkapitel hinzuzufügen. Dieser Abschnitt des Style-Leitfadens wird erläutern, wie man [Markiert strukturierten Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) Format verwendet, um sie mit passenden {ref}`Alt-Text<ch-style-figures-alttext>` und {ref}`Unterschriften<ch-style-figures-caption>` zum Buch hinzuzufügen.

Wir sind sehr leidenschaftlich darum sicherzustellen, dass die Urheber der ursprünglichen Bilddateien (einschließlich Sie!) {ref}`entsprechend<ch-style-figures-licence>` anerkannt werden. Bitte verwenden Sie keine Bilder, die nicht zur Wiederverwendung lizenziert sind.

In diesem Unterkapitel haben wir den Begriff **-Abbildung** verwendet, um auf eine Illustration hinzuweisen, die Informationen im Kontext von _der Turing-Straße_ -Kapiteln vermittelt. Der Begriff **Bild** wird verwendet, um auf das Dateiobjekt selbst zu verweisen.

(ch-style-figures-licence)=
## Offene Lizenz

Bitte stellen Sie sicher, dass Sie die Bilddateien fair zuweisen und Dateien vermeiden, die entweder durch Wiederverwendung eingeschränkt sind oder keine Reproduktionsrechte besitzen.

Die folgenden Empfehlungen helfen Ihnen zu überprüfen, ob Sie die Bilder gemäß ihren Lizenzberechtigungen verwenden:

* Wenn Sie Ihre eigenen Bilder verwenden, fügen Sie sie bitte dem `Zahlenverzeichnis` hinzu. Sie werden dann unter einer [Creative Commons Namensnennung 4 zur Verfügung gestellt. International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.ast) Lizenz wie mit dem Rest des Buchs.
* Alternativ können Sie Bilder auch im öffentlichen Bereich ([CC0 Lizenz](https://creativecommons.org/share-your-work/public-domain/cc0)) oder durch entsprechende Creative Commons Bedingungen lizensieren. Bilder, die auch unter CC-BY 4 erhältlich sind. Berechtigungen sind sehr einfach mit dem _der Turing Way_ kompatibel, da dies die gleiche Lizenz wie der Rest des Buches ist.
* Wenn ein Bild (zum Beispiel, das du im Internet gefunden hast), ist nicht unter einer offenen Lizenz verfügbar, bitte wenden Sie sich an den ursprünglichen Autor des Bildes und suchen Sie die Erlaubnis, ihr Bild zu reproduzieren. Vergewissern Sie sich, dass sie **fragen, wie sie in der Überschrift für die Zahl** gutgeschrieben werden möchten.

Im Allgemeinen achten Sie darauf, das Bild immer richtig zu zitieren, wie von den Bildbesitzern gerichtet. "Bild aus dem Internet" reicht nicht aus.

(ch-style-figures-image)=
## Bildtyp, Dateiname, Größe und Speicherort

Bitte laden Sie `.jpg` oder `.png` Dateien unter 1MB hoch, damit sie schneller im Online-Buch laden können. Wenn Ihre Datei größer als 1MB ist, verwenden Sie bitte ein lokales Bildbearbeitungswerkzeug oder ein Online-Werkzeug wie [IMG2GO](https://www.img2go.com/compress-image) um Ihre Datei zu komprimieren.

Um Ihre Bilddatei zu benennen, verwenden Sie bitte Kleinbuchstaben und getrennte Wörter mit Bindestrichen. Jede in diesem Buch verwendete Bilddatei sollte sich in der Datei `_figure-list befinden. d` im Verzeichnis `book/website/figures` von unserem [GitHub Repository](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). Wenn Sie eine neue Bilddatei verwenden, fügen Sie bitte die Datei in das `Zahlenverzeichnis` ein, und fügen Sie Details in die `_figure-list ein. d`.

(ch-style-figures-syntax)=
## MyST-Syntax, um eine Figur zu einem _Turing Way_ Kapitel hinzuzufügen

Alle unsere Kapitel sind in Markdown Dateien geschrieben. Daher wird die Markdown-Syntax zum Einfügen einer Figur in eine Markdown-Datei gut funktionieren, zum Beispiel `![](../.. figures/file-collection.jpg)`, wobei der relative Pfad der Bilddatei innerhalb der runden Klammern '()' angegeben wird.

**However**, this formatting does not allow images to be responsive to screen sizes, making them inaccessible to read on small screens and smartphones. Darüber hinaus erlaubt dies den Autoren nicht, die Größe von Figuren in ihren Kapiteln zu verändern oder sie an einem anderen Ort im Buch zu verweisen.

Daher empfehlen wir Ihnen, [Markedly Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) Format im Jupyter Book zu verwenden.

Sie können die Größe der Figuren in unseren Kapiteln mit den Parametern ändern: `Breite` und `Höhe` (nimmt Wert in px, B. 400px) oder `Skala` (nimmt Wert in Prozent, zum Beispiel, 50%), vor allem, wenn Ihre ursprüngliche Zahl groß ist. Verwende den Parameter: `Name`, Sie können Zahlen in anderen Kapiteln ähnlich wie in {ref}`ch-style-crossref` definieren.

Alle Komponenten Ihrer Figur (Figur-Standort, Größe und Name) können unter Verwendung der folgenden Direktive im Abschnitt einer Markdown-Datei zusammengefasst werden:

````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file collection
---
```
````
Diese Figur kann in anderen Dateien mit der Rolle {ref} verwiesen werden, wie:

```
{ref}`Datei-Sammlung`
```
Bitte beachten Sie, dass eine Höhe von 500px sehr gut mit dem _Turing Way_ Buch funktioniert, aber das ist nur ein Vorschlag.
(ch-style-figures-alttext)=
## Alternativer Text
Alternativer Text oder Alt-Text werden verwendet, um das Aussehen und die Funktion eines Bildes auf einer HTML-Seite zu beschreiben. Unsere Beispielfigur kann mit diesem Satz erklärt werden: *Zwei Personen durchsuchen Dateien in einer Schublade von Dokumenten.*
Das Hinzufügen alternativer Text zur Figur ist eines der ersten Prinzipien der Web-Zugänglichkeit. Screenreader-Software kann einen Alt-Text lesen, um den Inhalt der Figur besser zu erklären.
Alle Bestandteile Ihrer Figur (Position der Bilddatei, Größe, Name alt-Text und Titel) können mit folgender Direktive im Abschnitt einer Markdown-Datei eingekapselt werden:

````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file collection
alt: Zwei Personen durchsuchen gerne Dateien in einer Schublade von Dokumenten.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````
Ein weiterer Vorteil der Verwendung von Alt-Text ist, wenn ein Bild nicht in einem Browser geladen werden kann, oder der Link zu den Bild-Pausen, wird anstelle einer Figur wie unten angezeigt:

```{figure} ../../figures/alt-text-demo.png
---
Name: alt-text-demo
alt: Zwei Personen durchsuchen gerne Dateien in einer Schublade von Dokumenten.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Wenn alle diese Komponenten korrekt verwendet werden, wird eine in einer Datei enthaltene Zahl wie auf dieser Seite im Online-Buch dargestellt:

```{figure} ../../figures/file-collection.jpg
---
Höhe: 500px
Name: Datei-Sammlung
alt: Zwei Personen durchsuchen gerne Dateien in einer Schublade von Dokumenten.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-style-figures-caption)=
## Überschrift

Untertitel erscheinen unterhalb der Zahl. Sie sollten kurz und knapp sein und einen Verweis auf die Herkunft enthalten, aus der sie stammen. Insbesondere ist es wichtig, die Lizenz zu beschreiben, unter der das Bild wiederverwendet wird.

Zum Beispiel könnte eine Beschriftung heißen:

> Stelle deinen ersten Pull-Request auf GitHub. _Die Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

Die Syntax für dieses Bild ist wie folgt und die Art und Weise, wie es im Buch erscheint, liegt unter dem Code-Snippet.

````
```{figure} ../../figures/first pull-request. ng
---
height: 400px
name: first pull-request
alt: A person help out another person making their first pull request on GitHub
---
Making your first pull request on GitHub.
_The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````

```{figure} ../../figures/first-pull-request.png
---
height: 400px
name: first pull-request
alt: A person help out another person making their first pull request on GitHub
---
Making your first pull request on GitHub.
_The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Bitte stellen Sie sicher, dass der Link zur Quelle der digitale Objekt-Identifikator {term}`ist <Digital Object Identifier>` nicht der Zenodo-Datensatz. Vergewissern Sie sich außerdem, dass Sie einen Link zur Quelle mit der Formatierung des Markdown-Links erstellt haben: `[text](url)`.

(ch-style-figures-fortschrittlich)=
## Erweiterte Funktionen und "gotchas"

Weitere erweiterte Parameter finden Sie in der [Jupyter Book Dokumentation](https://jupyterbook.org/content/figures.html). Diese Seite enthält Informationen darüber, wie man [skaliert und](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) die Zahlen ausrichtet, und wie die Zahlen oder ihre Beschriftungen zu den [Rändern](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) des Buches hinzugefügt werden.

Wir haben ein paar "gotchas" von Mitwirkenden zu _der Turing Weg_ bemerkt und wir werden versuchen, diesen Abschnitt der Anleitung auf dem Laufenden zu halten für alle anderen, die die MyST Syntax für Figuren lernen

* Sowohl `:` als auch `"` haben syntaktische Bedeutung für Sphinx. Das bedeutet, dass es wichtig ist, dass Sie diese Zeichen nicht in Ihrem Alt-Text verwenden.
