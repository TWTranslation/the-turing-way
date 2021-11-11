(rr-make)=
# Reproduzierbarkeit mit Make

(r-make-Voraussetzungen)=
## Voraussetzungen

| Voraussetzung                                                                                | Bedeutung | Notizen                                                   |
| -------------------------------------------------------------------------------------------- | --------- | --------------------------------------------------------- |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Notwendig |                                                           |
| {ref}`Versionskontrolle<rr-vcs>`                                                       | Hilfreich | Erfahrungen mit Git sind nützlich, um Beispiele zu folgen |

Empfohlene Fähigkeit: Zwischenstopp

(rr-make-summary)=
## Summary

Ein Datenwissenschafts- oder Forschungsprojekt kann als ein Baum der Abhängigkeiten angesehen werden: Der -Bericht hängt von den Zahlen und Tabellen ab und diese wiederum hängen von den Daten und den Analyseskripten ab, die zur Verarbeitung dieser Daten verwendet werden (nachstehend in Abbildung abgebildet).  Make ist ein Werkzeug zum Erstellen von Ausgabedateien aus ihren Abhängigkeiten durch vordefinierte Regeln.  Es ist möglich, diese beiden Ideen zu kombinieren, um ein reproduzierbares Projekt mit Make zu erstellen.  In diesem Kapitel geben wir eine Einführung in Make und geben ein Tutorial, wie Make für eine Daten- Analyse-Pipeline verwendet werden kann.  Wir beschreiben auch ein reproduzierbares Forschungsprojekt mit dem man von den Rohdaten zu den Experimenten übergehen kann den Weg in die pdf-Datei des Papiers!

```{figure} ../figures/make-research-dag.png
---
Name: make-research-dag
alt: Schema eines Forschungsprojekts.
---
Schemata eines Forschungsprojekts.
```

(rr-make-intro)=
## Eine Einführung zu machen

Make ist ein Werkzeug zur Build-Automatisierung. Es verwendet eine Konfigurationsdatei namens Makefile, die die *Regeln* für die zu erstellenden Regeln enthält. Erstelle *Ziele* mit *Rezepten*.  Ziele können optional *Voraussetzungen* haben.  Voraussetzungen können Dateien auf Ihrem Computer oder anderen Zielen sein. Legt fest, was basierend auf dem Abhängigkeitsbaum der Ziele und Voraussetzungen erstellt werden soll (technisch, dies ist ein {ref}`rr-make-resources-tools`). Es nutzt die *Änderungszeit* von Voraussetzungen, um Ziele nur bei Bedarf zu aktualisieren.

(r-make-why)=
### Warum sollte man Make for Reproduzierbarkeit verwenden?

Es gibt mehrere Gründe, warum Make ein gutes Werkzeug für die Reproduzierbarkeit ist:

1. Make ist einfach zu lernen
1. Make ist auf vielen Plattformen verfügbar
1. Make ist flexibel
1. Viele Leute sind bereits mit Make vertraut
1. Makefiles reduzieren die kognitive Ladung, denn solange die gemeinsamen Make Ziele `alle` und `clean` vorhanden sind (unten erklärt), Sie können auf und laufen, ohne lange Anweisungen lesen zu müssen. Dies ist besonders nützlich, wenn Sie an einem anderen Projekt oder an einem Projekt arbeiten, das Sie seit langem nicht verwendet haben.
1. Makefiles sind lesbare und maschinenlesbare Textdateien. Anstatt also Anweisungen an einen Menschen zu schreiben, um einen Bericht oder eine Ausgabe zu erstellen, Sie können eine Makefile mit Anweisungen angeben, die von einem Menschen gelesen werden können *und* von einem Computer ausgeführt werden.
1. Da Makefiles Textdateien sind, sind sie einfach zu teilen und in Version zu behalten.
1. Die Verwendung von Make schließt die Verwendung anderer Tools wie Travis und Docker nicht aus.

Mit einem cleveren Makefile können Sie eine vollständige Analyse (Code, Daten, und Rechenworkflows) und lassen Sie Mitarbeiter oder Leser Ihres Papiers Ihre Ergebnisse neu berechnen. Mit Werkzeugen wie LaTeX können Sie sogar ein komplettes Manuskript generieren, das frisch berechnete Figuren und Ergebnisse enthält! Dies kann das Vertrauen in die Forschungsleistung, die Sie generieren, erhöhen es kann deine Forschung zugänglicher machen, und es kann die Zusammenarbeit erleichtern. Dieses Kapitel kann Ihnen zeigen, wie Sie loslegen.
