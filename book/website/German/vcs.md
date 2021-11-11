(rr-vcs)=
# Versionskontrolle

(rr-vcs-prerequisites)=
## Voraussetzungen

| Voraussetzung                                                                                | Bedeutung | Notizen |
| -------------------------------------------------------------------------------------------- | --------- | ------- |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Hilfreich |         |

**Empfohlene Fertigkeitsstufe**: _Anfänger-Mittelstufe_

(rr-vcs-Zusammenfassung)=
## Summary

Egal wie Ihre Gruppe organisiert ist, die Arbeit vieler Mitwirkender muss in einem einzigen Satz gemeinsamer Arbeitsdokumente verwaltet werden. Versionskontrolle ist ein Ansatz, um Änderungen in einer Datei oder einer Reihe von Dateien im Laufe der Zeit aufzuzeichnen, so dass Sie und Ihre Mitarbeiter deren Verlauf verfolgen können alle Änderungen überprüfen und zurücksetzen oder zu früheren Versionen zurückkehren. Die Verwaltung von Änderungen oder Überarbeitungen von Informationen, die in einer Datei oder einem Projekt gemacht werden, nennt man Versionierung.

In diesem Kapitel diskutieren wir die besten Praktiken, die unabhängig von Werkzeugen relevant sind. Versionierungspraktiken ergeben sich hauptsächlich aus dem Management von Änderungen in den Code-Repositorys. In Wirklichkeit können Sie jedoch die Versionskontrolle für fast jede Art von Datei auf einem Computer verwenden. Zum Beispiel kann die Versionskontrolle beim Schreiben eines Papiers mit mehreren Mitarbeitern dazu beitragen, zu verfolgen, was sich geändert hat, wer sie geändert hat und welche Updates durchgeführt wurden.

Verschiedene Versionskontrollsysteme können über ein Programm mit einer grafischen Benutzeroberfläche, Webbrowser-basierten Anwendungen oder Kommandozeilenwerkzeugen genutzt werden. Wir alle haben einen einfachen Ansatz zur Dateiversionierung gesehen, bei dem verschiedene Versionen einer Datei mit einem anderen Namen gespeichert werden. Tools wie Google Drive und Dropbox bieten Plattformen an, um Dateien zu aktualisieren und sie gemeinsam mit anderen in Echtzeit zu teilen. In Werkzeugen wie [Google Docs](https://docs.google.com/) oder [HackMD](http://hackmd.io/) existiert eine ausgefeiltere Versionsverwaltung. Diese erlauben Kollaborateuren Dateien zu aktualisieren während sie jede Version in ihrer Versionsgeschichte speichern (wir werden dies im Detail besprechen). Erweiterte Versionskontrollsysteme (VCS) wie [Git](https://en.wikipedia.org/wiki/Git), [Mercurial](https://www.mercurial-scm.org/), und [SVN](https://subversion.apache.org/) bieten wesentlich leistungsfähigere Werkzeuge.

Dieses Kapitel zielt darauf ab, die allgemeinen Grundsätze zu behandeln, die allen fortgeschrittenen Versionskontrollsystemen und bewährten Praktiken zugrunde liegen, die für alle diese Systeme gelten. Wir diskutieren viele Tools und Funktionen, aber wir ermutigen Leser, Funktionen zu verwenden, die für ihre Arbeit nützlich sind und Tools, mit denen sie bequem sind. Die meisten Anweisungen in diesem Kapitel werden auch auf Git ausgerichtet sein, das am häufigsten von Forschern verwendet wird, und ein Web-basierter Git-Repository-Hosting-Service, [GitHub](https://github.com/), der Online-Kollaborationen erleichtert.

Später in diesem Kapitel diskutieren wir auch die Versionskontrolle für Daten, , die verwendet wird, um Überarbeitungen großer Datenmengen zu verfolgen, insbesondere wenn sie kooperativ arbeiten. Es ist nützlich zu wissen, dass Daten flüchtig sein können und Versionierung kann die Reproduzierbarkeit Ihrer wissenschaftlichen Analysen verbessern.

```{figure}  ../figures/project-history.jpg
---
Name: Projektverlauf
alt: Kontrast in der Projektverlaufsverwaltung. Links - Auswahl zwischen mehrdeutig benannten Dateien. Auf der rechten Seite - Auswahl zwischen aufeinander folgenden Versionen (von V1 bis V6).
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-nützlich)=
## Motivation und Hintergrund

Versionskontrolle hilft uns zu verstehen, welche Änderungen wir in der Vergangenheit vorgenommen haben oder warum wir eine spezielle Analyse durchgeführt haben sogar Wochen oder Monate später. Mit Hilfe von Kommentaren und Commit-Nachrichten kann jede Version erklären, welche Änderungen sie im Vergleich zu den vorherigen Versionen enthält. This is helpful when we share our analysis (not only data), and make it auditable or **reproducible** - which is good scientific practice.

Ein Versionsverwaltungssystem speichert sauber eine Geschichte von Änderungen und wer sie gemacht hat, so dass es immer noch leicht ist, auf sie zuzugreifen Ihr Arbeitsverzeichnis wird nicht durch den Schutt früherer Versionen überdeckt, die notwendig sind, um nur im Fall zu bleiben. Ähnlich wie bei der Versionskontrolle es gibt keine Notwendigkeit, Codechunks zu hinterlassen, falls Sie jemals wieder auf eine alte Version zurückkommen müssen.


Schließlich ist die Versionskontrolle für kollaborative Projekte von unschätzbarem Wert, bei denen verschiedene Leute gleichzeitig am gleichen Code arbeiten und auf der Arbeit des anderen aufbauen. Sie ermöglicht die Nachverfolgung der von verschiedenen Personen vorgenommenen Änderungen und kann die Arbeit der Menschen automatisch kombinieren und spart viel Mühe, dies manuell zu tun. Die Verwendung der Versionskontrolle für Ihr Forschungsprojekt bedeutet, dass Ihre Arbeit vollkommen transparent ist, und weil alle Ihre Aktionen aufgezeichnet werden, ermöglicht es anderen, Ihre Studien zu reproduzieren. Darüber hinaus Hosting-Dienste wie {ref}`GitHub<cl-github-novice-motivation>` bieten eine Möglichkeit, strukturierter zu kommunizieren und zusammenzuarbeiten B. in Pull Requests, Code Reviews und Probleme.
