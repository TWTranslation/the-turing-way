(rr-rdm-dmp)=
# Datenmanagement-Plan

Ein Datenmanagementplan (DMP) oder Ausgabemanagementplan ist ein Dokument, das beschreibt, wie Ihre Forschungsergebnisse in Ihrem Projekt generiert, gespeichert, genutzt und geteilt werden. Ein DMP ist ein lebendiges Dokument, das bei Bedarf während des gesamten Forschungsvorhabens aktualisiert werden kann.

Mit einem Data Management Plan können Sie Ihre Daten effizient und sicher verwalten. Dies kann Datenverlust oder Datenverletzungen verhindern. Planen Sie voraus, wie Sie Ihre Daten konsistent verwalten können, können Sie später Zeit sparen! Es kann es auch einfacher machen, {ref}`Ihre Daten mit anderen zu teilen<rr-rdm-sharing>` und daher die Daten {ref}`FAIR<rr-rdm-fair>`

## Ein Datenmanagement-Plan sollte Informationen zu fünf Hauptthemen bereitstellen:

### 1. Rollen und Verantwortlichkeiten
* Es ist wichtig zu diskutieren, wer während des Lebenszyklus eines Forschungsprojekts für verschiedene Aufgaben verantwortlich ist. Legen Sie fest, wer für die Verwaltung der Daten und des Codes verantwortlich ist, kann Verwirrung / Fehlkommunikation später im Projekt verhindern.
* Sie sollten die DMP-Empfehlungen und Anforderungen Ihres Instituts und Geldgebers prüfen. Das Bibliotheksunterstützungsteam Ihres Instituts und die Website Ihres Geldgebers sind in der Regel gute Orte um Informationen und Hilfe zu finden. Einige der Geldgeber verlangen, dass Sie ihr DMP-Template verwenden. Sie können überprüfen, ob Ihr Geldgeber oder Institut ein DMP über [DMPonline besitzt](https://dmponline.dcc.ac.uk/).

### 2. Typ und Größe der erfassten Daten und Dokumentation/Metadaten generiert
* Hier können Sie die Dateiformate auflisten, die Sie zur Erfassung, Verarbeitung und Darstellung Ihrer Daten verwenden. Wenn Sie Ihre Forschungsergebnisse später teilen möchten Standardformate für Dateien, die ohne eine bestimmte Lizenz für ein Softwareprogramm offen verwendet werden können, werden bevorzugt. Um dies zu gewährleisten, sollten Sie Ihre Dateien anpassen oder frühzeitig mit der Arbeit in diesen Formaten beginnen.
* Es kann zwischen verschiedenen Arten von Daten unterschieden werden, die im Plan separat beschrieben werden können:
    * Roh/Primärdaten: Daten aus der Quelle (behalten Sie immer eine schreibgeschützte Version der Rohdaten, damit Sie später darauf zurückkommen können!)
    * Verarbeitete Daten: eine Version der Daten, die zur Analyse oder Visualisierung modifiziert wurde
    * Abgeschlossene Daten: Daten, die in einer Publikation oder in einem Datendepot freigegeben werden können (siehe {ref}`Datenfreigabe und -archivierung <rr-rdm-sharing>` für weitere Informationen). Einige Daten-Repositories wie [Zenodo](https://zenodo.org/), erlauben die Versionierung von Datensätzen, so dass Sie Ihren fertig gestellten Datensatz aktualisieren können, wenn Sie eine andere Version freigeben möchten.
* Alle diese Arten von Daten müssen beschrieben werden, um mit Hilfe von Metadaten in den Kontext zu gelangen (siehe Abschnitt {ref}`Dokumentation und Metadaten<rr-rdm-metadata>`) und adäquater Dokumentation, die Ihnen die Zukunft ermöglichen und jeder in Ihrem Team, um die Daten zu interpretieren.
* Es ist hilfreich, die ungefähre Größe (im Bereich von MB, GB, TB oder PB) der Daten in diesen verschiedenen Stufen, weil dies Auswirkungen auf die Speicherlösungen für Sie (diskutiert in der nächsten Punkt).

### 3. Art der verwendeten Datenspeicherung und Sicherungsvorgänge, die vorhanden sind
* Überprüfen Sie den Abschnitt {ref}`für Datenspeicherung und -organisation<rr-rdm-storage>` für Speicher- und Sicherungslösungen und Möglichkeiten zur Organisation Ihrer Dateien
* Überprüfen Sie, ob mit Ihrem Projekt **Kosten** verbunden sind
    * Bevorzugte Speicherlösung (während und nach dem Projekt, siehe unten)
    * Personalkosten (wenn Sie einen Datenmanager benötigen, um empfindlichere oder große Datenmengen zu verwalten)
    * Softwarelizenzen (wie Notebooks im elektronischen Labor, siehe {ref}`Notizbücher öffnen<rr-open-notebooks>`
    * Sie können diese [Checkliste für Kosten](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) verwenden
* Insbesondere für den Code wird es wichtig sein, den Überblick darüber zu behalten, wer bestimmte Änderungen in Ihrem Daten/Code vorgenommen hat. Weitere Informationen finden Sie im Kapitel {ref}`Versionskontrolle<rr-vcs>`.
* Legen Sie fest, wer Zugriff auf die Daten hat und wer Zugriff gewährt. Mindestens eine andere Person sollte Zugriff auf Ihre Daten haben, wie z. B. Ihren Aufsichtsrat/PI/Leiter der Abteilung. Wenn Sie personenbezogene/kommerziell sensible Daten verwalten, sollte der Zugriff nur Personen gewährt werden, die mit den Daten arbeiten müssen.

### 4. Erhaltung der Forschungsergebnisse nach dem Projekt
* Überlegen Sie, ob Ihre Forschungsergebnisse öffentlich zugänglich gemacht werden können. Personenbezogene Daten oder Forschungsleistungen, die für die Anmeldung von Patenten erforderlich sind, können nicht öffentlich zugänglich gemacht werden siehe {ref}`Offene Daten Abschnitt<rr-open-data>` Wenn Daten nicht öffentlich zugänglich gemacht werden können, müssen Sie sie noch mehrere Jahre lang bewahren je nach Politik Ihres Landes, Instituts und Geldgebers.
* Sie können die Langzeitsicherung Ihrer Daten in ein Datenrepository auslagern. Weitere Informationen zur Auswahl eines geeigneten Projektarchivs finden Sie in {ref}`Daten teilen und archivieren<rr-rdm-sharing>` Abschnitt
    * Wählen Sie Repositories aus, zum Beispiel [FAIRsharing](https://fairsharing.org/) oder [empfohlenes Repository-Verzeichnis](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), , die einen persistenten Identifikator wie zum Beispiel einen DOI für Ihre Forschungsausgabe zur Verfügung stellen. Ein Repository sollte eine Konservierungspolitik haben, die festlegt, wie lange Ihre Ausgaben geheilt werden. Wenn Sie Zweifel haben, wenden Sie sich an Ihr Research Data Support Team für weitere Informationen über Datenrepositories.

### 5. Wiederverwendung Ihrer Forschungsausgaben durch andere
* Wählen Sie eine Lizenz aus, wenn Sie Ihre Ausgabe in einem Projektarchiv verfügbar machen (siehe Unterkapitel unter {ref}`Daten<rr-licensing-data>` und {ref}`Software<rr-licensing-software>` für weitere Informationen). Durch die Auswahl einer Lizenz erklären Sie anderen, wie sie Ihre Daten wiederverwenden können. Wenn Sie keine Lizenz auswählen, können andere Ihre Daten nicht wiederverwenden, ohne Sie um Erlaubnis zu bitten.
* Sie können Ihre Forschungsergebnisse mit Hilfe einer README.txt-Datei in Kontext setzen
    * Siehe {ref}`Dokumentation und Metadaten Abschnitt<rr-rdm-metadata>`

Sie können diese [-Checkliste](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) verwenden, um zu sehen, ob alles in Ihrem Datenmanagementplan enthalten ist.

## Weitere Leseempfehlungen

- [DataOne Ausbildungsmodule](https://www.dataone.org/education-modules)
- [UK Data Services Daten Management](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft Research Data Management Portal](https://www.tudelft.nl/en/library/research-data-management)
- [Videos (3-7 min) über Datenmanagement von Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
- Briney, Kristin. Datenmanagement für Forscher: Organisieren, pflegen und teilen Sie Ihre Daten für den Forschungserfolg, Pelagic Publishing, 2015.
- Briney, K.A., Coates, H. and Goben, A., 2020 Foundational Practices of Research Data Management. Forschungsideen und Ergebnisse 6: e56508. [https://doi.org/10.3897/rio.6.e56508](https://doi.org/10.3897/rio.6.e56508)
- Hart EM, Barmby P, LeBauer D, Michonneau F, Mount S, Mulrooney P, et al. (2016) Ten Simple Rules for Digital Data Storage. PLoS Comput Biol 12(10): e1005097. [https://doi.org/10.1371/journal.pcbi.1005097](https://doi.org/10.1371/journal.pcbi.1005097)
