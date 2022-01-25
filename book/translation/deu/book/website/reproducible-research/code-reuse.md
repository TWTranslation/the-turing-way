(rr-code-reuse)=
# Wiederverwendbarer Code
Ihr Software-Projekt könnte von einem kleinen Skript zur Datenverarbeitung bis hin zu einem Notebook zur Datenanalyse reichen oder eine Software-Bibliothek, die Ihre Algorithmen implementiert. Unabhängig davon, wie groß oder klein Ihr Software-Projekt ist, ist es wichtig, Ihren Code wiederverwendbar zu machen.

Verschiedene Arten von Software haben unterschiedliche Anforderungen für die Wiederverwendbarkeit: für ein kleines Skript, ausreichende Dokumentation könnte ausreichen, während für eine missionskritische Softwarebibliothek eine gründliche Prüfung erforderlich sein könnte. Auf der grundlegendsten Ebene müssen Sie nur Ihren Code irgendwo online stellen, was wahrscheinlich eine lange Zeit dauern wird. Ein aufwändigerer Ansatz, Ihre Forschungssoftware wiederverwendbarer zu machen, besteht darin, die FAIR-Prinzipien für Forschungssoftware (FAIR4RS-Prinzipien) {cite:ps}`ChueHong2021FAIR4RS` zu befolgen.

Wenn wir über die Wiederverwendbarkeit von Code sprechen, dann ist es nützlich, zu klären, was wir meinen. In der {ref}`Tabelle der Definitionen für die Reproduzierbarkeit<rr-overview-definitions-reproducibility>` haben wir die reproduzierbare Forschung als die Verwendung der gleichen Daten und des gleichen Codes definiert. Wenn wir jedoch über die Wiederverwendung von Code sprechen, kann dies viele Formulare erfordern: Möglicherweise möchten wir den gleichen Code ausführen (für kompilierte Programmiersprachen, dies könnte sogar die selbe Binärdatei sein), oder wir möchten den Quellcode modifizieren und ihn in einer bestimmten Weise an unsere Bedürfnisse anpassen. Freire und Chirigati {cite:ps}`Freire2018Reproduzierbarkeit` bieten ein Framework von verschiedenen Ebenen der Reproduzierbarkeit, je nachdem, was geändert werden kann. Sie definieren die folgenden Ebenen der Reproduzierbarkeit: Wiederholbar, wiederstartbar, tragbar, erweiterbar und modifizierbar.

Wir können die Definitionen der Reproduzierbarkeit auf dem Freire-Rahmen wie folgt zuordnen:

| Freire framework | Definitionen reproduzierbar                                               |
| ---------------- | ------------------------------------------------------------------------- |
| Wiederholbar     | Reproduzierbar (gleiche Daten, gleiche Analyse)                           |
| Erneut starten   | Robust & Replikabel (gleicher Code, verschiedene Daten/Analyse/Parameter) |
| Tragbar          | *Nicht als* angesehen (gleicher Code/Daten, andere Umgebung)              |
| Erweiterbar      | (teilweise) Verallgemeinerbar                                             |
| Veränderbar      | (teilweise) Verallgemeinerbar                                             |

Portabilität wurde vorher nicht in Betracht gezogen, sondern für Software eine andere Umgebung (wie z.B. unterschiedliche Hardware, Betriebssystem oder sogar eine Neuinstallation auf vergleichbarer Hardware) können die Funktionsfähigkeit der Software beeinträchtigen (z.B. Abhängigkeiten).

Generalisierbar fasst auch zwei Konzepte zusammen: Erweiterbar (die Fähigkeit, sich in andere Software zu integrieren) und Veränderbar (die Möglichkeit, Teile der Implementierung zu ändern, um ihre Funktionalität zu erweitern).

Im Rest dieses Kapitels stellen wir Ihnen eine Liste von Empfehlungen zur Verfügung, die Sie befolgen können, um sicherzustellen, dass Ihr Code wiederverwendbar ist.
