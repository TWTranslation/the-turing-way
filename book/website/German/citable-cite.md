(cm-citable-cite)=
# Zitieren von Forschungsobjekten

Sie sollten Forschungsobjekte direkt in der Zeitung dort anführen, wo sie relevant sind. Dies ist eine häufig praktizierte Art und Weise, Publikationen zu zitieren und gilt für die Erwähnung anderer Forschungskomponenten wie Daten und Software. Ein Zitat enthält folgende Informationen:
- Autor
- Titel
- Jahr der Veröffentlichung
- Publisher (für Daten, dies ist oft das Datenarchiv, wo es aufgerufen wird),
- Version (wenn angezeigt)
- Zugriffsinformationen (URL oder DOI)

Ein Zitierstil ist eine spezifische Anordnung, Reihenfolge und Formatierung von Informationen, die für ein Zitat notwendig sind. Zum Beispiel Der Stil der MLA wurde von der Modern Language Association (ursprünglich für die Geisteswissenschaften) entwickelt und der APA-Stil wurde von der American Psychological Association (ursprünglich in der Psychologie und in den Sozialwissenschaften) entwickelt.
- MLA Zitierstil verwendet das folgende Format: `Autor. "Titel der Quelle". Titel des Containers, andere Mitwirkende, Version, Number, Publisher, Veröffentlichungsdatum, Standort.`
- Der APA-Zitierstil verwendet folgendes Format: `Author. (Jahr). Titel der Datenmenge (Versionsnummer). [Abgerufen von] ***OR*** [DOI]`

Siehe [Scribbbr Citation Styles Guide](https://www.scribbr.com/citing-sources/citation-styles/). Siehe auch [FORCE11 Ressource](https://www.force11.org/node/4771).

(cm-citable-cite-data)=
## Zitierdaten

Beim Teilen eines Datensatzes, verwenden Sie dedizierte DOIs und fügen Sie eine **Datenverfügbarkeitserklärung** am Ende des Papiers oder in Online-Repository-Details (ähnlich wie im Abschnitt Bestätigung).

Beispiele für diese Aussagen finden Sie in den Richtlinien der Verlage (Forschungsdaten).

### Beispiele für Datenverfügbarkeit:

**Verwendung der Digital Object Identifier (DOI):** „Die Daten, die die Ergebnisse dieser Studie unterstützen, sind offen unter [Projektname] unter http://doi verfügbar. rg/[doi].”

**Wenn kein DOI ausgestellt wurde:**
- „Die Daten, die die Ergebnisse dieser Studie unterstützen, sind offen in [Projektname] unter [URL]verfügbar, Referenznummer [Referenznummer].“

**Wenn es einen Embargozeitraum gibt, können Sie Ihren DOI reservieren und noch einen Verweis auf den Datensatz in Ihrem Papier enthalten:**
- „Die Daten, die die Ergebnisse unterstützen, werden im [Repository-Name] unter [URL / DOI] nach einem [6 Monat] Embargo ab dem Datum der Veröffentlichung verfügbar sein, um die Kommerzialisierung von Forschungsergebnissen zu ermöglichen.“

**Wenn Daten nicht verfügbar gemacht werden können:**
- „Beschränkungen gelten für die Daten, die die Ergebnisse dieser Studie unterstützen. [Erkläre die Art der Einschränkungen zum Beispiel Wenn die Daten Informationen enthalten, die die Privatsphäre von Forschungsteilnehmern beeinträchtigen könnten] Daten werden auf zumutbare Anfrage durch Kontaktaufnahme [Name und Kontaktdaten] und mit Zustimmung von [Dritten Namen] bereitgestellt.“
-  „Die Daten, die die Ergebnisse dieser Studie unterstützen, sind auf Anfrage verfügbar. Zugriffsbedingungen und Verfahren finden Sie unter [URL für eingeschränkte Zugriffsberechtigungen wie [EASY](https://easy.dans.knaw.nl/ui/home).]“

**Weitere Beispiele für Datenverfügbarkeit:**

Weitere Beispiele finden Sie auf der [Manchester's Data Access Statements Seite](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/), die [Cambridge Data Availability Statement Beispiele](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), die Beispiele für [AMS Datenverfügbarkeitserklärung](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/)oder [Natur-Tipps zum Schreiben einer verblüffenden Datenverfügbarkeitserklärung](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-citable-cite-software)=
## Zitieren von Software

Ein Software-Zitat hat viele der gleichen Elemente wie ein Daten-Zitat, oben beschrieben, und werden in den [Software-Zitationsprinzipien](https://www.force11.org/software-citation-principles) detaillierter beschrieben. Wenn Sie andere Software verwenden, ist es entscheidend, diese korrekt zu zitieren und zuzuordnen.

Um deinen Code zitierbar zu machen, kannst du die Integration zwischen [Zenodo](https://zenodo.org/) und GitHub verwenden.

- Erstellen Sie eine Datei, um den Leuten zu sagen, wie Sie Ihre Software zitieren. Verwenden Sie diese [praktische Anleitung](https://citation-file-format.github.io/cff-initializer-javascript/) um die Datei zu formatieren.
- Verbinden Sie Ihr GitHub Konto mit einem Zenodo Konto. Diese Anleitung erklärt [wie](https://guides.github.com/activities/citable-code/).
- Sie können Zenodo sagen, welche Informationen oder Metadaten Sie mit Ihrer Software einbinden möchten, indem Sie einen `zenodo hinzufügen. son` Datei, hier [beschrieben.](https://guide.esciencecenter.nl/citable_software/making_software_citable.html).
- Drehen Sie auf Zenodo den Schalter auf die 'on'-Position für das GitHub Repository, das Sie freigeben möchten.
- Klicken Sie auf GitHub *Erstelle eine neue Version* Schaltfläche. Zenodo sollte automatisch benachrichtigt werden und sollte eine Snapshot-Kopie des aktuellen Status Ihres Projektarchivs erstellen (nur ein Zweig, ohne Chronik) und sollte diesem Snapshot auch einen persistenten Identifikator (DOI) zuweisen.
- Benutzen Sie den DOI in allen Zitationen Ihrer Software und sagen Sie allen Mitarbeitern und Benutzern, dass sie das Gleiche tun!
