(ch-Konsistenz-Struktur)=
# Struktur

Struktur bezieht sich darauf, wie _der Turing Way_ organisiert ist. Ein gutes strukturelles Framework sorgt dafür, dass _der Inhalt des Turing Way_ in geordneter Weise dargestellt wird.

(ch-konsistenz-struktur-hr)=
## Harte Anforderungen

The hard checks that deal with _The Turing Way's_ structure include:

(ch-consistency-structure-hr-emptyfiles)=
### Überprüfen Sie 1: Fügen Sie keine leeren Dateien in die `_toc.yml`

Die `_toc.yml` Datei ist der Ort, an dem _der Turing Way_ Inhaltsverzeichnis (ToC) lebt. Einige im ToC referenzierte Dateien sind leer, und deren Aufnahme bedeutet, dass die Leser zu einem leeren (Unter-)Kapitel navigieren können, während sie _die Turing Way_ lesen. Das wirkt sich negativ auf die Erfahrung des Lesers aus, wenn er durch das Buch geht.

```{figure} ../../figures/empty-toc-file.png
---
Name: Leer-toc-Datei
alt: Eine leere Datei, die im Inhaltsverzeichnis der Turing Way enthalten war. Leser können immer noch zu leeren Dateien navigieren, wenn sie in der Inhaltsliste enthalten sind.
---
Leere Dateien enthalten Turing Way's Inhaltsverzeichnis können trotzdem von Lesern abgerufen werden.
```

Ein allgemeiner Vorschlag ist es, Referenzen zu solchen Dateien aus dem ToC zu entfernen und ein Problem in _The Turing Way_ Github [repo](https://github.com/alan-turing-institute/the-turing-way) aufzuwerfen, damit Inhalte für diese Dateien geschrieben werden können. Wenn der Inhalt geschrieben wird, können die Dateien dem ToC hinzugefügt werden.

[zum Beispiel kuratiert dieses Problem](https://github.com/alan-turing-institute/the-turing-way/issues/1391) eine Liste leerer und unvollständiger Dateien, die derzeit in _The Turing Way_enthalten sind, und [schreibt dieser PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) den Inhalt für das `Datenlizenzen` Unterkapitel, das im {ref}`Bild <empty-toc-file>` angezeigt wird.

(ch-konsistenz-struktur-hr-struktur)=
### Überprüfen 2: Stellen Sie sicher, dass die Kapitel einer konsistenten Struktur folgen

_Der Turing Weg_ besteht aus fünf Anleitungen, die mehrere Kapitel und Unterkapitel enthalten. Diese Kapitel folgen jedoch nicht einer einheitlichen Struktur, die dem Leser die Erfahrung nehmen.

```{figure} ../../figures/recommended-chapter-structure.png
---
Name: Empfohlene Kapitelstruktur
alt: Die empfohlene Struktur für Kapitel in der Turing Wey. Kapitel sollten eine Landingpage mit einem Abschnitt für Voraussetzungen, Zusammenfassung, und warum das Kapitel ist nützlich. Kapitel sollten zusätzlich zum Rest des Kapitels auch eine Checkliste und ein Unterkapitel für Ressourcen haben.
---
Empfohlene Struktur für Kapitel in der Turing Wey.
```

- **Landing-Seite:**
    - Die Zielseite des Kapitels sollte Informationen über alle Voraussetzungen enthalten, die notwendig sind, um das Kapitel zu verstehen, eine Zusammenfassung des Kapitels und eine Erklärung dafür, warum das Kapitel nützlich ist.
- **Unterkapitel:**
    - Ein Kapitel kann eine beliebige Anzahl von Unterkapiteln oder gar keine enthalten. Bitte beachten Sie jedoch die nächste Anforderung bezüglich der Checkliste und der Unterkapitel der Ressourcen.
- **Checklist subchapter:**
    - Die Checklisten-Unterkapitel enthält Aktionspunkte für den Leser auf der Grundlage der im Kapitel eingeführten Konzepte.
- **Ressourcen Unterkapitel:**
    - Das Unterkapitel der Ressourcen zeigt den Leser auf andere Quellen, wo sie mehr über die im Kapitel diskutierten Konzepte erfahren können, sowie verwandte Themen zu erforschen.


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
Verweise auf diese Dateien sollten im Inhaltsverzeichnis in der Datei `_toc.yml` aktualisiert werden.
```

Lesen Sie die [-Kapitelvorlage](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) um neue Kapitelbeiträge zu strukturieren, und verwenden Sie es, um die aktuellen Kapitel in _der Turing Way_ zu bewerten. Für Kapitel, die nicht zu dieser Struktur passen, heben Sie bitte eine Pull Request.


(ch-consistency-structure-hr-toc)=
### Check 3: Fügen Sie keine 'Inhaltstabelle' in Kapiteln oder Unterkapiteln hinzu.

Einige Kapitel in _der Turing Way_ wurden mit einer handgefertigten Inhaltstabelle verfasst. Allerdings, Jupyter Book erzeugt automatisch ein dauerhaftes Inhaltsverzeichnis, das auf der linken Seite von _zu finden ist. Der Turing Way_ Buch und ein dynamisches, seitenspezifisches Inhaltsverzeichnis oben rechts auf jeder Seite. Dadurch ist ein manuell geschriebenes Inhaltsverzeichnis überflüssig und kann sich negativ auf die Erfahrung eines Lesers mit _der Turing Way_ auswirken.

```{figure} ../../figures/many-table-of-contents.png
---
Name: Viele Inhaltstabellen
alt: Ein Unterkapitel in The Turing Way mit drei Inhaltstabellen. Zwei die von Jupyter Book generiert werden und eins vom Kapitelautor.
---
Das manuell geschriebene Inhaltsverzeichnis ist unnötig, da Jupyter Book zwei separate Inhaltsverzeichnisse automatisch erzeugt.
```
#### Demo

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-structure-hr-citing)=
### Sicherstellen, dass externe Quellen korrekt zitiert und referenziert werden

Wie in der {ref}`Styleguide beschrieben<ch-style-citing>`, _The Turing Way_'s book wide references are stored in a BibTeX file called `references. ib`. Beim Schreiben neuer Inhalte sicherstellen, dass Informationen aus externen Quellen mit dem BibTeX-Format zitiert und den `Referenzen hinzugefügt werden. ib` Datei wie zutreffend.

Der {ref}`Styleguide<ch-style-citing>` zeigt, wie man eine neue Referenz zur zentralen BibTeX-Datei hinzufügen kann und zeigt, wie dieser Verweis in Ihr Schreiben aufgenommen werden kann.


(ch-konsistenz-struktur-soft-req)=
## Weiche Anforderungen

Weiche Anforderungen, die sich mit _beschäftigen. Die Struktur der Turing Way_ umfasst:

(ch-consistency-structure-sr-summary)=
### Überprüfen Sie 1: Stellen Sie sicher, dass jedes Kapitel eine gute Zusammenfassung auf der Zielseite hat

Ein Kapitel mit einer guten Zusammenfassung gibt dem Leser einen Überblick über die nachfolgenden Inhalte. Idealerweise sollten Zusammenfassungen den Grundgedanken des Kapitels kommunizieren und alle unterstützenden Details identifizieren, aber kurz und präzise sein. Zusammenfassungen sollten auch angemessen Querverweise auf die Kapitel Unterkapitel, zum Nutzen der Leser, die wollen, schnell die Themen der Zusammenfassung einführt. Kapitel in _The Turing Way_ die Zusammenfassungen enthalten, die nicht diesen Kriterien entsprechen, müssen umformuliert oder neu geschrieben werden.


(ch-Konsistenz-Struktur-sr-modular)=
### Überprüfen Sie 2: Teilt lange Kapitel in kleinere Unterkapitel, so dass sie modular sind

Lange Kapitel könnten für einige Leser schwierig zu durchgehen sein. Darüber hinaus können sehr lange Inhalte für andere Leser einschüchtern, die nur an den wichtigsten Ideen interessiert sind, über die das Kapitel spricht. Um  _daher die Turing Way_ einfacher zu lesen, sollten lange Kapitel entsprechend moduliert werden.

Wenn Sie Kapitel modular halten, stellen Sie sicher, dass seine Unterkapitel nur über einen Aspekt des Gesamtthemas sprechen. Zum Beispiel, wenn ein Kapitel über maschinelles Lernen für _die Turing Way_geschrieben werden sollte, Ein derartiges Kapitel sollte mindestens drei Unterkapitel enthalten, die jedes Schwerpunktthema „überwachtes Lernen, unüberwachtes Lernen“ und „Verstärktes Lernen“ beinhalten.
