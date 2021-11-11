(pd-Dateinamen) =
# Benennen von Dateien, Ordnern und anderen Dingen

## Voraussetzungen / empfohlene Fertigkeitsstufe

Keines.

## Summary

Indem Sie Ihre Dateien, Ordner und andere Forschungskomponenten konsequent und beschreibend benennen, können Sie Ihre Arbeit findbar machen verständlich und wiederverwendbar für Sie, Ihre Mitarbeiter und andere Personen, die an Ihrer Forschung interessiert sind. Es erlaubt anderen zu verstehen, worum es bei dem digitalen Objekt geht: Was die Dateien enthalten und wo sie zu finden sind. Darüber hinaus können Sie durch die folgenden einfachen Tipps für den Dateinamen Ihre Dateien für Computer leicht zu identifizieren und zu verarbeiten.

## Wie dies Ihnen hilft/warum dies nützlich ist

Die Verwendung guter Namen ist wahrscheinlich der einfachste Weg, um die Reproduzierbarkeit und Wiederverwendbarkeit Ihres Forschungsvorhabens zu verbessern.

## Kapitelinhalt

Es gibt drei Prinzipien, Dinge zu benennen; die ersten beiden gelten für alle Arten von Dingen und die dritte ist optional, aber wertvoll, um den Überblick über Ihre Dateien {cite:ps}`Bryan2015Filenaming`.

Dateinamen sollten sein:
1. Maschine lesbar
2. Lesbar
3. Optional: Spielen Sie gut mit der Standardbestellung


Bevor wir in die Details der Bedeutung eintauchen, sollten wir uns ein paar Beispiele für schlechte und gute Dateinamen ansehen.

| :Cross_mark: Schlecht                                        | ✔️ Gut                                            |
| ------------------------------------------------------------ | ------------------------------------------------- |
| `Myabstract.docx`                                            | `2020-06-08_abstract-for-sla.docx`                |
| `Joes Dateinamen verwenden Leerzeichen und Punctuation.xlsx` | `Joes-filenames-are-getting-better.xlsx`          |
| `figur 1.png`                                                | `Fig01_scatterplot-talk-length-vs-interest.png`   |
| `fig 2.png`                                                  | `Fig02_histogram-talk-attendance.png`             |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt`            | `1986-01-28_raw-data-from-Challenger-o-rings.txt` |


### Maschine lesbar

Die Namen digitaler Komponenten sollten für Computer leicht verständlich sein. Computer wie Namen haben keine Leerzeichen, bewusste Verwendung von Trennzeichen, und keine speziellen oder Akzenten. Auch die Groß- und Kleinschreibung wird beachtet, daher sind für diese `cat.txt` und `Cat.txt` verschiedene Dateien.

Die Dateinamen `Joe <unk> s Dateinamen Benutzen Leerzeichen und Punctuation.xlsx` und `JW7d^(2sl@deletethisandyourcareerisoverWx2*. xt` oben angezeigte Leerzeichen und Sonderzeichen verwenden (`<unk>`, `^`, `(`, `@`,`*`), was zu Schwierigkeiten führen kann, zum Beispiel wenn Sie den Computer eines anderen senden möchten.

Gute Dateinamen/Ordnernamen sind leicht zu suchen (auch mit regulären Ausdrücken) und leicht zu berechnen (z.B. durch Aufteilen auf `_` oder `-` Zeichen).

### Lesbar

Um menschliche Lesbarkeit zu erreichen es ist hilfreich, kurze (< 25 Zeichen) zu haben, aber beschreibende Namen, die Informationen über den Inhalt der Datei/des Ordners enthalten. Wortgrenzen im Dateinamen können durch Medial-Großschreibung als Kamel-Fall angegeben werden, zum Beispiel "FileName", oder Unterstrich, zum Beispiel "file_name". Dateinamen sollten keine Leerzeichen oder andere Sonderzeichen enthalten.

Für Weblinks oder Uniform Resource Locator (URL) heißt dieses Konzept [saubere URL](https://en.wikipedia.org/wiki/Clean_URL).

### Mit Standardbestellung gut abspielen

Um eine gute Standardsortierung zu erstellen, ist das Hinzufügen einer Nummer oder eines Datums am Anfang des Namens oft eine gute Idee. So bleiben unsere Dateien aufsteigend sortiert nach Dateiversionen oder in chronologischer Reihenfolge. Zum Beispiel organisieren wir oft alle unsere Dia-Decks, die an verschiedenen Terminen im selben Ordner erstellt wurden. Um sie nach dem Erstellungsdatum zu sortieren, können wir die Dateinamen mit `Jahr-Monatstag` starten (z.B. `2020-02-21`). Wir empfehlen die Verwendung des [ISO 8601 Standards: YYYY-MM-DD](https://en.wikipedia.org/wiki/ISO_8601) für Termine. Wenn Sie andere Zahlen verwenden, empfehlen wir sie mit Null aufzufüllen, weil Ihr Computer `003 < 004 < 020 < 100` im Gegensatz zu `100 < 20 < 3 < 4` bestellt.

Die Benennung von Ordnern nach einer logischen Nummer kann zu einem Chaos führen, wenn sich die Bestellung in der Zukunft ändert. Zum Beispiel gibt es einen Ordner mit den Buchkapiteln `01_introduction`, `02_naming_files`und `03_naming_folders`. Der Autor schreibt ein Vorwort des Buches und beschließt, es vor dem Einführungskapitel zu drücken. Dies würde bedeuten, dass sie alle Dateien umbenennen müssen, um die gewünschte Reihenfolge zu erhalten. Das geschieht viel, und das hat natürlich mehr Nachteile als Nachteile.

## Checklist

Hier sind einige Tipps für die Benennung von Dateien in einem Forschungsprojekt, die sowohl mensch- als auch maschinenlesbar sind {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Dateien konsistent benennen
- Halten Sie es kurz, aber beschreibend
- Vermeiden Sie Sonderzeichen oder Leerzeichen, um es maschinenkompatibel zu halten
- Verwenden Sie Groß- oder Unterstriche um den Menschen lesbar zu machen
- Konsistente Datumsformatierung verwenden, zum Beispiel ISO 8601: `JJJJJ-MM-TT` um die Standardreihenfolge beizubehalten
- Wenn anwendbar eine Versionsnummer einfügen
- Während der Arbeit mit Mitarbeitern eine Namenskonvention teilen/einrichten
- Eine Namenskonvention im Datenverwaltungsplan aufzeichnen


## Was du als nächstes lernst

Möchten Sie einen Ordner mit allen Dateien aus Ihrem Forschungsprojekt erstellen? Schauen Sie sich unser Kapitel über {ref}`Research compendia<rr-compendia>` an.
