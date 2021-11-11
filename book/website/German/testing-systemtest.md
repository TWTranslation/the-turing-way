(rr-testing-systemtest)=
# Systemtests

Sobald Integrationstests durchgeführt werden, kann eine weitere Teststufe namens Systemtests beginnen. Das System Testen ist eine Stufe der Software-Prüfung, bei der eine vollständige und integrierte Software getestet wird. Der Tester liefert das Programm mit Eingaben und prüft, ob die Ausgabe des Programms korrekt ist. Wenn das nicht der Fall ist, dann gibt es irgendwo im System ein Problem. Beachten Sie, dass dies nicht manuell gemacht werden muss, sondern automatisiert werden kann. Ziel dieser Tests ist es, die Einhaltung der festgelegten Anforderungen durch das System zu bewerten. Systemtests fungieren in vielerlei Hinsicht als Erweiterung der Integrationstests. Im Mittelpunkt der Systemtests steht die Sicherstellung, dass Gruppen von Komponenten als zusammenhängendes Ganzes korrekt funktionieren.

Anstatt sich jedoch auf die Schnittstellen zwischen den Komponenten zu konzentrieren, bewerten Systemtests in der Regel die äußere Funktionalität einer vollständigen Software. Bei diesen Tests werden die Bestandteile ignoriert, um die komponierte Software als einheitliche Einheit zu messen. Aufgrund dieser Unterscheidung konzentrieren sich Systemtests in der Regel auf Benutzer- oder externe Ausgänge.

Systemtests können auch andere Funktionen des Systems außer der Korrektheit testen. Beispiele sind:

- Leistungstest: Wird die Leistung des Programms den Mindestanforderungen gerecht? Ein Leistungstest kann messen, wie lange das System in einem bestimmten Fall braucht.
- Migrationstesting: Funktioniert das Programm, wenn es in eine andere Computerumgebung übertragen wird?
- Stress/scale/load testing: Test des Verhaltens des Programms bei Stress, z.B. bei der Verarbeitung sehr großer Datenmengen.
- Benutzerfreundlichkeitstest: Wie benutzerfreundlich das Programm ist (häufiger in kommerzieller Software, Tests, die normalerweise von Menschen durchgeführt werden statt automatisiert).
- Wiederherstellungstest: ob das Programm fortfahren kann, wenn Fehler auftreten (wieder häufiger in kommerzieller Software).

## Tipps zur Systemprüfung

Systemtests, auch End-zu-End-Tests genannt, führen das Programm aus, von Ende bis Ende. Als solche sind dies die zeitaufwändigsten Tests zum Laufen. Daher sollten Sie diese nur dann ausführen, wenn alle Unterstufungstests (Rauch, Einheit, Integration) bereits abgeschlossen sind. Falls dies nicht der Fall ist, beheben Sie zuerst die aufgetretenen Probleme, bevor Sie Zeit mit Systemtests vergeuden.

Aufgrund ihres zeitaufwendigen Charakters wird es auch oft unpraktisch sein, genug Systemtests zu haben, um jede mögliche Route durch ein Programm zu verfolgen insbesondere, wenn es eine beträchtliche Anzahl von bedingten Anweisungen gibt. Daher sollten Sie die Systemtestfälle sorgfältig berücksichtigen und Prioritäten setzen:

- Die häufigsten Routen durch ein Programm.
- Die wichtigsten Routen für ein Programm. Zum Beispiel zielt der LIGO-Detektor darauf ab, Gravitationsereignisse zu finden, die extrem selten sind. Wenn es einen Fehler in diesem Pfad durch das Programm gibt, der den Detektor überwacht, dann ist es ein *großes* Problem.
- Fälle, die aufgrund struktureller Probleme innerhalb des Programms kaputt gehen. Obwohl es idealerweise besser ist, diese Probleme zu beheben, gibt es aber Fälle, in denen dies möglicherweise nicht möglich ist.

Da Systemtests zeitaufwändig sein können, kann es unpraktisch sein, sie sehr regelmäßig auszuführen (wie mehrere Male pro Tag nach kleinen Änderungen im Code). Daher kann es eine gute Idee sein, sie jede Nacht auszuführen (und diesen Prozess zu automatisieren), so dass, wenn Fehler eingeführt werden, dass nur Systemtests den Programmierer relativ schnell erkennen können.
