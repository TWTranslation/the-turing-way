(rr-make-casestudy-rp)=
# Fallstudie: Reproduzierbares Papier mit Make

Im obigen Tutorial haben wir IMDB Filmbewertungen für verschiedene Genres als Beispieldaten verwendet. Diese Daten wurden von einem Datensatz [auf Kaggle](https://www.kaggle.com/orgesleka/imdbmovies#imdb.csv) als CSV-Datei freigegeben. Die Datei sieht folgendermaßen aus:

```text
fn,tid,title,wordsInTitle,url,imdbRating,ratingCount,duration,year,type,nrOfWins,nrOfNominations,nrOfPhotos,nrOfNewsArticles,nrOfUserReviews,nrOfGenre,Action,Adult,Adventure,Animation,Biography,Comedy,Crime,Documentary,Drama,Family,Fantasy,FilmNoir,GameShow,History,Horror,Music,Musical,Mystery,News,RealityTV,Romance,SciFi,Short,Sport,TalkShow,Thriller,War,Western
titles01/tt0012349,tt0012349,Der Vagabund und das Kind (1921),der vagabund und das kind,http://www.imdb.com/title/tt0012349/,8.4,40550,3240,1921,video.movie,1,0,19,96,85,3,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0015864,tt0015864,Goldrausch (1925),goldrausch,http://www.imdb.com/title/tt0015864/,8.3,45319,5700,1925,video.movie,2,1,35,110,122,3,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0017136,tt0017136,Metropolis (1927),metropolis,http://www.imdb.com/title/tt0017136/,8.4,81007,9180,1927,video.movie,3,4,67,428,376,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0
titles01/tt0017925,tt0017925,Der General (1926),der general,http://www.imdb.com/title/tt0017925/,8.3,37521,6420,1926,video.movie,1,1,53,123,219,3,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```

Während an der Oberfläche sieht dies wie eine normale CSV-Datei aus, wenn du versuchst, mit der Python-CSV-Bibliothek oder Pandas zu öffnen oder R's `read_csv`, oder sogar `readr:read_csv`, die Daten werden nicht korrekt geladen. Dies geschieht, weil die -CSV-Datei ein Escapezeichen `\` für Filmnamen verwendet, die in Kommas enthalten sind und die CSV-Leser diese Variation nicht automatisch im CSV- -Format erkennen.  Es stellt sich heraus, dass dies für Datenwissenschaftler ein häufiges Problem ist: CSV-Dateien sind oft chaotisch und verwenden einen ungewöhnlichen *Dialekt*: z. B. seltsame Trennzeichen und ungewöhnliche Anführungszeichen.  Gemeinsam verschwenden Datenwissenschaftler ziemlich einige Zeit mit diesen Datenkonflikten, bei denen manuelles Eingreifen erforderlich ist. Aber dieses Problem ist auch nicht so einfach zu lösen: Auf einem Computer ist eine CSV-Datei einfach eine lange Zeichenkette und jeder Dialekt wird Ihnen ** Tabelle geben. also wie bestimmen wir den Dialekt im Allgemeinen genau?

Vor kurzem haben Forscher des Alan Turing Institute eine Methode präsentiert, die 97% Genauigkeit auf einem großen Korpus von CSV-Dateien erreicht mit einer Verbesserung von 21% gegenüber bestehenden Ansätzen in nicht-standardmäßigen CSV-Dateien. This research was made reproducible through the use of Make and is available through an online repository: [https://github.com/alan-turing-institute/CSV_Wrangling](https://github.com/alan-turing-institute/CSV_Wrangling).

Unten werden wir kurz beschreiben, wie das Makefile für ein solches Projekt aussieht.  Die komplette Datei finden Sie im Projektarchiv. Das Makefile besteht aus mehreren Abschnitten:

1. Datenerfassung: Da die Daten aus öffentlichen Quellen stammen, das -Projektarchiv enthält ein Python-Skript, das es jedem erlaubt, die Daten durch einen einfachen `Befehl zur Daten` herunterzuladen.

2. Alle im Papier verwendeten Zahlen, Tabellen und Konstanten werden basierend auf den Ergebnissen der Experimente generiert. Um die Wiederherstellung aller Ergebnisse eines bestimmten Typs zu erleichtern, `. HONY` Ziele sind enthalten, die von allen Ergebnissen dieses Typs abhängen (damit Sie `Zahlen erstellen können`). The rules for these outputs follow the same pattern as those for the figures in the tutorial above.  Tabellen werden als LaTeX-Dateien erzeugt, so dass sie direkt in der LaTeX-Quelle für das Manuskript enthalten sein können.

3. Die Regeln für die Erkennungsergebnisse folgen einer bestimmten Unterschrift:

   ```makefile
   $(OUT_DETECT)/out_sniffer_%.json: $(OUT_PREPROCESS)/all_files_%.txt
    python $(SCRIPT_DIR)/run_detector.py sniffer $(DETECTOR_OPTS) $<$@
   ```

   Das `%` Symbol wird verwendet, um Ausgaben für beide Quellen von CSV Dateien mit einer einzigen Regel in {ref}`rr-make-examples-patternrules` und die Regel verwendet in {ref}`rr-make-examples-automaticvar` um die Eingabe und Ausgabedateinamen zu extrahieren.

4. Einige der Reinigungsregeln werden Ausgabedateien entfernen, die eine Weile dauern, bis erstellt wird.  Daher hängen diese von einem speziellen `check_clean` Ziel ab, das den Benutzer auffordert, zu bestätigen, bevor er fortfährt:

   ```makefile
   check_clean:
    @echo -n "Bist du sicher? [y/N]" && gelesen ans && [ $$ans == y ]
   ```

Es ist wichtig zu betonen, dass diese Datei nicht auf einmal erstellt wurde, sondern iterativ erstellt wurde. Das Makefile startete als eine Möglichkeit, mehrere Dialekte Erkennungsmethoden auf einer Sammlung von Eingabedateien auszuführen und wuchs allmählich auf die Erstellung von Figuren und Tabellen aus den Ergebnisdateien. Der Rat für mit Make for Reproduzierbarkeit lautet daher, *klein zu starten und früh zu starten*.

Das publizierte Makefile im Repository enthält nicht das Papier, aber diese *ist* in der internen Makedatei enthalten und folgt der gleichen Struktur wie der `Bericht. df` Datei im obigen Tutorial. Dies erwies sich als besonders nützlich für die Zusammenarbeit, da nur ein einzelnes Repository geteilt werden musste, das den Code enthält die Ergebnisse und das Manuskript.
