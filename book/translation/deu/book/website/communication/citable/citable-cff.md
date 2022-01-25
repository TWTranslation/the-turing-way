(cm-citable-cff)=
# Software-Zitat mit CITATION.cff

Im [Zitierungsdateiformat](https://citation-file-format.github.io) können Sie Zitatmetadaten zur Verfügung stellen, für Software oder Datensätze, in Klartext-Dateien, die sowohl von Menschen als auch von Maschinen leicht zu lesen sind.

```{figure} ../../figures/recognition.jpg
---
Name: Erkennung
Breite: 500px
alt: Erforschen Sie Softwareentwickler, indem Sie Software zitierbar machen.
---
Erforsche Softwareentwickler, indem du Software zitierbar machst. _The Turing Way_ Projekt-Illustration von Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Um diese Metadaten bereitzustellen, schreiben Sie zuerst eine `CITATION.cff` Datei und fügen Sie diese in Ihre Software oder Ihren Datensatz ein. G G G `CITATION. ff` Datei aggregiert die Informationen in einem Schlüsselwert-Format, das von Menschen leicht interpretiert und aktualisiert werden kann. und einfach zu analysieren und mit vorhandenen Werkzeugen zu konvertieren.

(cm-citable-cff-why)=
## Warum `CITATION.cff` verwenden?

Es gibt große Vorteile bei der Verwendung einer `CITATION.cff` Datei für die Zitierinformationen für Ihre Software!

Es ist einfacher für Sie: Wenn Sie Ihren Software-Quellcode auf GitHub hosten und ein `ZIEL haben. ff` in Ihrem Repository können Sie die Zenodo-GitHub Integration verwenden, um automatisch neue Versionen der Software zu veröffentlichen. Zenodo verwendet die Informationen von `CITATION.cff` und zeigt sie zusammen mit der Publikation. Sie müssen diese Informationen nicht mehr manuell auf Zenodo bearbeiten.

```{figure} ../../figures/software-credit.jpg
---
Name: Software Credit
Breite: 500px
alt: Mehr Credits für die Softwareentwickler.
---
Weitere Credits für die Softwareentwickler. _The Turing Way_ Projekt-Illustration von Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Es ist einfacher für die Benutzer Ihrer Software:
1. Sie können die Zitierinformationen direkt von `CITATION.cff` verwenden, um Ihre Software zu zitieren.
2. Wenn dein Quellcode auf GitHub ist, werden die Zitierinformationen in der Sidebar als formatierte Zitation und auch im BibTeX-Format angezeigt. Benutzer können entweder kopieren, sie in ihre Manuskripte einfügen und/oder Ihre Software korrekt zitieren.
3. Wenn sie den Zotero-Referenz-Manager verwenden, können sie die Zitat-Metadaten direkt aus der `ZIEL importieren. ff` Datei im GitHub Repository an ihren Referenz-Manager.

(cm-citable-cff-how-to-create)=
## So erstellen Sie eine `CITATION.cff` Datei

Die `CITATION.cff` ist eine `YAML` Datei mit eigener Schema-Definition. Das Schema definiert die Regeln für jedes Feld, welche Felder erforderlich sind und welche optional sind. Der Benutzer muss diesen Regeln folgen, um eine gültige `CITATION.cff` Datei zu erstellen.

Ein minimales Beispiel für eine gültige `CITATION.cff` Datei, die nur die benötigten Schlüssel enthält, würde so aussehen:

```yaml
Verfasser:
  - Familiennamen: Doe
    nennt Namen: John
cff-version: 1.2.
Nachricht: "Wenn Sie diese Software verwenden, zitieren Sie sie bitte mit den Metadaten aus dieser Datei."
Titel: "Meine Forschungssoftware"
```

Das Hinzufügen weiterer Felder kann Ihnen jedoch helfen, beschreibende Metadaten Ihrer Software zu erstellen. Das folgende Beispiel bietet auch wichtige Informationen zu Software wie Version, Veröffentlichungsdatum, DOI, Lizenz, Schlüsselwörter.

```yaml
abstract: "Das ist meine fantastische Forschungssoftware. Es macht viele Dinge.
Autoren:
  - Familiennamen: Doe
    geben Sie Namen: John
    Orcid: "https://orcid. rg/00-0001-8888-9999"
cff-Version: 1.2.
Datum: "2021-10-13"
Identifikatoren:
  - description: "Dies ist die Sammlung von archivierten Snapshots aller Versionen meiner Forschungssoftware"
    Typ: doi
    Wert: 10. 281/zenodo.123456
  - Beschreibung: "Dies ist der archivierte Schnappschuss der Version 0. 1.2 meiner Forschungssoftware"
    Typ: doi
    Wert: 10.5281/zenodo. 23457
Stichwörter:
  - "amazing software"
  - research
license: Apache-2.
Nachricht: "Wenn Sie diese Software verwenden, zitieren Sie sie bitte mit den Metadaten aus dieser Datei."
Repository-Code: "https://github. om/citation-file-format/my-research-software"
Titel: "Meine Forschungssoftware"
Version: 0.11.2
```

Die vollständige Liste der Felder ist in der [CFF Schema-Anleitung](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) beschrieben. Im nächsten Abschnitt können Sie herausfinden, welche Tools Ihnen beim Erstellen und Verwenden der `CITATION.cff` Datei helfen können.

### Schritte um Ihre Software Zitatbar zu machen

Um Ihre Software zitierbar zu machen, müssen Sie die folgenden zwei Schritte folgen.

#### Schritt 1. Erstelle eine `CITATION.cff` Datei

Es gibt zwei Möglichkeiten, eine `CITATION.cff` Datei zu erstellen.

1. Verwenden Sie [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), eine Web-Anwendung, die Sie durch den Prozess der Erstellung Ihrer Zitierdatei führt. Die `cffinit` hat einige Vorteile im Vergleich zur manuellen Bearbeitung wie

    - keine Notwendigkeit für die Installation zusätzlicher Tools;
    - keine manuelle Überprüfung erforderlich;
    - Anleitung für jedes Feld;
    - visuelle Rückmeldung, um Probleme anzuzeigen.

    Wir schlagen vor, `cffinit` zu verwenden, da dies die Erstellung und Validierung vereinfacht. Weitere Details zur Verwendung von `cffinit` finden Sie unter {ref}`cm-citable-cffinit`.

2. Bearbeiten Sie die Datei manuell in Ihrem Lieblings-Code-Editor. Die Nachteile dieser Methode sind die Installation der benötigten Werkzeuge auf Ihrem System und die Durchführung der Validierung. Auch die Fehlermeldungen der Validierung können relativ lang und schwer zu verstehen. Sobald Sie eine `CITATION.cff` Datei haben, muss diese validiert werden, um sicherzustellen, dass keine Probleme auftreten. Sie können Ihre `CITATION.cff` Datei auf der Befehlszeile mit dem [`cffconvert` Python Paket](https://pypi.org/project/cffconvert/) validieren.

    ```shell
    cd path/to/CITATION.cff
    cffconvert --validate
    ```

    Wenn Sie Docker bevorzugen, können Sie das [`cffconvert` Docker Bild](https://hub.docker.com/r/citationcff/cffconvert) verwenden:

    ```shell
    cd path/to/CITATION.cff
    Docker führen --rm -v ${PWD}:/app citationcff/cffconvert --validate aus
    ```

    Wenn Sie Fehlermeldungen erhalten, suchen Sie nach dem relevanten Validierungsfehler und beheben Sie ihn.

```{note}
Um sicherzustellen, dass dein GitHub Repository immer eine gültige `CITATION.cff` Datei hat, kannst du die [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Aktion verwenden.
```

#### Schritt 2. Fügen Sie Ihre `CITATION.cff` zu einem Public Code Repository hinzu

Nach dem Erstellen einer gültigen `ZEITATION. ff` Datei Sie müssen es zum Stammverzeichnis Ihres Codes oder Datenrepositorys hinzufügen, damit es leicht gefunden und zitiert werden kann.

(cm-citable-cff-updating)=
## Aktualisierung Ihrer `CITATION.cff` Datei

Wenn Sie Ihre `ZEIT aktualisieren müssen. ff` Datei, zum Beispiel um einen Autor hinzuzufügen oder um die Informationen über Releases zu ändern, müssen Sie die Datei manuell bearbeiten. Es wird empfohlen, Ihre `CITATION.cff` Datei zu aktualisieren, bevor Sie eine Software veröffentlichen.

(cm-citable-cff-how-to-cite)=
## So zitiert man `CITATION.cff`

Wenn Sie Software oder Datensätze gefunden haben, die eine `ZEIT enthalten. ff`, es gibt einige Möglichkeiten, um die Referenzinformationen zu erhalten, um sie in Ihrer Publikation zu zitieren.

- Sie können eines der Werkzeuge, wie z. B. `cffconvert` Kommandozeilenprogramm, verwenden, um Ihr `ZIEL zu konvertieren. ff` Datei in eines der [unterstützten Formate](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), wie APA, BibTeX oder EndNote.

- Alternativ, wenn die Software oder Datensätze, die Sie zitieren möchten, auf GitHub verfügbar sind, Sie können GitHub benutzen, um die Referenz entweder in APA- oder BibTeX-Formaten zu kopieren, indem Sie auf "Dieses Repository speichern" klicken (siehe den grünen Bereich im untenstehenden Bild). Weitere Details zum Software-Zitat auf GitHub finden Sie in [GitHubs Anleitung zum Software-Zitat](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  Name: github-cff-integration
  alt: Button auf GitHub, der die automatische Konvertierung der `CITATION.cff` Datei in das APA- und BibTex-Format ermöglicht.
  ---
  "Cite this repository" konvertiert automatisch die `CITATION.cff` Datei in das APA- und BibTex-Format.
  ```

  ```{note}
  "Cite this repository" Button erscheint nur, wenn es eine `CITATION.cff` Datei im Projektarchiv gibt.
  ```

(cm-citable-cff-available-tools)=
## Verfügbare Werkzeuge

Es gibt mehrere Tools, um die Erstellung und Validierung von `CITATION.cff` Dateien sowie die Konvertierung in und aus anderen Formaten zu erleichtern. Das Repository des Zitation File Formats bietet [eine Liste aller bekannten Tools](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) dafür.
