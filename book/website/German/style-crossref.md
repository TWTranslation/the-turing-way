(ch-style-crossref)=

# Querverweis-Abschnitte und Kapitel

Wir empfehlen den Querverweisstil, wie im [Jupyter Buch](https://jupyterbook.org/content/citations.html) beschrieben für Kapitel oder Dateien zu verwenden und verschiedene Inhalte von Kapiteln wie Abschnitte und Zahlen.

In Jupyter Book sind Labels eine Möglichkeit, um Tags zu Teilen Ihres Inhalts oder einer Datei hinzuzufügen, auf die Sie später verweisen können. Dies ist sehr hilfreich, da Sie Labels in andere Teile Ihres Buches einfügen können, ohne sich Gedanken über die relativen oder absoluten Pfade der Datei zu machen.

In diesem Dokument haben wir Beispiele für die Verwendung von Etiketten für verschiedene Kapitel oder Teile von Kapiteln im Buch zur Verfügung gestellt. Wir haben auch eine Namenskonvention für Labels für _für den Turing Way_ definiert, um sicherzustellen, dass die Standorte dieser Labels im Buch mit ihrem Namen identifiziert werden können.

## Labels im Jupyter-Buch

Um ein Label für einen Abschnitt oder ein Kapitel/Unterkapitel hinzuzufügen, verwenden Sie eine Syntax des folgenden Musters vor dem Element, das Sie benennen möchten:

```
(my-label-name)=
# Die Sache, die ich benennen möchte
```

Sie können Querverweise auf die Labels von Abschnitten in Ihrer Datei mit der folgenden Syntax einfügen:

```
{ref}`my-label-name`

```

Ebenso können Sie Labels für Querverweisungskapitel oder Unterkapitel verwenden.

Bitte sehen Sie sich die Details in den unten angegebenen Beispielen an.

### _Die Turing Way_ Namenskonvention für die Labels

Wir empfehlen den folgenden Benennungsstandard für Etikettierungen, was es verschiedenen Autoren und Mitwirkenden von _der Turing Way_ erlaubt, intuitiv die Verzeichnisse der Dateien zu identifizieren, an denen diese Labels erstellt wurden.

Die folgende Namenskonvention für die Labels für verschiedene Kapitel:

```
(sectioninitials-Dateiname)=
```

Hier sollten die ersten Platzhalter `Sektioninitials` durch die Initialen für verschiedene Abschnitte im Buch ersetzt werden und der zweite Platzhalter `Dateiname` sollte durch den Dateinamen ersetzt werden, in dem die Bezeichnung erstellt wird.

Für die verschiedenen Anleitungen des Buches verwenden wir die folgenden `Abschnittinitialen`:

- Reproduzierbare Forschung: `rr`
- Projekt-Design: `pd`
- Kollaboration: `cl`
- Kommunikation: `cm`
- Ethische Forschung: `er`
- Community Handbook: `ch`

Zum Beispiel haben wir in der Anleitung `Reproduzierbare Forschung`ein Kapitel namens `Übersicht`. Wir haben ein Label für dieses Kapitel mit dem Namen `rr-overview` erstellt, indem wir das Label oben in der Kopfzeile mit der folgenden Direktive hinzufügen

```
(rr-overview)=
# Übersicht
```

In ähnlicher Weise empfehlen wir für verschiedene Unterkapitel die Erweiterung des Labels um einen anderen Platzhalter für den Namen des Unterkapitels. Zum Beispiel ist `rr-overview-resources` ein Label in der Anleitung "Reproduzierbare Forschung" (rr) für das Unterkapitel "Ressourcen" für das Kapitel "Übersicht" (Übersicht-Ressourcen). Dieses Label kann mit der folgenden Direktive in der entsprechenden Datei erstellt werden:

```
(sectioninitials-filename)=
# Ressourcen
```

In gleicher Weise empfehlen wir für verschiedene Abschnitte in einem Unterkapitel die Erweiterung des Labelnamens um einen anderen Platzhalter. Dies kann von den Autoren gewählt werden, was ein kurzer, aber sinnvoller Name für den Abschnitt sein sollte, in dem das Label erstellt wird. Zum Beispiel `rr-overview-resources-addmaterial` ist ein Label in der Anleitung "Reproduzierbare Forschung" (rr) für das Unterkapitel "Ressourcen" für das Kapitel "Übersicht" (Übersichtsressourcen) für den Abschnitt "Zusätzliche Materialien" (Addonails). Dieses Label kann in der entsprechenden Datei für den vorgeschlagenen Abschnittsnamen mit der folgenden Direktive erstellt werden:

```
(sectioninitials-filename-section)=
## Zusätzliches Material
```

### Beispiele für Querverweise

**Beispiele für Querverweise auf Kapitel und Unterkapitel**

Wir verwenden Beispiele für die Kapitel "Reproduzierbare Forschung", die sich im `Buch/Website` Verzeichnis befinden.

**_Fall 1_**: Wenn Sie einen Abschnitt des Kapitels in der gleichen Datei _vor der Erstellung von_ referenzieren.

Nehmen Sie das vorherige Beispiel von `rr-overview-resources-addmaterial`, können wir dieses Label verwenden, um es in einem früheren Abschnitt innerhalb derselben Datei zu verweisen mit folgendem Folgendes zu verknüpfen:

```
{ref}`rr-overview-resources-addmaterial`
```

Dies wird wie folgt im Online-Buch erscheinen: {ref}`rrr-overview-resources-addmaterial`.

**_Fall 2_**: Wenn Sie einen Abschnitt des Kapitels innerhalb der gleichen Datei _nach dem Erstellen von_ referenzieren.

Im selben Unterkapitel "Ressourcen" haben wir eine Bezeichnung `rr-overview-resources-lesen-` für den Abschnitt "Weiterlesen" erstellt. Wir können ihn in einem späteren Abschnitt innerhalb derselben Datei mit folgendem Querverweis verbinden:

```
{ref}`rr-overview-resources-reading`
```

Es wird in Ihrem Kapitel wie folgt erscheinen: {ref}`rr-overview-resources-read`.

**_Fall 3_**: Wenn Sie einen Abschnitt eines Kapitels in einer anderen Datei (Kapitel) vor oder nachdem ein Label erstellt wurde, referenzieren.

Im Unterkapitel "Definitionen" des Kapitels "Übersicht" haben wir ein Label `rrr-overview-Definitionen` für den Abschnitt "Tabelle der Definitionen für die Reproduzierbarkeit" erstellt.

Wir können ihn in einem anderen Unterkapitel oder einem anderen Kapitel referenzieren. In diesem Fall verweisen wir es auf der Landung (Hauptseite) des Kapitels "Übersicht", indem Sie folgendes verwenden:

```
{ref}`rr-overview-definitions`
```

Es wird in Ihrem Kapitel wie folgt erscheinen: {ref}`rr-overview-Definitionen`.

Obwohl wir dieses Beispiel für Unterkapitel innerhalb desselben Kapitels zeigen ("Übersicht"), die ähnlichen Syntaxen können für Querverweise in anderen Kapiteln des Buches verwendet werden.

**Beispiele für Querverweise Kapitel und Unterkapitel**

**_Fall 4_**: Querverweisen auf ein Kapitel oder Unterkapitel in einer anderen Datei (Kapitel/Unterkapitel), bevor oder nachdem ein Label erstellt wurde.

Zum Beispiel haben wir auf der Landingpage des Kapitels "Open Research" ein Label `rr-open` erstellt. Wir können ihn in dem Abschnitt "Was lernst du weiter?" in einem anderen Unterkapitel "Ressourcen" des Kapitels "Übersicht" mit folgendem folgendem verwenden:

```
{ref}`rr-open`
```

Es wird in Ihrem Kapitel wie folgt erscheinen: {ref}`rr-open`.

Obwohl wir dieses Beispiel für Querverweise von Kapiteln und Unterkapiteln im gesamten Buch demonstrieren die gleiche Syntax kann für Querverweise von Unterkapiteln im selben Kapitel verwendet werden.

### Geben Sie einen alternativen Titel für die Referenzen an

Für alle oben genannten Referenzen, Sie können einen alternativen Titel beim Querverweisen angeben, indem Sie den Titel vor dem Label wie in diesem Beispiel angezeigt:

```
{ref}`Chapter on Open Research<rr-open>`
```

hier geben wir einen alternativen Titel zum 'Open Research chapter', die in Ihrer Datei wie folgt erscheinen: {ref}`Kapitel zum Öffnen der Forschung <rr-open>`
