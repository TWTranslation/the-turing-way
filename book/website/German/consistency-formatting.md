(ch-Konsistenz-Formatierung)=
# Formatierung

Formatierung bezieht sich darauf, wie _das Buch Turing Way_ geschrieben ist und direkt das Aussehen und die Präsentation des Buches beeinflusst.

_Der Turing Way_ wird als Jupyter Buch online gehostet und verwendet die Formatierungsempfehlungen wie in der [Dokumentation](https://jupyterbook.org/intro.html) beschrieben. Die richtige Formatierung stellt sicher, dass _der Turing Way_ lesbar, zugänglich und einem modularen Werk ähnelt.


(ch-konsistenz-formating-hr)=
## Harte Anforderungen

Die strengen Anforderungen in der Konsistenz-Checkliste stellen sicher, dass _die Turing Way_ Zugänglichkeit, Zusammenarbeit, Lesbarkeit und Benutzerfreundlichkeit priorisiert. Die Prüfungen, die sich mit der _Formatierung der Turing Way's_ befassen, beinhalten:

(ch-konsistenz-formatting-hr-markdown)=
### Überprüfe 1: Markdown zum Erstellen deines Inhalts verwenden

_Die Turing Way_ sollte nach Möglichkeit in [Markdown](https://en.wikipedia.org/wiki/Markdown) geschrieben werden, so dass das Jupyter Buch wie beabsichtigt dargestellt wird.


#### Markdown x HTML

Teile früherer Kapitel in _Der Turing Way_ wurden in `HTML`geschrieben, was einige ihrer Inhalte schwer lesbar macht.

Zum Beispiel zeigt {ref}`html-to-markdown` eine Tabelle an, die in `HTML` geschrieben wurde.

```{figure} ../../figures/html-to-markdown.png
---
Name: html-to-markdown
alt: Ein Screenshot einer schlecht formatierten Tabelle, die in HTML geschrieben ist. Die Tabelle wird zusammengebrochen und hat keine Spalten- oder Zeilenränder. Das macht es einem Leser schwer, seine Bedeutung zu entschlüsseln.
---
Inhalt in HTML kann nicht korrekt wiedergegeben werden.
```

Bei einer Neuformatierung zu Markdown wurde die Tabelle sauberer und leichter lesbar:

```{figure} ../../figures/html-to-markdown2.png
---
Name: html-to-markdown2
alt: Ein Screenshot einer Tabelle, die aus HTML in Markdown umgewandelt wurde. Die Tabelle wird einfacher zu lesen und zu verstehen, wenn sie in Markdown konvertiert wird.
---
Das Konvertieren von HTML in Markdown erleichtert das Lesen des Turing Way Buches.
```
```{note} Eine PR die diesen Check adressiert finden Sie [hier](https://github.com/alan-turing-institute/the-turing-way/pull/1460).
```

Kapitelinhalte in `HTML` sind normalerweise in Tags eingeschlossen, die mit Winkelklammern beginnen und enden `<>`.
[W3Schools](https://www.w3schools.com/html/html_elements.asp) ist eine ausgezeichnete Ressource, um zu verstehen, was diese Tags bedeuten, und Markdown Referenzleitlinien, wie [dieses Cheatsheet](https://www. arkdownguide.org/cheat-sheet/), kann helfen, `HTML` Formatierung in Markdown zu übersetzen.
Es gibt auch hilfreiche Tools im Internet, wie [Turndown](https://domchristie.github.io/turndown/) und [CloudConvert](https://cloudconvert.com/html-to-md), die `HTML` mit einem einzigen Klick in Markdown umwandeln.

Bitte beachte, dass, wenn `HTML` die einzige Option ist, um deinen Text so zu formatieren, wie du möchtest, Sie können es nur verwenden, wenn der Inhalt des Online-Buches noch gelesen und verstanden werden kann (verwenden Sie die Netlify-Vorschau in Ihrem PR zu testen).
Zum Beispiel können [Superscripts und Abonnements](https://support.squarespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-superscript-and-subscript) in `HTML` geschrieben werden, da sie immer wie geplant erscheinen.
Darüber hinaus können Inhalte wie YouTube-Videos und Tabellen mit Headern, die mehrere Spalten oder Zeilen umfassen, in `HTML` geschrieben werden.


```{attention} Eine Notiz über Styling
:class: Tipp

_Der Turing Weg_ hat ein [Bookwide stylesheet](https://github. om/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css), das das Aussehen von in `HTML` geschriebenen Inhalten kontrolliert.
Wenn du `HTML` in deinen Beitrag einfügst, stelle sicher, dass deine Formatierung die entsprechenden Klassen und IDs aus dem Stylesheet enthält.

Zum Beispiel, wenn du ein YouTube-Video mit dem `<iframe>` Tag zu deinem Inhalt hinzufügen möchtest wrap das `<iframe>` in einem `<div>` Tag und gib dem `div` eine `video-container` Klasse wie unten gezeigt.

<div class="video-container">
    <iframe>....</iframe>
</div>

```

Dies wird auch im {ref}`Style Guide<ch-style-custom-styling-videos>` beschrieben.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### Schreibe Checklisten

Beim Schreiben eines neuen Kapitels für _die Turing Way_, Sie können ein Checklisten-Unterkapitel einfügen, das die wichtigsten Aktionspunkte enthält, die die Leser auf der Grundlage des Kapitelinhalts übernehmen sollen. Für frühere Kapitel in _Der Turing Weg_ist dieses Unterkapitel in Markdown als Aufgabenliste mit Kontrollkästchen verfasst:

```
# Checkliste
- [ ] Element 1
- [ ] Punkt Zwei
- [ ] Punkt 3

```

Allerdings werden die Kontrollkästchen nicht wie in der Online-Version des Buches angezeigt, zum Beispiel:

```{figure} ../../figures/checklist-formatting.png
---
Name: Checklist-Formatierung
alt: Wenn das Checklisten-Unterkapitel eines Kapitels in Markdown als Aufgabenliste mit Checkboxen geschrieben ist, eckige Klammern werden in der Web-Version des Buches statt in Checkboxen angezeigt.
---
Kontrollkästchen werden als eckige Klammern in der Web-Version des Buches angezeigt.
```

Daher empfehlen wir, Ihre Checklist-Unterkapitel als ungeordnete Listen in Ihren zukünftigen Beiträgen zu formatieren und frühere Kapitel zu bearbeiten, die der anderen Konvention folgen:

```
# Checkliste
- Element 1
- Element 2
- Element 3

```
#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-hr-headers)=
### Überprüfen Sie 2: Header in der Reihenfolge verwenden.

Nicht aufeinanderfolgende Kopfzeilen beziehen sich auf eine Erhöhung der Kopfzeilenwerte um mehr als eine. Zum Beispiel:

```
# Überschrift
### Eine andere Überschrift
```
Eine solche Erhöhung um zwei Kopfzeilenstufen führt zu Warnungen beim Erstellen von _der Turing Way_ lokal. Im Idealfall sollten alle Markdown-Dateien mit einer Überschrift der Stufe 1 beginnen und entsprechend steigen:

```
# Überschrift
## Eine weitere Überschrift
```

Mehrere Dateien im _Turing Way_ Buch folgen nicht dieser Konvention. Eine Liste solcher Dateien finden Sie in [dieses Ticket](https://github.com/alan-turing-institute/the-turing-way/issues/1321), und [dieser PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) ist ein großartiges Beispiel dafür, wie man eine Datei mit nicht aufeinanderfolgenden Headern beheben kann.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-hr-labels)=
### Markieren Sie 3: Fügen Sie Labels zu Kapiteln, Unterkapiteln, Sektionen und Bildern hinzu, um Querverweise zu aktivieren.

Oft kann ein Kapitel sich auf Inhalte eines anderen Kapitels beziehen, um Konzepte zu erklären oder Punkte zu erweitern. Querverweise erleichtern dies dadurch, dass der verwiesene Inhalt mit einem Klick leicht zu finden ist. Dies macht _den Turing Way_ zugänglicher und zugänglicher.

{ref}`Cross-Referencing <ch-style-crossref>` wird im {ref}`ch-style` ausführlich behandelt. Das Unterkapitel erläutert, welche Labels sind, bietet eine Namenskonvention für Labels in _Der Turing Way_, und gibt mehrere nützliche Beispiele, wie Querverweise durchgeführt werden sollten.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-konsistenz-formating-hr-images)=
### Überprüfe 4: Verwende `MyST` für die Bildformatierung

Einige Zahlen und Bilder in _Die Turing Way_ werden mit Markdown Syntax eingebettet. Während dies funktioniert, erlaubt es den Bildern nicht, sich an die Bildschirmgröße des Geräts anzupassen, von dem das Buch gelesen wird.

Markedly Structured Text (`MyST`) ist ein Aroma von Markdown, der dies adressiert und Responsive Bilder in der _The Turing Way_ ermöglicht.

Es erlaubt auch die Verwendung von Bildunterschriften und alternativem Text (ALT-Text), sind die unsichtbaren Bildbeschreibungen, die vorgelesen werden bei den Lesern der _Turing Way_ die einen Screenreader verwenden. Wird kein ALT-Text mit einem Bild versehen, können diese Benutzer den Zweck des Bildes nicht verstehen.

Beim Schreiben von ALT Text vergessen:
- **Seien Sie deskriptiv** - Beschreiben Sie das Bild anhand des Inhalts und des Kontextes zur Anleitung. Dabei besteht keine Notwendigkeit, ein Bild in Ihrer Beschreibung "anzukündigen" (zum Beispiel die Verwendung von "Illustration von" oder "Bild von"), da Screenreader dies bereits tun.
- **Halte es so kurz wie möglich** - Obwohl für einige Bilder eine lange Beschreibung erforderlich sein könnte Es ist besser, sie so kurz wie möglich zu halten. Damit ist sichergestellt, dass die Beschreibungen leicht verständlich sind.

Bitte beachten Sie, dass Bilder im _Buch Turing Way_ weniger als 1 MB betragen sollten. Dies ermöglicht das Buch schneller laden, insbesondere für Leser, die langsame Internet-Verbindungen haben können.

Bitte lesen Sie den {ref}`Style Guide <ch-style-figures>` für Beispiele zur Formatierung von Bildern mit `MyST` und fügen Sie ALT Text hinzu. Wenn Sie Bilder in Ihre Beiträge einbeziehen, Vielleicht ist es besser, den Höhenparameter zu vermeiden, da der falsche Wert Ihr Bild auf mobilen Geräten verzerrt erscheinen lassen könnte. Sie sollten immer überprüfen, wie Ihr Bild in der Netlify-Vorschau des Buches aussieht, wenn Sie einen PR erstellen.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-konsistenz-formating-sr)=
## Weiche Anforderungen

Weiche Anforderungen verbessern das Aussehen und das Gefühl von _der Turing Way_. Wenn diese Prüfungen durchgeführt werden, können sie unbemerkt, aber sie tragen auch dazu bei, dass _die Turing Way_ zu einem polierten Stück Arbeit wird. Weiche Anforderungen, die sich mit _beschäftigen. Die Formatierung der Turing Way's_ beinhaltet:

(ch-konsistenz-formating-sr-one)=
### Überprüfen Sie 1: Stellen Sie sicher, dass die Namen von Kapiteln/Unterkapiteln kurz sind und geben Sie genau an, wie sie im `_toc.yml genannt werden`

Einige Kapitel und Unterkapitel in _Der Turing Weg_ entsprechen nicht ihren entsprechenden Referenzen in dem buchweiten Inhaltsverzeichnis, das links auf der Webseite erscheint. Dies kann für Benutzer verwirrend sein, insbesondere, wenn die Referenz des Kapitels/Unterkapitels im Inhaltsverzeichnis wesentlich von dem Namen des Kapitels/Unterkapitels abweicht.

```{figure} ../../figures/mismatched-title-toc.png
---
Name: Falsch-Titel-toc
alt: Ein Unterkapitel, dessen Titel sich von seiner Referenz im Inhaltsverzeichnis unterscheidet. Der Titel des Unterkapitels lautet 'Benutze Tabellenkalkulationen für Forschungsdaten', wird jedoch im Inhaltsverzeichnis als 'Datenorganisation in Tabellenblättern' bezeichnet.
---
Der Titel dieses Unterkapitels lautet 'Tabellenkalkulation für Forschungsdaten' Das Inhaltsverzeichnis bezieht sich jedoch auf die gleiche Datei wie "Datenorganisation in Spreadsheets".
```

Um sicherzustellen, dass _der Inhalt der Turing Way_ diese Überprüfung übergeht, ist es eine Empfehlung, die Titel kurz zu halten. Stellen Sie beim Schreiben eines neuen Kapitels sicher, dass der Titel kurz ist und den gleichen Namen in der Inhaltsliste hat. Ähnlich verhält es sich bei der Überprüfung bestehender Kapitel, wenn Titel und Verweis im Inhaltsverzeichnis unterschiedlich sind, machen Sie die kürzere der beiden Titel des Kapitels und aktualisieren Sie `_toc. ml` falls nötig.

```{note}
Das `_toc.yml` ist die Datei, in der das buchweite Inhaltsverzeichnis für _The Turing Way_ lebt.
```

Denkt aber daran, dass der endgültige Titel den Lesern ausreichend sagen sollte, was sie von einem Kapitel oder Unterkapitel erwarten sollen.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-konsistenz-formating-sr-zwei)=
### Überprüfen Sie 2: Stellen Sie sicher, dass die Kopfzeile korrekt ist

Die Titel einiger Kapitel in _Die Turing Way_ verwenden keine Titelfassung. [Das Titelgehäuse](https://en.wikipedia.org/wiki/Title_case) ist ein Großbuchstabenstil, der verwendet wird, um Titel und Überschriften der veröffentlichten Werke zu formatieren. Als Referenzwert für Personen, die reproduzierbare Datenwissenschaften, Titel und Rubriken in _Der Turing Way_ sollte titelbar sein.

Obwohl _der Turing Weg_ keinen bestimmten Stil der Großschreibung verfolgt, gibt es allgemeine, nicht erschöpfende Regeln, die berücksichtigt werden müssen:
- Haupt- oder wichtige Wörter kapitalisieren
- Kleinere Artikel, Verbindungen und Präpositionen (außer wenn diese betont werden)
- Die ersten und letzten Wörter vergrößern

Es gibt hilfreiche Tools, wie [CapitalizeMyTitle](https://capitalizemytitle.com/) und [Title Case Converter](https://titlecaseconverter.com/), , die beim Schreiben Ihres Inhalts in Titelbuchstaben verwendet werden kann. Darüber hinaus können Header in _der Turing Way_ durch diese Tools ausgeführt werden, um sicherzustellen, dass sie den Titelgehäuse-Konventionen folgen. Sie können dann in den Kapiteln und im `_toc.yml` ersetzt werden.

Zum Beispiel in {ref}`unpassende Titeltac` oben, **Die Verwendung von Tabellenkalkulationstabellen für Forschungsdaten** sollte auf **titelgekoppelt sein und Tabellenkalkulationen für Forschungsdaten** verwenden.

Bestimmte Kopfzeilen müssen nicht in Abhängigkeit von dem Kontext, in dem sie verwendet werden, angegeben werden. Zum Beispiel, weil einige der Kopfzeilen in diesem Kapitel eine Checkliste ausmachen - sie müssen nicht mit Titeln versehen werden.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
