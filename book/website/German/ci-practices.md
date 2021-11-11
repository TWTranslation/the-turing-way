(rr-ci-practices)=
# Best Practices und Empfehlungen

## Kleine, iterative Änderungen

Eine der wichtigsten Praktiken bei der Annahme einer kontinuierlichen Integration ist es, Projektmitglieder zu ermutigen, kleine Änderungen vorzunehmen und durchzuführen. Kleine Änderungen minimieren die Möglichkeit und den Einfluss von Problemen, die entstehen, wenn sie integriert sind, was die Kosten für die Integration minimiert.

## Trunk-basierte Entwicklung

Bei Stamm-basierter Entwicklung wird die Arbeit im Hauptzweig des Projektarchivs ausgeführt oder in regelmäßigen Abständen wieder in das gemeinsame Projektarchiv integriert. Kurzlebige Spielzweige sind zulässig, solange sie kleine Veränderungen darstellen und so schnell wie möglich wieder zusammengeführt werden.

Die Idee hinter der Stammbaumentwicklung ist es, große Commits zu vermeiden, die gegen das Konzept kleiner, iterativer Veränderungen verstoßen, die oben diskutiert wurden. Code steht Gleichaltrigen frühzeitig zur Verfügung, so dass Konflikte gelöst werden können, wenn ihr Anwendungsbereich gering ist.

## Bau- und Testphasen schnell halten

Da die Bau- und Testschritte häufig durchgeführt werden müssen, ist es wichtig, dass diese Prozesse gestrafft werden, um die für sie benötigte Zeit zu minimieren. Die Erhöhung der Bauzeit sollte als großes Problem behandelt werden, da der Effekt dadurch verstärkt wird, dass jeder Commit ein Build abwirft.

Wenn möglich, kann ein paralleler Betrieb verschiedener Abschnitte der Testsuite dazu beitragen, den Bau schneller durch die Pipeline zu verschieben. Es sollte auch darauf geachtet werden, dass der Anteil der einzelnen Testtypen sinnvoll ist. Bauteiltests sind typischerweise sehr schnell und haben einen minimalen Wartungsaufwand. Im Gegensatz dazu ist eine automatisierte System- oder Akzeptanzprüfung oft komplex und zerbrechlich. Um dies zu berücksichtigen, ist es oft eine gute Idee, sich stark auf Komponententests zu verlassen eine ganze Reihe von Integrationstests durchführen und dann auf die Anzahl der späteren komplexeren Tests zurückgreifen.

## Rechenaufwand

Einige Software wird erhebliche Rechenressource zum Erstellen und/oder Ausführen benötigen. Beispiele dafür sind Wetter- und Klimamodelle. Dies kann den Einsatz einer kontinuierlichen Integration unmöglich machen, da die Tests entweder zu lange dauern oder zu viel Ressourcen verwenden. Daher muss ein Kompromiss gefunden werden, um das Risiko unvollständiger Tests gegen einen brauchbaren Entwicklungsprozess auszugleichen.

Ein Ansatz besteht darin, verschiedene Teststufen zu verwenden, wobei verschiedene Untergruppen je nachdem, was geändert wird, benötigt werden. Eine gemeinsame breite Untergruppe kann in jedem Fall verwendet werden, wobei zusätzliche Gruppen dazu benutzt werden, bestimmte Bereiche genauer zu testen. Dies führt ein Element der Beurteilung in den Testprozess, kann aber erfolgreich angewendet werden.

## Abhängigkeitsverfolgung

Die Überprüfung auf Abhängigkeitsaktualisierungen sollte regelmäßig erfolgen. Es kann viel Zeit sparen, Fehler zu vermeiden aufgrund von Code, die von veralteter Funktionalität abhängig sind. Dienste wie [David](https://david-dm.org/) sind für das Abhängigkeitsmanagement verfügbar.

## Konsistenz während der gesamten Pipeline

Ein Projekt sollte einmal zu Beginn der Pipeline gebaut werden, die daraus resultierende Software sollte gespeichert und für spätere Prozesse zugänglich sein, ohne sie wieder aufzubauen. Durch die Verwendung des exakt gleichen Artefakts in jeder Phase, können Sie sicher sein, dass Sie aufgrund verschiedener Build-Tools keine Inkonsistenzen einführen.
