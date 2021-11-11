(rr-renv-options)=
# Erfassen von Computer-Umgebungen

Es gibt mehrere Möglichkeiten, Computerumgebungen zu erfassen. Die wichtigsten in diesem Kapitel behandelten Pakete Management Systeme, Binder, virtuelle Maschinen und Container. Jedes hat seine Vor- und Nachteile und die für Sie am besten geeignete Option hängt von der Art Ihres Projekts ab.

Sie können weitgehend in zwei Kategorien aufgeteilt werden: solche, die nur die Software und ihre Versionen in einer Umgebung erfassen (Package Management Systems), und solche, die eine komplette Rechenumgebung nachbilden - einschließlich des Betriebssystems und der angepassten Einstellungen (Virtuelle Maschinen und Container).

Eine weitere Möglichkeit, diese zu trennen, besteht darin, wie die reproduzierte Forschung dem Reproduzenten präsentiert wird. Die Verwendung von Binder oder einer virtuellen Maschine erzeugt ein viel grafischeres GUI-Ergebnis. Im Gegensatz dazu werden die Ausgänge von Containern und Package-Management-Systemen über die Kommandozeile leichter miteinander verknüpft.

```{figure} ../../figures/computational-environments.jpg
---
Name: Berechnungs-Umgebungen
alt: Eine Darstellung der verschiedenen Werkzeuge, die zur Erfassung der Berechnungsumgebungen verwendet werden
---
Wege zur Erfassung der Rechenumgebungen
```

Eine kurze Beschreibung jedes dieser Tools ist unten angegeben


(rr-renv-options-pms)=
## Paketverwaltungssysteme

Paketverwaltungssysteme [{term}`def<Package Management System>`] sind Werkzeuge, die zur Installation und Verfolgung der auf einem System verwendeten Software (und kritischen Softwareversionen) verwendet werden und die Dateien exportieren können, die diese benötigten Softwarepakete/Versionen enthalten. Die Dateien können mit anderen geteilt werden, die sie verwenden können, um die Umgebung zu replizieren, entweder manuell oder über ihre Paketverwaltungssysteme.


(rr-renv-options-binder)=
## Binder

Binder [{term}`def<Binder>`] ist ein Dienst, der voll funktionierende Versionen von Projekten aus einem Git-Repository generiert und diese in der Cloud bedient. Diese "binderisierten" Projekte können über einen Webbrowser aufgerufen und mit anderen interagiert werden. Dazu setzt Binder voraus, dass die Software (und, optional, Versionen) angegeben wird, die für die Ausführung des Projekts erforderlich ist. Benutzer können Paketverwaltungssysteme oder Dockerfiles verwenden (diskutiert in den Abschnitten {ref}`rrr-renv-options-containers` </code> um dies zu tun, wenn sie dies wünschen.


(rr-renv-options-vm)=
## Virtuelle Maschinen

Virtuelle Maschinen [{term}`def<Virtual machine>`] sind simulierte Computer. Ein Benutzer kann einen "virtuellen" Computer sehr einfach machen, indem er das Betriebssystem angibt, das er haben soll unter anderen Funktionen, und starten Sie es wie jede andere App. Innerhalb der App werden Desktop, Dateisystem, Standard-Software-Bibliotheken und andere Funktionen des angegebenen Rechners sein. Diese können so interagiert werden, als wäre es ein echter Computer. Virtuelle Maschinen lassen sich einfach replizieren und teilen. Dies ermöglicht es Forschern virtuelle Maschinen zu erstellen, ihre Forschung an ihnen durchzuführen und dann ihren Zustand zusammen mit ihren Dateien, Einstellungen und Ausgaben zu speichern. Sie können diese dann als voll funktionsfähiges Projekt verteilen.


(rr-renv-options-container)=
## Container

Container [{term}`def<Container>`] bieten viele Vorteile wie virtuelle Maschinen. Sie fungieren im Wesentlichen als völlig getrennte Maschinen, die eigene Dateien, Software und Einstellungen enthalten können.

Der Unterschied ist, dass Virtual Machines ein ganzes Betriebssystem zusammen mit all der dazugehörigen Software beinhaltet, die normalerweise mit dieser Software gepackt ist - unabhängig davon, ob das Projekt von dieser zugehörigen Software Gebrauch macht. Container enthalten nur die Software und Dateien, die explizit in ihnen definiert sind, um das darin enthaltene Projekt auszuführen. Das macht sie viel leichter als Virtuelle Maschinen.

Container sind besonders nützlich, wenn Projekte auf Hochleistungsrechnerumgebungen ausgeführt werden müssen. Da sie bereits _enthalten_ alle notwendigen Software sie sparen, irgendetwas auf einem unbekannten System zu installieren, auf dem der Forscher möglicherweise nicht die erforderlichen Berechtigungen dazu hat.
