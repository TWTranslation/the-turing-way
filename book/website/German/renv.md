(rr-renv)=
# Reproduzierbare Umgebungen

(rr-renv-Voraussetzungen)=
## Voraussetzungen

| Voraussetzung                                                                                | Bedeutung | Notizen                                                                                    |
| -------------------------------------------------------------------------------------------- | --------- | ------------------------------------------------------------------------------------------ |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Notwendig | Erfahrung mit dem Herunterladen von Software über die Kommandozeile ist besonders nützlich |
| {ref}`rrr-vcs`                                                                               | Hilfreich | Erfahrungen mit Git und GitHub sind hilfreich                                              |

**Empfohlene Fertigkeitsstufe**: _Mittelstufe_

(rr-renv-summary)=
## Summary

Jeder Computer hat seine einzigartige Rechenumgebung [{term}`def<Computational Environment>`] bestehend aus seinem Betriebssystem, installierte Software, Versionen installierter Softwarepakete und andere Funktionen, die wir später beschreiben. Nehmen wir an, ein Forschungsprojekt wird auf einem Computer durchgeführt, aber auf einen anderen Computer übertragen. Es gibt keine Garantie, dass die Analyse in der Lage sein wird, die gleichen Ergebnisse auszuführen oder zu generieren, wenn die Analyse von einer der oben genannten Erwägungen abhängig ist.

Um die Forschung reproduzierbar zu machen die Rechenumgebung, in der sie durchgeführt wurde, muss so erfasst werden, dass andere sie replizieren können. Dieses Kapitel beschreibt eine Vielzahl von Methoden zur Erfassung rechnerischer Umgebungen und gibt Hinweise auf ihre Stärken und Schwächen.

### Was ist ein Computational Environment?

Generell ist eine Rechenumgebung das System, in dem ein Programm ausgeführt wird. Dies umfasst Hardware-Features (wie die Anzahl der Kerne in allen CPUs) und Funktionen von Software (wie das Betriebssystem, Programmiersprachen, unterstützende Pakete, andere Teile installierter Software sowie deren Versionen und Konfigurationen).

Softwareversionen werden oft über [semantische Versionierung](https://semver.org) definiert. In diesem System werden drei Zahlen - zum Beispiel 2.12.4 - verwendet, um jede Version einer Software zu definieren. Wenn eine Änderung an der Software vorgenommen wird, wird deren Version erhöht. Diese drei Zahlen folgen dem Muster _MAJOR.MINOR.PATCH_und werden wie folgt erhöht:

- *MAJOR*: signifikante Änderungen
- *MINOR*: um Funktionalität hinzuzufügen
- *PATCH*: für Fehlerbehebungen

(rr-renv-nützlich)=
## Warum dies nützlich ist

Lassen Sie uns ein Beispiel dafür durchgehen, warum Computerumgebungen wichtig sind. Sagen Sie, ich habe ein sehr einfaches Python-Skript:

```
a = 1
b = 5
print(a/b)
```

Eine geteilt durch fünf ist `0.2`, und das wird ausgegeben, wenn das Skript mit Python 3 ausgeführt wird. Wenn jedoch eine etwas ältere Version von Python wie Python 2 verwendet wird, ist das Ergebnis `0`. Dies liegt daran, dass die Integer-Abteilung auf ganze Zahlen in Python 2 angewendet wird aber (normal) Division wird in Python 3 auf alle Typen, einschließlich Integers, angewandt.

Daher gibt dieses einfache Skript _verschiedene_ Antworten zurück, abhängig von der Rechenumgebung, in der es ausgeführt wird. Die falsche Version von Python ist einfach zu benutzen und zeigt, wie ein vollkommen gültiger Code je nach Umgebung unterschiedliche Ergebnisse liefern kann. Wenn solche Probleme ein einfaches Skript wie dieses beeinflussen können Stellen Sie sich vor, wie viele in einem komplexen Analyseverfahren erscheinen könnten, das Tausende von Codezeilen und Dutzende abhängiger Pakete umfassen könnte.

Die Forscher müssen die Computerumgebungen, in denen sie ihre Arbeit durchführen, verstehen und erfassen, da sie das Potenzial haben, drei Parteien zu beeinflussen:

### Forscher

Die Arbeitsumgebungen der Forscher entwickeln sich, wenn sie Software aktualisieren, neue Software installieren und auf verschiedene Computer umstellen. Wenn das Projektumfeld nicht erfasst wird und die Forscher nach Monaten oder Jahren wieder zu ihrem Projekt zurückkehren müssen (wie in der Forschung üblich), sie werden dies nicht selbstbewusst tun können. Sie werden keine Möglichkeit haben zu wissen, welche Änderungen an einer bestimmten Forschungsumgebung stattgefunden haben und welche Auswirkungen diese Änderungen auf ihre Fähigkeit haben könnten, den Code auszuführen. und auf die Ergebnisse.

### Mitarbeiter

Viel Forschung ist jetzt kooperativ und die Erforschung mehrerer verschiedener Computerumgebungen eröffnet ein Minenfeld potenzieller Fehler. Der Versuch, diese Art von Problemen zu lösen, ist oft zeitaufwändig und frustrierend, da Forscher herausfinden müssen, wie die Unterschiede zwischen den Computerumgebungen aussehen. und ihre Auswirkungen. Schlimmer noch: Einige Fehler könnten unerkannt bleiben, was möglicherweise die Ergebnisse beeinflusst.

### Wissenschaft

Wissenschaftliche Forschung hat sich in den letzten zehn Jahren erheblich entwickelt Gleiches gilt jedoch nicht für die Methoden, mit denen Forschungsprozesse erfasst und verbreitet werden. Die primäre Verbreitungsmethode - die wissenschaftliche Publikation - ist seit dem Aufkommen der wissenschaftlichen Zeitschrift in den 1660er Jahren weitgehend unverändert. Dies reicht nicht mehr aus, um wissenschaftliche Ergebnisse zu überprüfen, zu reproduzieren und auszuweiten. Trotz der zunehmenden Anerkennung der Notwendigkeit, alle Aspekte des Forschungsprozesses zu teilen, Wissenschaftliche Publikationen von heute sind oft von der zugrunde liegenden Analyse und vor allem von der Rechenumgebung abgekoppelt, die die Ergebnisse hervorgebracht hat. Damit die Forschung reproduzierbar ist, müssen die Forscher die gesamte enthaltene Analyse veröffentlichen und verteilen, und nicht nur ihre Ergebnisse. Die Analyse sollte _mobil_ sein. Die Mobilität der Rechenleistung ist definiert als Fähigkeit zu definieren, zu erstellen, zu erstellen und einen Workflow lokal pflegen und dabei darauf vertrauen, dass der Workflow woanders ausgeführt werden kann. Im Wesentlichen bedeutet die Mobilität der Rechenleistung die Möglichkeit, den gesamten Software-Stapel zu enthalten, von Datendateien über den Stapel der Bibliothek bis hin zu einem zuverlässigen Verschieben von System zu System. Jede Forschung, die sich darauf beschränkt, wo sie eingesetzt werden kann, ist in dem Maße begrenzt, in dem sie reproduziert werden kann.

Dieses Kapitel beschreibt die Erfassung, Erhaltung und den Austausch von Computer-Umgebungen und Code, um sicherzustellen, dass Forschung reproduzierbar ist.
