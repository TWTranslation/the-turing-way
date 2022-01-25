
(rr-code-reuse-details)=
# Detaillierte Empfehlungen für die Wiederverwendung

Stellen Sie sicher, dass Sie (oder jemand andere) Ihren Code wiederverwenden können, um genau das zu tun, was Sie getan haben. Dieser Abschnitt enthält eine einfache Checkliste mit Empfehlungen, um Ihre Software wiederverwendbarer zu machen. In diesem Abschnitt enthält eine ausführlichere Erläuterung jeder dieser Empfehlungen, mit Zeigern auf andere relevante Teile dieses Leitfadens.

## Wiederholbare Empfehlungen

In diesem Stadium müssen Sie vielleicht nicht einmal den Code öffnen und lesen können Sie wollen nur sicherstellen, dass Sie alle erforderlichen Schritte erneut ausführen und die gleichen Ergebnisse wie Sie hatten.

### 1. Vergewissern Sie sich, dass Sie es (im Leerzeichen) finden können

Ihr Code muss öffentlich gespeichert und mit Mitarbeitern geteilt werden. Es hat eine einzigartige persistente Identifikation, so dass jeder ihn finden und darauf zugreifen kann.

**Siehe auch**: {ref}`rr-vcs`

### 2. Vergewissern Sie sich, dass Sie es finden können (in Zeit)

Idealerweise wird die zeitliche Entwicklung des Codes mit Versionskontrolle dokumentiert. Dadurch können Sie eine bestimmte Version aus der Vergangenheit abrufen.

**Siehe auch**: {ref}`rr-vcs`

### 3. Stellen Sie sicher, dass Sie die gleiche Abfolge von Operationen ausführen können

Oft ist der Mensch, der die Umgebung aufgebaut hat, auch derjenige, der den Code geschrieben hat, und derjenige, der die genaue Reihenfolge der Schritte kennt, die notwendig sind, um den Code erneut ausführen und die Ergebnisse reproduzieren zu können. Dies könnte sicherlich sorgfältig dokumentiert werden, damit ein anderer Mensch es wiederholen kann.

**Siehe auch**: [CodeRefinery Lektion über Reproduzierbare Forschung](https://coderefinery.github.io/reproducible-research/)

### 4. Stellen Sie sicher, dass Ihre Umgebung und die Abfolge von Operationen robust sind und kein Mensch benötigt wird, um zu replizieren, was getan wurde

Sie wollen sich nicht auf Menschen verlassen. Sie neigen dazu, Fehler zu machen, auch wenn sie keine schlechten Absichten haben. Sie möchten, dass Ihre Umgebung Skripte erstellt und bei Bedarf neu erstellt wird und dass Ihre Abfolge von Operationen durch ein Pipeline-Skript ausgeführt wird, das alle Schrittfolgen verbindet. Ein netter Nebeneffekt des Skripts der Abfolge von Operationen ist, dass dies oft als Dokumentation der Schritte dienen kann.

**Siehe auch**: {ref}`rr-renv-options`

### 5. Lizenzieren Sie Ihren Code

Stellen Sie sicher, dass Sie eine Lizenz an Ihren Code anhängen und angeben, wie Sie zitiert werden wollen, wenn jemand sie wiederverwendet. Ziehen Sie in Erwägung, eine permissive Lizenz zu verwenden, die eine Wiederverwendung erlaubt. Außerdem sollten Sie eine Lizenz wählen, die mit den Lizenzen von Bibliotheken oder Paketen kompatibel ist, von denen Ihre Software abhängt.

**Siehe auch**: {ref}`rr-licensing-software`, {ref}`rr-licensing-software-permissive`, {ref}`rr-licensing-Kompatibilität`

### 6. Stellen Sie sicher, dass es zitierbar ist

Stellen Sie sicher, wie Sie zitiert werden wollen, wenn jemand es wiederverwendet.

**Siehe auch**: {ref}`cm-citable-cite-software`

### 7. Benötigte Daten einbeziehen

Wenn die Software von einer Art von Daten abhängt, sollten die Daten verfügbar sein

**Siehe auch**: {ref}`rr-rdm-data`

## Re-Laufende Empfehlungen

Stellen Sie sicher, dass Sie (oder andere) es wiederverwenden können, um das zu tun, was Sie getan haben, aber mit verschiedenen Daten/unterschiedlichen Parametern

### 1. Hard codierte Bits entfernen und den Code modular machen
Sie möchten keine detaillierten Angaben zu Ihren Daten oder Analyseparametern in den Code eintragen. Wenn etwas zu einer wiederverwendbaren Funktion werden kann, trennen Sie es von den hardcodierten Parametern und verwandeln es in etwas (wieder)machbares für sich. Machen Sie die Module rein: Bei gleicher Eingabe gibt eine reine Funktion immer den gleichen Wert zurück. Anstatt Dateipfade innerhalb der Skripte anzugeben, sollten Sie diese als Kommandozeilenargumente für ein portableres und allgemeineres und wiederverwendbares Skript übergeben.

**Siehe auch**: [Lektion für die Entwicklung modularer Code](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. Testen Sie, ob die von Ihnen erstellten Module verschiedene Typen von Eingabedaten oder Parameter annehmen können
Möglicherweise wissen Sie noch nicht, wie Ihr Code in Zukunft wiederverwendet wird aber Sie können verhindern, wie es nicht verwendet werden soll, wenn Sie testen können, welche Parameter erlaubt sind.

**Siehe auch**: [CodeRefinery Lektion zum automatisierten Testen](https://coderefinery.github.io/testing/motivation/)

### 3. Verwandeln Sie die Module in ein Paket/Werkzeugkasten
Trennen Sie noch mehr die Besonderheiten Ihres Projekts mit den Bits die in anderen Projekten oder von anderen Personen wiederverwendet werden können.

**Siehe auch**: {ref}`rr-renv-package`, [Packaging software](https://scicomp.aalto.fi/scicomp/packaging-software/), [Softwarepakete in Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## Portable Empfehlungen
Portabilität bezieht sich auf die Fähigkeit, Software in eine neue Umgebung zu übertragen. Dies könnte sich auf eine identische (aber nicht identische) Maschine beziehen, kann aber auch auf eine neue Hardware-Architektur, ein Betriebssystem und dergleichen verweisen. Beides ist wichtig für die Wiederverwendung von Software.

### 1. Stellen Sie sicher, dass Sie die Umgebung, in der sie gelebt hat wiederherstellen können
Die Umwelt ist eine zerbrechliche Momentaufnahme in der Zeit, die den Kodex stillschweigend begleitet. Es kann den Menschen umfassen, der die Software betrieben hat, die Schritte, die der Mensch zur Erstellung der Daten gemacht hat die Hardware, das Betriebssystem, die Bibliotheken, externe Pakete/Toolboxen/Abhängigkeiten. All dies kann sorgfältig dokumentiert werden, damit ein anderer Mensch alle genau gleichen Schritte wiederholen kann.

**Siehe auch**: {ref}`rr-renv`

## Erweiterbare und änderbare Empfehlungen
Stelle sicher, dass andere auf deinem Code bauen können, um ihn zu erweitern und zu verbessern.

### 2. Stelle sicher, dass dein Code von Menschen lesbar ist
Es zahlt oft mehr Code für andere Menschen zu schreiben, damit sie ihn lesen können (einschließlich Ihres zukünftigen Selbst). Ein kryptischer Oneliner mit obskuren Variablennamen ist nicht schneller oder effizienter, als den einen Liner in mehrere Schritte mit lesbaren Variablennamen aufzuteilen, die Sinn machen. Darüber hinaus wird die Verwendung von Codierungskonventionen anderen Lesern helfen.

**Siehe auch**: {ref}`rr-code-style-and-formatting`, {ref}`rr-code-quality-advantages`

### 3. Stellen Sie sicher, dass Kommentare vorhanden sind
Schreiben Sie Kommentare, bevor Sie den aktuellen Code schreiben. Stellen Sie sich vor, jemand könnte einfach die Kommentare lesen und alle Code-Bits zwischen den Kommentaren überspringen und ein vollständiges Bild von dem, was vor sich geht, als würde man den ganzen Code lesen.
