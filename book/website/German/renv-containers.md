(rr-renv-container)=
# Container

(rr-renv-containers-warum)=
## Warum Container?

Selbst bei mäßig komplexen Projekten kann die Größe des Software-Abhängigkeitsstacks enorm sein. Nehmen Sie eine einfache Pipeline, um einen pdf-Bericht für eine in R geschriebene Analyse mit Hilfe von `Rmarkdown`zu erstellen. Um dieses Reproduzierbar zu machen nicht nur (i) die jeweiligen R-Pakete müssen installiert werden und (ii) die R-Version muss gleich sein, aber auch (iii) die Versionen von `pandoc` und `LaTeX` müssen die gleichen sein wie während der Laufzeit.

Anstatt diese Abhängigkeiten über einen Paketmanager (wie z.B. Conda) zu beheben - was auch davon abhängt, dass alle benötigte Software in einem einzelnen Paketmanager verfügbar ist - könnte es einfacher sein, einen Schnappschuss der gesamten Computing-Umgebung einschließlich aller Abhängigkeiten zu erstellen. Diese Computerumgebungen sind dann selbständig und daher der Name 'Container'.

(rr-renv-containers-what)=
## Was sind Container?

Container erlauben es einem Forscher, ein Projekt mit allen benötigten Teilen zu paketieren - wie Bibliotheken, Abhängigkeiten und Systemeinstellungen - und verschicken Sie alles als ein Paket. Jeder kann dann einen Container öffnen und innerhalb dieses Containers arbeiten das Betrachten und Interagieren mit dem Projekt, als ob die Maschine, von der aus sie darauf zugreift, identisch mit der im Container angegebenen Maschine ist - unabhängig davon, welche Rechenumgebung _tatsächlich_ ist. Sie sind so konzipiert, dass es einfacher ist, Projekte zwischen sehr unterschiedlichen Umgebungen zu übertragen.

In gewisser Weise verhalten sich Container wie eine virtuelle Maschine. Nach außen sehen sie wie ein eigenes komplettes System aus. Jedoch im Gegensatz zu einer virtuellen Maschine, anstatt ein ganzes virtuelles Betriebssystem zu erstellen plus alle Software und Tools, die normalerweise mit einer gepackt werden Container enthalten nur die einzelnen Komponenten, die sie benötigen, um das darin enthaltene Projekt zu betreiben. Dadurch wird die Leistung erheblich gesteigert und die Anwendungsgröße reduziert.

Container sind ein besonders nützlicher Weg, um Forschung zu reproduzieren, die sich auf Software stützt, die auf eine bestimmte Weise konfiguriert werden soll oder die Bibliotheken nutzt, die zwischen verschiedenen Systemen variieren (oder nicht existieren). Zusammenfassend Container sind eine robustere Möglichkeit, reproduzierbare Forschung zu teilen als Paketverwaltungssysteme oder Binder, weil sie das gesamte System reproduzieren, das für die Forschung verwendet wird. nicht nur die Pakete, die explizit von ihm verwendet werden. Ihre größte Kehrseite ist das aufgrund ihrer größeren Tiefe, Sie sind konzeptionell schwerer zu begreifen und zu produzieren als viele andere Methoden zur Replikation rechnerischer Umgebungen.

Ben Corrie gibt einen recht zugänglichen Überblick über Kernkonzepte in ['Was ist ein Container?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-containers-images)=
## Was sind Bilder?

Bilder sind die Dateien, die zur Erzeugung von Containern verwendet werden. Menschen machen keine Bilder; sie schreiben Rezepte, um Bilder zu erzeugen. Container sind dann identische Kopien von Bildern instanziiert.

Man denke daran:

- Eine Rezeptdatei, die menschliche Schriften enthält, enthält alle Schritte, um eine funktionierende Version des Projekts und seine Rechenumgebung zu generieren aber keine aktuellen Materialien. Stellen Sie sich dies als eine Blaupause vor.
- Das Erstellen eines Bildes verwendet dieses Rezept und montiert alle Pakete, Softwarebibliotheken, und Konfigurationen, die notwendig sind, um das vollwertige Projekt und die Umgebung zu machen und bündelt sie in einem verdichteten Klumpen. Denken Sie an Bilder wie ein Stück Flachpackmöbel aus der Blaupause.
- Container nehmen dieses Bild und montieren eine voll funktionsfähige Version des Projekts und der Umgebung, die benötigt wird, um es auszuführen. Man denke dabei an die Montage der Flachpackmöbel.

Also, wenn ein Forscher anderen erlauben will, ihre Arbeit zu reproduzieren sie müssten eine Rezeptdatei schreiben und sie verwenden, um ein Bild von ihrem Projekt zu erstellen. Sie können diese Bilddatei dann mit jedem teilen, der ihre Arbeit nachahmen möchte. Diese Person kann dann das Bild verwenden, um einen Container mit einer funktionierenden Version des Projekts zu erzeugen.

(rr-renv-containers-docker)=
## Was ist Docker?

Es gibt viele Werkzeuge, um Container zu erstellen und zu bearbeiten. Wir werden uns auf Docker konzentrieren, der weit verbreitet ist, aber wir wissen, dass es auch andere wie die Singularität gibt. Die Singularität wird manchmal für den Einsatz auf Hochleistungsrechnern bevorzugt, da sie keine `sudo` Berechtigungen benötigt, während Docker es tut.

In Docker sind die Rezeptdateien, die zur Erzeugung von Bildern verwendet werden, als Dockerfiles bekannt und sollten `Dockerfile` heißen.

[Docker Hub](https://hub.docker.com/) beherbergt sehr viele vorgefertigte Bilder zum Beispiel [Bilder](https://hub.docker.com/_/ubuntu) von Ubuntu-Maschinen, die heruntergeladen und gebaut werden können. Dies macht das Schreiben von Dockerfiles relativ einfach, da Benutzer sehr selten von Grund auf neu starten müssen, sie können nur vorhandene Bilder anpassen. Jedoch bleibt ein Benutzer verwundbar für ähnliche Sicherheitsprobleme, wie im Unterkapitel {ref}`rrr-renv-yaml-security` des {ref}`rr-renv-yaml` beschrieben:

- Es ist möglich, bösartigen Code in Docker Bilder einzufügen
- Es ist möglich, dass Personen, die Bilder herstellen, unwissentlich Software in sie mit Sicherheitslücken aufnehmen können

[Dieser](https://opensource.com/business/14/7/docker-security-selinux) Artikel geht tiefer in die potenziellen Sicherheitslücken von Containern und hier ist eine [detaillierte Aufschlüsselung](https://opensource.com/business/14/9/security-for-docker) der Sicherheitsfunktionen, die derzeit in Docker vorhanden sind, und wie sie funktionieren. Der beste Ratschlag für die Verwendung von Bildern von anderen ist, wie üblich, nur etwas auf Ihrem Rechner herunterladen und ausführen, wenn es von einer vertrauenswürdigen Quelle kommt. Docker Hub hat "offizielle Bild"-Abzeichen für häufig verwendete und verifizierte Bilder, wie hier angezeigt:

```{figure} ../../figures/docker-official-image.png
---
Name: Docker-Offizial-Bild
alt: Ein Screenshot mit offiziellen Abzeichen
---
```

(rr-renv-containers-installdocker)=
## Docker installieren

Installers for Docker on a variety of different systems are available [here](https://docs.docker.com/install/). Detaillierte Installationsanweisungen sind auch für eine Vielzahl von Betriebssystemen wie [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)verfügbar, [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/)und [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-Befehle)=
## Tastenbefehle

Hier sind ein paar Schlüsselbefehle zum Erstellen und Arbeiten mit Containern:

- Um ein Bild aus einer Dockerdatei zu erstellen, gehen Sie in das Verzeichnis, in dem die Dockerdatei ist und führen:
  ```
  sudo docker build --tag image_name .
  ```
- Um die Bilder auf Ihrem System anzuzeigen, benutzen:
  ```
  sudo Docker Bild ls
  ```
- Um ein Bild zu entfernen, führe aus:
  ```
  sudo docker rmi image_name
  ```
- Um einen Container aus einem Bild zu öffnen, führe aus:
  ```
  sudo docker ausführen -i -t image_name
  ```
  Die `-i -t` Flags öffnen automatisch ein interaktives Terminal innerhalb des Containers, so dass Sie die Projektdateien ansehen und mit ihnen interagieren können.
- Zum Beenden eines interaktiven Terminals verwenden:
  ```
  beenden
  ```
- Um eine Liste der aktiven Container mit IDs zu erhalten, führe aus:
  ```
  sudo Docker Container ls
  ```
- Es gibt auch drei Hauptbefehle, die zum Ändern des Status von Containern verwendet werden:
  - Pausen unterbrechen den Prozess, der den Container ausführt.
    ```
    sudo docker Container_ID pausieren
    ```
    Container können unpausiert werden, indem `pause` durch `unpause` ersetzt wird.
  - Das Stoppen eines Containers beendet den laufenden Prozess. Ein Container muss gestoppt werden, bevor er gelöscht werden kann.
    ```
    sudo docker stoppen Container_ID
    ```
    Ein gestoppter Container kann neu gestartet werden, indem `Stop` durch `Neustart` ersetzt wird.
  - Wenn `Stop` nicht funktioniert, können Container mit Hilfe von
    ```
    sudo docker kill container_ID
    ```
- Um einen Container zu entfernen, führe aus:
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## Dockerfiles schreiben

Lassen Sie uns die Anatomie einer sehr einfachen Dockerdatei durchgehen:

```
# Schritt 1: Richten Sie die Rechenumgebung

# Legen Sie das Basisbild
FROM Ubuntu:18 fest. 4

# Installiere Pakete, die benötigt werden, um das Projekt auszuführen
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 zu starten. python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#-----------------------

# Schritt 2: Fügen Sie die Projektdateien in das Bild ein

# Kopieren Sie Dateien aus dem `project_files` Verzeichnis auf der Maschine, indem Sie das Bild
# in den `project` Ordner im Container kopieren. Dieser Ordner und alle
# Verzeichnisse im Pfad werden automatisch erstellt.
COPY Projekt_Dateien/ Projekt/
```

Das sieht kompliziert aus, aber die meisten Zeilen in diesem Beispiel sind Kommentare (die `#`vorangestellt werden). Es gibt nur sechs Zeilen tatsächlichen Codes. Die erste davon ist eine `AUS` Anweisung, die ein Basisbild angibt. Alle Dockerfiles benötigen ein FROM, auch wenn es nur `VON SCRATCH` ist. Alle folgenden Befehle in einem Dockerfile bauen auf dem Basisbild auf, um eine funktionierende Version des Forschungsprojekts zu erstellen. Die Angabe einer Version für das Bild (`18.04` in diesem Fall) ist optional. Es ist jedoch die beste Praxis, da es sicherstellt, dass unser Dockerfile nach neuen Veröffentlichungen von Ubuntu gültig bleibt, , die keine Pakete (oder bestimmte Versionen) enthalten kann, die wir später benötigen (z.B. `python3.`).

Es lohnt sich, Zeit zu verbringen, um ein passendes Grundbild auszuwählen, da dies kann den Umfang der Arbeit beim Schreiben einer Dockerdatei drastisch reduzieren. Eine Sammlung von Bildern mit der darin enthaltenen R-Programmiersprache finden Sie zum Beispiel [hier](https://github.com/rocker-org/rocker-versioned). Wenn ein Projekt R nutzt ist es praktisch, eines davon als Basis-Image zu verwenden, anstatt Zeit mit dem Schreiben von Befehlen in Ihrem Dockerfile zu verbringen, um R zu installieren.

Als nächstes kommt der größte Linienblock. Es ist eine Serie von `RUN` Anweisungen, die Shell-Befehle beim Erstellen des Bildes ausführen. In diesem Block werden sie verwendet, um die Software zu installieren, die notwendig ist, um das Projekt auszuführen. Der erste `RUN` Block ist eine Befehlskette dieses Formulars:

```
RUN command_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_thing_4
```

Es ist empfehlenswert, die zugehörigen Befehle in einen einzigen `RUN` Block zu gruppieren, um die endgültige Größe Ihres Bildes um [zu reduzieren und unnötige Ebenen](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers) zu vermeiden. Wir folgen auch der besten Praxis, indem wir `--no-install-recommends` verwenden, um [unnötige Pakete zu vermeiden](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) und [Säuberung des `apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run), beides reduzieren die Größe von Debian oder Ubuntu-Images weiter.

Nachdem wir Python installiert haben, verwenden wir eine weitere RUN Anweisung, um eine von unserem Code benötigte Bibliothek zu installieren.

Schließlich wird der `COPY` Befehl verwendet, um die Projektdateien vom Rechner zu kopieren, der das Bild selbst erstellt. Die Syntax dieses Befehls ist `COPY file_to_copy location_in_container_to_copy_to`. In diesem Beispiel sind alle Dateien im `project_files` Verzeichnis in der `Projekt` Datei im Container enthalten. Beachten Sie, dass Sie nur Dateien aus dem Verzeichnis kopieren können, in dem sich die Dockerdatei befindet, oder Unterverzeichnisse darin (im Beispiel `project_files` Unterverzeichnis).

Der `ADD` Befehl hat die gleichen Fähigkeiten wie `COPY`, aber es kann auch verwendet werden, um Dateien hinzuzufügen, die nicht auf der Maschine das Bild zu erstellen. Zum Beispiel kann es benutzt werden, um Dateien online einzubinden, indem man `ADD` mit einer URL zur Datei folgt. Es ist eine gute Praxis, `COPY`zu verwenden, außer wenn `ADD` speziell benötigt wird da der Begriff `COPY` expliziter ist, was getan wird.

Hier ist was passiert, wenn ein Container von einem Bild namens `book_example`geöffnet wird, das aus dem obigen Beispiel erstellt wurde:

```{figure} ../../figures/container-example.png
---
Name: Container-Beispiel
alt: Ein Screenshot von dem, was passiert, wenn ein Container von einem Bild geöffnet wird
---
```

Wie Sie sehen können, wurde das Verzeichnis `Projekt` erstellt und in den Projektdateien `analysiert. y` und `data.csv` wurden in sie kopiert. Da die Dockerdatei bereits die für das Projekt benötigte Software enthält, läuft das `analysis.py` Skript, ohne mehr Software zu installieren.

(rr-renv-containers-dockerfiles-workdir)=
### `WORKDIR`

Dieser Befehl kann in Dockerfiles verwendet werden, um das aktuelle Arbeitsverzeichnis zu ändern. Befehle, die dies im Dockerfile folgen, werden im neuen Arbeitsverzeichnis unlos/solange angewendet, bis ein anderer `WORKDIR` das Arbeitsverzeichnis ändert. Wenn ein Container mit einem interaktiven Terminal geöffnet wird, öffnet sich das Terminal im endgültigen Arbeitsverzeichnis. Hier ist ein einfaches Beispiel für eine Dockerdatei, die `WORKDIR`und den erzeugten Container verwendet.

```
# Grundlegendes Setup
FROM ubuntu
RUN apt-get update

# Ein Verzeichnis mit dem Namen A
RUN mkdir A

# Erstellen Sie das Arbeitsverzeichnis A
WORKDIR A

# Erstellen Sie zwei Verzeichnisse, einen namens B_1 und einen namens B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
Name: workdir-example
alt: Screenshot des mit WORKDIR Befehl erzeugten Containers
---
```

Verzeichnisse `B_1` und `B_2` wurden im Verzeichnis `A` erstellt.

`WORKDIR` sollte beim Erstellen eines Bildes verwendet werden, wenn Verzeichnisse geändert werden müssen. Es kann versucht sein, `RUN cd directory_name` stattdessen zu verwenden, da diese Syntax denjenigen besser bekannt sein wird, die üblicherweise über die Befehlszeile arbeiten. Dies kann jedoch zu Fehlern führen. Nach jeder `RUN` Anweisung in einer Dockerdatei wird das Bild gespeichert und alle folgenden Befehle werden erneut auf das Bild angewendet. Als Beispiel hier ist was im obigen Beispiel passiert, wenn die `WORKDIR A` Zeile für `RUN cd A` getauscht wird.

```{figure} ../../figures/cd-example.png
---
Name: cd-example
alt: Ein Screenshot von dem, was passiert, wenn der WORKDIR Befehl mit RUN cd getauscht wird
---
```

Alle Verzeichnisse sind in diesem Fall auf der obersten Ebene statt `B_1` und `B_2` innerhalb `A`. Dies liegt daran, dass das Bild nach dem `RUN cd A` Befehl neu gestartet wurde und standardmäßig auf der oberen (root) Ebene geöffnet wurde, , damit die Befehle `mkdir B_1` und `mkdir B_2` wirksam wurden.

(rr-renv-containers-dockerfiles-Befehle)=
### Andere Befehle

Andere Befehle, die manchmal in Dockerfiles verwendet werden, sind:

- `CMD`: Dies wird verwendet, um Befehle auszuführen, sobald der Container geöffnet wird. Dies ist anders als RUN Befehle, die als Teil von _ausgeführt werden, um_ einen Container einzurichten. Um zum Beispiel eine Willkommensnachricht zu erhalten, wenn ein Container aus dem Bild geöffnet wird, könnte `CMD` wie folgt verwendet werden:
  ```
  CMD ["echo","Willkommen! Sie haben diesen Container geöffnet!"]
  ```
  Es ist eine gute Praxis, CMD für alle Befehle zu verwenden, die ausgeführt werden müssen, bevor jemand anfängt, im Container zu arbeiten, anstatt die Benutzer zu zwingen, sie selbst auszuführen (und darauf zu vertrauen, dass sie wissen werden, dass sie es benötigen).
- `VOLUMEN`: Diese werden {ref}`später <rr-renv-containers-volumes>` besprochen.
- `MAINTAINER`: Dies enthält Informationen über die Person, die die Dockerdatei geschrieben hat. Sie ist typischerweise am Anfang einer Dockerdatei enthalten.
- `EXPOSE`: Enthält Ports, die freigelegt werden sollen. Es ist relevanter für Leute, die Docker verwenden, um Web-Apps zu teilen.
- `BENUTZER`: Ändern Sie den Benutzer, unter dem ein Befehl ausgeführt wird (nützlich zum Löschen von Berechtigungen).

(rr-renv-containers-dockerignore)=
## Bilder und `.dockerignore` Dateien erstellen

Wie im Abschnitt {ref}`der Tastenbefehle erwähnt <rr-renv-containers-commands>` um ein Bild zu erstellen, öffnen Sie ein Terminal im selben Verzeichnis wie die Dockerfile die verwendet und ausgeführt werden soll:

```
sudo docker build --tag name_to_give_image .
```

Wenn ein Bild gebaut wird, wird alles im Dockerfile-Verzeichnis und darunter (dies nennt man den "Kontext") an den Docker-Daemon gesendet, um das Bild zu erstellen. Der Daemon benutzt die Dockerfile und ihren Kontext, um das Bild zu erstellen. Wenn der Kontext viele große Dateien enthält, die für das Erstellen des Bildes nicht benötigt werden, (alte Datenblätter, zum Beispiel) dann ist es eine Zeitverschwendung sie an den Daemon. Dies kann den Prozess des Bildes verlangsamen. Dateien können aus dem Kontext ausgeschlossen werden, indem sie in einer Textdatei namens `.dockerignore` aufgelistet werden. Das ist eine gute Praxis.

Die Dateien müssen nicht einzeln in der `.dockerignore` Datei angezeigt werden. Hier ist ein Beispiel für den Inhalt einer `.dockerignore` Datei:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

Dies schließt aus dem Kontext aus:

- Alle `.jpg` Dateien im selben Verzeichnis wie die Dockerfile
- Alle `.png` Dateien im selben Verzeichnis wie die Dockerfile _oder alle Unterverzeichnisse in ihr_
- Alle Dateien im `data_files` Verzeichnis
- Die Datei `file_to_exclude.txt`

(rr-renv-containers-sharing)=
## Teile Bilder

Docker Bilder können am einfachsten über [Docker Hub](https://hub.docker.com/)geteilt werden, was einen Account erfordert. Sagen Sie zwei Wissenschaftler, Alice und Bob, arbeiten an einem Projekt zusammen und Alice möchte ein Bild von einigen ihrer Arbeit mit Bob.

Um dies zu tun, muss Alice:

- Schreibe eine Dockerfile, um ein Bild ihrer Arbeit zu produzieren.
- Erstelle das Bild. Sie (erfinderisch) nennt es image_name
- Gehen Sie zu DockerHub und melden Sie sich für einen Account an. Say Alice (wieder erfinderisch) wählt den Benutzernamen `username_Alice`
- Melde dich über das Terminal auf ihrem Rechner bei DockerHub an:
  ```
  sudo Docker Login
  ```
- Markieren Sie das Bild ihres Projekts auf ihrem Rechner über die Kommandozeile, indem Sie den Namen des Bildes angeben und das Muster `Benutzername/image_name:version` verwenden. Alice führt also den Befehl aus:
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- Setze das Bild auf ihr Docker Hub Konto mit folgender Adresse:
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- Alices Bild ist jetzt online und kann heruntergeladen werden. Zum Bob...

Bob (vorausgesetzt, er hat bereits Docker installiert) kann einen Container von Alices Bild öffnen, indem er einfach läuft

```
sudo docker run -i -t username_Alice/image_name:version_1
```

Anfangs wird Docker nach diesem Bild auf Bobs Rechner suchen. Wenn es es nicht findet, wird es _automatisch_ DockerHub durchsuchen, Download Alice's Image, und öffnen Sie den Container mit Alices Arbeit und Umgebung auf Bob's Rechner.

(rr-renv-containers-copying)=
## Kopiere Dateien in und aus Containern

Container wirken ähnlich wie virtuelle Maschinen; als Ergebnis ist das Kopieren von Dateien in und aus ihnen nicht so trivial wie das Kopieren von Dateien an verschiedene Orte innerhalb eines Rechners.

Eine Datei kann von der Maschine kopiert werden, die einen Container in den Container ausführt:

```
sudo docker cp file_name container_ID:path_to_where_put_file/file_name
```

Beachten Sie, dass Container-IDs mit `sudo docker container ls` abgerufen werden können.

Eine Datei kann von einem Container auf die Maschine kopiert werden, die den Container ausführt, indem der folgende Befehl auf der Maschine mit dem Container ausgeführt wird:

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_put_file/file_name
```

Wenn der zweite Teil (der `path_to_where_to_put_file/file_name`) durch eine `ersetzt wird.`wird die Datei in das Verzeichnis kopiert, in dem sich das Terminal befindet, in dem der Befehl ausgeführt wird.

(rr-renv-containers-volumes)=
## Lautstärke

Jedes Mal, wenn ein Container aus einem Bild geöffnet wird, ist dieser Container völlig neu. Sagen Sie, dass ein Container geöffnet wird, und die Arbeit wird in ihm erledigt. Sagen Sie, dass ein Container geöffnet wird, und die Arbeit wird in ihm erledigt. Wenn dieser Container geschlossen ist und das Bild, von dem er stammt, erneut verwendet wird, um einen anderen Container zu starten, keine dieser Arbeiten wird in der neuen sein. Es wird einfach den Startzustand im Bild beschrieben.

Dies kann ein Problem sein, wenn ein Forscher im Laufe der Zeit in einem Container arbeiten möchte. Glücklicherweise gibt es einen Weg dies mit Volumen. Volumes speichern die Arbeit in einem Container, auch nachdem sie geschlossen wurde, und können verwendet werden, um diese Arbeit in zukünftige Container zu laden.

Um ein Volume zu erstellen/zu verwenden, führe aus:

```
sudo docker starten -i -t --mount source=volume_name,target=/target_directory image_name
```

Sie sollten Ihrem Volume einen beschreibenden Namen geben als `volume_name`. Ein `Ziel-` Verzeichnis ist erforderlich; nur die Arbeit innerhalb dieses Verzeichnisses wird im Volume gespeichert. Sobald der Forscher fertig ist, können sie den Container wie gewohnt schließen. Wenn sie zum Projekt zurückkehren und ihre Arbeit fortsetzen wollen, müssen sie nur den gleichen Befehl wie oben verwenden, und wird die in `enthaltene Arbeit Volumen_name` in den neuen Container laden. Es wird auch dort jede neue Arbeit ersparen.

Unten ist eine Liste der lautabhängigen Befehle:

- Um Lautstärke anzuzeigen: `sudo docker Lautstärke ls`
- Um ein Volume zu löschen: `sudo docker Volume rm Volumen_name`
- Um alle nicht angeschlossenen Volumes zu löschen: `sudo docker Lautstärke schneiden`

Wenn beim Löschen eines Containers ein `-v` ist nach `rm` in `sudo docker rm container_ID`enthalten, alle dem Container zugeordneten Volumes werden ebenfalls gelöscht.

(rr-renv-containers-singularity)=
## Singularität


> **Voraussetzungen**: Derzeit läuft Singularität nur auf Linux-Systemen (z.B. Ubuntu). Wenn Sie macOS verwenden, [Singularity Desktop für macOS](https://www.sylabs.io/singularity-desktop-macos/) befindet sich in der Phase der "Beta".

Ein erheblicher Nachteil bei der Verwendung von Docker für reproduzierbare Forschung besteht darin, dass es nicht als Anwenderanwendung gedacht ist, sondern als Werkzeug für Serveradministratoren. Als solches benötigt es Root-Zugriff zum Betrieb. Es gibt jedoch keinen Grund, warum die Durchführung einer Analyse Root-Zugriff für den Benutzer erfordert. Dies ist besonders wichtig, wenn Berechnungen auf gemeinsamen Ressourcen wie HPC-Systemen durchgeführt werden, wo Benutzer niemals Root-Zugriff haben.

Die [Singularität](https://www.sylabs.io/) Containersoftware wurde eingeführt, um dieses Problem zu lösen. Singularität wurde mit HPC-Systemen und reproduzierbarer Forschung erstellt (siehe \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNM video). It does not require root access to run (only to build container _images_!), and thus enables HPC users to locally build container images before running analyses on a high-performance cluster, for example. Als zusätzlicher Vorteil Dies macht es möglich, fast jede Software auf einem HPC-System zu verwenden, ohne das Administratorpersonal daran zu hindern, es zu installieren.

Furthermore, since Docker is _the_ most well-known containerization approach, singularity aims at maintaining compatibility with docker containers. Dies bedeutet, dass die Singularität benutzt werden kann, um normale Docker-Container auszuführen (ohne Root-Zugriff!).

Singularität kann benutzt werden, um Docker-Images auszuführen oder zu erweitern, indem neue Bilder auf Basis von Docker-Containern als Basisebene erstellt werden. Zum Beispiel könnten wir Singularität verwenden, um einen Vanille-Ubuntu Container mit einer Shell mit dem Ubuntu Docker Bild zu erstellen:

```
singular-Shell Docker://ubuntu
```

> (Tippen Sie `aus dem` , um die interaktive Shell wieder zu verlassen).

Genau wie Docker-Bilder mit `Dockerfile` erstellt werden, werden Singularitäts-Container aus Singularitätsdefinitionsdateien erstellt. Der Prozess und die Syntax sind ähnlich wie Docker-Dateien, aber es gibt subtile Unterschiede. Als minimales Arbeitsbeispiel können wir einen `Lolcow` Container basierend auf dem offiziellen Ubuntu Docker Containerbild erstellen. Fügen Sie folgendes in eine `lolcow.def` Datei (basierend auf der [Singularitätsdokumentation](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html)):
```
Bootstrap: docker
Von: ubuntu

%post
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%en<unk> ment
    Export LC_ALL=C
    Export PATH=/usr/games:$PATH

%runscript
    fortune | cowsay | lolcat | lolcat
```

Dieses 'Rezept' verwendet ein Dockerbild als Basis (`Ubuntu`), installiert ein paar `apt` Pakete, verändert ein paar Umgebungsvariablen, und gibt das `runscript` an (welches mit dem `singularity run` Befehl ausgeführt wird). Details zum Dateiformat der Singularitätsdefinition finden Sie in der offiziellen [-Dokumentation](https://www.sylabs.io/docs/).

Ein Containerbild kann dann erstellt werden (erfordert Root!) über:

```
sudo Singularität bauen lolcow.simg lolcow.def
```

Hiermit wird das Ubuntu-Bild von DockerHub gezogen, führen Sie die Schritte des Rezepts in der Definitionsdatei aus und erzeugen Sie eine einzige Ausgabe-Image-Datei (`lolcow. img`). Endlich wird das `runscript` ausgeführt als

```
Singularität läuft lolcow.simg
```

Idealerweise sollten Sie eine schöne ASCII-Kuh und ein paar Worte der Weisheit sehen:

```
___________________________________
/ Sie werden aufgefordert, einem \
\ Freund in Schwierigkeiten zu helfen.                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

Als HPC-kompatible Singularitäts-Container werden auch durch eine Vielzahl von Workflow-Management-Tools unterstützt. Zum Beispiel unterstützen sowohl [Schlangen/Schlangen/](https://snakemake.readthedocs.io/en/stable/) als auch [nextflow](https://www.nextflow.io/docs/latest/singularity.html) Job-spezifische Singularitätscontainer. Damit eignen sich Singularitätsbehälter einzigartig für die Parallelisierung von Workflows auf HPC-Systemen mit dem weit verbreiteten [slurm](https://slurm.schedmd.com/documentation.html) Arbeitslast-Manager. Die Verwendung von Singularität, Containern und Snakemake/nextflow ist eine Möglichkeit, die Reproduzierbarkeit massiv zu skalieren. Darüber hinaus ist es nicht mehr erforderlich, benutzerdefinierte Job-Scripts zu schreiben, um Workflows von einem Desktop-Rechner auf ein HPC-System zu bringen.

(rr-renv-containers-singularity-storage)=
### Langfristige Speicherung von Container-Images

Es ist wichtig zu beachten, dass eine einfache Containerrezeptdatei nicht reproduzierbar ist, da der Erstellungsprozess von verschiedenen (online) Quellen abhängt. Daher kann die gleiche Rezeptdatei zu verschiedenen Bildern führen, wenn die zugrunde liegenden Quellen aktualisiert werden.

Um eine echte Reproduzierbarkeit zu erreichen, ist es wichtig, die eigentlichen Container _Bilder_ zu speichern. Für Singularitätsbilder ist dies besonders einfach, da ein Bild einfach eine große Datei ist. Diese können in der Größe variieren, von ein paar Dutzend Megabyte (Mikro-Behälter) bis zu mehreren Gigabytes, und eignen sich daher nicht für die Speicherung in einem Git-Repository selbst Ein kostenloses citable, und langfristige Lösung für die Speicherung von Containerbildern ist [zenodo. rg](https://zenodo.org/) erlaubt bis zu 50 Gb pro Repository. Da zenodo DOIs für alle hochgeladenen Inhalte prägt, sind die Bilder sofort zitierbar. Im Gegensatz zu [Docker Hub](https://hub.docker.com/) (akzeptiert auch nur Docker Bilder) zenodo ist darüber hinaus über ein ausgeklügeltes Metadatensystem auf Langzeitlagerung und Entdeckbarkeit ausgerichtet. So eignet es sich ideal für die Lagerung wissenschaftlicher Container im Zusammenhang mit bestimmten Analysen, da diese im Laufe der Zeit nicht verändert werden.

(rr-renv-containers-warnung)=
## Worte der Warnung

Obwohl Singularität und Docker ähnlich aussehen, sind sie konzeptionell sehr unterschiedlich. Neben der offensichtlichen Tatsache, dass Singularität keinen Root-Zugriff benötigt, um Container auszuführen, auch die Unterscheidung zwischen dem Host- und Container-Dateisystem unterschiedlich behandelt. Standardmäßig enthält die Singularität einige Bindestriche im Container, nämlich:

- `$HOME`
- `/sys:/sys`
- `/proc:/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

Hinweis: `$PWD` ist praktisch, da dies impliziert, dass alle Dateien im Arbeitsverzeichnis innerhalb des Containers sichtbar sind. Standardmäßig jedoch `$HOME` verbinden impliziert auch, dass Software, die Konfigurationsdateien von `$HOME` verwendet, sich unerwartet verhalten könnte, da die bildspezifischen Konfigurationsdateien mit den aktuellen Benutzereinstellungen in `$HOME` überschrieben werden. Obwohl dieses Verhalten in HPC-Szenarien praktisch ist, ist es potenziell gefährlich für die reproduzierbare Forschung. Um potenzielle Probleme zu vermeiden, sollte jede in einem Singularitäts-Container installierte Software auf eine globale, benutzerunabhängige Konfigurationsdatei verweisen.
