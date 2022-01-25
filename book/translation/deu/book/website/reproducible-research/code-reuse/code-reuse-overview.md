(rr-code-reuse-recommations)=
# Übersicht der Wiederverwendung des Codes

Dieser Abschnitt enthält eine Checkliste mit Empfehlungen, um Ihre Software besser wiederverwendbar zu machen. Der Abschnitt {ref}`rrr-code-reuse-details` enthält eine ausführlichere Erklärung für jede dieser Empfehlungen. Sie können den Empfehlungen folgen, die für Ihre Art von Software besser geeignet sind, und diejenigen überspringen, die in Ihrem Fall nicht relevant sind.

## Wiederholbare Empfehlungen

1. Stellen Sie sicher, dass Sie es finden können (im Platz; das bedeutet: das Repository/Projekt zu finden)
1. Stellen Sie sicher, dass Sie es finden können (in Zeit; Bedeutung: in der Lage, eine bestimmte Version zu finden)
1. Stellen Sie sicher, dass Sie die gleiche Abfolge von Operationen ausführen können
1. Stellen Sie sicher, dass Ihre Umgebung und die Abfolge von Operationen robust sind und kein Mensch benötigt wird, um zu replizieren, was getan wurde
1. Lizenzieren Sie Ihren Code
    - mit einer Lizenz zur Wiederverwendung;
    - mit einer Lizenz, die mit den Abhängigkeitslizenzen kompatibel ist
1. Stellen Sie sicher, dass es zitierbar ist
1. Benötigte Daten einbeziehen
1. Schreibe nützliche Dokumentation*

## Re-Laufende Empfehlungen

1. Entfernen Sie hardcodierte Bits (wie Pfade, die nur auf der Festplatte existierten, auf der die Pipeline ausgeführt wurde) und machen Sie den Code modular
1. Testen Sie, ob die von Ihnen erstellten Module verschiedene Typen von Eingabedaten oder Parameter annehmen können
1. Verwandeln Sie die Module in ein Paket/Werkzeugkasten
1. Schreibe nützliche Dokumentation*

## Portable Empfehlungen
1. Stellen Sie sicher, dass Sie die Umgebung, in der sie gelebt hat wiederherstellen können
1. Schreibe nützliche Dokumentation*

## Erweiterbare Empfehlungen
1. Schreibe nützliche Dokumentation*

## Änderbare Empfehlungen
1. Stelle sicher, dass dein Code von Menschen lesbar ist
1. Stellen Sie sicher, dass Kommentare vorhanden sind
1. Schreibe nützliche Dokumentation*

Der Beobachtungsleser kann feststellen, dass `Schreiben Sie nützliche Dokumentation` für jede Wiederverwendungsstufe erwähnt wird. Das liegt daran, dass für die Wiederverwendung unterschiedliche Ebenen der Dokumentation erforderlich sind.

## Dokumentation

*Unterschiedliche Dokumentationsanforderungen für verschiedene Wiederverwendungsstufen*

Das Schreiben nützlicher Dokumentation ist eine wichtige Voraussetzung für alle Ebenen der Wiederverwendung. Für die verschiedenen Ebenen der Wiederverwendung gibt es jedoch unterschiedliche Dokumentationsanforderungen:

Die Dokumentation:
- erklärt Benutzung, spezifiziert:
  - was die Software tut; (erforderlich für Wiederholbar)
  - wie es verwendet werden kann; (erforderlich für wiederholbar)
  - welche Optionen/Parameter verfügbar sind. (erforderlich für Wiederholbar)
- enthält Beispiele, wie man es ausführt. (erforderlich für Wiederholbar)
- hat Installationsanweisungen, inklusive guter Beschreibungen für:
  - die Hardware, von der sie abhängt (zum Beispiel GPUs); (benötigt für portable)
  - das Betriebssystem, auf dem die Software getestet wurde; (erforderlich für portable)
  - Software-Anforderungen (wie Bibliotheken und Shell-Einstellungen). (erforderlich für tragbar)
