(rr-make-debugging)=
# Makefiles debuggen

Beim Schreiben eines Makefiles manchmal kann es nützlich sein, die Werte von Variablen zu sehen, um Fehler oder Fehler in der Makefile zu fangen. Um zu vereinfachen, enthält es zwei Befehle: `info` und `Fehler`, und es gibt einen Debug Modus zu erstellen.

Mit dem Befehl `info` können Sie den aktuellen Wert einer Variable auf stdout ausdrucken, während Make die Datei verarbeitet. Zum Beispiel, in der Makefile oberhalb können Sie hinzufügen:

```makefile
$(info $$DATA = $(DATA))
```

Dies druckt `DATA = data/action.csv ... data/western.csv`.

Mit dem `Fehler` können Sie die Ausführung von Make an einem bestimmten Punkt in der Makefile stoppen. Dies ist nützlich, wenn du den Wert einer -Variable ausdrucken möchtest und nicht weiter machen:

```makefile
$(Fehler $$DATA = $(DATA))
```

Schließlich können Sie auch die Makefile debuggen, indem Sie Make mit dem Debug-Flag ausführen: `make -d`. Dadurch werden alle Regeln (einschließlich eingebauter Regeln) gedruckt, die für jedes der Ziele ausprobieren, und ob eine Regel ausgeführt werden muss oder nicht.

Wenn du nur die Regeln drucken möchtest, die Make laufen wird und nicht wirklich diese ausführt Sie können `make -n` verwenden. Diese beiden letzten Optionen können auch kombiniert werden, damit , dass Sie die Debug-Ausgabe sehen und Make nichts ausführen: `make -dn`.
