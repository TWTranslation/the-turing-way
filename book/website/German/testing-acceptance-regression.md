(rr-Testing-Akzeptanz-Regression)=
# Akzeptieren und Regressionstest

(rr-testing-Akzeptanz)=
## Akzeptierungstest

Akzeptanztests sind einer der letzten Testtypen, die vor der Lieferung an Software durchgeführt werden. Mit dem Acceptance Test wird ermittelt, ob eine Software alle Anforderungen aus geschäftlicher oder aus Sicht des Nutzers erfüllt. Tut diese Software das, was sie tun muss? Diese Tests werden manchmal gegen die ursprüngliche Spezifikation gebaut.

Da Forschungssoftware typischerweise vom Forscher geschrieben wird, der sie (oder zumindest mit signifikanten Eingaben von ihnen) Abnahmetests nicht benötigt.

(rr-testing-regression)=
## Regressionstest

Regressionstests sind ein Test-Stil, der sich darauf konzentriert, nach Änderungen erneut zu testen. Die Ergebnisse der Tests nach den Änderungen werden mit den Ergebnissen zuvor verglichen, und es werden Fehler erzeugt, wenn diese unterschiedlich sind. Regressionstests sollen sicherstellen, dass Änderungen (Verbesserungen oder Fehlerbehebungen) an der Software nicht beeinträchtigt wurden. Die Wahrscheinlichkeit, dass jede Codeänderung Auswirkungen auf Funktionalitäten, die nicht direkt mit dem Code verbunden sind, ist immer da, und es ist wichtig, dass Regressionstests durchgeführt werden, um sicherzustellen, dass das eine Problem nicht gebrochen hat eine andere. Regressionstests können während jeder Teststufe (Einheit, Integration, System oder Akzeptanz) durchgeführt werden, aber sie sind vor allem während der Systemtests relevant. Jeder Test kann wiederverwendet werden und so kann jeder Test zu einem Regressionstest werden.

Regressionstests sind offensichtlich besonders wichtig für die Teamarbeit, aber es ist überraschend einfach, Ihren eigenen Code zu brechen, ohne ihn zu bemerken, auch wenn Sie alleine arbeiten. Und weil Regressionstests fast unmöglich sind, zufrieden stellend von Hand zu machen (es ist einfach zu langweilig), ist es ein offensichtlicher Fall für die Automatisierung.

Regressionstests werden geschrieben, indem zuerst der (oder ein Teil der) Code für die angegebenen Eingaben und die Aufzeichnung der Ausgaben ausgeführt wird. Dies kann durch das Schreiben von Eingabedateien und das Speichern der entsprechenden Ausgabedateien geschehen. Diese Ausgänge dienen als erwartete Ausgänge aus dem Programm mit den entsprechenden Eingängen. Regressionstests werden dann geschrieben. Jeder Regressionstest führt den Code für die Eingaben aus. Es vergleicht dann die Ausgabe aus dem Code mit den erwarteten Ausgängen und ruft einen Fehler auf, wenn diese nicht übereinstimmen.

Regressionsprüfungsansätze unterscheiden sich in ihrem Fokus.

Gewöhnliche Beispiele sind:
- Fehlerregression: Wir testen einen speziellen Fehler, der angeblich behoben wurde.
- Alte Korrekturregressionstests: Wir testen einige alte Fehler, die behoben wurden, um zu sehen, ob sie wieder vorhanden sind. (Dies ist die klassische Vorstellung von Regression: Das Programm ist zu einem schlechten Zustand zurückgegangen.)
- Allgemeine funktionale Regression: Wir testen das Projekt weitgehend, einschließlich der Bereiche, die vorher gearbeitet haben, um zu sehen, ob neuere Änderungen den funktionierenden Code destabilisiert haben.
- Konversions- oder Port-Tests: Das Programm wird auf eine neue Plattform portiert und eine Regressionstestsuite wird ausgeführt, um festzustellen, ob der Port erfolgreich war.
- Konfigurationstesting: Das Programm wird mit einem neuen Gerät oder einer neuen Version des Betriebssystems oder in Verbindung mit einer neuen Anwendung ausgeführt. Dies ist wie Porttests mit der Ausnahme, dass der zugrundeliegende Code nicht geändert wurde - nur die externen Komponenten, mit denen die Testsoftware interagieren muss.

### Beschränkungen der Regressionstests

Regressionstests sind nicht garantiert, alle Teile des Codes zu testen. Am wichtigsten ist, dass Regressionstests nicht testen, ob das Ergebnis, das ein Stück Code ausgibt, *korrekt ist*, nur, dass sie sich nicht geändert hat. Dies ist der Auftrag anderer Testarten, obwohl Regressionstests als Ausgangspunkt für die Einführung von Tests auf Richtigkeit dienen können sowohl durch den Einsatz analytischer Lösungen und durch Testfunktionen, die Ausgabedateien lesen und die Daten auf Korrektheit überprüfen, wie sie von einem Forscher definiert wurden.
