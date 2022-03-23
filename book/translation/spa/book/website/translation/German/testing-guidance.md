<a name="General_guidance_and_good_practice_for_testing"></a>

# Allgemeine Anleitung und bewährte Verfahren zum Testen

Es gibt mehrere {ref}`verschiedene Arten`<rr-testing-types-of-testing> zu testen, die jeweils die besten Praktiken haben, die für sie spezifisch. Dennoch gibt es einige allgemeine Leitlinien, die für alle gelten, die hier dargelegt werden.

(rr-testing-write-tests)=
## Schreibe Tests - Alle Tests!

Der Beginn des Prozesses des Schreibens von Tests kann überwältigend sein, vor allem wenn Sie eine große Codebasis haben. Darüber hinaus gibt es, wie bereits erwähnt, viele Arten von Tests, und die Umsetzung aller von ihnen kann wie ein unmöglicher Berg zu klettern. Deshalb lautet die wichtigste Anleitung in diesem Kapitel wie folgt: **Schreiben Sie einige Tests**. Das Testen einer winzigen Sache in einem Code, der Tausende von Zeilen lang ist, ist unendlich besser, als nichts in einem Code zu testen, der Tausende von Zeilen lang ist. Puede que no puedas hacer todo, pero hacer *algo* es valioso.

Verbessern Sie dort, wo Sie können und tun Sie Ihr Bestes, um Tests mit neuen Code schreiben Sie schreiben, auch wenn es nicht machbar ist, Tests für den gesamten Code, der bereits geschrieben ist, zu schreiben.

## Die Pruebas auspiciadas

Die zweitwichtigste Ratschläge in diesem Kapitel: Führen Sie die Tests. Eine wunderschöne, perfekte Testsuite zu haben, nützt nichts, wenn man sie selten ausführt. Wenn man lange Lücken zwischen Testläufen lässt, wird es schwieriger das zu finden, was schief gelaufen ist, wenn ein Test scheitert, weil eine Menge des Codes wird sich geändert haben. Auch wenn seit Wochen oder Monaten Tests durchgeführt wurden und sie scheitern, es ist schwierig oder unmöglich zu wissen, welche Ergebnisse in der Zwischenzeit noch gültig sind, und die weggeworfen werden müssen, da sie durch den Fehler hätten beeinträchtigt werden können.

Es ist am besten, Ihre Tests soweit wie möglich zu automatisieren. Wenn jeder Test individuell durchgeführt werden muss, dann wird dieser langweilige mühsame Prozess wahrscheinlich vernachlässigt. Dies kann durch Verwendung eines Test-Frameworks erreicht werden ([später diskutiert](#use-a-testing-framework)). [Jenkins](https://jenkins.io) ist ein weiteres gutes Werkzeug dafür. Idealerweise setzen Sie Ihre Tests in regelmäßigen Abständen, möglicherweise jede Nacht.

Ziehen Sie die Einrichtung einer kontinuierlichen Integration in Betracht (diskutiert im Kapitel kontinuierliche Integration) in Ihrem Projekt. Dies führt Ihre Tests automatisch jedes Mal aus, wenn Sie eine Änderung an Ihrem Code vornehmen und, abhängig von der von Ihnen verwendeten kontinuierlichen Integrationssoftware wird Sie benachrichtigen, falls einer der Tests fehlschlägt.

## Denken Sie daran, wie lange Ihre Tests dauern bis sie ausgeführt werden

Einige Tests, wie {ref}`rrr-testing-unittest` testen nur ein kleines Stück Code und sind in der Regel sehr schnell. Jedoch andere Arten von Tests, wie {ref}`rrr-testing-systemtest` die den gesamten Code von Ende bis Ende testen kann je nach Code eine lange Zeit dauern. Daher kann es obstruktiv sein, die gesamte Testsuite nach jeder kleinen Arbeit auszuführen. In diesem Fall ist es besser, leichtere Gewichtstests wie z. B. Bauteiltests häufig durchzuführen, und längere Tests nur einmal pro Tag über Nacht. Es ist auch gut, die Anzahl jeder Art von Tests in Bezug auf die Dauer zu skalieren. Sie sollten eine Menge von Unit-Tests (oder andere Arten von Tests, die schnell sind), aber viel weniger Tests haben, die eine lange Zeit dauern.

## Dokumentation der Tests und wie sie ausgeführt werden

Es ist wichtig, eine Dokumentation bereitzustellen, die beschreibt, wie die Tests ausgeführt werden, sowohl für sich selbst, falls Sie in Zukunft zu einem Projekt zurückkehren und für alle anderen, die Ihre Arbeit aufbauen oder reproduzieren möchten. Diese Dokumentation sollte auch Themen wie

- Alle Ressourcen, wie z. B. benötigte Testdaten-Dateien
- Alle Konfigurationen/Einstellungen, die zum Ausführen der Tests benötigt werden
- Welche Software (wie [Test-Frameworks](#use-a-testing-framework)) muss installiert werden

Idealerweise würden Sie Skripte bereitstellen, um alle benötigten Ressourcen einzurichten und zu konfigurieren.

## Realistische Fälle testen

Machen Sie die von Ihnen getesteten Fälle so realistisch wie möglich. Wenn zum Beispiel, Sie haben Dummy-Daten, um Tests durchzuführen, sollten sicherstellen, dass die Daten so ähnlich wie möglich sind. Wenn Ihre eigentlichen Daten mit vielen Nullwerten unsicher sind, sollte es auch Ihr Testdatensatz sein.

## Ein Test-Framework verwenden

Es gibt Werkzeuge, um das Schreiben und Ausführen von Tests zu vereinfachen, diese werden als Test-Frameworks bezeichnet. Finden Sie einen Ihrer Wünsche, erfahren Sie mehr über die angebotenen Funktionen und nutzen Sie diese. Allgemeine Test-Frameworks (und die Sprachen, auf die sie zutreffen) beinhalten:

- Sprache agnostisch
  - CTest, Testläufer für ausführbare Programme, Bash-Skripte und mehr. Hervorragend für das Verhärten des alten Codes
- C++
  - Colgar
  - CppTest
  - Prueba
  - prueba de google
- C
  - alle C++ Frameworks
  - Ventilador de prueca
  - CUnit
```{note}
Auch wenn die modernen C++ und C noch immer weitgehend kompatibel sind, sind sie nicht vollständig und verwenden Test-Framework austauschbar nicht immer.
```
- Python
  - pytest (empfohlen)
  - unittest kommt mit der Standard Python-Bibliothek
- R Einheitstests
  - pruebas
  - tinytest
  - svUnit (funktioniert mit SciViews GUI)
- Fortran Einheitstests:
  - lustig
  - pfUnit (funktioniert mit MPI)

## Streben Sie nach einer guten Code-Abdeckung

Code-Coverage ist ein Maß dafür, wie viel Ihres Codes von Tests "abgedeckt" wird. Genauer gesagt ist es ein Messwert dafür, wie viel Code ausgeführt wird, wenn Tests durchgeführt werden. So zum Beispiel Wenn Sie eine `if` Anweisung haben, aber nur dort testen, wo die Anweisung "Falsch" auswertet, dann wird kein Code im if Block ausgeführt. Infolgedessen wäre Ihre Code-Abdeckung < 100%. Die Code-Berichterstattung enthält keine Dokumentation wie Kommentare, daher wirkt sich das Hinzufügen von mehr Dokumentation nicht auf Ihre Prozentsätze aus.

Wie diskutiert sind alle Tests eine Verbesserung gegenüber keinen Tests. Trotzdem ist es gut, zumindest danach zu streben, dass Ihre Code-Coverage so hoch wie möglich ist.

Die meisten Programmiersprachen verfügen entweder über eingebaute Werkzeuge, die importiert werden können oder als Teil von Test-Frameworks, die die Code-Abdeckung automatisch messen. Es ist auch ein netter kleiner [Bot](https://codecov.io/) für die Messung der Code-Abdeckung verfügbar.

**Pitfall: Die Illusion einer guten Abdeckung.** In einigen Fällen kann und sollte der gleiche Code auf mehrere Arten getestet werden. Zum Beispiel kann die Abdeckung schnell auf Code steigen, der "Vernunftprüfung" auf seine Ausgabe anwendet (siehe auch {ref}<rr-testing-challenges-difficult-quatify>), aber dies schließt nicht das Risiko aus, dass der Code aus den falschen Gründen die weitgehend richtige Antwort erzeugt. Im Allgemeinen sind die besten Tests diejenigen, die kleinere statt größere Teile kohärenten Codes isolieren. und wählen Sie so einzelne Schritte der Logik aus. Versuchen Sie sich von den möglichen Dingen leiten zu lassen, die einem bestimmten Codeteil bei der Ausführung des Ganzen passieren könnten und testen Sie diese Einzelfälle. Oft wird dies dazu führen, dass derselbe Code mehrfach getestet wird - das ist eine gute Sache!

## Verwende Test-Doppel/Stubs/Mocking wenn nötig

Wenn ein Test fehlschlägt, sollte er so konstruiert werden, dass es so einfach wie möglich ist, die Ursache des Scheiterns zu finden. Das wird problematisch, wenn ein Code, den Sie testen wollen, unvermeidlich von anderen Dingen abhängt. Zum Beispiel, wenn ein Test für ein Stück Code, der mit dem Web interagiert, fehlschlägt, das könnte daran liegen, dass der Code einen Fehler *oder* hat, da es ein Problem mit der Internetverbindung gibt. Ähnlich könnte es sein, wenn ein Test für ein Stück Code, das ein Objekt verwendet, fehlschlägt, weil ein Fehler im getesteten Code vorhanden ist, oder ein Problem mit dem Objekt (das durch eigene, separate Tests getestet werden sollte). Diese Abhängigkeiten sollten nach Möglichkeit aus den Tests entfernt werden. Dies kann durch die Verwendung von Test-Ersetzungen (Test-Doppel) an die Stelle der tatsächlichen Abhängigkeiten erfolgen. Test-Doppel können wie folgt klassifiziert werden:

- Ein Dummy-Objekt wird übergeben, aber nie verwendet, was bedeutet, dass seine Methoden niemals aufgerufen werden. Ein solches Objekt kann zum Beispiel benutzt werden, um die Parameterliste einer Methode zu füllen.
- Fälschte Objekte haben funktionierende Implementierungen, werden aber in der Regel vereinfacht. Zum Beispiel verwenden sie eine In-Memory-Datenbank und keine echte Datenbank.
- Ein Stub ist eine Teilimplementierung für eine Schnittstelle oder Klasse mit dem Zweck, eine Instanz dieses Stubs während des Tests zu verwenden. Stubs reagieren in der Regel nicht auf etwas außerhalb dessen, was für den Test programmiert ist. Stubs können auch Informationen über Anrufe aufzeichnen.
- Ein Mock-Objekt ist eine Dummy-Implementierung für eine Schnittstelle oder eine Klasse, in der Sie die Ausgabe bestimmter Methodenaufrufe definieren. Mock-Objekte sind so konfiguriert, dass sie während eines Tests ein bestimmtes Verhalten durchführen. Sie erfassen typischerweise die Interaktion mit dem System, und Tests können dies validieren.

Test-Doppel können an andere Objekte weitergegeben werden, die getestet werden.

Sie können Mock-Objekte manuell (via Code) erstellen oder ein Mock-Framework verwenden, um diese Klassen zu simulieren. Mit Mock-Frameworks können Sie zur Laufzeit Spockobjekte erstellen und ihr Verhalten definieren. Das klassische Beispiel für ein Mock-Objekt ist ein Datenanbieter. In der Produktion wird eine Implementierung zur Verbindung mit der realen Datenquelle verwendet. Aber zum Testen simuliert ein Mock-Objekt die Datenquelle und stellt sicher, dass die Prüfbedingungen immer gleich sind.
