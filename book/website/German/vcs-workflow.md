(rr-vcs-workflow)=
# Allgemeiner Workflow

Versionskontrolle ist ein systematischer Ansatz zur Aufzeichnung von Änderungen in einer Datei oder einer Reihe von Dateien, im Laufe der Zeit. Dadurch können Sie und Ihre Mitarbeiter die Chronik verfolgen, was sich geändert hat, und wenn nötig später bestimmte Versionen zurückrufen. Ein typisches Verfahren für die Verwendung der Versionskontrolle ist folgende:

1. Erstellen Sie Dateien - diese können Text, Code oder beides enthalten.
2. Arbeiten Sie an diesen Dateien, indem Sie ändern, löschen oder neue Inhalte hinzufügen.
3. Erstellen Sie zu diesem Zeitpunkt einen Schnappschuss des Datei-Status (auch bekannt als Version).

Dieser Prozess der Erstellung eines Schnappschusses wird in verschiedenen Versionskontrollprogrammen unterschiedlich beschrieben. Zum Beispiel beschreibt Git es als "Commit". Einige Systeme nennen es "einen Zeitpunkt" oder "einen Kontrollpunkt"; und dies wird als "Speichern Ihrer Arbeit" in anderen Fällen, wie in [Google Docs](https://docs.google.com/) oder [HackMD](http://hackmd.io/) bezeichnet.

Während Sie Ihre Arbeit durch Hinzufügen von Änderungen speichern, machen Sie immer mehr Schnappschüsse. Sie können sich vorstellen, dass Sie Versionen dieser Dateien speichern, während Sie deren Verlauf dokumentieren. Wenn Sie aufgrund eines Fehlers zu einer früheren Version einer Datei zurückkehren müssen, oder wenn du deine Meinung über ein vorheriges Update geändert hast, Sie können auf die Datei in Ihrer bevorzugten Version zugreifen oder das gesamte Projekt in einen früheren Zustand zurückführen.

Eine Illustration dafür wird unten gezeigt.

```{figure} ../../figures/main-branch.png
---
Name: Hauptzweig
alt: Eine Abbildung eines Hauptzweiges
---
Eine Abbildung eines Hauptzweiges
```

In vielen Versionskontrollsystemen können Sie jedes Mal, wenn Sie eine neue Version speichern, einen Kommentar hinzufügen. Diese Anmerkungen sollten klar und präzise sein, um zu verstehen, welche Änderungen vorgeschlagen wurden und welche Aktualisierungen in einer Version vorgenommen wurden. Damit ist sichergestellt, dass es einfach ist, das zu finden, was Sie suchen, wenn Sie zu einer früheren Version zurückkehren müssen. Ihre Mitarbeiter werden Ihnen danken, aber auch zukünftige Versionen von sich selbst.

(rr-vcs-workflow-branches)=
## Nicht-lineare Entwicklung Ihres Projekts mit "Branches"

Sie haben also Ihr Projekt und möchten etwas Neues hinzufügen oder etwas ausprobieren, bevor Sie die Änderungen im Hauptverzeichnis wiedergeben. Um etwas Neues hinzuzufügen, können Sie Ihre Dateien weiter bearbeiten und mit den vorgeschlagenen Änderungen speichern. Angenommen, Sie wollen etwas ausprobieren, ohne die Änderungen im zentralen Repository zu reflektieren. In diesem Fall können Sie die Funktion "Branching" von fortgeschrittenen Versionskontrollsystemen wie Git verwenden. Ein Zweig erstellt eine lokale Kopie des Hauptarchivs, in dem Sie arbeiten und neue Änderungen ausprobieren können. Jede Arbeit, die Sie an Ihrem Zweig erledigen, wird nicht auf Ihrem Hauptprojekt (als Ihr Hauptzweig bezeichnet) reflektiert, so dass es sicher und fehlerfrei bleibt. Gleichzeitig können Sie Ihre Ideen testen und Probleme in einer lokalen Filiale lösen.

Wenn Sie mit den neuen Änderungen zufrieden sind, können Sie sie dem Hauptprojekt vorstellen. Die Merge Funktion in Git ermöglicht die Integration unabhängiger Entwicklungslinien in eine lokale Filiale in die Hauptbranche.

```{figure} ../../figures/one-branch.png
---
Name: Ein-Zweig
alt: Eine Abbildung eines Entwicklungs- und Hauptzweiges in git
---
Eine Abbildung eines Entwicklungszweiges und Hauptzweiges in git.
```

Sie können mehr als einen Branch von Ihrer Hauptkopie ablegen. Wenn einer Ihrer Zweige am Ende nicht funktioniert, können Sie ihn entweder verlassen oder löschen, ohne den Hauptzweig Ihres Projekts zu beeinträchtigen.

```{figure} ../../figures/two-branches.png
---
Name: Zwei-Zweige
alt: Eine Abbildung von zwei Entwicklungszweigen und einem Hauptzweig in git
---
Zwei Entwicklungszweige und ein Hauptzweig in Git.
```

Wenn Sie wollen, können Sie Zweige aus Zweigen erstellen (und Zweige aus diesen Zweigen und so weiter).

```{figure} ../../figures/sub-branch.png
---
Name: Subbranch1
alt: Eine Abbildung eines Entwicklungszweiges in git.
---
Ein Entwicklungszweig in Git.
```

Egal wie viele Zweige Sie haben, Sie haben Zugriff auf die vergangene Version, die Sie auf einer von ihnen gemacht haben. Wenn Sie neugierig sind, wie Sie diese Funktion in der Praxis nutzen können, finden Sie weitere Details in der Zukunft.
