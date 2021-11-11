(rr-overview-Definitionen)=
# Definitionen

Die gebräuchlichste Definition von Reproduzierbarkeit (und Reproduzierbarkeit) wurde erstmals 1992 von Claerbout und Karrenbach in {cite:ps}`ClaerboutKarrenbach1992Reproduzierbarkeit` festgehalten und wird seitdem in der Rechenwissenschaftsliteratur verwendet. Eine weitere beliebte Definition wurde 2013 von der Association for Computing Machinery (ACM) {cite:ps}`Ivie2018SciComp eingeführt`, die die Bedeutung der Begriffe "reproduzierbar" und "replizierbar" im Vergleich zu Claerbout und Karrenbach vertauschte.

Die folgende Tabelle kontrastiert beide Definitionen {cite:ps}`Heroux2018Reproduzierbarkeit`.

| Begriff        | Claerbout & Karrenbach                                                                                                                                                                             | ACM                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reproduzierbar | Die Autoren stellen alle notwendigen Daten und die Computercodes zur Verfügung, um die Analyse erneut durchzuführen und die Ergebnisse neu zu erstellen.                                           | (Verschiedenes Team, unterschiedliche experimentelle Einrichtung.) Die Messung kann mit festgelegter Präzision von einem anderen Team, einem anderen Messsystem, an einem anderen Ort an mehreren Prüfungen abgerufen werden. Für rechnerische Experimente bedeutet dies, dass eine unabhängige Gruppe mit Hilfe von Artefakten das gleiche Ergebnis erzielen kann, das sie völlig unabhängig entwickeln.                                     |
| Replikabel     | Eine Studie, die zu den gleichen wissenschaftlichen Erkenntnissen wie eine andere Studie gelangt, die neue Daten (möglicherweise mit verschiedenen Methoden) sammelt und neue Analysen abschließt. | (Verschiedenes Team, selbe experimentelle Einrichtung.) Die Messung kann mit der angegebenen Genauigkeit durch ein anderes Team im gleichen Messverfahren abgerufen werden das gleiche Messsystem unter den gleichen Betriebsbedingungen im gleichen oder einem anderen Ort an mehreren Versuchen. Für rechnerische Experimente bedeutet dies, dass eine unabhängige Gruppe das gleiche Ergebnis mit den Artefakten des Autors erzielen kann. |

Barba (2018) {cite:ps}`Barba2018Reproduzierbarkeit` führte eine detaillierte Literaturprüfung über die Verwendung von reproduzierbaren/replizierbaren Abdeckungen verschiedener Disziplinen durch. Die meisten Zeitungen und Disziplinen verwenden die von Claerbout und Karrenbach definierte Terminologie, während die Mikrobiologie Immunologie und Informatik neigen dazu, den ACM-Einsatz von Reproduzierbarkeit und Replikation zu verfolgen. In der Politikwissenschaft und der Wirtschaftsliteratur werden beide Begriffe austauschbar verwendet.

Zusätzlich zu diesen hohen Definitionen der Reproduzierbarkeit bieten einige Autoren detailliertere Unterscheidungen. Victoria Stodden {cite:ps}`Victoria2014Reproduzierbarkeit`, ein prominenter Gelehrter zu diesem Thema, hat zum Beispiel folgende weitere Unterschiede identifiziert:

- _Rechenreproduzierbarkeit_: Wenn detaillierte Informationen über Code, Software, Hardware und Implementierungsdetails zur Verfügung gestellt werden.

- _Empirische Reproduzierbarkeit_: Wenn detaillierte Informationen über nicht-rechnerische empirische wissenschaftliche Experimente und Beobachtungen zur Verfügung gestellt werden. In der Praxis wird dies dadurch ermöglicht, dass die Daten und Details, wie sie gesammelt wurden, frei zur Verfügung gestellt werden.

- _Statistische Reproduzierbarkeit_: Wenn detaillierte Informationen angegeben werden, zum Beispiel über die Wahl von statistischen Tests, Modellparametern und Schwellenwerten. Dies bezieht sich hauptsächlich auf die Vorregistrierung von Studiendesign zur Verhinderung von p-value Hackern und anderen Manipulationen.

(rr-overview-definitions-reproducibility)=
## Tabelle der Definitionen für Reproduzierbarkeit

_Der Turing Weg_, wir definieren **reproduzierbare Forschung** als Arbeit, die unabhängig von den gleichen Daten und dem gleichen Code, den das ursprüngliche Team verwendet hat, erstellt werden kann. Reproduzierbar unterscheidet sich von replizierbaren, robusten und generalisierbaren, wie in der Abbildung unten beschrieben.


```{figure} ../../figures/reproducible-matrix.jpg
---
Name: reproduzierbare Matrix
alt: Kirstie's Definition der reproduzierbaren Forschung.
---
Wie der Turing Weg reproduzierbare Forschung definiert
```

Die verschiedenen Dimensionen reproduzierbarer Forschung, die in der oben beschriebenen Matrix beschrieben sind, haben folgende Definitionen:

- **Reproduzierbar:** Ein Ergebnis ist reproduzierbar, wenn die _gleichen_ Analyseschritte auf dem _gleichen_ Datensatz konsequent die _gleiche_ Antwort erzeugen.
- **Nachweisbar:** Ein Ergebnis ist replizierbar, wenn die _gleiche_ Analyse auf _verschiedene_ Datensätze qualitativ ähnliche Antworten erzeugt.
- **Robust:** Ein Ergebnis ist robust, wenn der _gleiche_ Datensatz _verschiedenen_ Analyseworkflows unterworfen ist, um die gleiche Forschungsfrage zu beantworten (z.B. eine Pipeline in R und eine andere in Python geschriebene Pipeline) und eine qualitativ ähnliche oder identische Antwort erzeugt wird. Robustes Ergebnis zeigt, dass die Arbeit nicht von den Besonderheiten der zur Analyse gewählten Programmiersprache abhängig ist.
- **Generalisierbar:** Durch die Kombination von replizierbaren und robusten Erkenntnissen können wir generalisierbare Ergebnisse erzielen. Beachten Sie, dass die Ausführung einer Analyse auf einer anderen Software-Implementierung und mit einem anderen Datensatz keine _generalisierten_ Ergebnisse liefert. Es wird noch viele weitere Schritte geben, um zu wissen, wie gut die Arbeit auf alle verschiedenen Aspekte der Forschungsfrage zutrifft. Generalisierung ist ein wichtiger Schritt zum Verständnis, dass das Ergebnis weder von einem bestimmten Datensatz noch von einer bestimmten Version der Analyse-Pipeline abhängig ist.

Weitere Informationen zu diesen Definitionen finden Sie in "Reproduzierbarkeit vs. Replicability: A Brief History of a Confused Terminology" von Hans E. Plesser {cite:ps}`Plesser2018Reproduzierbarkeit`.

```{figure} ../../figures/reproducible-definition-grid.jpg
---
Name: reproduzible-definition-grid. pg
alt: Raster mit den Eigenschaften reproduzierbarer, replizierbarer, robuster und generalisierbarer Forschung
---
_The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-reproduzierbar)=
## Reproduzierbar, aber nicht geöffnet

_Die Turing Way_ erkennt an, dass einige Forschungen sensible Daten verwenden werden, die nicht freigegeben werden können, und dieses Handbuch bietet Anleitungen, wie deine Forschung reproduzierbar sein kann, ohne dass alle Teile geöffnet werden müssen.
