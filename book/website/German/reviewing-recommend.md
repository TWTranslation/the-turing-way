(rr-Review-Empfehlung)=
# Empfehlungen und bewährte Verfahren

## Wer prüft?

In kleinen Projekten, in denen sich die Entwickler typischerweise alle bereits kennen, übliche Praxis ist, dass der Programmierer jemanden in der Gruppe als Überprüfer kennzeichnet. Wenn Sie als Reviewer markiert wurden zuerst überprüfen, ob du genügend Wissen über hast, um die neuen Änderungen im Code in einer angemessenen Zeit zu erledigen.

Im Gegensatz dazu werden große Entwicklungsprojekte wahrscheinlich existierende und konkrete Regeln für haben, wie Prüfer einzelnen Pull-Requests zugewiesen werden. Diese Regeln dienen dazu, die Arbeitsbelastung der Gruppe auszugleichen und die verschiedenen Vorteile des Prozesses für das Projekt und seine Teilnehmer zu maximieren. Bei den allergrößten Projekten können sogar engagierte Mitarbeiter - oder Mitarbeiterteams - als Prüfer eingesetzt werden. Typischerweise können Code-Reviews nur von einer autorisierten Teilmenge von Beitragenden innerhalb größerer Projekte durchgeführt werden.

Bei Projekten, bei denen mehrere Überprüfungsrunden über ähnliches Material wahrscheinlich sind und lange Entwicklungszyklen erwartet werden, ein gewisses strategisches Denken auf der Frage, wer Rezensionen abschließt ist sinnvoll. Ein einziger Überprüfer wird wahrscheinlich in der Lage sein, Kommentare zu Code, den sie vor viel effizienter überprüft haben, abzugeben. Allerdings ist es in der Regel eine schlechte Idee, Reviewer-Coder-Paare wie dieses zu lassen da es zu den gleichen Arten von Gruppendenken führen kann, dass der Überprüfungsprozess dazu bestimmt ist, von vornherein zu vermeiden.

## Sei schön!

Wie bei allen Open-Source- und kollaborativen Unternehmen macht eine gute Internetetiquette den gesamten Prozess reibungsloser. Am wichtigsten ist vielleicht, dass man auf beiden Seiten der Interaktion zur Überprüfung immer guten Glauben annimmt und immer konstruktiv ist. Diese Grundsätze gelten für den Überprüfungsprozess über fast jeden anderen Projekt-Aspekt hinaus, da es notwendigerweise um Kritik geht, potenziell zwischen zwei völlig Fremden.

## Kollaborativ bleiben

Anders als herkömmliche Peer-Reviews im akademischen Stil, haben die meisten Code-Review-Systeme eine Reihe von Vorteile: Sie sind selten anonym, Sie sind öffentlich zugänglich und ohne den Mittelsmänner eines Editors kann der Kontakt zwischen Prüfer und Prüfer direkt und schnell sein. Dies bedeutet, dass Code-Überprüfung normalerweise ein schneller, flexibler und interaktiver Prozess ist. Gute Peer-Rezension wird vollständig kooperativ sein, wo sobald eine potenzielle Abfrage von einem Überprüfer markiert wurde die beiden beteiligten Parteien können gemeinsam eine Lösung finden. Es ist auch nicht atypisch, dass Dritte während der Diskussionsphasen, die unter gnarly Review-Kommentaren wachsen können entweder freiwillig oder auf Anfrage. Das ist alles zum Guten.

## Vermeiden Sie subjektives Verhalten

Kodexüberprüfungen sollten möglichst objektiv sein. Natürlich können bei jedem Projekt subjektive Kodierungspräferenzen entstehen. Solche Präferenzen sollten jedoch nach Möglichkeit im Voraus auf Projektebene festgelegt werden. So lässt sich vermeiden, dass eine Meinung als Tatsache abgesprochen wird. Stattdessen können Vorschläge unterstützt werden, indem auf dokumentierte Präferenzen verwiesen wird, die im Voraus erstellt wurden. Wenn Sie nicht dokumentierte Präferenzen sehen, erneut mit dem Team diskutieren und vereinbaren, wenn Sie die Präferenz zur Checkliste Ihres Code-Review-Prozesses hinzufügen möchten.

## Wichtige gegenüber optionalen Änderungen angeben

Vielleicht möchten Sie zwischen Änderungen unterscheiden, die entscheidend sind, und Änderungen, die schön sind. Zum Beispiel, Kommentare, die beginnen "You might..." könnte verwendet werden, um Vorschläge auszudrücken, die Prüfer wollen, dass der Codierer zu prüfen, aber sind nicht notwendig. Diese können besonders nützlich sein, um unerfahrene Programmierer dazu zu bringen, besseren Code zu schreiben, ohne zu selektiv zu sein. Der Coder kann dann beschließen, diese nicht entscheidenden Kommentare zu ignorieren, wenn sie nicht einverstanden sind. Überprüfer können Kommentare verwenden, die mit "Sie müssen..." beginnen, um diejenigen anzugeben, die nicht optional sind.

## Code in kleinen Chunks überprüfen

Das Überprüfen von Code in kleinen Stücken im Zuge der Entwicklung des Projekts kann dazu beitragen, den Code Review-Prozess wesentlich effizienter zu gestalten. Es ist noch viel schwieriger, eine enorme Kodebase zu überprüfen, sobald bedeutende Fehler gemacht wurden. Wenn Fehler frühzeitig im Prozess entdeckt werden können, sind sie viel einfacher zu beheben und dies hilft beim gesamten Codeentwicklungsprozess.

Hier ein paar allgemeine Ratschläge zur Integration von Code-Reviews in unseren Arbeitsprozess:

- Nehmen Sie sich die Zeit, lesen Sie sorgfältig. Alles überprüfen, nichts ist zu kurz oder einfach.
- Versuchen Sie, etwas anderes zu tun und verteilen Sie die Last auf Ihren Arbeitstag. Überprüfen Sie nicht mehr als eine Stunde zu einer Zeit, danach sinkt die Erfolgsrate ziemlich schnell.
- Überprüfen Sie nicht mehr als 400 Zeilen Code (LOC) zu einem Zeitpunkt, weniger als 200 LOC ist besser. Überprüfen Sie nicht mehr als 500 LOC/Stunde.

## Seien Sie in Ordnung, wenn Sie die Diskussion offline nehmen

Manchmal kann die Online-Kommunikation mit komplexeren Code-Reviews zu unproduktiven Gesprächen führen. Die Einrichtung eines persönlichen Meetings kann dazu beitragen, einige der schwierigeren Probleme in einer kooperativeren und freundlicheren Weise zu lösen. Alternativ kann das Entwicklung/Forschungsteam regelmäßige Treffen für Code-Reviews mit allen Teammitgliedern einrichten. Sehen Sie sich zum Beispiel den Ansatz eines Professors an, der [Labormeetings für Code](http://fperez.org/py4science/code_reviews.html) organisiert.
