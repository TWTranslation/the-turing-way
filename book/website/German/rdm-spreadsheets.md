(rr-rdm-Tabellen)=
# Datenorganisation in Tabellenblättern

Tabellen wie Microsoft Excel-Dateien, Google Tabellen und ihre Open-Source-Alternative [(zum Beispiel) LibreOffice](https://www.libreoffice.org), werden häufig verwendet, um Forschungsdaten zu sammeln, zu speichern, zu manipulieren, zu analysieren und zu teilen. Tabellen sind praktische und einfach zu handhabende Werkzeuge für die Organisation von Informationen in einfach zu schreibenden und leicht lesbaren Formularen für Menschen. Man sollte sie jedoch mit Vorsicht verwenden, da die Verwendung einer ungeeigneten Tabelle eine Hauptursache für Fehler im Workflow zur Datenanalyse ist. Es gibt eine Sammlung von [Horrorgeschichten](http://www.eusprig.org/horror-stories.htm) , die aufzeigt, wie die Verwendung von Tabellenkalkulationen analytische Studien aufgrund unerwarteten Verhaltens der Tabellenkalkulation oder fehleranfälliger Bearbeitungsprozesse ruinieren kann. Einige dieser Fehler sind nicht einzigartig auf Tabellenkalkulationen, aber viele sind, wie [diese](https://doi.org/10.1186/s13059-016-1044-7) und [diese](https://doi.org/10.1186/1471-2105-5-80).

Glücklicherweise lassen sich die meisten Probleme mit den folgenden Empfehlungen vermeiden:
- Tabelle im Nur-Text-Format verwenden (.csv oder .tsv),
- Erstelle einfache Tabellenkalkulationen,
- Machen Sie Tabellenkalkulationen konsistent (mit einander) und implementieren Sie Regeln für Dateneinträge, und
- Vermeiden Sie die Manipulation und Auswertung von Daten in der Tabellenkalkulationssoftware (einschließlich Kopier-Einfüge).

Tabellenkalkulationen sind nur dann ein leistungsfähiges Werkzeug, wenn der Datensatz in spezifischen Formaten gesammelt und organisiert wird, die sowohl für Computer als auch für Forscher nutzbar sind.

(rr-rdm-Tabellen-Nicht-Daten)=
## 1. Nicht-Dateninhalt vermeiden

Tabellenkalkulationsdatenblätter werden für die Organisation von Daten in einer tabellarischen Form verwendet. Das Subjekt, das Objekt und die Beziehung zwischen ihnen verwandeln sich in Zeilen, Zellen und Spalten. Zum Beispiel wurde der Betreff `Experiment`, Beziehung: `am Datum`durchgeführt , und das Objekt: `2020-06-06` gibt eine Zeile für jedes Experiment, eine Spalte für `Datum des Experiments`, und der Wert `2020-06-06` in der Zelle. Unglücklicherweise erlauben Tabellenkalkulationsprogramme dem Hinzufügen von anderen Arten von Inhalten, wie Farben zu bestimmten Zellen. Auch wenn es den Forschern irgendwann helfen kann man muss bedenken, dass diese Art von **-Zellenänderung nicht als Daten betrachtet werden sollte**, vor allem weil sie nicht in andere Software exportiert werden können.

Als einfache Regel kann das, was in einem Nur-Text-Format, durch Kommas getrennte Werte (CSV) oder durch Tabulatoren getrennte Werte (TSV) exportiert werden kann, als Daten betrachtet werden. Bei der Nutzung dieser Programme für Forschungsdaten sollten andere Funktionen vermieden werden. Dies beinhaltet:
- ändere Schriftart, Farbe oder Rahmen
- benutze Funktionen,
- Verschmelzung von Zellen (dies ist besonders problematisch),
- Verwendung bestimmter Zellformate (insbesondere Datum, siehe unten).

Als Test für Ihre Tabellenkalkulationskompatibilität mit reproduzierbarer Recherche exportieren Sie Ihre Daten aus der Tabellenkalkulation in das CSV-Format und öffnen Sie sie erneut. Wenn Sie noch alle Informationen, die Sie in Ihrem Datenblatt gespeichert haben, erhalten können, dann sind Ihre Daten in Ordnung.

```
Tipp: Wenn Sie Farbe verwenden wollen, um bei einem schnellen Highlight in Ihrem Dokument zu helfen erstellen Sie eine neue Spalte, um anzugeben, welche Zellen hervorgehoben werden (es wird ein Teil Ihrer Daten).
Zusätzlich zum visuellen Feedback können Sie diese Informationen nun auch verwenden, um Ihre Daten zu filtern oder zu sortieren und die markierten Zellen schnell zu erhalten.

```
(rr-rdm-Tabellen-Format)=
## 2. Tidy-Format für Tabellenkalkulationen

If the spreadsheet is poorly organised, then it may be [difficult for collaborators](https://luisdva.github.io/pls-don't-do-this/) to easily {ref}`read-in and re-use <rr-rdm-fair>` your data for further analysis.

Tatsächlich ist ein großer Teil der Arbeit von Datenwissenschaftlern die Umwandlung der Daten in eine Form, die der Computer lesen kann. Allerdings, Dies ist unglaublich zeitaufwändig, wenn die Informationen auf mehrere Tabellenkalkulationen aufgeteilt werden und es keine konkreten Datentransformationspläne gibt, bevor die Daten erfasst werden.

Es gibt sehr einfache Regeln zur Erleichterung der Datenverwendung, die im Konzept von [**bereinigte Daten**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815) auftauchen. Das übersichtliche Datenformat ermöglicht die einfache Filterung und Sortierung von Daten in Tabellenkalkulationssoftware.

Kurz gesagt:

- Eine Spalte = eine Variable (nicht mehr, nicht weniger, das bedeutet, dass zwei Headernamen nicht identisch sein können)
- Eine Zeile = ein Beispiel
- Eine Zelle = eine Information
- **Die erste Zeile ist der Header**
- Headernamen dürfen kein Sonderzeichen (einschließlich Leerzeichen) oder keine Zahl enthalten

```{figure} ../../figures/tidy-1.png
---
Name: tidy-1
alt: Das Bild zeigt ordentliche Daten. Eine Spalte repräsentiert eine Variable, eine Zeile stellt eine Probe dar und eine Zelle stellt eine Information dar.
---
Eine Abbildung von bereinigten Daten.
```

Drei Regeln machen einen Datensatz übersichtlich:
1. Jede Variable muss eine eigene Spalte haben.
2. Jede Beobachtung muss ihre eigenen Reihen haben.
3. Jeder Wert muss eine eigene Zelle haben.

Es gibt Tools zur Datenvalidierung, wie https://goodtables.io, die es Ihnen erlauben automatisch zu überprüfen, ob Ihre Tabellenkalkulationen ordentlich sind.

(rr-rdm-Tabellen-konsistent)=
## 3. Konsistente Werte

Wenn Sie mit mehreren Tabellenkalkulationen oder einem Team während der Datenerfassung arbeiten, ist es entscheidend, sicherzustellen, dass die gleichen Informationen mit dem gleichen Begriff eingegeben werden und dass der gleiche Begriff immer die gleichen Informationen übermittelt. Im Beispiel der iris-Daten wenn einige Leute andere Begriffe verwenden, um Informationen für eine bestimmte Spalte aufzuzeichnen - zum Beispiel die Spalte `Arte` anstelle von `Arten` oder die Verwendung von `iris setosa`, `gesetzt.` oder `i. etosa` statt `setosa` - die Erstellung eines reproduzierbaren Workflows wird schwieriger, und Fehler können sogar übersehen werden.  
Diskrepanzen führen oft zu Fehlern, insbesondere, wenn die gleichen Begriffe unterschiedliche Dinge bedeuten könnten, je nachdem, wer die Daten eingibt. Zum Beispiel bedeutet die Angabe des Datums als `02-03` den 3. Februar<sup>Platz</sup> in den USA, aber März die 2.<sup>nd</sup> in Europa.

Es ist empfehlenswert, ein `-Datenwörterbuch` oder eine `Taxonomie` der akzeptierten Begriffe zu implementieren und die in einer README-Datei verwendete Konvention zu dokumentieren. Abhängig von der von Ihnen verwendeten Software können Sie die akzeptierten Werte in bestimmten Spalten einschränken. Wenn eine solche Taxonomie oder Ontologie verfügbar ist, kann es Ihnen (und anderen) möglich sein, die Daten in Verbindung mit anderen Datensätzen zu verwenden. Zum Beispiel du kannst den generischen `männlichen` und `weiblichen` Ausdruck für das Geschlecht eines Tieres verwenden (ohne Hauptstädte, und ohne Abkürzung zu benutzen), da viele Ontologien diese Begriffe verwenden. Außerdem können Sie einige zusätzliche Tools verwenden, um die Tabellenkalkulationen vor ihrer Integration in die Analyse zu überprüfen.

Sie sollten auch klare Regeln für fehlende Datenpunkte haben. `NA`, `NULL`, oder leere Zellen sind nicht trivial und können unterschiedliche Bedeutungen haben (unmöglicher Datenpunkt, nicht aufgezeichnet, oder verlorener Datenpunkt). Stellen Sie sich vor, ein Forscher möchte die Zeit aufzeichnen, die er verbracht hat, bevor er ein Bestäubungsland auf einer irisblume sieht, und es wurde kein Bestäuber während des 10-minütigen Experiments gesehen. Nehmen wir an, der Forscher meldet `600` (die Dauer des Experiments in Sekunden). In diesem Fall wird es keine Möglichkeit geben, ein Szenario zu unterscheiden, in dem es keinen Bestäuber gab, und einer, als am Ende des Experiments ein Bestäubungszeichen gesehen wurde (und du kannst diese Regel vergessen und `600` als normaler Wert behandeln).

Wenn `NA` gemeldet wird, kann man diesen Wert als einen nicht existierenden Datenpunkt interpretieren (das Experiment wurde nicht durchgeführt). Eine elegante Lösung besteht darin, eine zweite Spalte zu haben, die angibt, ob während des Experiments ein Bestäubungsmittel gesehen wurde, wobei `TRUE`, `FALSE` und `NA` Werte akzeptiert werden.

Schließlich sollten Sie sich auch des Standardverhaltens Ihres Tabellenkalkulationsprogramms bewusst sein da es für verschiedene Programme unterschiedlich sein kann, und verschiedene Versionen des gleichen Programms. In der Regel wird das Dezimalzeichen in der französischen oder deutschen Version von Excel mit einem Komma angegeben. In der englischen Version wird ein Punkt verwendet, da das Komma keine Bedeutung hat (`9, 00` wird je nach verwendeter Version in `9000` oder `9` übersetzt.

(rr-rdm-Tabellen-Manipulation)=
## 4. Datenmanipulation und -analyse

***Daten nicht in einem Tabellenkalkulationsprogramm manipulieren oder auswerten.***

Insbesondere ist das Kopieren von Tabellenkalkulationen nur dann möglich, wenn der Prozess sehr selten verwendet wird. Es ist jetzt mühelos verschiedene Tabellenkalkulationen in der Analysesoftware zu lesen und zu kombinieren mit dem zusätzlichen Vorteil, dass die Software eine Fehlermeldung zurückgibt, wenn die Header nicht passen.

(rr-rdm-Tabellen-Tipps)=
## Andere Tipps

(rr-rdm-Tabellenkalkulations-Zeit)=
### Umgang mit Zeitinformationen

Während die Daten als `yyy-mm-dd geschrieben werden sollen,`, Excel und andere Software wandeln diese Daten tendenziell in eigene Datumsformate (sogar während des Datenimports aus einer CSV-Datei). Die einzige hundertprozentige sichere Methode, um damit umzugehen, ist verschiedene Spalten für Jahre zu erstellen Monate, Tage und wiederholen Sie die Daten in der zur Analyse verwendeten Software. Zeit eingegeben mit `hh:mm:ss` funktioniert normalerweise.

(rr-rdm-Tabellenkalkulations-mehrer)=
### Arbeiten mit mehreren Blättern

Wir verwenden oft mehrere Blätter für unterschiedliche, aber verwandte Daten. Es ist in der Tat ein praktisches Werkzeug, insbesondere, wenn man den kompletten Datensatz mit Kollegen teilen will.  
Auf der anderen Seite speichern CSV-Dateien jeweils nur eine Tabelle. Obwohl die meisten Datenanalyse-Software mehrere Möglichkeiten hat, `xlsx` Dateien zu importieren die praktische Lösung ist, mit dem Format `xlsx` zu arbeiten und dabei sicherzustellen, dass die Informationen für jedes Blatt im CSV-Format verfügbar sind. Eine bessere Lösung, vor allem für den langfristigen Speicher, besteht darin, alle Blätter separat in einer CSV-Datei zu speichern und sie zusammen zu packen. Diese Lösung erlaubt auch zusätzliche Dokumentationen, die in einem anderen Format sein könnten (z. B. eine Textdatei, die die Bedeutung der Header und der gewählten Einheit erklärt).

(rr-rdm-Tabellenkalkulations-Design)=
### Tabellen-Design

Oft werden Daten manuell erhoben, auf Papier. Um möglichst effizient zu sein und Fehler zu vermeiden, ist es am besten, die Daten im gleichen Format wie sie zu digitalisieren. Das heißt, man sollte die für die Datenerfassung zu druckende rechnerlesbare Tabellenkalkulation entwerfen. Dies wirft einige Designfragen auf, vor allem für Informationen, die auf ein Experiment (ein Papier) beschränkt sind, aber zwischen Experimenten wechseln können (z. B. B. Experimentalist oder Temperatur des Raums). In der Tat wollen Sie diese Informationen in einer Spalte, aber Sie möchten sie nur einmal bei der Datenerfassung eingeben (insbesondere auf der Papierversion). Eine Lösung besteht darin, diese Spalten auf eine zweite (nicht gedruckte) Seite in der Tabelle zu verschieben und die Kopf- und Fußzeilen so anzupassen, dass die Informationen in der Papierversion eingegeben werden. Bei der Digitalisierung muss sichergestellt werden, dass die Informationen in die Spalte eingegeben werden.

Die Art und Weise, wie Sie die Informationen eingeben (also die Art und Weise, wie Sie Ihre Kopf- und Zelleninhalte gestalten) kann unterschiedlich sein, abhängig von der Analyse, die Sie durchführen möchten. Man sollte immer noch versuchen, möglichst generisch und objektiv zu sein und über zusätzliche Analysen nachdenken, die man vielleicht durchführen möchte.


Als Beispiel Nehmen wir an, Sie interessieren sich für die Darstellung, wenn der Anteil der Blumen mit einer Länge von mehr als 6 mm in drei iris Arten unterschiedlich ist. Sie können geneigt sein, eine echte oder falsche Spalte `aufzuzeichnen ist sepal-longer-than 6cm`, aber dies beschränkt die Analyse, die Sie durchführen können. Eine bessere Lösung besteht darin, die Länge der Sepal (in mm) aufzuzeichnen und die Kategorisierung später automatisch zu erstellen.

Wenn du R verwendest, würdest du dann angeben, was du möchtest:
```
iris %>% ## der iris dataset ist in R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal. Länge >6, TRUE, FALSE)) %>% ## dies erstellt die neue Spalte
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Species)) + ggplot2::geom_bar() ## dies zeigt die Daten an
```

Header-Namen sollten mit Vorsicht ausgewählt werden und wenn nicht klar ist, was gemeint ist und welche Einheit verwendet wird Sie möchten vielleicht eine Erklärung in einem externen Dokument hinzufügen. Sie können auch eine Tabellenkalkulation an einen Kollegen weitergeben, um Rückmeldungen darüber zu erhalten, wie verständlich Ihr Blatt ist.

Eine weitere Alternative ist, einige Erklärungen oben auf dem Blatt in den ersten Zeilen vor den Kopfzeilen hinzuzufügen. Indem man menschenlesbare Informationen am Anfang der Datei hält, kann man die Daten, die in den Headerzeilen beginnen, besser verstehen. Diese Informationen können auch helfen, diese Daten zu analysieren, indem sie sicherstellen, dass die Skripte die Erklärungszeilen ignorieren und sie nur während der Analyse berücksichtigen. Eine gute Datei mit ordentlichen Spalten und Zeilen sollte jedoch keine zusätzliche Erklärung benötigen.

Was die Headernamen betrifft, so ist die Größe der Header kein Problem für Computer. Für die menschliche Lesbarkeit ist es jedoch besser, sie kurz zu halten (bis zu 32 Zeichen).

Sie müssen nicht über die Reihenfolge der Spalten für die Analyse nachdenken, da sie für Software zur Datenanalyse keine Bedeutung hat. Damit können Sie den Parameter für den Datenerfassungsschritt vollständig optimieren.

(rr-rdm-Tabellenkalkulation)=
### Standard und Versionierung

Ein gutes Tabellenkalkulationsdesign hat lehrreiche und intuitive Header-Namen und ermöglicht sowohl die Datenerfassung als auch die Analyse. Die Erstellung eines solchen Tabellenkalkulationsentwurfs ist schwierig, da es Zeit, mehrere Iterationen und Konsens benötigt. Es ist daher vorteilhaft, vor der Gestaltung Ihrer eigenen Tabelle nach einer Standard-Tabelle zu suchen und Ihr Design offen zu teilen, sobald es erstellt wurde. Man sollte auch eine Versionsgeschichte der Tabellenkalkulationen verwenden (je nach Entwicklung), und das Analyseskript sollte die Versionsnummer der Tabelle angeben. Die Dokumentation der Tabellenkalkulation, ihre Versionsgeschichte und die Ontologien, mit denen sie verknüpft ist, können für zukünftige Benutzer nützlich sein.

(rr-rdm-Tabellenkalkulations-Tipps-Team)=
### Arbeit in einem Team: Wrap-up

Wenn Sie mit einem Team an der Datenerfassung arbeiten, stellen Sie sicher, dass
- Jeder verwendet die gleiche Software (und die Software-Version), um die Daten einzugeben.
- Jeder verwendet die gleiche Version der Tabellenkalkulationsvorlage.
- Jeder versteht, was jede Spalte repräsentiert, und die Einheit, die verwendet werden soll.
- Jede Spalte hat einen definierten Standard, wie man Daten in sie eintragen kann oder eine Klassifikation von Begriffen, die man verwenden kann.
- Eine Person ist für die Beantwortung vermeintlicher Fragen während der Datenerfassung verantwortlich.
- Jede Tabellenkalkulation wird vor dem Einstieg in den Analyseworkflow überprüft, und zwar so schnell wie möglich.


(rr-rdm-Tabellen-Zusammenfassung)=
## Summary

Tabellenkalkulationen können zwar eine sehr benutzerfreundliche Art und Weise sein, Daten zu sammeln und zu teilen, aber sie können auch die Quelle von Fehlern sein, wenn sie missbraucht werden. Wenn man einen reproduzierbaren Workflow für Analysen entwickeln will, sollte man die Tabelle sowohl für die Computer- als auch für die menschliche Lesbarkeit entwerfen und noch vor Beginn der Datenerfassung sollten sie überlegen, was ihre Datenanalyse erleichtern würde. Insbesondere die Datenmanipulation und -analyse in Tabellenkalkulationen wird am besten vermieden, da sie zu nicht reproduzierbaren Workflows führt. Die Verwendung der Versionskontrolle und das Lesen der Daten sind zwei zusätzliche Datenverwaltungsmethoden, die Unfälle verhindern können.

Verwenden Sie eine README [{term}`def<README>`] Datei und andere Strukturen, um Namenskonventionen zu erklären. Es wird anderen deutlich machen, was die Datei- und Header-Bezeichnung ist und welche Kriterien bei der Gestaltung eines Analyseworkflows zu beachten sind. Wenn Sie in einem Team arbeiten, sollten Sie sich besonders um die Konventionen kümmern und sicherstellen, dass jeder ihnen folgt.

Um mehr über die Datenorganisation in Tabellenkalkulationen zu erfahren, Sie können einen Blick auf den Unterricht für Datenblätter für [Sozialwissenschaftler](https://datacarpentry.org/spreadsheets-socialsci/) und [Ökologen](https://datacarpentry.org/spreadsheet-ecology-lesson/) werfen.
