(rr-testing-challenges)=
# Herausforderungen und Ausnahmefälle im Test

(rr-testing-challenges-stochastic-code)=
## Teste stochastischen Code

Manchmal enthält der Code ein Element der Zufälligkeit, ein häufiges Beispiel ist der Code, der [Monte Carlo Methoden](https://en.wikipedia.org/wiki/Monte_Carlo_method) verwendet. Das Testen dieser Art von Code kann sehr schwierig sein, denn wenn er mehrmals ausgeführt wird, werden verschiedene Antworten generiert, alle die "richtig" sein können, sogar enthält es keine Bugs. Es gibt zwei wichtige Möglichkeiten, den stochastischen Code zu bekämpfen:

### Benutze zufällige Anzahl Seeds

Zufällige Zahlen Samen sind ein wenig schwierig zu erklären, so ist hier ein Beispiel. Hier ist ein kleines Python-Skript, das drei zufällige Zahlen ausgibt.

```python
zufällig

# drei zufällige Zahlen drucken
print(random.random())
print(random.random())
print(random.random())
```

Dieses Skript hat keine Bugs, aber wenn du es wiederholt ausführst, wirst du jedes Mal unterschiedliche Antworten bekommen. Jetzt setzen wir einen zufälligen Zahlenseed.

```python
zufällig

# Setze eine zufällige Zahl
random.seed(1)

# 3 zufällige Zahlen ausgeben
print(random.random())
print(random.random())
print(random.random())
```

Wenn du dieses Skript ausführst, gibt es aus

```python
0.134364244112
0.847433736937
0.763774618977
```

und jedes Mal, wenn Sie dieses Skript ausführen, erhalten Sie die *selbe* Ausgabe, es druckt die *gleichen* drei zufällige Zahlen. Wenn der Seed der zufälligen Zahl geändert wird, erhalten Sie verschiedene drei zufällige Zahlen:

```python
0.956034271889
0.947827487059
0.0565513677268
```
aber diese Zahlen erhalten Sie jedes Mal, wenn das Skript in der Zukunft ausgeführt wird.

Zufällige Zahlen Samen sind eine Möglichkeit, die Dinge zuverlässig zufällig zu machen. Ein Risiko bei Tests, die von Zufallszahlen abhängen, kann jedoch spröde sein. Sagen Sie, dass Sie eine Funktion wie folgt strukturiert haben:

```python
def my_function():
  a = calculation_that_uses_two_random_numbers()
  b = calculation_that_uses_five_random_numbers()
  c = a + b
```

Wenn Sie den Zufallszahlenseed einstellen, erhalten Sie immer denselben Wert von `c`, so dass er getestet werden kann. Aber sagen Sie, das Modell wurde geändert und die Funktion, die `eine` berechnt, verwendet eine andere Anzahl zufälliger Zahlen, die es zuvor gemacht hat. Jetzt wird `nicht nur ein` anders sein, sondern `b` wird auch sein weil sich, wie oben angegeben, die zufälligen Zahlen mit einem zufälligen Zahlenseed in einer festen Reihenfolge befinden. Als Ergebnis werden sich die zufälligen Zahlen für die Berechnung von `b` geändert haben. Dies kann dazu führen, dass Tests fehlschlagen, wenn es tatsächlich keinen Fehler gibt.

#### Die Verteilung der Ergebnisse messen

Eine weitere Möglichkeit, um Code mit einer zufälligen Ausgabe zu testen, besteht darin, ihn mehrmals auszuführen und die Verteilung der Ergebnisse zu testen. Vielleicht kann das Ergebnis ein wenig schwanken, aber wird immer etwa 10 innerhalb einer gewissen Toleranz erwartet. Das kann getestet werden. Je mehr der Code ausgeführt wird, desto zuverlässiger wird der Durchschnitt und so das Ergebnis. Je öfter du ein Stück Code ausführst, desto länger dauert es, bis deine Tests ausgeführt werden, was Tests unerschwinglich zeitaufwändig machen kann, wenn ein zuverlässiges Ergebnis erzielt werden soll. Darüber hinaus es wird immer ein Element der Ungewissheit geben und wenn die zufälligen Zahlen auf eine bestimmte Weise fallen, können Sie Ergebnisse außerhalb der erwarteten Toleranz erhalten, auch wenn der Kodex korrekt ist.

Beide Ansätze zum Testen von stochastischem Code können immer noch sehr nützlich sein, aber es ist wichtig, sich auch ihrer potenziellen Fallstricke bewusst zu sein.

(rr-testing-challenges-difficult-quatify)=
## schwer zu quantifizierende Tests

Manchmal (vor allem in der Forschung) werden die Ausgänge des Codes getestet, je nachdem, ob sie richtig aussehen. Zum Beispiel sagen wir, wir haben einen Code, der den Wasserstand in einem Reservoir im Laufe der Zeit modelliert.

Das Ergebnis könnte so aussehen:

```{figure} ../../figures/eyeball-test1.jpg
---
Name: eyeball-test1
alt:
---
```

An einem Tag mit Regen könnte es so aussehen:

```{figure} ../../figures/eyeball-test2.jpg
---
Name: eyeball-test2
alt:
---
```

und an einem trockenen Tag könnte es so aussehen:

```{figure} ../../figures/eyeball-test3.jpg
---
Name: eyeball-test3
alt:
---
```

Alle diese Ausgaben sehen sehr unterschiedlich aus, sind aber gültig. Allerdings, wenn ein Forscher ein Ergebnis wie folgt sieht:

```{figure} ../../figures/eyeball-test-error.jpg
---
Name: eyeball-test-error
alt:
---
```

Sie könnten leicht zu dem Schluss kommen, dass es einen Fehler gibt, da es unwahrscheinlich ist, dass ein See sein Volumen verdreifacht und ihn dann in wenigen Stunden wieder verliert. Solche "Augenbrauen"-Tests sind zeitaufwendig, da sie von einem Menschen durchgeführt werden müssen. Der Prozess kann jedoch teilweise oder vollständig automatisiert werden, indem grundlegende "Vernunftprüfungen" erstellt werden. Zum Beispiel sollte der Wasserspiegel zu einem Zeitpunkt etwa 10 % des Wasserspiegels im vorherigen Schritt sein. Eine weitere Überprüfung könnte sein, dass es keine negativen Werte gibt, da ein See nicht -30% voll sein kann. Diese Art von Tests kann nicht alles abdecken, was sichtbar falsch sein kann, aber sie sind viel einfacher zu automatisieren und werden für die meisten Fälle ausreichen.

(rr-testing-challenges-non-integer)=
## Prüfung, ob nicht ganze Zahlen gleich sind

### Wenn 0.1 + 0.2 nicht gleich 0.3 ist

Es gibt eine Komplikation beim Testen wenn die Antwort einer Code-Ausgabe gleich der erwarteten Antwort ist, wenn die Zahlen nicht ganze Zahlen sind. Werfen wir einen Blick auf dieses Python-Beispiel, aber beachten Sie, dass dieses Problem nicht nur Python ist.

Wenn wir `einen` und 0.2 bis `b` zuweisen und deren Summe ausdrucken, erhalten wir wie erwartet 0,3, wie erwartet.

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

Wenn wir jedoch das Ergebnis von `` plus `b` bis 0.3 vergleichen, bekommen wir False.

```python
>>> print(a + b == 0.3)
False
```

Wenn wir den Wert von `ein` plus `b` direkt anzeigen, sehen wir einen subtilen Fehlerrand.

```python
>>> a + b
0.300000000000004
```

Dies liegt daran, dass Fließkommazahlen Näherungen von realen Zahlen sind. Das Ergebnis der Fließkommaberechnungen kann von der Compiler- oder Interpreterarchitektur und der Prozessor- oder Systemarchitektur sowie der Anzahl der verwendeten CPUs oder Prozesse abhängen. Dies kann ein großes Hindernis für das Schreiben von Tests darstellen.

### Gleichheit in einer Schwebepunktwelt

Beim Vergleich von Fließkommazahlen für Gleichberechtigung müssen wir innerhalb einer gegebenen Toleranz mit einem Schwellenwert oder einem Delta vergleichen. Zum Beispiel wir könnten die berechneten und erwarteten Werte einiger Zahlen als gleich betrachten, wenn der absolute Wert ihrer Differenz innerhalb des absoluten Wertes unserer Toleranz liegt.

Viele Test-Frameworks bieten Funktionen zum Vergleich der Gleichberechtigung von Fließkommazahlen mit einer gegebenen Toleranz. Zum Beispiel für den Pytest-Rahmen:

```python
import pytest

a = 0.1
b = 0.2
c = a + b
assert c == pytest.approx(0.3)
```

dies passt, aber wenn die 0.3 auf 0.4 geändert wurde, würde sie fehlschlagen.

Einheitstest-Frameworks für andere Sprachen bieten oft auch ähnliche Funktionen:

- Cunit für CU_ASSERT_DOUBLE_EQUAL(aktuell, erwartet, Granularität)
- CPPUnit für C++: CPPUNIT_ASSERT_DOUBLES_EQUAL(erwartet, tatsächlich, Delta)
- googletest für C++: ASSERT_NEAR(val1, val2, Abwesenheit)
- FRUIT für Fortran: Unterprogramm assert_eq_double_in_range_(var1, var2, delta, message)
- JUnit für Java: org.junit.Assert.assertEquals(doppelt erwartet, doppeltes aktuelles Delta)
- testthat für R:
  - expect_equal(tatsächlich, erwartet, Toleranz=DELTA) - absoluter Fehler innerhalb von DELTA
  - expect_equal(tatsächlich, erwartet, skale=erwartet, tolerance=DELTA) - relativer Fehler innerhalb von DE L T A
