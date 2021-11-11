(rr-renv-binder)=
# Binder

(rr-renv-binder-overview)=
## Übersicht

Jetzt, da wir gesehen haben, wie wir die in einem Python-Projekt verwendete Computerumgebung nutzen und erfassen können ist es an der Zeit, darüber nachzudenken, wie man diese Umwelt teilen kann.

Mit einer `environment.yml` Datei (oder ähnlichem, von alternativen Paketverwaltungssystemen) können andere die von dieser Datei angegebene Umgebung neu erstellen. Dies setzt jedoch voraus, dass der neue Benutzer das gleiche Paketverwaltungssystem installiert hat und weiß, wie es verwendet werden soll. Es wäre viel einfacher, wenn es eine automatisierte Lösung zur Wiederherstellung der Rechenumgebung gäbe - und hier kommt Binder ins Spiel.

Binder verwendet ein Tool namens `repo2docker` um ein Docker-Bild eines Projekts basierend auf den darin enthaltenen Konfigurationsdateien zu erstellen. Das resultierende Bild enthält das Projekt und die vom ursprünglichen Benutzer angegebene Rechenumgebung. Andere Benutzer können über einen Cloud-basierten BinderHub auf das Bild zugreifen, der es ihnen erlaubt, den Code von ihrem Webbrowser aus anzusehen, zu bearbeiten und auszuführen.

Juliette Taka's exzellentes Cartoon unten illustriert die Schritte beim Erstellen und Teilen eines "binderisierten" Projekts.

**Schritt 1:** Wir beginnen mit einer Forscherin, die ein Projekt abgeschlossen hat und ihre Arbeit mit allen teilen möchte unabhängig von ihrer Rechenumgebung. Beachten Sie, dass Binder nicht nur auf fertige Projekte angewendet werden muss; es kann auf die gleiche Weise genutzt werden, um Projekte zu teilen, die in Bearbeitung sind.

**Schritt 2:** Das Projekt des Forschers enthält viele Dateien verschiedener Arten. In diesem Fall hat der Forscher in Jupyter Notebooks gearbeitet. Allerdings kann Binder genauso effektiv mit vielen anderen Dateiformaten und Sprachen verwendet werden, die wir in Kürze näher erläutern werden.

**Schritt 3:** Der Forscher lädt seinen Code in einen öffentlich zugänglichen Hosting-Dienst wie GitHub, auf den andere zugreifen können. Sie enthält eine Datei, die die für die Ausführung des Projekts erforderliche Rechenumgebung beschreibt.

**Schritt 4:** Sie erzeugt einen Link unter [mybinder.org](https://mybinder.org) BinderHub. Durch Klicken auf diesen Link kann jeder auf eine "binderisierte" Version seines Projekts zugreifen. Der Klick löst `repo2docker` aus, um ein Docker-Bild basierend auf dem Inhalt des Projektarchivs und seiner Konfigurationsdateien zu erstellen. Dieses Bild wird dann in der Cloud gehostet. Die Person, die auf den Link geklickt hat, wird zu einer Kopie ihres Projekts in ihrem Webbrowser gebracht, wo sie mit ihm interagieren können. Diese Kopie des Projekts wird in der Umgebung gehostet, aus der der Forscher in Schritt 3 angegeben hat, unabhängig von der Rechenumgebung, aus der er Zugriff erhält.

```{figure} ../../figures/binder-comic.png
---
Name: binder-comic
alt: Eine Abbildung der Schritte, die eine Person unternehmen kann, um ein binderisiertes Projekt zu erstellen.
---
Figure credit - [Juliette Taka, Logilab und das OpenDreamKit Projekt](https://opendreamkit.org/2017/11/02/use-case-publishing-reproducible-notebooks/)
```

Um eine Vorstellung davon zu bekommen, wie dies aussieht, ist unten ein Binder eines einfachen Beispielprojekts. Dateien werden aufgelistet und können von der Person, die auf den Binder zugreift, angeklickt und geändert werden.

```{figure} ../../figures/binder-home.png
---
Name: binder-home
alt: Ein Screenshot eines Binders eines Beispielprojekts
---
Ein Binder eines Beispielprojekts.
```

Benutzer können auch Terminals öffnen, um die Dateien auszuführen oder anderweitig mit ihnen zu interagieren, indem Sie auf "Neu" klicken und dann auf "Terminal" oben rechts auf dem oben angezeigten Home-Binder Bildschirm klicken. Hier wird das Analyseskript im Beispiel Binder ausgeführt, das eine lineare Regression auf einigen Daten durchführt:

```{figure} ../../figures/binder-terminal.png
---
Name: Binder-Terminal
alt: Ein Screenshot eines Terminals, in dem Benutzer Projektdateien ausführen oder interagieren können
---
Ein Screenshot eines Terminals, in dem Benutzer Projektdateien ausführen oder interagieren können
```

Wie bereits erwähnt, ist Binder gut in Jupyter Notebooks integriert. Notizbücher können durch Klicken auf "Neu" und dann auf "Notizbuch" in der gleichen Weise geöffnet werden. Diese können für diejenigen, die mit grafischen Ausgaben arbeiten, günstiger sein, wie hier gezeigt wird, wo man `make_plot ausführt. y` im Beispiel Binder:

```{figure} ../../figures/binder-notebook.png
---
Name: Binder-Notebook
alt: Ein Screenshot eines Jupyter Notebooks, integriert in Binder
---
Ein Screenshot eines Jupyter Notebooks, integriert mit Binder
```

Wenn R in einem Binder installiert ist, zeigt das Dropdown-Menü die Optionen, um R Jupyter Notebooks und RStudio Sessions im Binder zu öffnen.

(rr-renv-binder-disambiguation)=
## Unklarheit

In diesem Abschnitt gibt es einige verwandte Begriffe, die hier für Klarheit skizziert werden:

- **Binder**: Eine freigegebene Version eines Projekts, die in einer reproduzierbaren Rechenumgebung über einen Webbrowser angesehen und interagiert werden kann.
- **BinderHub**: Ein Dienst, der Binder generiert. Die am häufigsten verwendete ist [mybinder.org](https://mybinder.org), die vom Binder-Team verwaltet wird. Es ist möglich andere BinderHubs zu erstellen, die spezialisierte Konfigurationen unterstützen können. Eine solche Konfiguration könnte die Authentifizierung beinhalten, damit private Repositories unter engen Mitarbeitern geteilt werden können.
- **[mybinder.org](https://mybinder.org)**: Ein öffentlicher und freier BinderHub. Da es öffentlich ist, sollten Sie es nicht verwenden, wenn Ihr Projekt persönliche oder vertrauliche Informationen (wie Passwörter) benötigt.
- **Binderize**: Um einen Binder eines Projekts zu erstellen.

(rr-renv-binder-creating)=
## Binder für ein Projekt erstellen

Die Erstellung einer binderisierten Version eines Projekts beinhaltet drei wichtige Schritte, die in diesem Abschnitt erklärt werden:

1. Rechenumgebung angeben
2. Legen Sie die Projektdateien irgendwo öffentlich zur Verfügung (wir beschreiben wie man dies mit GitHub macht)
3. Link zu einem Binder des Projekts generieren

Eine Liste der Beispiel-Repositories zur Verwendung mit Binder finden Sie auf der Seite [Beispielbinder Repositories](https://mybinder.readthedocs.io/en/latest/sample_repos.html).

(rr-renv-binder-creating-stepone)=
### Schritt 1: Geben Sie Ihre Rechenumgebung an

Angenommen, das Projekt enthält keine Datei, die die Rechenumgebung angibt. Wenn ein Binder erzeugt wird, wird die Umgebung die Binder Standardumgebung sein (enthält Python 3. ), die für das Projekt geeignet sind oder nicht geeignet sind. Wenn es jedoch eine Konfigurationsdatei für die Umgebung enthält, wird der Binder mit der angegebenen Umgebung generiert. Eine vollständige Liste solcher Dateien, die Binder akzeptiert, mit Beispielen findest du [hier](https://mybinder.readthedocs.io/en/latest/config_files.html). Wichtige werden unten diskutiert, einige davon sind sprachspezifisch:

- `environment.yml`
  - Erinnern Sie sich, dass `environment.yml` Dateien im Abschnitt {ref}`rr-renv-package` diskutiert wurden.
- Dockerfile
  - Dockerfiles werden im Abschnitt {ref}`rrr-renv-containers` diskutiert, so dass hier nicht weiter diskutiert wird.
- `apt.txt`
  - Abhängigkeiten, die normalerweise über Befehle wie `sudo apt-get install package_name` installiert würden, sollten in einer `apt aufgelistet werden. xt` Datei und wird automatisch im Binder installiert.
  - Wenn zum Beispiel ein Projekt Latex verwendet, sollte die `apt.txt` Datei gelesen werden
    ```
    texlive-latex-Basis
    ```
    , um das Basis-Latex-Paket zu installieren.
- `default.nix`
  - Für diejenigen, die das {ref}`rrr-renv-Paket verwenden` Nix kann eine `default.nix` Datei eine bequeme Möglichkeit sein, ihre Umgebung zu erfassen.
- `requirements.txt` (Python)
  - Für Python-Benutzer kann eine `requirements.txt` Datei verwendet werden, um abhängige Pakete aufzulisten.
  - Zum Beispiel, um Binder Installation `numpy` zu haben, müsste diese Datei einfach lesen:
    ```
    numpy
    ```
  - Eine bestimmte Paketversion kann auch mit einem `==` angegeben werden. Zum Beispiel, um Binder Installation Version `1.14.5` von `numpy` zu haben, dann wäre die Datei
    ```
    numpy==1.14.5
    ```
  - Die Datei `requirement.txt` muss nicht handschriftlich sein. Das Ausführen des Befehls `pip freeze > requirements.txt` wird eine `requirements.txt` Datei ausgeben, die die Python-Umgebung vollständig definiert.
- `runtime.txt`
  - Es wird verwendet, um eine bestimmte Version von Python oder R für den zu verwendenden Binder anzugeben.
  - To specify which version of R to use, find the date it was captured on [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) and include it in the `runtime.txt` file as
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - Um eine Version von Python anzugeben, geben Sie die Version in der `runtime.txt` Datei an. Zum Beispiel, um Python 2.7 zu verwenden, muss die Datei lesen
    ```
    python-2.7
    ```
- `install.R` oder `BESCHREIBUNG` (R/RStudio)
  - Eine `install.R` Datei listet die zu installierenden Pakete auf. Zum Beispiel, um das Paket `tibble` im Binder zu installieren:
    ```
    install.packages("tibble")
    ```
  - [BESCHREIBUNGsdateien](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) werden typischerweise für das Abhängigkeitsmanagement in der R-Community verwendet.

(rr-renv-binder-creating-steptwo)=
### Schritt 2: Setze deinen Code auf GitHub

GitHub wird ausführlich im Kapitel über {ref}`rrr-vcs diskutiert`, , auf die Sie sich beziehen sollten, wenn Sie mehr über diesen Schritt erfahren möchten. In diesem Kapitel werden wir eine kurze Erklärung abgeben. GitHub ist eine sehr weit verbreitete Plattform, auf der Sie "Repositories" erstellen und Code, Dokumentation oder alle anderen Dateien in sie hochladen können. Um diesen Schritt abzuschließen:

1. Erstelle einen Account auf [GitHub](https://github.com/).
2. Erstellen Sie ein Repository für das Projekt, von dem Sie einen Binder erstellen möchten.
3. Laden Sie Ihre Projektdateien (einschließlich der Datei, die Sie erstellt haben, um Ihre Rechenumgebung zu spezifizieren) ins Projektarchiv hoch und speichern Sie diese dort ("commit" im Vokabular von GitHub).

Wenn Sie diese Schritte nicht abschließen können, lesen Sie bitte das Kapitel unter {ref}`Versionskontrolle <rr-vcs>` für eine ausführlichere Erklärung.

(rr-renv-binder-creating-stepthree)=
### Schritt 3: Erstellen Sie einen Link zu einem Binder Ihres Projekts

Gehe zu [https://mybinder.org](https://mybinder.org). Sie werden ein Formular sehen, in dem Sie aufgefordert werden, ein Repository für [mybinder.org](https://mybinder.org) anzugeben, um es zu bauen. Im ersten Feld fügen Sie die URL des GitHub Projektarchivs ein. Es sieht so aus: `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
---
Name: mybinder-gen-link
alt: Ein Screenshot der Webseite, die verwendet wird, um einen Binder-Link für Ihr Projekt zu generieren
---
Schnittstelle zur Generierung von Binder-Links für Projekte
```

Wie Sie sehen können, gibt es zusätzliche Felder in diesem Formular, aber diese sind optional und werden hier nicht diskutiert.

Sobald die URL des zu bindenden Projekts angegeben ist, werden zwei Felder automatisch auf dem oben dargestellten Bildschirm gefüllt:

- Die `Kopieren Sie die URL unten und teilen Sie Ihren Binder mit anderen` Feldern stellt einen Link zum Binder bereit, der kopiert und geteilt werden kann.
- Das `Kopiere den Text unten, dann füge ihn in deine README ein um ein Binder-Abzeichen` Feld anzuzeigen kann in GitHub eingebunden werden, um einen Button zu erstellen, der jedem erlaubt, der auf Ihr Projekt zugreift, den Binder zu starten.

Zum Schluss klicken Sie auf den Start-Button. Hiermit wird [mybinder.org](https://mybinder.org) aufgefordert, die Umgebung zu erstellen, die benötigt wird, um das Projekt auszuführen. Dies kann einige Minuten dauern. Klicke auf die Schaltfläche `Build Logs` um die vom Build generierten Protokolle zu sehen. Diese Protokolle helfen bei der Behebung von Problemen, die das Build zum Scheitern bringen, wie z.B. Fehler in der Datei, die die Rechenumgebung definieren, zu beheben.

Sobald es gebaut wurde, wird der Binder automatisch gestartet; wieder kann dies einige Zeit dauern.

(rr-renv-binder-data)=
## Inklusive Daten in einem Binder

Es gibt einige Möglichkeiten, Daten in Ihrem Binder zur Verfügung zu stellen. Das Beste hängt davon ab, wie groß Ihre Daten und Ihre Einstellungen für den Datenaustausch sind. Beachten Sie, dass je mehr Daten enthalten sind, desto länger dauert es, bis ein Binder gestartet wird. Die Daten benötigen auch Speicherplatz, für den bezahlt werden muss, daher ist es gut, Rücksicht zu nehmen und die von Ihnen angegebenen Daten zu minimieren besonders auf dem öffentlich zur Verfügung gestellten [Mybinder. rg](https://mybinder.org).

(rr-renv-binder-data-small)=
### Kleine öffentliche Dateien

Der einfachste Ansatz für öffentlich zugängliche kleine Datendateien besteht darin, diese direkt in Ihr GitHub Projektarchiv hinzuzufügen oder mit dem Rest Ihrer Projektdateien in den Binder einzubinden. Dies funktioniert gut und ist für Dateien mit einer Größe von bis zu 10 MB sinnvoll.

(rr-renv-binder-data-medium)=
### Mittlere öffentliche Dateien

Für mittelgroße Dateien - ein paar 10 Megabyte bis ein paar hundert Megabyte - finden Sie einen anderen Ort, um sie zu speichern und stellen Sie sicher, dass sie öffentlich zugänglich sind. Fügen Sie eine Datei mit dem Namen `postBuild` (ein Shell-Skript, also muss die erste Zeile `#! bin/bash`) in Ihre Projektdateien. Fügen Sie in der Datei `postBuild` eine einzige Zeile zum Lesen hinzu:
```
wget -q -O name_of_your_file link_to_your_file
```

Die `postBuild` Datei wird verwendet, um Befehle auszuführen, wenn die Dateien zum Erstellen des Binders generiert werden. In diesem Fall kann es verwendet werden, um Ihre Daten in die Dateien herunterzuladen, die zum Starten des Binders verwendet werden.

(rr-renv-binder-daten-groß)=
### Große öffentliche Dateien

Die beste Option für große Dateien ist, eine auf das Datenformat spezialisierte Bibliothek zu verwenden, um die Daten so zu streamen, wie Sie sie verwenden. Es gibt ein paar Einschränkungen für ausgehenden Datenverkehr von Ihrem Binder, die vom Teambetrieb [mybinder.org](https://mybinder.org) auferlegt werden. Derzeit sind nur Verbindungen zu HTTP und Git erlaubt. Dies kommt vor, wenn man FTP-Seiten zum Abrufen von Daten verwenden möchte. Aus Sicherheitsgründen ist FTP auf [mybinder.org](https://mybinder.org) nicht erlaubt.
