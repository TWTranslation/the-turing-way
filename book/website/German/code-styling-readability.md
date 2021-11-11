(pd-code-styling-readability)=
# Schreiben menschlicher Lesbarer Code

Wenn Sie klare, gut kommentierte, lesbare und wiederverwendbare Code schreiben, profitieren Sie nicht nur von der Community (oder dem Publikum), für die Sie es entwickeln. Dies kann Ihr Labor, externe Mitarbeiter, Stakeholder oder Sie schreiben Open-Source-Software für globale Distribution! Wie groß auch immer Sie arbeiten, Lesbarkeit zählt!

Hier sind ein paar Aspekte, die zu berücksichtigen sind, wenn Sie Ihren Code leicht von anderen zu lesen.

## Zeilenlänge

Es gibt eine gewisse Übereinstimmung über die Länge der Codierungslinien. PEP8 schlägt ein Maximum von 79 Zeichen pro Zeile und 80 Zeichen durch den R Style Guide vor. Dies bedeutet, dass die Linien leicht auf einen Bildschirm passen können und mehrere Codierungsfenster geöffnet werden können. Es wird argumentiert, dass, wenn Ihre Zeile länger als diese ist, Ihre Funktion zu komplex ist und getrennt werden sollte! Dies ist der Kern der Tidy-Methode der R-Programmierung, der sogar einen speziellen Operator `%>%` hat, der das vorherige Objekt an die nächste Funktion übergibt, so dass weniger Zeichen benötigt werden:

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #Wir haben jetzt ein rekodiertes Dataframe namens recoded_melt_dat
```

## Kommentieren

Kommentare wurden von Jon Peirce, dem Schöpfer von PsychoPy, als "Liebesbriefe an deine Zukunft selbst" bezeichnet. Kommentare können blockiert oder inline sein.  
Die PEP8-Richtlinien enthalten feste Vorschläge, dass Kommentare vollständig sein sollen, haben zwei Leerzeichen, die einer Periode folgen, und folgen einem alten Stilführer (Strunk und White). Glücklicherweise sind die Elemente des Stils nicht mehr "erforderlich" eine ungerechte Betonung männlicher Äußerungen. Inline-Kommentare sollten jedoch sparsam verwendet werden. Wenn Sie klare und prägnante Kommentare beibehalten, können Sie nicht nur die von Ihnen getroffenen Entscheidungen im Auge behalten was bestimmte Funktionen tun und welche Variablen verwendet werden, erlaubt es auch anderen Personen Ihre Denkprozesse zu sehen. Die Syntax für Kommentare variiert je nach Programmiersprache. In R und Python wird ein Hashtag verwendet, während in C und Java die Klammern `/* /*` verwendet werden und in C++/C# einen doppelten Schrägstrich `//` einzelne Zeilen kommentieren.

In Python:
```python
mal = 10 # Integer setzen
my_variable = "Meine Variable ist %s mal besser als Ihre" %times #Setze my_variable auf einen String
print(my_variable) #den Wert ausgeben
```

In R:
```r
my_func = function(number){ #R function

(number * 5) - 2
}
print(my_func(2))
```

Bei längeren Kommentaren können Informationen über den Code-Block eingefügt werden. In Python kannst du dreifache Sprachmarken als Klammer verwenden. Das wird alles dazwischen auskommentieren.

```python
"""
Die folgende Funktion nimmt eine Zahl auf, multipliziert sie mit 5 und subtrahiert 2.
Das mag sinnlos erscheinen, ist aber einfach für die Demonstration.
"""
def myfunc(numb): #python function
      return((numb*5)-2)
print(myfunc(8))
```
Längere Kommentarblöcke sind nicht verfügbar in R. Es gibt Wege um dies zu umgehen, wie das Einrichten einer Zeichenkette oder eine if(false) Anweisung:

```r
"1 - Dies ist eine Zeichenkette. Es wird nicht von R bewertet und erhöht nicht
und Ausnahmen"

if(false){
2 - Ihr ganzer Kommentar kann hierher gehen und wird nie ausgewertet.
Es bedeutet auch, dass Sie sich an den Vorschlag der 80 Zeichenzeilenlänge halten.
In RStudio können Sie den Kommentar auch mit dem Pfeil neben der
-Zeilennummer der if-Anweisung falten.
}
```

Oder einzelne Zeilen kommentieren:

```r
#Dies ist auch ein sehr langer Kommentar
#für viele Zeilen.
```
Ihre IDE wird wahrscheinlich ein Tastaturkürzel haben, um Blöcke zu kommentieren.

## Einrückung

Der R Style Guide schlägt vor, dass Linien getrennt werden sollten:
```r
von
  zwei Leerzeichen
```
Und nicht
```r
 eine Mischung
   von
    Tabs
      und Leerzeichen.
```

Offensichtlich können die Argumente einer Funktion manchmal weit mehr als 80 Zeichen. In diesem Fall wird empfohlen, dass die zweite Zeile am Anfang der Argumente eingefügt wird:

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      header = TRUE, verbose = TRUE)

```

Dies sind natürlich nur Richtlinien, und Sie sollten Elemente wählen, die Ihrem Programmierstil entsprechen. Es ist jedoch wichtig sicherzustellen, dass Sie bei der Zusammenarbeit konsistent sind und sich auf einen gemeinsamen Stil einigen können. Es könnte nützlich sein, eine Readme-Datei zu erstellen, die Ihren Code-Stil beschreibt, damit Mitarbeiter oder Mitwirkende Ihrem Beispiel folgen können.

### ...Ende. ...Ende.  ...oder Ende.\\n

Wenn Sie Textdateien teilen oder gemeinsam an Handbüchern oder Dokumenten arbeiten dann gibt es eine Menge Kontroversen um die Frage, ob nach einer Periode ein oder zwei Leerzeichen verwendet werden sollen. Bei der Verwendung von Markdown kann es klarer sein, nach jedem Satz eine neue Zeile einzufügen. Dieses Kapitel (und die meisten, wenn nicht sogar alle dieses Buches) hat nach jedem Satz eine neue Zeile, die den Rohtext leichter lesbar macht, überprüfen und lösen Sie das Problem des Leerzeichens.

```{figure} ../../figures/xkcd1285.png
---
Höhe: 500px
Name: xkcd1285
alt: Zwei Gruppen mit verschiedenen Flaggen und Kämpfen, Man sagt "zwei Leerzeichen nach einer Periode" und andere "ein Leerzeichen nach einer Periode". Während eine Person mit ihrer Flagge steht, die "Zeilenumbrüche nach jedem Satz" sagt:
---
*Zeilenumbrüche nach jedem Satz macht es einfach zu überprüfen und zu kommentieren - [XKCD Link](https://www. xplainxkcd.com/wiki/index.php/1285:_Third_Way)*
```
