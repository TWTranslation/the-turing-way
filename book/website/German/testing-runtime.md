(rr-testing-runtime)=
# Laufzeit-Test

Laufzeittests sind Tests, die als Teil des Programms selbst ausgeführt werden. Sie können die Form von Kontrollen innerhalb des Codes annehmen, wie unten angezeigt:
```
population = population + people_born - people_died

// // testen, dass die Bevölkerung positiv ist
if (Bevölkerung < 0):
error( 'Die Anzahl der Menschen kann nie negativ sein' )
```

Ein weiteres Beispiel für die Verwendung von Laufzeittests sind interne Prüfungen innerhalb von Funktionen, die überprüfen, ob ihre Eingänge und Ausgänge gültig sind, wie unten gezeigt:
```
function add_arrays( array1, array2 ):

// testen, dass die Arrays die gleiche Größe
haben wenn (array1. ize() != array2.size()):
  error( 'Die Arrays haben unterschiedliche Größen!' )

Output = array1 + array2

if (output.size() != array1.size()):
  error( 'Das Outputarray hat die falsche Größe!' )

Rückgabewert
```

Vorteile des Laufzeittests:
- Starten Sie innerhalb des Programms, so können Probleme durch logische Fehler oder Kantenfälle verursacht.
- Ermöglicht es, die Ursache des Fehlers durch frühzeitiges Auffinden von Problemen zu finden.
- Probleme frühzeitig zu fangen trägt auch dazu bei, dass sie nicht zu katastrophalen Fehlern eskalieren. Er minimiert den Strahlradius.

Nachteile der Laufzeitprüfung:

- Tests können das Programm verlangsamen.
- Was ist das Richtige zu tun, wenn ein Fehler erkannt wird? Wie soll dieser Fehler gemeldet werden? Ausnahmen sind eine empfohlene Route, um dies zu tun.
