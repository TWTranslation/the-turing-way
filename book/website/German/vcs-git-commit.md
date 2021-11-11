(rr-vcs-git-commit)=
# Das `Git Command`

Jedes Mal, wenn Sie Änderungen "hinzufügen" (neue Dateien oder existierende Dateien mit einigen Änderungen) und "commit" die in Ihrem Git-Repository enthalten sind, Sie erstellen eine Version Ihres Projekts, die in Ihrem Projektverlauf gespeichert ist und jederzeit abgerufen werden kann.

Änderungen mit einer Bedeutungsanweisung über Änderungen in einer Version übertragen `git commit` mit einem `-m` (m für Nachricht) Flag:

```
git commit -m 'hilfreiche Erklärung über die Änderung hier'
```

Sie können ein Protokoll Ihrer vorherigen Commits mit

```
git Log
```

Im Log-Bericht auf Ihrem Terminal, werden Sie sehen, dass jede Version automatisch mit einer eindeutigen Zeichenkette von Zahlen und Buchstaben markiert wird, die SHA genannt wird. Sie können verschiedene Versionen anhand der entsprechenden SHA identifizieren, darauf zugreifen und vergleichen. Hier ist ein Beispiel für einen Commit im Git-Log: Die SHA befindet sich in der allerersten Zeile, und abgesehen von dieser SHA, das log enthält auch Informationen zum Datum, zur Zeit und zum Autor der Änderung sowie die Commit-Nachricht ("minor typo fix").

```
committet 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Autor: Malvika Sharan <some@email.com>
Datum: Mi 6. Mai 18:22:40 2020 +0100

    minor typo fix

```

(rr-vcs-commit-messages)=
## Mehr zu den Commit-Nachrichten

Wenn Sie an Ihrem Projekt arbeiten, werden Sie immer mehr Verpflichtungen eingehen. Ohne weitere Informationen kann es schwierig sein, sich daran zu erinnern, in welcher Version Ihres Projekts sich befindet. Die Speicherung vergangener Versionen ist nutzlos, wenn Sie sie nicht verstehen können und herauszufinden, was sie durch die Überprüfung des Codes enthalten, ist frustrierend und dauert wertvolle Zeit.

Wenn du überträgst, hast du die Möglichkeit, eine Commit-Nachricht zu schreiben, die beschreibt, was der Commit ist und was er macht, und Sie sollten immer, *immer,* **_immer_** tun. Eine Commit-Nachricht wird dem Commit angehängt, also wenn du sie zurücksiehst (zum Beispiel über `git log`), wird es angezeigt. Das Erstellen von aufschlussreichen und beschreibenden Commit-Nachrichten ist eine der besten Dinge, die Sie tun können, um das Beste aus der Versionskontrolle herauszuholen. Es ermöglicht Leuten (und ihr zukünftiges Selbst, wenn Sie längst vergessen haben, was Sie getan haben und warum) schnell zu verstehen, welche Aktualisierungen ein Commit enthält, ohne sorgfältig Code lesen zu müssen und Zeit damit vergeuden zu müssen. Gute Commit-Nachrichten verbessern Ihre Code-Qualität, indem sie falsche Annahmen von Leuten drastisch reduzieren, warum bestimmte Änderungen vorgenommen wurden.

Wenn Sie per `git commit` ohne die `-m` oder `--message` Option übertragen, ein Feld erscheint (entweder innerhalb des Terminals oder im Texteditor), in dem eine Commit-Nachricht geschrieben werden kann. Sie können eine aussagekräftige Anweisung schreiben und speichern (und schließen, wenn Sie die Nachricht über den Texteditor schreiben). Sie können Ihren bevorzugten Editor als Standard einstellen, indem Sie eine Anweisung wie folgt ausführen:

```
git config --global core.editor "your_preferred_editor"
```

Um zu vermeiden, dass diese Commit-Nachricht in einem Editor geschrieben wird, Sie können den Befehl `git commit -m "Ihre Nachricht hier" verwenden`, wie zuvor diskutiert.

(rr-vcs-commit-messages-practice)=
### Gute Praxis

Die Regel Nummer eins ist: **aussagekräftig machen**. Eine Commit-Nachricht wie "Bug behoben überlassen" überlässt es der Person, zu verstehen, was das bedeutet (nochmals, Diese Person kann sehr gut sein, Sie ein paar Monate in der Zukunft, wenn Sie vergessen haben, was Sie getan haben). Dies kann dazu führen, dass du deine oder andere Zeit vergeudet hast, um herauszufinden, was der Fehler war welche Änderungen tatsächlich vorgenommen wurden und wie ein Fehler behoben wurde. Eine gute Commit-Nachricht sollte *erklären, was Sie getan haben, warum Sie es getan haben und was die Änderungen* beeinflussen. Wie bei Kommentaren, sollten Sie beschreiben, was der Code ist "machen" statt der Code selbst. Zum Beispiel ist nicht offensichtlich, was "Change N_sim to 10" tatsächlich tut, Aber "Ändern Sie die Anzahl der Simulationen, die vom Programm auf 10 ausgeführt werden" ist klar.

**Zusammenfassen Sie die Änderungen, die Ihr Commit enthält**. Dies sollte in der ersten Zeile geschrieben werden (maximal 50 Zeichen), lassen Sie dann eine Leerzeile, bevor Sie mit der Beschreibung oder dem Inhalt der Nachricht fortfahren. Die erste Zeile ist die gekürzte Version, die als Zusammenfassung erscheint, wenn Sie den Befehl verwenden:

```
git Log
```

Dies macht es viel einfacher, schnell durch eine große Anzahl von Commits zu suchen. Es ist auch eine gute Praxis, **die zwingend vorhandene Spannung** in diesen Nachrichten zu verwenden. Anstelle von "Ich habe Tests für " oder "Hinzufügen von Tests für" verwenden Sie "Hinzufügen von Tests für".

Hier ist ein gutes Beispiel für eine Commit-Nachrichten-Struktur:

```
Kurz (50 Zeichen. oder weniger) Zusammenfassung der Änderungen

detaillierterer Erklärungstext, falls nötig. Umwickeln auf
etwa 72 Zeichen. In einigen Kontexten wird die erste
Zeile als Betreff einer E-Mail und der Rest von
als Text behandelt. Die leere Zeile, die die
-Zusammenfassung vom Körper trennt, ist kritisch (es sei denn, Sie lassen den Körper
gänzlich); -Werkzeuge wie rebase können verwirrt werden, wenn Sie
die beiden zusammen ausführen.

Weitere Absätze folgen leeren Zeilen.

  - Kugelpunkte sind in Ordnung, auch

  - Normalerweise wird ein Bindestrich oder Sternchen für die Kugel verwendet,
    wurde einem einzigen Leerzeichen vorausgegangen, mit Leerzeilen in
    zwischen, aber die Konventionen variieren hier
```
(rr-vcs-commit-summary)=
## Git Commit: Zusammenfassung

Indem Sie Ihre Änderungen während der gesamten Entwicklung Ihres Projekts in aussagekräftigen Einheiten mit beschreibenden und klaren Commit-Mitteilungen vornehmen, Sie können einen leicht verständlichen Verlauf erstellen. Dies wird Ihnen und anderen helfen, den Fortschritt Ihrer Arbeit zu verstehen. Darüber hinaus wird, wie der nächste Abschnitt zeigt, es wird auch die Ansicht vergangener Versionen Ihres Verlaufs erleichtern oder Änderungen rückgängig machen.
