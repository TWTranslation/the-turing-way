(rr-rdm-fair)=
# Die FAIR-Prinzipien

Die FAIR-Leitprinzipien für das wissenschaftliche Datenmanagement und die Treuhandschaft {cite:ps}`Wilkinson2016fair` wurden als Leitlinien zur Verbesserung der Infrarotbarkeit **F**entwickelt **A**ccessiability, **I**nteroperability and **R**eusability of digital Assets; Alle diese unterstützen die Reproduzierbarkeit der Forschung. Die FAIR-Prinzipien spielen eine wichtige Rolle, wenn es darum geht, Ihre Daten anderen zur Wiederverwendung zur Verfügung zu stellen.

Es ist viel einfacher, Daten FAIR zu erstellen, wenn Sie dies von Beginn Ihres Forschungsprojekts an planen. Sie können dies in Ihrem Data Management Plan (DMP) planen (siehe Punkt 4 und 5 des {ref}`Data Management Plan<rr-rdm-dmp>` Kapitel).

Auch wenn die FAIR-Prinzipien so definiert sind, dass Maschinen digitale Objekte automatisch finden und nutzen können, Sie verbessern auch die Wiederverwendbarkeit von Daten durch den Menschen. Die Fähigkeit rechnerischer Systeme, Daten zu finden, zuzugreifen, zu interoperieren und wiederzuverwenden – ohne oder ohne minimale Eingriffe des Menschen – ist in der heutigen datenbasierten Ära von entscheidender Bedeutung wo Menschen sich zunehmend auf die computergestützte Unterstützung verlassen, um mit Daten als Folge der Zunahme des [Volumens umzugehen, Velocity und Sorte](https://www.zdnet.com/article/volume-velocity-and-variety-understanding-the-three-vs-of-big-data/).

Dieses Kapitel vermittelt einen abstrakten und breiten Überblick über die FAIR-Prinzipien. Wie die FAIR-Prinzipien in die Praxis umgesetzt werden können, wird in anderen Unterkapiteln diskutiert ( {ref}`Datenorganisation in Tabellenblättern<rr-rdm-fair>`, {ref}`Dokumentation und Metadaten<rr-rdm-metadata>` und {ref}`Teilen und Archivieren von Daten<rr-rdm-sharing>`). Sie können auch den [Wellcome Getting Started Guide](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) oder die [How To FAIR](https://howtofair.dk/) Website verwenden, um mehr über die FAIR Prinzipien und wie man loslegen kann.

```{figure} ../../figures/fair-principles.jpg
---
Name: fair-principles
alt: Illustration der FAIR-Prinzipien, um die Definition von Findable, Accessible, Interoperable und Wiederverwendbar zu zeigen.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-rdm-fair-Theorie)=
## Theorie

Kurz gesagt, FAIR-Daten sollten:

**Findable:** Der erste Schritt in der Verwendung von Daten ist es, sie zu finden! Beschreibende Metadaten (Informationen über die Daten wie Stichwörter) sind unerlässlich.

**Zugänglich:** Sobald der Benutzer die Daten und die Software findet, muss er wissen, wie er darauf zugreifen kann. Daten könnten offen verfügbar sein, aber es ist auch möglich, dass Authentifizierungs- und Genehmigungsverfahren erforderlich sind.

**Interoperabel:** Daten müssen in andere Daten integriert werden und mit Anwendungen oder Workflows interagieren.

**Wiederverwendbar:** Daten sollten gut beschrieben werden, damit sie in verschiedenen Einstellungen verwendet und kombiniert und erweitert werden können.

Eine detaillierte [Übersicht der FAIR-Prinzipien finden Sie von GO FAIR](https://www.go-fair.org/fair-principles) über die Empfehlungen der FAIR-Prinzipien. Du kannst auch [eine FAIRy Erzählung](https://doi.org/10.5281/zenodo.2248200) lesen, um die einzelnen Prinzipien verständlich zu erklären.

Die Erstellung von Daten "FAIR" ist nicht dasselbe wie das Öffnen von Daten. Zugänglich bedeutet, dass es ein Verfahren für den Zugriff auf die Daten gibt. Die Daten sollten so offen wie möglich und so geschlossen wie nötig.

Es ist auch wichtig zu sagen, dass die FAIR-Prinzipien ein Streben sind: Sie definieren nicht genau, wie ein Zustand der FAIRE erreicht werden kann. sondern beschreiben Sie ein Kontinuum von Merkmalen, Attributen und Verhaltensweisen, die eine digitale Ressource näher an dieses Ziel bringen.

Die FAIR-Prinzipien werden auch auf Software angewendet (siehe {cite:ps}`Lamprecht2020FAIRsoftware`und {cite:ps}`Hasselbring2020FAIRsoftware`).


(rr-rdm-fair-Community)=
## Gemeinschaftsbeteiligung

Obwohl die FAIR-Prinzipien von einer Gemeinschaft in der Biowissenschaft begonnen wurden, wurden sie schnell von den Verlagen übernommen, Geldgeber und pandisziplinäre Infrastrukturprogramme und -gesellschaften. Viele Gruppen und Organisationen arbeiten daran, Leitlinien und Werkzeuge zu definieren, um Forschern und anderen Stakeholdern zu helfen (wie Bibliothekarten, funders, publishers und trainers) machen Daten mehr FAIR. Wenn Sie an der Teilnahme an diesen Communities interessiert sind, gibt es zwei globale Initiativen, die als Dachorganisationen fungieren und Referenzpunkte für viele disziplinspezifische Maßnahmen darstellen: [GOFAIR](https://www.go-fair.org) und die [Research Data Alliance (RDA)](https://www.rd-alliance.org).
* Unter GOFAIR gibt es viele [Implementierungsnetze (INs)](https://www.go-fair.org/implementation-networks) die sich zur Umsetzung der FAIR-Prinzipien verpflichtet haben.
* Im Rahmen der RDA gibt es mehrere Gruppen, die verschiedene Aspekte behandeln, die für den Lebenszyklus von RDM relevant sind. Eine [Gruppe](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) prüft bestehende Anstrengungen, aufbauend auf ihnen zu definieren ein Standardsatz von gemeinsamen Bewertungskriterien für die Bewertung von FAIRness.
