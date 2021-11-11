(rr-checklist-for-code-review)=
# Checkliste für Codeüberprüfung

In diesem Abschnitt werden einige Checklisten sowohl für den Codierer als auch für den Prüfer als Teil eines formalen Überprüfungsprozesses dargestellt. Die Checklisten der Überprüfer werden in zwei Kategorien aufgeteilt: eine für das gesamte Programm und eine für einzelne Dateien oder vorgeschlagene Änderungen.

Die Listen werden mit einem Schwerpunkt auf der guten Software-Engineering-Praxis erstellt und sollen eine Quelle der Inspiration sein. Bei der Bewertung der Checklisten wird empfohlen, zu prüfen, inwieweit das genannte Element umgesetzt wird. Einige Elemente auf den Listen gelten möglicherweise nicht für Ihr Projekt oder Ihre Programmiersprache, in diesem Fall sollten sie ignoriert werden.

In jedem Fall ist es das Ziel, Ihre Programmiererfahrung zu nutzen, um herauszufinden, wie Sie den Code verbessern können.

## Für den Programmierer

- Wird der neue Code den geforderten Standards des Projekts gerecht? Die Standards werden typischerweise unter `Richtlinien für das Projekt geschrieben, zu dem Sie beitragen.`
- Is there [documentation](#documentation) that meets the required standards of the project?
- Folgen Sie einer deklarierten {ref}`Styleguide<rr-code-quality>` für das Projekt?
- Gibt es neue [Tests](#tests) für das neue Material, basierend auf den geforderten Standards des Projekts?
  - Werden diese Tests lokal bestanden?
  - Bestehen die Tests im Rest der Codebasis noch lokal?
- Erstellen Sie die Pull-Anfrage.
- Viele {ref}`kontinuierliche Integration (CI)<rr-ci>` Systeme werden überprüfen, ob die Tests im Hauptprojekt automatisch bestehen, sobald Sie einen Pull-Request erstellen. Wenn das Projektarchiv eine CI verwendet, stellen Sie sicher, dass alle Builds und Tests abgeschlossen sind. Konsultieren Sie die CI-Berichte, um zu sehen, ob Ihr Code die Tests im Hauptprojekt zum Scheitern bringt.
- Falls nötig, bitte jetzt formell um eine Überprüfung.

## Für den Prüfer

- Überprüfen Sie die erforderlichen Standards des Projektes. Die Standards werden typischerweise unter `Richtlinien für das Projekt geschrieben, zu dem Sie beitragen.`
- Überprüfen Sie den Code erfüllt das Basisprojekt {ref}`style guide<rr-code-quality>`, wenn dies nicht automatisch von {ref}`kontinuierliche Integration (CI) überprüft wird<rr-ci>`.
- Entsprechen die [Tests](#tests) und [Dokumentation](#documentation) den Standards?
- Ist der gesamte Code leicht verständlich? Abhängig von der Sprache können Dateien Schnittstellen, Klassen oder andere Typdefinitionen und Funktionen enthalten (siehe [Architektur](#architecture)). Die wesentlichen architektonischen Konzepte lassen sich wie folgt überprüfen:
  - Prüfen Sie die [Schnittstellen](#interfaces) Listen.
  - Prüfen Sie die [Klassen und Typen](#classes-and-types) Listen.
  - Prüfen Sie die [Funktions-/Methodendeklarationen](#function-method-declarations) Listen.
  - Prüfen Sie die [Funktions-/Methodendefinitionen](#function-method-definitions) Listen.
- Sind die [Tests](#tests) wirklich sicher, dass der Code stabil ist?
  - Gibt es Fehler oder andere Mängel?
- Werden [Sicherheitsprobleme](#security) korrekt behandelt?
  - Überprüfen Sie die [Sicherheit der neuen Codes](#security-of-new-codes).
- Erfüllt der neue Code die [rechtlichen Anforderungen](#legal)?

## Checkliste für Programmebene

Hier ist eine Liste der Dinge, die beim Betrachten des Programms als Ganzes berücksichtigt werden müssen und nicht beim Betrachten einer einzelnen Datei oder Änderung.

### Dokumentation

Dokumentation ist eine Voraussetzung für die Verwendung, Entwicklung und Überprüfung des Programms. Jemand, der nicht an Ihrem Projekt beteiligt ist, sollte verstehen, was Ihr Code tut, und welche Vorgehensweise Sie verfolgen. Hier sind einige Dinge zu überprüfen.

- Gibt es eine Beschreibung des Zwecks des Programms oder der Bibliothek?
- Sind die detaillierten Anforderungen aufgeführt?
- Sind die Anforderungen nach [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method) rangiert?
- Sind die Verwendung und Funktion von Drittanbieterbibliotheken dokumentiert?
- Ist die Struktur/Architektur des Programms dokumentiert? (siehe unten)
- Gibt es eine Installationsanleitung?
- Gibt es ein Benutzerhandbuch?
- Gibt es Dokumentation, wie man mitwirkt?
  - Einschließlich der Einreichung von Änderungen
  - Inklusive der Dokumentation Ihrer Änderungen

### Architektur

Diese Elemente sind vor allem für größere Programme wichtig, können aber auch für kleine Programme gut sein.

- Ist das Programm in klar getrennte Module aufgeteilt?
- Sind diese Module so klein wie möglich?
- Gibt es eine klare, hierarchische oder schichtige Abhängigkeitsstruktur zwischen diesen Modulen?
  - Wenn nicht, sollte die Funktionalität neu angeordnet werden, oder vielleicht werden stark voneinander abhängige Module kombiniert.
- Kann das Design vereinfacht werden?

### Sicherheit

Wenn Sie Software machen, die für die Außenwelt zugänglich ist (z.B. eine Web- -Anwendung), dann wird Sicherheit wichtig. Sicherheitsprobleme sind Mängel, , aber nicht alle Mängel sind Sicherheitsprobleme. Ein sicherheitsorientiertes Design kann helfen, die Sicherheitswirkung von Fehlern zu mildern.

- Welche Module beschäftigen sich mit Benutzereingabe?
- Welche Module generieren Ausgabe?
- Werden Eingabe- und Ausgabefach aufgeteilt?
  - Falls nicht, erwägen Sie separate Module, die alle Eingaben und die Ausgabe verwalten, so dass die Validierung an einem Ort erfolgen kann.
- In welchen Modulen sind nicht vertrauenswürdige Daten vorhanden?
  - Je weniger desto besser.
- Ist nicht vertrauenswürdige Daten abgetrennt?
  - Idealerweise validieren Sie im Eingabemodul und übergeben nur validierte Daten an andere Teile.

### Rechtlich

Als Entwickler solltest du auf die Rechte der Schöpfer des von dir verwendeten Codes achten. Hier sind einige Dinge zu überprüfen. Wenn in Zweifel bestehen, fragen Sie jemanden mit Erfahrung in der Lizenzierung um Ratschläge.

- Sind die Lizenzen aller verwendeten Module/Bibliotheken dokumentiert?
- Werden die von diesen Lizenzen festgelegten Anforderungen erfüllt?
  - Sind die Lizenzen dort enthalten, wo sie benötigt werden?
  - Sind die Copyright-Angaben im Code enthalten, wo es erforderlich ist?
  - Sind in der Dokumentation gegebenenfalls Copyright-Angaben enthalten?
- Sind die Lizenzen aller Teile miteinander kompatibel?
- Ist die Projektlizenz mit allen Bibliotheken kompatibel?

## Datei-/Ebenen-Checkliste ändern

Wenn du einzelne Änderungen oder Dateien in einem Pull-Request überprüfst, wird der -Code selbst Gegenstand der Prüfung. Abhängig von der Sprache können Dateien Schnittstellen, Klassen oder andere Typdefinitionen und Funktionen enthalten. Alle sollten überprüft werden.

### Schnittstellen

- Ist die Schnittstelle dokumentiert?
- Ist das Konzept, das es Modelle macht Sinn?
- Kann sie weiter aufgeteilt werden? (Schnittstellen sollten so klein wie möglich sein)

Beachten Sie, dass die meisten der folgenden Elemente eine objektorientierte Programmierung annehmen, die möglicherweise nicht für den von Ihnen gesuchten Code relevant ist.

### Klassen und Typen

- Ist die Klasse dokumentiert?
  - Werden externe Programme von der Klasse dokumentiert?
- Hat sie eine einzige Verantwortung? Kann sie geteilt werden?
- Wenn es so konzipiert ist, dass es verlängert wird?
- Wenn es nicht so konzipiert ist, dass es verlängert wird, ist es dann geschützt?
- Wenn sie von einer anderen Klasse abgeleitet wird, können Sie dann ein Objekt dieser Klasse durch eine ihrer Elternklasse ersetzen?
- Ist die Klasse testbar?
  - Sind die Abhängigkeiten klar und eindeutig?
  - Hat sie eine kleine Anzahl von Abhängigkeiten?
  - Ist es von Schnittstellen und nicht von Klassen abhängig?

### Funktions-/Methodendeklarationen

- Gibt es Kommentare, die die Absicht der Funktion oder Methode beschreiben?
- Sind Input und Ausgabe dokumentiert? Einschließlich Einheiten?
- Sind Vor- und Nachbedingungen dokumentiert?
- Werden Randfälle und ungewöhnliche Dinge kommentiert?

### Funktions-/Methodendefinitionen

- Werden Randfälle und ungewöhnliche Dinge kommentiert?
- Gibt es einen unvollständigen Code?
- Könnte diese Funktion aufgeteilt werden (ist sie nicht zu lang)?
- Funktioniert das? Führen Sie beabsichtigte Funktion, Logik korrekt, ...
- Ist es einfach zu verstehen?
- Gibt es redundante oder doppelte Kodex? (DRY)
- Haben Schleifen eine eingestellte Länge und beenden sie richtig?
- Kann Debugging oder Protokollierungscode entfernt werden?
- Kann einer der Codes durch Bibliotheksfunktionen ersetzt werden?

### Sicherheit von neuen Codes

- Wenn du eine Bibliothek verwendest, überprüfst du die Fehlermeldungen, die sie zurückgibt?
- Werden alle Dateneingaben überprüft?
- Werden die Ausgabewerte korrekt geprüft und kodiert?
- Sind ungültige Parameter korrekt?

### Tests

- Prüfen Sie wirklich, wozu sie eigentlich dienen sollen?
- Wird die Grenzkontrolle durchgeführt?
- Wird ein Test-Framework und/oder eine Bibliothek verwendet?
