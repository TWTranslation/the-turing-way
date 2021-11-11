(rr-make-Ergebnisse)=
# Inklusive numerischer Ergebnisse und Tabellen

An dieser Stelle denkst du: "Das ist so cool, dass ich jetzt Zahlen in meine Manuskripte einfügen kann! Aber wie genau funktioniert das für numerische Ergebnisse?"

Das oben verlinkte reproduzierbare Papier zeigt eine Methode: Nachdem die Ergebnisse berechnet wurden, sie werden in Form einer LaTeX Tabelle ausgegeben. Hier sieht eine dieser Tabellen gleich aus, nachdem sie berechnet wurde:

```latex
\start{tabular}{lrrr|rrrr}
Property & HypoParsr & Sniffer & Passfähigkeit & Muster & Typ & No Tie & Full\\
\hline
Delimiter & 87. 8 & 86.82 & 65.41 & 92.61 & 88.33 & 91. 8 & \textbf{94.92}\\
Quotechar & 82. 0 & 92.36 & 44.60 & 95. 3 & 90.10 & 93.80 & \textbf{97.36}\\
Escapechar & 87. 6 & 94.37 & 74.85 & 97.95 & 96.26 & 95. 4 & \textbf{99.25}\\
Gesamt & 80. 0 & 85.45 & 38,19 & 90. 9 & 83.61 & 90.61 & \textbf{93.75}\\
\hline
\end{tabular}
```

Um diese Tabelle in dein Manuskript einzubinden, kannst du die Funktion `\input{}` von LaTeX verwenden. Wenn die Datei mit der Tabelle `mytable.tex`genannt wird, kann dieser Befehl sie in Ihr Manuskript einfügen:

```latex
\start{table}
\input{mytable}
\end{table}
```

Eine Alternative ist die Verwendung von Variablen. Anstatt eine Tabelle in einer separaten Datei zu erstellen, können Sie ein Tabellenskelett schreiben und es mit Variablen füllen. Die Ergebnisse, die Sie berechnen, sind mit den Variablen verknüpft. Sobald Ihr Manuskript kompiliert ist, werden Variablen gegen echte numerische Ergebnisse ausgetauscht. So sieht ein solcher Tisch in deinem Manuskript aus:

```latex
\start{table}
    \begin{tabular*}{ccc}
        \textbf{Variable} & \textbf{Mean}   & \textbf{Std. deviation} \
        \hline
        Variable 1        & \var1mean       & \var1std \
        Variable 2        & \var2mean       & \var2std \
    \end{tabular*}
\end{table}
```

Y<unk> ou kann feststellen, dass `\var1mean` kein Standard-LaTeX-Befehl ist: Es ist eine Variable die Sie sich selbst definieren können! Wie geschieht das? Lassen Sie Ihr Skript die Ergebnisse, die Sie berechnen in einem `\newcommand{}{}` Definition in eine Datei drucken zum Beispiel wie dieses (vereinfachtes Python-Beispiel):

```python
# dieses Schleifen an Datenvektoren von zwei Variablen (data1, data2), berechnet
# Mittelwert und Standardabweichung, und geben die Ergebnisse zusammen mit dem
# Variablennamen an ('var1', 'var2')
für Namen, Daten in (['var1', data1], ['var2', data2]):
    mean = np. ean(data)
    std = np. ean(data)
    print('\\newcommand{\\%s }{ %f }' % (Name + 'mean', mean))
    print('\\newcommand{\\%s }{ %f }' % (Name + 'std', std))
```

Let's say the mean of the first dataset is 9.2, the definition would look like this: `\newcommand{\var1mean}{9.2}`. Beachten Sie, dass dieses Beispiel Python verwendet, aber du kannst jede Sprache oder Methode, die dir vertraut ist, verwenden, um Definitionen wie diese zu drucken. Mit dieser Definition tauscht LaTeX die Tabellenzelle mit `\var1mean` mit dem numerischen Ergebnis der Berechnung aus. Sie können die Definitionen mit `>` erfassen und in eine Datei schreiben. In diesem Beispiel schreiben wir es in eine Datei namens `results_def.tex`

```makefile
results_def.tex: code/make_summary_stats.py
    python code/make_summary_stats.py > results_def.tex
```

Als Alternative zu `>`, Sie können die Ergebnisse auch mit der Unix [Pipe](https://en.wikipedia.org/wiki/Pipeline_(Unix)) und dem [tee](https://en.wikipedia.org/wiki/Tee_(command)) Befehl (`python code/make_summary_stats umleiten. y | tee results_def.tex`). Dies wird nicht nur die Ausgabe des Skripts in eine Datei umleiten, sondern auch in Ihr Terminal ausgeben. Dieser hilfreiche Trick kann dir helfen, zu beobachten, ob alles bei der Ausführung deines Skripts wie erwartet funktioniert.

Benutzen Sie schließlich den `Eingang{}` Befehl, um die neuen Variablen in Ihrem Manuskript und die Variablen in den Tabellen einzubeziehen:

```latex
\start{document}
\input{results_def.tex}
```

Die hier gezeigten Beispiele sind vereinfachend, aber mit einem gewissen Gedankengut du kannst sicherstellen, dass die Ergebnisse genau so in dein Manuskript aufgenommen werden, wie sie berechnet werden. Dies hilft Ihnen (keine Fehler beim Kopieren von Ergebnissen in Tabellen, yay!) und macht Ihre Forschung zugänglicher und reproduzierbarer.
