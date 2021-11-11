(rr-binderhub-inntroduction)=
# Einführung in BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) ist eine Cloud-basierte Technologie, die ein Repository von Code starten kann (von GitHub, GitLab, und andere) in einem Browser-Fenster, so dass der Code ausgeführt und interagiert werden kann. Es wird eine einzigartige URL generiert, die den interaktiven Code leicht freigeben lässt.

Ziel dieser Binder-Fälle ist es, die Reproduzierbarkeit in Forschungsprojekten zu fördern, indem Forscher ermutigt werden, ihre Software-Abhängigkeiten zu dokumentieren und Spaß zu machen, interaktive Umgebungen!

Binder, als Benutzerschnittstelle ist nützlich für die Reproduzierbarkeit, da der Code versionskontrolliert und die Rechenumgebung dokumentiert werden muss, um von der Funktionalität von Binder profitieren zu können. Jede Änderung am Quellcode-Repository erzwingt auch eine neue Version der Binder-Instanz. Dies fungiert als Proxy für die kontinuierliche Integration der Rechenumgebung, da die Binder-Instanz kaputt geht, wenn die Konfigurationsdatei nicht aktualisiert wird.

Erfahren Sie mehr über die kontinuierliche Integration {ref}`hier<rr-ci>`.

## Wie funktioniert ein BinderHub?

BinderHub setzt auf verschiedene Tools und Ressourcen, um die Binder-Instanzen zu erstellen und zu starten.

Weitere Informationen finden Sie in dieser [hochstufigen Erklärung der BinderHub-Architektur](https://binderhub.readthedocs.io/en/latest/overview.html).
