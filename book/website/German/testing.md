(rr-testing)=
# Code-Testung

| Voraussetzung                                                                                | Bedeutung |
| -------------------------------------------------------------------------------------------- | --------- |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Notwendig |

## Summary

Der vom Forscher geschriebene Code ist nun Teil eines großen Teils der Forschung. und wenn es Fehler im Code gibt, können die Ergebnisse teilweise oder völlig unzuverlässig sein. Eine gründliche und häufige Prüfung des Kodex ist unerlässlich, um eine zuverlässige und reproduzierbare Forschung zu gewährleisten. Dieses Kapitel wird eine allgemeine Anleitung zum Schreiben von Tests bieten und eine Reihe von verschiedenen Testarten beschreiben, ihre Verwendungen und wie sie umgesetzt werden sollen.

```{figure}  ../figures/error-management.jpg
---
Name: error-management
alt: A person is happy coding, then a error throws and the coder gets confused. Dann kann der Programmierer den Fehler finden und beheben.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

Es ist sehr, sehr einfach, Fehler bei der Programmierung zu machen. Ein einzelnes falsch platziertes Zeichen kann dazu führen, dass die Ausgabe eines Programms völlig falsch ist. Eines der obigen Beispiele wurde durch ein Pluszeichen verursacht, das ein Minuszeichen hätte sein sollen. Ein weiterer Grund dafür war ein Stück Code, der in Meter arbeitet, während ein Stück Code, der von einem anderen Forscher geschrieben wurde, in Füßen arbeitete. *Jeder* macht Fehler, und in der Forschung kann das Ergebnis katastrophal sein. Karrieren können beschädigt/beendet werden, riesige Summen an Forschungsgeldern können verschwendet werden und wertvolle Zeit könnte verloren gehen, um falsche Wege zu finden. Aus diesem Grund sind Tests von entscheidender Bedeutung.

Hier ist ein paar Illustrationen beispielhaft dafür, warum Tests geschrieben werden sollten:

```{figure}  ../figures/testing-motivation1.png
---
Name: Testing-Motivation1
alt:
---
```

```{figure}  ../figures/testing-motivation2.png
---
Name: testing-motivation2
alt:
---
```

Selbst wenn Probleme in einem Programm vor der Veröffentlichung der Forschung gefangen werden, kann es schwierig sein, herauszufinden, welche Ergebnisse kontaminiert sind und erneut durchgeführt werden müssen. Das bedeutet einen enormen Zeit- und Zeitverlust. Die frühzeitige Erfassung dieser Probleme minimiert den Arbeitsaufwand für deren Behebung und für die meisten Forscher ist die mit Abstand knappste Ressource. Sie sollten das Schreiben von Tests nicht überspringen, da die Zeit kurz ist. Sie sollten Tests *schreiben, weil* die Zeit knapp ist. Die Forscher können es sich nicht leisten, dass Monate oder Jahre der Arbeit in den Hintergrund gedrängt werden. und sie können es sich nicht leisten, jedes kleine Detail eines Programms immer wieder manuell zu überprüfen, das hunderte oder hunderttausende Zeilen lang sein könnte. Das Schreiben von Tests für Sie ist die zeitsparende Option, und es ist die sichere Option.

Da Forscher Code schreiben, führen sie im Allgemeinen einige Tests durch, oft durch Hinzufügen von Druckaussagen und Überprüfung der Ausgabe. Diese Tests werden jedoch oft weggeworfen, sobald sie bestanden, und sind nicht mehr präsent, um zu überprüfen, was sie kontrollieren sollten. Es ist vergleichsweise wenig Arbeit, diese Tests in Funktionen zu platzieren und zu halten, so dass sie jederzeit in der Zukunft ausgeführt werden können. Die zusätzliche Arbeit ist minimal, die eingesparte Zeit und Sicherheiten sind unschätzbar. Darüber hinaus wird der Testprozess in eine Reihe von Tests formalisiert, die unabhängig und automatisch ausgeführt werden können Sie geben viel mehr Vertrauen, dass sich die Software korrekt verhält und erhöhen die Wahrscheinlichkeit, dass Fehler gefunden werden.

Das Testen gibt den Forschern auch viel mehr Seelenfrieden, wenn sie an einem Projekt arbeiten/arbeiten. Nach der Änderung ihres Codes wird ein Forscher überprüfen wollen, ob ihre Änderungen oder Korrekturen nichts kaputt gemacht haben. Die Bereitstellung einer ausfallschnellen Umgebung für Forscher ermöglicht die schnelle Identifizierung von Fehlern, die durch Änderungen am Kodex verursacht wurden. Die Alternative, des Forschers zu schreiben und auszuführen, was für kleine Tests sie Zeit haben, ist weit schlechter als eine gute Testsuite, die den Code gründlich überprüfen kann.

Ein weiterer Vorteil des Schreibens von Tests besteht darin, dass er in der Regel einen Forscher zwingt, sauberer zu schreiben, mehr modularen Code als solcher Code ist viel einfacher zu schreiben Tests zu schreiben, was zu einer Verbesserung der Code-Qualität führt.
{ref}`Gute Qualität Code<rr-code-quality>` ist viel einfacher (und insgesamt angenehmer) zu arbeiten als die Nester des Codes der verwickelten Ratte. Ich bin sicher, dass wir alle begegnet sind (und, seien wir ehrlich, geschrieben). Dieser Punkt wird im Abschnitt {ref}`rrr-testing-unittest` erweitert.

## Die Vorteile von Tests für die Forschung

Neben den Vorteilen einzelner Forscher ist auch die Forschung als Ganzes von Nutzen. Es macht die Forschung reproduzierbarer, indem man die Frage beantwortet: "Wie wissen wir sogar, dass dieser Code funktioniert". Wenn die Tests nie gespeichert werden, kann der Nachweis nur durchgeführt und gelöscht werden.

Das Testen trägt auch dazu bei, zu verhindern, dass wertvolle Fördergelder für Projekte ausgegeben werden, die aufgrund von Fehlern im Code teilweise oder ganz fehlerhaft sind. Schlimmer noch, wenn keine Fehler gefunden werden und die Arbeit veröffentlicht wird, wird jede darauf aufbauende Arbeit ähnlich fehlerhaft sein.

Vielleicht ist der sauberste Ausdruck dafür, warum Tests für die gesamte Forschung wichtig sind, im [Software-Nachhaltigkeitsinstitut](https://www.software.ac.uk/) zu finden: bessere Software. bessere Forschung.
