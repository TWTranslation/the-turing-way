# Risikobewertung: Komplexität und Auswirkungen

Wir alle verwenden ständig Risikobewertungen. Manchmal handelt es sich um formale Verfahren, um sicherzustellen, dass eine Aktivität sicher ist aber die meiste Zeit sind sie der Gedanke eines Augenblicks - Ist dieser Kaffee zu heiß? Kommt ein Bus? Software ist nicht anders, und mit einem Risikobewertungsansatz, wie der unten beschrieben, kann wirklich dazu beitragen, Ihre Arbeit erfolgreich und nachhaltig zu machen.

## Die Risikomatrix

Eine Risikomatrix ist eine sehr beliebte Methode, um zu quantifizieren, was mit der Sache geschieht, die Sie interessiert. Eine Achse misst die Exposition auf die eine und die andere die Auswirkungen eines Fehlfalls. Je weiter der Ursprung entfernt ist, desto mehr Schutzmaßnahmen sind erforderlich, um das Risiko akzeptabel zu machen.

```{figure} ../../figures/risk-matrix.png
---
Name: Risk-Matrix
alt: Impact vs Komplexität Risikomatrix
---
Auswirkung vs Risikomatrix
```

In unserem Fall werden wir „Komplexität“ und „Impakt“ als die beiden Achsen verwenden. Einige Fallstudien zeigen, wie es funktioniert…

Fall 1

> Richard muss dem Abteilungscluster 100 kleine Jobs vorlegen, wobei die Namen der Jobs nach einem einfachen Muster variieren. Das ist langweilig und er will nach draußen gehen und spielen. Daher beschließt Richard ein Shell-Skript zu schreiben, um alle Jobs einzureichen. Er pausiert für ein paar Sekunden und fragt:

> Wie kompliziert ist das? Es wird nur etwa 1 Bildschirm Text.

> Was ist, wenn es schief geht? Die Jobs werden nicht abgeschickt oder laufen und ich werde einige Fehlermeldungen erhalten.

> Hier entscheidet Richard darüber, dass sowohl die Komplexität als auch die Auswirkung dieses winzigen Softwarekomponents gering sind. Daher ist die Verwendung der Versionskontrolle und das Schreiben von Dokumentationen derzeit unverhältnismäßig. Er entscheidet sich für einen Trockenlauf, indem er die Untersendelinie zum Terminal wiederholt, damit er es schnell überprüfen kann.
> Ein paar Wochen später will jemand im Labor das Gleiche tun. Richard bietet sein Skript an, da es für ihn recht gut funktioniert hat. Die Torpfosten sind verschoben. Richard pausiert für ein paar Sekunden und bewertet das Risiko… neu
> …5 Jahre später Richards Skript hat sich zu einem großen Workflow-Kontrollsystem entwickelt, das es mehreren Universitäten ermöglicht, komplexe Workflows zu verwalten, die aus 1000 Stellen bestehen, die einer Reihe verschiedener Rechenressourcen vorgelegt werden. Die Software verfügt nun über ein formales Projektgremium, das die Steuerung und Richtung der Software festlegt Sicherstellen, dass es nachhaltig ist und den Anforderungen der 100 Anwender weltweit gerecht wird.

Fall 2...

> Jemma hat ein Problem mit der Visualisierung einiger Daten. Die übliche Bibliothek kann mit dem Format ihrer Daten nicht zurechtkommen. Sie hat vom Freitagnachmittagsprojekt von Seth gehört, in dem er einen Wrapper um diese Bibliothek schrieb, um das Problem zu lösen. Sie haben einen Kaffee und entscheiden sich für eine Zusammenarbeit. Während dieses Kaffees treffen sie einige Entscheidungen darüber, wie sie erfolgreich zusammenarbeiten werden - das ist ihre Risikobewertung. Seth erklärt sich bereit, die Inline-Dokumentation zu verbessern und einige Anwendungsbeispiele vor dem Teilen hinzuzufügen. Jemma erklärt sich damit einverstanden, ein Repository einzurichten, in das Seth den Code setzen wird.

> Im Laufe der Zeit fangen mehr Leute an, von dieser Software Gebrauch zu machen, wobei Funktionsanfragen Komplexität und Änderungen in der zugrundeliegenden Bibliothek zu Störungen führen. Jemma und Seth sind sich einig, dass die Dinge ein wenig riskant werden, da die Auswirkungen falscher Ergebnisse zu Problemen bei der Veröffentlichung von Ergebnissen führen können. Sie führen daher kontinuierliche Integrationstests und einen Überprüfungsprozess ein, um sicherzustellen, dass die Dinge nachhaltig bleiben.

Der zentrale Punkt dieser Fallstudien ist, dass jede Software andere Anforderungen hat, die nachhaltig sein müssen. und diese Anforderungen können sich im Laufe der Zeit ändern. Der Einsatz von Versionskontrolle, Testing, Dokumentation und anderen Nachhaltigkeitskonzepten ist zum Risikomanagement nützlich. Mit keines dieser Werkzeuge lässt Ihre Software Dinge schief laufen, aber mit allen von ihnen von Anfang an können in den Weg der Innovation. Der Ansatz zur Risikobewertung hilft Ihnen, das richtige Gleichgewicht zu finden. Besuchen Sie das Thema einmal in einer Weile oder wenn sich etwas ändert.

## Mehr zur Komplexitätsmessung

Ein Maß an Komplexität ist die Zeile. Je mehr Linien Sie haben, desto mehr Orte gibt es um einen Fehler zu machen. Es gibt jedoch noch andere Dinge, die man sich interessieren könnte. Auf wie viele Bibliotheken sind Sie angewiesen? Wie viele Funktionen gibt es? All dies misst die Komplexität der Codebase. Komplexität kann auch andere Formen annehmen. Wie viele Anwendungsfälle gibt es? Wird Ihre Blob-Zählsoftware nur zum Zählen von Blobs in den Biowissenschaften verwendet? Gibt es Menschen, die es benutzen, um Blobs in CCTV-Bildern zu zählen? Auf welcher Art von Computer wird der Computer verwendet? CPU? GPU? Himbeere Pi? Informieren Sie sich umfassend über Ihre Software.

## Mehr über die Messung von Auswirkungen

Was passiert, wenn (wenn nicht) Ihre Software nicht funktioniert? Manchmal ärgert es dich nur für ein paar Minuten. Aber auch andere Software, die schief geht, kann enorme Folgen haben - die Rücknahme Ihres wegweisenden Papiers oder sogar Leben verloren gehen. Um die Auswirkungen messen zu können, muss man sich gut darüber im Klaren sein, wofür Ihre Software verwendet wird. Es kann manchmal schwierig sein, dies im Auge zu behalten, bis die Dinge schief laufen. Allerdings, Man kann versuchen, dies am Pass abzuschieben, indem man Fragen wie „Ist diese Software, die ich für die Analyse in meinem Papier verwende, überhaupt gut?“ stellt. Auch hier sollten Sie eine breite Sicht auf Ihre Software haben.
