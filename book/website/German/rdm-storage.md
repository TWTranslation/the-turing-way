(rr-rdm-Speicher)=
# Datenspeicherung und -organisation

Datenverlust kann für Ihr Forschungsprojekt katastrophal sein und kann oft passieren. Sie können Datenverluste vermeiden, indem Sie geeignete Speicherlösungen auswählen und Ihre Daten regelmäßig sichern.

```{figure} ../../figures/version-control.jpg
---
Höhe: 500px
Name: version-control
alt: Zwei Bilder werden angezeigt, um die Vorteile der Versionskontrolle darzustellen. Links gibt es ein Bild von zwei Menschen, die durch eine blaue Box auf einem Tisch rummen. Die Box ist voll von verstümmelten Dokumenten und die Menschen sehen verwirrt und frustriert. Die Dokumente heißen "final 2" und "let this be the final". Auf der rechten Seite sehen die beiden Personen glücklich aus und suchen nach Dateien, die klar in einem blauen Schrank organisiert sind. Es gibt "V1, V2, V3 und V4"-Trennungen, die die Dateien organisieren.
---
_The Turing Way_ Projekt Illustration von Scriberia. Originalversion auf Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-storage-where)=
## Wo Daten gespeichert werden

- Most institutions will provide a _network drive_ that you can use to store data.
- _tragbare Speichermedien_ wie Speichersticks (USB-Sticks) sind riskanter und anfälliger für Verlust und Schaden.
- _Cloudspeicherung_ bietet eine bequeme Möglichkeit, Daten zu speichern, zu sichern und abzufragen. Sie sollten die Nutzungsbedingungen überprüfen, bevor Sie sie für Ihre Forschungsdaten verwenden.

Insbesondere wenn Sie personenbezogene oder sensible Daten bearbeiten Sie müssen sicherstellen, dass die Cloud-Option mit allen Datenschutzregeln übereinstimmt, an die die Daten gebunden sind. Um eine zusätzliche Ebene der Sicherheit hinzuzufügen, sollten Sie Geräte und Dateien verschlüsseln, wenn nötig.

Ihre Einrichtung könnte lokale Speicherlösungen und -richtlinien oder -richtlinien liefern, die einschränken, was Sie verwenden können. Daher empfehlen wir Ihnen, sich mit Ihren lokalen Richtlinien und Empfehlungen vertraut zu machen.

Wenn Sie bereit sind, die Daten an die breitere Gemeinschaft zu verteilen du kannst auch nach den entsprechenden Datenbanken und Repositories suchen in [FAIRsharing](https://fairsharing.org/databases), je nach Datentyp und Typ des Zugriffs auf die Daten. Mehr dazu erfahren Sie im Unterkapitel {ref}`rrr-rdm-sharing`.

(rr-rdm-storage-organisation)=
## Datenorganisation

Um Ihre Daten zu organisieren, können Sie eine Ordnerstruktur erstellen oder verwenden Sie eine vorherige Struktur (siehe ein Beispiel unten), um sicherzustellen, dass Sie Ihre Dateien finden können.

-   Stellen Sie sicher, dass Sie genügend (Unter-)Ordner haben, damit Dateien im rechten Ordner gespeichert werden können und nicht in Ordnern zerstreut sind, wo sie nicht gehören, oder in großen Mengen in einem einzigen Ordner gespeichert.
-   Verwenden Sie eine klare Ordnerstruktur. Sie können Ordner anhand der Person strukturieren, die den Daten/Ordner erzeugt hat, chronologisch (Monat, Jahr, Sitzungen), pro Projekt (wie im folgenden Beispiel gemacht), oder basierend auf Analysemethoden/-ausrüstung oder Datentyp.

(rr-rdm-storage-organisation-examples)=
### Beispiele der Datenorganisation

- [diese](http://nikola.me/folder_structure.html) Ordnerstruktur von Nikola Vukovic herunterladen
- Sie können Ordnerstrukturen mit GitHub ziehen/herunterladen: [Diese Vorlage](https://github.com/bvreede/good-enough-project) von Barbara Vreede, basieren auf [Cookiecutter](https://github.com/cookiecutter/cookiecutter), folgt den empfohlenen Verfahren für die wissenschaftliche Informatik von [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- Siehe [diese Vorlage](https://osf.io/4sdn3/) von Chris Hartgerink für die Organisation der Dateien im [Open Science Framework](https://osf.io/).

(rr-rdm-Storage-Conventions)=
## Konventionen zur Namensgebung von Dateien

Strukturieren Sie Ihre Dateinamen und erstellen Sie dafür eine Vorlage. Zum Beispiel kann es von Vorteil sein, Ihre Dateien mit dem Datum zu benennen, an dem jede Datei erzeugt wurde (wie `JJJJJMMDD`). Dies wird Ihre Dateien chronologisch sortieren und einen eindeutigen Identifikator für jede Datei erstellen. Das Dienstprogramm dieses Prozesses ist offensichtlich, wenn Sie mehrere Dateien am selben Tag generieren, die möglicherweise versioniert werden müssen, um Überschreiben zu vermeiden.


Einige weitere Tipps für die Dateinamensbezeichnung beinhalten:
- Datums- oder Datumsbereich des Experiments verwenden: `JJJJJJMMDD`
- Dateityp verwenden
- Den Namen / Initialen des Forschers verwenden
- Verwende die Versionsnummer der Datei (v001, v002) oder die Sprache, die im Dokument verwendet wird (ENG)
- Dateinamen nicht zu lang machen (dies kann Dateiübertragungen komplizieren)
- Vermeide Sonderzeichen (?\!@\*%{[<>) und Leerzeichen

Sie können die Datei Namenskonvention in einer README.txt-Datei erklären, so dass sie auch für andere sichtbar wird, was die Dateinamen bedeuten.

(rr-rdm-storage-backups)=
## Sicherungen

Um den Verlust Ihrer Daten zu vermeiden, sollten Sie gute Backup-Praktiken anwenden.

- Sie sollten 2 oder 3 Kopien Ihrer Dateien haben, gespeichert auf
- mindestens 2 verschiedene Speichermedien
- an verschiedenen Orten.

Je wichtiger die Daten sind und je öfter sich die Datensätze ändern, desto häufiger sollten Sie sie sichern. Wenn Ihre Dateien eine große Menge Speicherplatz benötigen und das Backup alle sich als herausfordernd oder teuer erweist können Sie eine Reihe von Kriterien für die Sicherung der Daten erstellen. Dies kann Teil Ihres Datenmanagement-Plans (DMP) sein.
