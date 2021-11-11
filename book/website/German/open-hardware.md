(rr-open-hardware)=
# Hardware öffnen

"Hardware öffnen", oder "Open-Source-Hardware" [{term}`def<Open Source Hardware>`], bezieht sich auf die Designspezifikationen eines physikalischen Objekts, die so lizenziert sind, dass dieses Objekt untersucht werden kann, modifiziert, erstellt und von jedermann verteilt. Wie Open-Source-Software, der "Quellcode" für offene Hardware - Schematik, Blaupausen, Logik-Designs, Computer-Aided Design (CAD)-Zeichnungen oder -Dateien und ähnliches können von jedem modifiziert oder verbessert werden. Benutzer mit Zugriff auf die Werkzeuge, die diese Quelldateien lesen und bearbeiten können, können das physische Gerät und den ihm zugrunde liegenden Code aktualisieren und verbessern und, wenn sie wollen, fahren Sie fort, solche Änderungen zu teilen.

Der Quellcode der offenen Hardware sollte leicht zugänglich sein, und seine Komponenten sind vorzugsweise für jedermann leicht zu erhalten. Im Wesentlichen beseitigt offene Hardware gemeinsame Hindernisse bei der Gestaltung und Herstellung von physischen Waren; Es bietet so viele Menschen wie möglich die Möglichkeit zu konstruieren, neu zu mischen und ihr Wissen über Hardware-Design und Funktion.

Es sei darauf hingewiesen, dass offene Hardware nicht notwendigerweise frei ist. Units may still be sold (by the original designer or by others), but users *could* build them from scratch. Ob sie die Einheit kaufen wollen oder nicht, Benutzer können immer noch ein vollständiges Verständnis davon erhalten, wie die Hardware aus verfügbaren Dokumentationen, Designs und ähnlichem funktioniert.

(rr-open-hardware-warum)=
## Warum Offene Hardware?

Offene Hardware ermöglicht es Forschern zu verstehen, was ihre Ausrüstung tut, wie sie es tut. und zu überprüfen, ob es es richtig macht, anstatt ein gewisses Vertrauen zu erweitern. Da man sich bewusst ist, wie die Ausstattung, die ein Ergebnis erzeugt, funktioniert, stellen die Forscher bei der Bewertung dieser Ergebnisse auf eine stabilere Basis. Offene Hardware macht die Forschung auch reproduzierbarer, da Forscher, die die Ergebnisse überprüfen wollen, dasselbe tun können.

Weitere Vorteile offener Hardware sind der Schutz vor Einschaltung. Proprietäre Software für die Kerninfrastruktur erhöht das Risiko, sich durch die Hersteller- oder Technologie einzuloggen. Wenn dies geschieht, Forscher können der Gnade von Anbietern Preiserhöhungen und erfahren einen Mangel an Flexibilität können sie nicht leicht und leicht entkommen. Und wenn Forscher ihre Ausrüstung besser an ihre Bedürfnisse anpassen wollen ist es viel einfacher, dies zu tun (und möglicherweise nur legal) im Fall von Open-Source-Hardware.

(rr-open-hardware-elemente)=
## Elemente eines Open-Source-Hardware-Projekts

Hier sind einige Dateien, die Sie bei der Veröffentlichung Ihres Open-Source-Hardwareprojekts teilen sollten. Du musst sie nicht alle veröffentlichen, aber je mehr du teilst, desto mehr profitiert die Gemeinschaft. Es gibt hier viele Überschneidungen mit Dateien, die in Open-Source-Software-Projekte enthalten sind.

(rr-open-hardware-elements-overview)=
### Übersicht und Einführung
Ihr Open-Source-Hardware-Projekt sollte eine allgemeine Beschreibung der Identität und des Zwecks der Hardware enthalten, so weit wie möglich für ein allgemeines Publikum geschrieben. Das heißt, erklären, was das Projekt ist und was es ist, bevor Sie in die technischen Details.

(rr-open-hardware-elements-licence)=
### Eine Lizenz
Eine entsprechende Lizenz für das offene Hardware-Projekt und dessen Inhalt gewährt jedem die Erlaubnis zur Wiederverwendung modifizieren und verteilen Sie die verschiedenen Komponenten eines Projekts gemäß den genannten Bedingungen (zum Beispiel müssen sie Ihren Beitrag bestätigen).

(rr-open-hardware-elements-design)=
### Originale Designdateien

Dies sind die Quelldateien, die Sie verwenden würden, um Änderungen am Design der Hardware vorzunehmen. Der Akt der gemeinsamen Nutzung dieser Dateien ist die Kernpraxis der Open-Source-Hardware.
- Ideal, Ihr Open-Source-Hardware-Projekt würde mit einer freien und Open-Source-Software-Anwendung entworfen werden, um die Möglichkeiten anderer zu maximieren es anzuschauen und zu bearbeiten.

Zum Besseren oder Schlimmer noch, Hardware-Designdateien werden oft in proprietären Programmen erstellt und in proprietären Formaten gespeichert. Es ist immer noch wichtig, diese ursprünglichen Design-Dateien zu teilen; sie stellen den ursprünglichen "Quellcode" für die Hardware dar. Sie sind die gleichen Dateien, die jemand benötigt, um Änderungen an einem bestimmten Design beizutragen.
- Versuchen Sie, Ihre Designdateien einfach für andere zu verstehen. Insbesondere organisieren sie in einer logischen Weise, kommentieren komplexe Aspekte, und beachten Sie alle ungewöhnlichen Herstellungsverfahren.
- Beispiele für Original-Design-Dateien sind 2D-Zeichnungen und computerunterstützte CAD-Dateien.

(rr-open-hardware-elements-auxiliary)=
### Hilfsdesign-Dateien

Über die ursprünglichen Designdateien hinaus ist es oft hilfreich, Ihr Design in zusätzlichen, zugänglicheren Formaten zu teilen. Zum Beispiel ist die beste Praxis Open-Sourcing ein CAD-Design zu teilen nicht nur in seinem nativen Dateiformat, aber auch in einer Reihe von austauschbaren und exportierbaren Formaten, die von anderen CAD-Programmen geöffnet oder importiert werden können.
- Es ist auch hilfreich, die Ausgabe zu bearbeiten, die leicht von Endbenutzern eingesehen werden kann, die das Design verstehen wollen (aber nicht unbedingt ändern). Eine solche Ausgabe könnte ein PDF einer Leiterplattenschablone sein. Diese Hilfedateien erlauben es den Anwendern das Design der Hardware zu studieren und manchmal sogar herstellen, sogar ohne Zugriff auf bestimmte proprietäre Softwarepakete. Beachten Sie jedoch, dass Hilfsdesign-Dateien niemals als Ersatz für originale Designdateien empfohlen werden.

(rr-open-hardware-elements-drawings)=
### Zusätzliche technische Zeichnungen
Es ist nützlich, zusätzliche technische Zeichnungen in ihren Originalformaten zu liefern, wenn sie für die Herstellung des Geräts erforderlich sind. Diese können in einem allgemein lesbaren Format wie PDF geliefert werden.

(rr-open-hardware-elements-materialien)=
### Materialrechnung

Während es vielleicht möglich ist, aus den Design-Dateien zu schließen, welche Teile eine Hardware ausmachen, Es ist wichtig, eine separate Rechnung von Materialien. Eine Materialrechnung kann eine Tabelle (z.B. CSV, XLS, Google Doc) oder einfach eine Textdatei mit einem Teil pro Zeile sein. Nützliche Dinge in der Materialrechnung sind Teilnummern, Lieferanten, Kosten und eine kurze Beschreibung jedes Teils. Machen Sie es einfach festzustellen, welches Element in der Materialrechnung welcher Komponente in Ihren Designdateien entspricht: Verwenden Sie die passenden Referenzbezeichnungen an beiden Orten, geben Sie ein Diagramm an, in dem angegeben wird, welcher Teil an welche Stelle gelangt, oder erklären Sie anderweitig die Korrespondenz.

(rr-open-hardware-elements-software)=
### Software und Firmware

Sie sollten Code oder Firmware freigeben, die für den Betrieb Ihrer Hardware erforderlich sind. Dies wird es anderen ermöglichen, es mit ihrer Hardware zu verwenden oder es zusammen mit ihren Änderungen an Ihrer Hardware zu ändern. Dokumentieren Sie den Prozess, der benötigt wird, um Ihre Software zu erstellen, einschließlich Links zu Abhängigkeiten (zum Beispiel Bibliotheken von Drittanbietern oder Tools). Es ist auch hilfreich, einen Überblick über den Zustand der Software zu geben (zum Beispiel "Stable" oder "Beta" oder "barelly working hack").

(rr-open-hardware-elements-fotos)=
### Fotos
Fotos helfen Menschen zu verstehen, was Ihr Projekt ist und wie Sie es zusammenstellen können. Es ist gut, Fotografien aus verschiedenen Blickwinkeln und in verschiedenen Stadien der Montage zu veröffentlichen. Wenn Sie keine Fotos haben, das Posten von 3D-Renderings Ihres Designs ist eine gute Alternative. In jedem Fall ist es gut, Bildunterschriften oder Texte bereitzustellen, die erklären, was in jedem Bild angezeigt wird und warum es nützlich ist.

(rr-open-hardware-elements-instructions)=
### Anweisungen und andere Erklärungen

Zusätzlich zu den Designdateien selbst gibt es eine Reihe von Erklärungen, die anderen helfen, Ihre Hardware zu erstellen oder zu verändern:
- Erstellen der Hardware: Um anderen zu helfen, Ihr Hardware-Design zu erstellen und zu ändern Sie sollten Anweisungen geben, wie Sie von Ihren Designdateien auf die funktionierende physikalische Hardware gehen können. Als Teil der Anleitung, ist es hilfreich, wenn Sie auf Datenblätter für die Komponenten/Teile Ihrer Hardware verlinken und die Werkzeuge auflisten, die für deren Zusammenstellung erforderlich sind. Wenn das Design spezialisierte Werkzeuge erfordert, sagen Sie den Leuten, wo sie zu bekommen.
- Mit der Hardware: Sobald jemand die Hardware erstellt hat, muss er wissen, wie man sie benutzt. Geben Sie Anweisungen, die erklären, was es tut, wie man es einrichtet und wie man mit ihm interagiert.
- Designrational: Wenn jemand Ihr Design ändern will, wird er wissen wollen, warum es so ist. Erklären Sie den Gesamtplan des Hardware-Designs und warum Sie die konkreten Entscheidungen getroffen haben.
- Begrenzter Jargon: Denken Sie daran, dass diese Anweisungen von jemandem gelesen werden können, dessen Expertise oder Training sich von Ihrer unterscheidet. So weit wie möglich versuchen Sie an ein allgemeines Publikum zu schreiben, Überprüfen Sie Ihre Anweisungen für Branchenjargon und geben Sie explizit an, was Sie davon ausgehen, dass der Benutzer weiß.
- Format: Die Anweisungen könnten in einer Vielzahl von Formaten wie Wiki, Textdatei, Google Doc, oder PDF sein. Denken Sie jedoch daran, dass andere Ihre Anweisungen ändern möchten, wenn sie Ihr Hardware-Design verändern so ist es gut, die originalen editierbaren Dateien für Ihre Dokumentation zur Verfügung zu stellen, nicht nur Ausgabeformate wie PDF.

(rr-open-hardware-processes)=
## Open-Source-Hardware-Prozesse und -Praktiken

(rr-open-hardware-processes-designing)=
### Hardware entwerfen

Wenn Sie vorhaben, eine bestimmte Hardware zu Open Source zu verwenden, die Befolgung bestimmter bewährter Verfahren in seinem Design wird es anderen erleichtern, die Hardware zu erstellen und zu modifizieren:

- Verwenden Sie freie und Open-Source-Software-Design-Werkzeuge (CAD: Wenn dies nicht machbar ist, versuchen Sie, kostengünstige und/oder weit verbreitete Softwarepakete zu verwenden.
- Verwende Standard- und weit verfügbare Komponenten, Materialien, und Produktionsprozesse: Vermeiden Sie Teile, die nicht für einzelne Kunden oder Prozesse verfügbar sind, die kostspielige Einrichtungskosten erfordern.

(rr-open-hardware-processes-hosting)=
### Ihre Design-Dateien Hosting

Eine primäre Möglichkeit, Ihre Dateien zu teilen, ist mit einer Zip-Datei auf Ihrer Website. Obwohl dies ein großartiger Anfang ist, macht es für andere schwierig, Ihren Fortschritt zu verfolgen oder Verbesserungen zu bewirken. Die Verwendung eines Online-Quellcode-Repositories (wie GitHub, GitLab oder NotaBug) ist vielleicht ein besserer Ort, um Ihre Open-Source-Hardware-Projekte zu speichern.

(rr-open-hardware-processes-distributing)=
### Open-Source-Hardware verteilen

- Geben Sie Links zu der Quelle (originale Designdateien) für Ihre Hardware auf dem Produkt selbst, seiner Verpackung oder seiner Dokumentation an.
- Machen Sie es einfach, die Quelle (originale Designdateien) von der Website für ein Produkt zu finden.
- Beschriftung der Hardware mit einer Versionsnummer oder einem Veröffentlichungsdatum, so dass die Benutzer das physische Objekt mit der entsprechenden Version seiner Design-Dateien abgleichen können.
- Im Allgemeinen geben Sie klar an, welche Teile eines Produkts Open Source sind (und welche nicht).
