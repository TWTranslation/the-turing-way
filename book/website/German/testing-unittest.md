(rr-testing-unittest)=
# Einheitstest

Unit-Tests sind dafür verantwortlich, einzelne Codeelemente isoliert und gezielt zu testen. Die Funktionalität einzelner Funktionen und Klassen wird eigenständig getestet. Der Zweck besteht darin, zu überprüfen, dass jede Einheit der Software wie geplant ausgeführt wird. Eine Einheit ist der kleinste testbare Teil jeder Software. Bei der prozeduralen Programmierung kann eine Einheit ein individuelles Programm, eine Funktion oder ein Verfahren sein. Bei der objektorientierten Programmierung ist die kleinste Einheit typischerweise eine Methode. Es hat in der Regel einen oder ein paar Eingänge und normalerweise eine einzige Ausgabe. Externe Abhängigkeiten sollten durch Stub- oder Spock-Implementierungen ersetzt werden, um den Test vollständig auf den betreffenden Code zu konzentrieren.

Bei der Prüfung der Korrektheit einzelner Code-Komponenten auf interne Konsistenz und Korrektheit ist es unerlässlich, bevor sie in komplexere Zusammenhänge platziert werden. Der begrenzte Umfang der Tests und die Beseitigung von Abhängigkeiten erleichtern die Jagd auf die Ursache von Fehlern. Es ist auch der beste Zeitpunkt, um eine Vielzahl von Eingaben und Code-Zweigen zu testen, die später schwer zu treffen sein könnten. Zum Beispiel sind Systemtests oft zeitaufwändig und es wird wahrscheinlich unpraktisch sein, Systemtests für jeden möglichen Pfad durch einen Code mit mehr als ein paar bedingten Anweisungen durchzuführen. Die Einheitstests sind kleiner, schneller und daher ist es praktischer, alle möglichen Fälle mit ihnen abzudecken.

Oft sind nach Rauchtests die ersten Tests, die durchgeführt werden, wenn Änderungen vorgenommen werden.

## Vorteile von Unit Testing

Wenn ein Forscher eine Änderung an einem Stück Code vornimmt oder wie er ausgeführt wird, wie kann er dann sicher sein, dass dies nicht etwas gebrochen hat? Sie können ein paar Tests durchführen, aber ohne jedes kleine Stück Code einzeln zu testen, wie können sie sicher sein? Die Unit-Tests geben den Forschern diese Gewissheit und ermöglichen ihnen das Vertrauen bei der Änderung und Aufrechterhaltung ihres Codes.

Hier ist ein kleines Beispiel. Sagen Sie einem Forscher hat eine kleine Funktion, die eine einfache Sache erledigt (hier nur eine einzige Zeile für Kürze). In diesem Beispiel wird eine Zahl auf die fünfte Kraft erhöht:

```
def take_fifth_power(x):
  Ergebnis = x * x * x * x * x
  Ergebnis zurückgeben
```

Der Einheitstest für diese Funktion könnte so aussehen:
```
def test_take_Fifth_power():
  behaupten Sie nehmen die fünfth_power(1.5) == 7.59375
```

So prüft sie, ob das korrekte Ergebnis für eine gegebene Eingabe ausgegeben wird. Wenn nicht, wird der Test fehlschlagen. Der Forscher setzt seine Arbeit fort. In der Mitte beschließen sie, diese Funktion aufzuräumen, um die Zahl fünfmal so zu multiplizieren, ist ein bisschen grob. Sie ändern das `Ergebnis = x * x * x * x * x` Zeile zu `Ergebnis = x * 5`. Wenn sie das nächste Mal ihre Unit-Tests durchführen, wird dieser Test fehlschlagen, weil sie gerade einen Fehler gemacht haben. Vielleicht brauchten sie einen Kaffee, vielleicht ihren Finger rutschten, vielleicht erschossen sie ihr Arbeitskollege mit einem Nerf-Dart ins Ohr und lenken sie ab. aber wenn sie diese Funktion aufräumen, sollten sie `Ergebnis = x ** 5` *nicht* `Ergebnis = x * 5` geschrieben haben. Der fehlgeschlagene Test weist den Fehler auf und kann schnell korrigiert werden. Wenn ein solcher Fehler nicht beobachtet wurde, könnte dies zu schwerwiegenden Fehlern in der Arbeit des Forschers führen.

So führt das Testen von Einheiten zu zuverlässigerem Code, aber es gibt auch andere Vorteile. Erstens macht es die Entwicklung schneller, indem es Fehler leichter zu finden macht. Größere Tests, die große Teile von Code testen (wenn auch noch nützlich) haben den Nachteil, dass es schwierig ist, die Quelle des Fehlers zu ermitteln, wenn sie fehlschlagen. Weil Unit-Tests anhand ihrer eigentlichen Definition kleine Teile des Codes testen helfen sie Entwicklern dabei, die Ursache eines Fehlers viel schneller zu finden als Tests auf höherstufiger Ebene oder Code ohne Tests. Unit-Tests machen auch das Beheben von Fehlern schneller und einfacher, da sie Fehler frühzeitig fangen, während der Aufprall auf kleine Einzeleinheiten beschränkt ist. Wenn Fehler nicht frühzeitig durch Unit-Tests erkannt werden, kann es lange dauern, bis sie entdeckt werden, Auswirkungen auf spätere Arbeiten, die auf dem fehlerhaften Code gebaut. Das bedeutet, dass viel mehr Code gefährdet ist und dass die Behebung des Fehlers zeitaufwändiger ist.

Der andere große Vorteil des Unit-Tests besteht darin, dass er Forscher stark dazu anspornt, modularen Code zu schreiben, weil der modulare Code viel einfacher ist, Unit-Tests zu schreiben. Modularer Code ist Code, der in verwaltbare Chunks aufgeteilt wird, die jeweils einfache Aufgaben erfüllen. Dies wird typischerweise dadurch erreicht, dass der Code in Funktionen und Gruppen von Funktionen aufgeteilt wird. Im Gegensatz dazu ist ein Skript, das nur eine lange, kontinuierliche Reihe von Zeilen ist, die ein Ergebnis erzeugen, hochgradig nicht-modular.

Modularer Code ist auch viel einfacher wiederverwendbar. Zum Beispiel wenn ein Forscher eine individuelle Funktion hat, die etwas Nützliches tut, und in einem zukünftigen Projekt muss er das wieder tun es ist trivial, die Funktion zu kopieren oder zu importieren. Im Gegensatz dazu wenn der Code, der dieses Nützliche Thing mit vielen anderen Code in einem langen Skript verbunden ist, ist es viel schwieriger, es zur Wiederverwendung zu trennen.

## Tipps zum Testen von Einheiten

- Viele Test-Frameworks verfügen über Werkzeuge, die speziell auf das Schreiben und Ausführen von Komponententests ausgerichtet sind.
- Isolieren Sie die Entwicklungsumgebung von der Testumgebung.
- Schreiben Sie Testfälle, die unabhängig voneinander sind. Zum Beispiel, wenn eine Einheit A das von einer anderen Einheit B gelieferte Ergebnis nutzt Sie sollten die Einheit A mit einem [Test Doppel](#Use_test_doubles_stubs_mocking_where_appropriate)testen, anstatt tatsächlich die Einheit B aufzurufen. Wenn Sie dies nicht tun, kann Ihr Testfehler auf einen Fehler in der Einheit A *oder* Einheit B zurückzuführen sein. macht den Fehler schwerer zu finden.
- Bedecken Sie alle Pfade durch eine Einheit. Achten Sie besonders auf die Schleifenbedingungen.
- Zusätzlich zum Schreiben von Fällen zur Überprüfung des Verhaltens schreiben Sie Fälle, um die Leistung des Codes zu gewährleisten. Wenn zum Beispiel eine Funktion, die zwei Zahlen hinzufügen soll, mehrere Minuten dauert, um zu laufen, ist es wahrscheinlich ein Problem.
- Wenn Sie einen Fehler in Ihrem Code finden, schreiben Sie einen Test, der ihn offenbart. Warum? Zuerst können Sie den Fehler später feststellen, wenn Sie ihn nicht richtig beheben. Zweitens ist Ihre Testsuite jetzt umfassender. Drittens werden Sie wahrscheinlich zu faul sein, um den Test zu schreiben, nachdem Sie den Fehler bereits behoben haben. Sagen Sie einen Code hat eine einfache Funktion, Menschen entweder als Erwachsene oder als Kinder einzustufen:

```
def adult_or_child(alter):

  # Wenn das Alter größer oder gleich 18 ist, klassifizieren Sie sie als Erwachsener
  wenn das Alter >= 18:
    person_status = 'Erwachsene'

  # Wenn die Person kein Erwachsener ist, klassifizieren Sie sie als Kind
  sonstig:
    person_status = 'Kind'

  return person_status
```

Und sagen, dieser Code hat einen Einheitstest wie dies:

```
def test_adult_or_child():

  # Testen Sie, dass ein Erwachsener als Erwachsener korrekt klassifiziert ist
  behauptet adult_or_child(22) == 'Erwachsene'

  # Prüfen Sie, ob ein Kind korrekt als Kind klassifiziert ist
  adult_or_child(5) == 'Kind'

  zurück
```

Es gibt ein Problem mit diesem Code, das nicht getestet wird: Wenn ein negatives Alter angegeben wird, wird er die Person glücklicherweise als Kind klassifizieren, obwohl negative Altertümer nicht möglich sind. Der Code sollte in diesem Fall einen Fehler werfen.

Also, sobald der Fehler behoben ist:
```
def adult_or_child(alter):

# Überprüfe das Alter ist gültig
wenn das Alter < 0:
  Werte erhöhen, 'Nicht möglich, ein negatives Alter zu haben'

# Wenn das Alter größer oder gleich 18 ist, klassifizieren Sie sie als Erwachsener
wenn das Alter >= 18:
  person_status = 'Erwachsene'

# Wenn die Person kein Erwachsener ist, klassifizieren Sie sie als Kind
sonstig:
  person_status = 'Kind'

return person_status
```

Schreibe einen Test, um sicherzustellen, dass zukünftige Änderungen im Code nicht wieder passieren können:
```
def test_adult_or_child():

#Testen Sie, dass ein Erwachsener korrekt als Erwachsener klassifiziert ist
behauptet adult_or_child(22) == 'Erwachsene'

# Prüfen Sie, ob ein Kind korrekt als Kind klassifiziert ist
behaupten adult_or_child(5) == 'Kind'

# Prüfen Sie, ob ein ungültiges Alter angegeben wird, führt zu einem Fehler
mit pytest. aises(ValueError):
    adult_or_child(-10)
```
