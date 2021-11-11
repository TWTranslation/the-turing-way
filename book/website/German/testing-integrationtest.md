(rr-testing-types-integrationtest)=
# Integrationstest

Integrationstests sind ein Grad an Software-Testing, bei dem einzelne Einheiten als Gruppe kombiniert und getestet werden. Während Komponententests die Funktionalität von Code isoliert validieren, stellen Integrationstests sicher, dass Komponenten bei der Interaktion miteinander kooperieren. Der Zweck dieser Teststufe ist es, Fehler in der Interaktion zwischen integrierten Einheiten zu enthüllen.

Zum Beispiel funktioniert eine Einheit, die einige Daten liest und seine Einheitstests bestanden hat, und die folgende Einheit, die die Daten bereinigt, sobald sie eingelesen wurden, funktioniert ebenfalls und die Tests bestehen. Die erste Einheit gibt die Daten jedoch als (time_data, temperature_data) aus, aber die Funktion, die die Daten löscht, erwartet Eingabe des Formulars (temperature_data, time_data). Das kann natürlich zu Fehlern führen. Während die Einheiten dort korrekt sind, in einem Fehler in ihrer Integration.

Ein Beispiel für einen Integrationstest in diesem Fall könnte die Bereitstellung einer Testdatendatei sein verwenden Sie diese Funktionen, um sie zu lesen und zu bereinigen, und überprüfen Sie die resultierenden gereinigten Daten auf das, was erwartet werden würde. Wenn ein Fehler wie dieser vorhanden ist, wäre es sehr unwahrscheinlich, dass die bereinigten Daten mit dem erwarteten Ergebnis übereinstimmen. und ein Fehler würde auftreten.

Integrationstests sind besonders wichtig bei Kooperationsprojekten, bei denen verschiedene Personen an verschiedenen Teilen des Codes arbeiten. Wenn zwei verschiedene Personen getrennte Einheiten ausfüllen und dann integrieren müssen, sind Integrationsprobleme wahrscheinlicher, da keiner den Code des anderen verstehen kann. A famous example of this is a multi-million dollar satellite which [crashed](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter) because one piece of code outputted distance data in feet, while another assumed data in meters. Dies ist ein weiteres Beispiel für eine Integrationsfrage.

Ein Teiltyp von Integrationstests ist das Testen von Systemintegrationen. Dies testet die Integration von Systemen, Paketen und beliebigen Schnittstellen zu externen Organisationen (wie etwa dem elektronischen Datenaustausch, Internet). Abhängig von der Beschaffenheit eines Projektsystemintegrationstests ist dies unter Umständen nicht anwendbar.

## Integrations-Testansätze

Es gibt verschiedene Ansätze für Integrationstests. Big Bang ist ein Ansatz zur Integrationsprüfung, bei dem alle oder die meisten Einheiten miteinander kombiniert und auf einmal getestet werden. Dieser Ansatz wird verfolgt, wenn das Testteam die gesamte Software in einem Paket erhält. Was ist also der Unterschied zwischen Big Bang Integrationstests und Systemtests? Nun, die Ersteren testet nur die Interaktionen zwischen den Geräten, während letztere das gesamte System prüft.

Top Down ist ein Ansatz zum Testen der Integration, bei dem die obersten Abschnitte des Codes (die selbst viele kleinere Einheiten enthalten) in der ersten und unteren Ebene schrittweise getestet werden. So kann ein Code in die Hauptschritte A, B und C, aufgeteilt werden und jeder dieser Schritte enthält Schritte, um sie zu vervollständigen, und diese Schritte können Unterschritte enthalten, wie:

- A
- A.1
  - A.1.1
  - A.1.2
- A.2
- B
- B.1
- B.2
  - B.2.1
  - B.2.2
  - B.2.3
- B.3

- C
- B 1
  - C.1.1
  - C.1.2
- J 2
  - C.2.1
  - C.2.2

Also im Top-Down-Ansatz die Integration zwischen den Abschnitten auf der obersten Ebene (A, B und C) werden getestet, dann die Integration zwischen den Abschnitten auf der nächsten Ebene (z.B. A. -> A.2) und so weiter. Das Testen von Oberstufeneinheiten durch das Ausführen aller darin enthaltenen Codes, einschließlich des laufenden Unterstufungstests, kann dazu führen, dass Tests auf oberster Ebene aufgrund von Fehlern in niedrigen Einheiten aufbrechen. Dies ist nicht wünschenswert, um dies zu verhindern, sollten die unteren Abschnitte nicht ausgeführt werden, aber [Teststubs](#Use_test_doubles_stubs_mocking_where_appropriate) sollten verwendet werden, um die Ausgänge von ihnen zu simulieren.

Bottom Up ist ein Ansatz zur Integrationstestung, bei dem die Integration zwischen den unteren Abschnitten Schritt für Schritt getestet wird. Auch hier sollten Teststubs verwendet werden, in diesem Fall um Eingänge aus höheren Stufen zu simulieren.

Sandwich/Hybrid ist ein Ansatz zum Integrationstest, der eine Kombination von Top Down und Bottom Up Ansätzen ist.

Welche Vorgehensweise Sie verwenden sollten, hängt davon ab, welcher der Natur / Struktur Ihres Projekts am besten entspricht.

## Tipps zum Integrationstest

- Stellen Sie sicher, dass Sie ein geeignetes Detail Design Dokument haben, bei dem die Interaktionen zwischen den einzelnen Einheiten klar definiert sind. Ohne diese Informationen ist es schwierig oder unmöglich, Integrationstests durchzuführen.
- Stellen Sie sicher, dass jede Einheit getestet ist und beheben Sie alle Fehler, bevor Sie mit Integrationstests beginnen. Wenn es einen Fehler in den einzelnen Einheiten gibt, werden die Integrationstests mit ziemlicher Sicherheit scheitern, auch wenn es keinen Fehler in der Integration gibt.
- Benutzen Sie gegebenenfalls Spott/Stubs.
