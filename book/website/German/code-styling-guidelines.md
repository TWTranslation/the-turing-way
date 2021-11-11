(pd-code-styling-guidelines)=
# Richtlinien für Code Styling

Die Stilrichtlinien unterscheiden sich zwischen Organisationen, Sprachen und im Laufe der Zeit. Even, der Python-Styleguide Python Enhancement Proposal 8 (PEP 8) hat seit seiner Veröffentlichung im Jahr 2001 zahlreiche Revisionen. Sie müssen einen Rahmen wählen, der am besten für Ihre Zwecke geeignet ist: Sei es zu Ihrem Vorteil oder zum Nutzen anderer. Es ist auch wichtig, konsequent zu bleiben (und nicht konsequent inkonsistent)!

Stilrichtlinien beinhalten Ratschläge für Dateinamen, variable Benennung, Verwendung von Kommentaren und Leerzeichen und Klammern.

Die folgenden sind Links zu bestehenden Style-Anleitungen, die bei der Entscheidung über die Formatierung des Codes von Nutzen sein können:

* [PEP8](https://www.python.org/dev/peps/pep-0008/) für Python.
* [Hadley Wickham's](http://adv-r.had.co.nz/Style.html) style guide for R.
* [Googles Style-Guide](https://google.github.io/styleguide/Rguide.xml) für R.
* [Microsofts Styleguide](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) für C#.
* [PEP7](https://www.python.org/dev/peps/pep-0007/) für C.

Um jedoch schnell loszulegen, bieten die folgenden Abschnitte einige Ratschläge für den Code-Stil.

## Dateiname

Das [Zentrum für offene Wissenschaft](http://help.osf.io/m/bestpractices/l/609932-file-naming) enthält einige nützliche Vorschläge zur Namensgebung von Dateien vor allem sicherzustellen, dass sie sowohl für Menschen als auch für Maschinen lesbar sind. Dies beinhaltet die Vermeidung der Verwendung von Platzhalterzeichen (@£$%) und die Verwendung von Unterstrichen ("\_") zur Abgrenzung von Informationen und Bindestriche ("\-") zur Verknüpfung von Informationen oder Leerzeichen. Sie schlagen auch vor, Dateien zu datieren oder zu nummerieren und Wörter wie FINAL (oder FINAL-FINAL) zu vermeiden. Der Dating Vorschlag ist das lange Format `JJJJ-MM-TT`, gefolgt von dem Namen der Datei und der Versionsnummer. Dies führt zu einer automatischen, chronologischen Reihenfolge. Zum Beispiel:

```r
Daten <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
Der R Style Guide schlägt vor, die Dateinamen einfach zu halten. Dies könnte für kleine kompakte Projekte angemessen sein, allerdings über größere Projekte mit vielen ähnlichen Dateien, oder wenn Sie keine Versionskontrolle verwenden (siehe Kapitel /? ist es vielleicht angemessener, die COS-Richtlinien zu verwenden. Weitere Details finden Sie im Kapitel {ref}`Dateiname<pd-filenaming>`.

### Versioning

Ein besonderes Augenmerk auf die Dateinamensierung liegt auf der Versionierung Ihrer Software. Die Verwendung von Versionierungsrichtlinien wird dazu beitragen, Wörter wie `_FINAL.R` zu vermeiden. Ein typischer Kongress ist der MallorMinorPatch (oder MallorMinorRevision) Ansatz. In diesem Fall könnte Ihr erster Versuch ein Paket oder eine Bibliothek wie folgt aussehen:
```
my-package_1_0_0.py
```
Dies zeigt, dass sich die Software in der unveränderten/gepatchten Alpha-Phase (0) der ersten Hauptversion befindet.

## Variablenname

In Mathematik-Projekten in der Schule werden Variablen oft unphantasievoll "x", "y" und "z" genannt. Diese Kürze liegt wahrscheinlich daran, dass Lehrer (verständlich) nicht wiederholt lange Variablennamen auf dem Board schreiben wollen. Bei der Programmierung haben Sie jedoch die Freiheit, Ihre Variablen zu benennen, was Ihnen gefällt. Dies kann nützlich sein, um den Fluss Ihres Skripts zu repräsentieren.

Sei kreativ!

### Namenskonventionen

Um Klarheit und Lesbarkeit zu gewährleisten, ist es nützlich, eine Reihe von Namenskonventionen für Ihre Variablen zu wählen. Es gibt eine große Vielfalt, und einige Leute können sehr lautstark sein, was man "richtig" ist (wählen Sie eine, die für Sie richtig ist!). Dazu gehören:

- CamelCase
- lowerCamelCase
- Unterstrich_Methoden
- Mixed_Case_with_Unterstriche
- Kleinbuchstaben

Zum Beispiel:

```r
raw_data <- read.csv("data.csv") # Nicht sehr kreativ
rawData <- read.csv("data.csv") #lowerCamelCase
```

OK, `raw_data` ist nicht sehr kreativ, aber es hätte einfach `Spam` oder `Eier` sein können, wenn das in Ihrem Skript sinnvoll ist. Sie können auch eine Funktion haben, die eine Variable kodiert:

```r
rawDat <- recode(rawDat)
```

Die Wiederverwendung des Variablennamens gibt keine Informationen über den Prozess, den rawDat durchlaufen hat. Wenn wir es als separate Variable speichern, sehen wir, welche Transformationen an der ursprünglichen Variable durchgeführt wurden:

```
rawDat_recoded <- recode(rawDatum)
```

Wenn Sie möchten, können Sie die alte Variable löschen, indem Sie entfernen wie oben.

```
remove(rawDat) #In R
del(rawDat) # In Python
```

Es ist wichtig, einen Stil zu wählen und sich daran zu halten:

```
ThisIs Because_SwitchingbetweenDifferentformats ist schwer zu lesen.
```

```
Wenn_as if_you stick_to one_style, your_code wird einfacher_to_follow!
```
