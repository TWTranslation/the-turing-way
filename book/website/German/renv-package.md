(rr-renv-Paket)=
# Paketverwaltungssysteme

Paketmanager installieren und verfolgen die verschiedenen Softwarepakete (und deren Versionen), die Sie in einer Umgebung verwenden. Es gibt eine ganze Reihe von Wahlmöglichkeiten, zum Beispiel Yum, Zypper, dpkg, und Nix (die im Abschnitt {ref}`rrr-renv-binder` erwähnt werden). Wir werden uns auf [Conda](https://conda.io/en/latest/)konzentrieren, die mehrere nützliche Funktionen hat.

(rr-renv-package-conda)=
## Was tut Conda?

Conda ermöglicht es Anwendern, eine beliebige Anzahl von völlig getrennten Umgebungen zu erstellen, und schnell zu wechseln und zwischen ihnen zu wechseln. Zum Beispiel, sagen Sie, ein Forscher hat ein Projekt, _Projekt eins_, , das seine eigene Umgebung hat, definiert von Conda, die aus den folgenden Paketen besteht:

| **Paketname** | **Version** |
| ------------- | ----------- |
| `Paket A`     | `1.5.2`     |
| `Paket B`     | `2.1.10`    |
| `Paket C`     | `0.7.9`     |

Später startet der Forscher _Project Two_ in seiner eigenen Umgebung, mit den folgenden Paketen:

| _Paketname_ | _Version_ |
| ----------- | --------- |
| `Paket B`   | `2.1.10`  |
| `Paket C`   | `1.2.4`   |
| `Paket D`   | `1.5.2`   |
| `Paket E`   | `3.7.1`   |

Beachten Sie hier, dass die Version des `Paketes C` im _Project Two_ von der Version aktualisiert wurde, die in _Project One_ verwendet wurde. Wenn diese Projekt-Umgebungen nicht getrennt wären, hätte der Forscher die Wahl:

- A) Verwendung der älteren Version von `Paket C` für immer und nicht in den Genuss von Aktualisierungen und Fehlerkorrekturen in späteren Versionen.
- B) Installation der aktualisierten Version des Pakets und in der Hoffnung, dass dies nicht Auswirkungen _Project One_ hat.
- C) Installation der aktualisierten Version des Pakets zur Verwendung in _Project Two_, deinstallieren und die alte neu installieren, wann immer sie am _Project One_ arbeiten müssen. Das wäre äußerst ärgerlich und ein Schritt, der in Vergessenheit geraten könnte.

All diese Optionen sind extrem schlecht, daher ist Conda das Hilfsmittel für die Erstellung unterschiedlicher Umgebungen, die leicht austauschbar sind.

Conda kann auch verwendet werden, um Rechenumgebungen einfach zu erfassen und zu exportieren. Es kann auch in die andere Richtung gehen; es kann Rechenumgebungen aus Konfigurationsdateien erzeugen, mit denen man die Umgebung eines anderen erschaffen kann.

Ein weiterer Vorteil von Conda besteht darin, dass es Benutzern viel größere Flexibilität bietet, die keine Administratorrechte auf den Rechnern haben, an denen sie arbeiten (wie dies bei der Arbeit mit Hochleistungsrechnern üblich ist). Ohne Conda ist es in der Regel schwierig, benötigte Software auf solchen Maschinen zu installieren. Da Conda jedoch _neue_ Umgebungen erstellt und verändert, anstatt Änderungen an der Gesamtsystemumgebung einer Maschine vorzunehmen, sind Administratorrechte nicht erforderlich.

Schließlich ist Conda zwar Python-zentrisch in gewissem Maße, es ist aber auch gut für den Gebrauch mit anderen Sprachen integriert. Zum Beispiel enthält die Basis-Version von Conda die C++-Standardbibliothek.

(rr-renv-package-installing)=
## Conda wird installiert

Beachten Sie, dass diese Installationsanweisungen auf Linux-Systeme ausgerichtet sind. Anweisungen zur Installation von Conda auf Windows- oder Mac-Systemen finden Sie [hier](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Gehe zu [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) und lade den neuesten Miniconda 3 Installer für dein System herunter (32 Bit oder 64 Bit). Es wird einen Namen wie `miniconda_version_number.sh` haben. Führen Sie den Installer aus:

```
bash Miniconda_version_number.sh
```

Sie können überprüfen, ob Conda erfolgreich installiert wurde, indem Sie folgendes eingeben:

```
conda --version
```

die eine Versionsnummer ausgeben soll.

(rr-renv-package-using)=
## Erstellen und Benutzen von Umgebungen

Conda installiert automatisch eine Basis-Umgebung mit einigen häufig verwendeten Software-Paketen. Es ist möglich, in dieser Basisumgebung zu arbeiten, aber es ist empfehlenswert, für jedes Projekt, das Sie starten, eine neue Umgebung zu schaffen.

Um eine Umgebung zu erstellen, verwenden Sie `conda create --name your_project_env_name` gefolgt von einer Liste von Paketen, die hinzugefügt werden sollen. Um die `scipy` und `matplotlib` Pakete hinzuzufügen, fügen Sie sie zum Ende des Befehls hinzu:

```
conda erstellen --name Project_One scipy matplotlib
```

Sie können die Versionen bestimmter (oder alle) Pakete angeben, indem Sie `=package_number` hinter dem Namen verwenden. Zum Beispiel, um `scipy 1.2.1` in der obigen Umgebung anzugeben:

```
conda erstellen --name Project_One scipy=1.2.1 matplotlib
```

Beim Erstellen von Umgebungen können Sie auch Versionen von Sprachen angeben, die installiert werden sollen. Zum Beispiel um `Python 3.7.1` in der _Project_One_ Umgebung zu verwenden:

```
conda erstellen --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Jetzt, da eine Umgebung erstellt wurde, ist es an der Zeit sie zu aktivieren (zu benutzen) über `conda environment_name zu aktivieren`. So in diesem Beispiel:

```
conda aktivieren Project_One
```

Beachten Sie, dass Sie möglicherweise den `Quellcode` anstelle von `conda` verwenden müssen, wenn Sie eine alte Version von Conda verwenden.

Sobald eine Umgebung aktiviert ist, sollten Sie den Umgebungsnamen vor jeder Aufforderung in Ihrem Terminal sehen:

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=
## Deaktiviere und lösche Umgebungen

Du kannst eine Umgebung deaktivieren (aus der du herauskommst) indem du verwendest:

```
conda deaktivieren
```

und entferne (löschen) eine Umgebung, wie hier angezeigt:

```
conda env remove --name Project_One
```

Um zu überprüfen, ob eine Umgebung erfolgreich entfernt wurde, können Sie sich eine Liste aller Conda-Umgebungen auf dem System ansehen:

```
conda env Liste
```

Das Löschen einer Umgebung kann jedoch nicht die damit verbundenen Paketdateien löschen. Dies kann dazu führen, dass für Pakete, die nicht mehr benötigt werden, viel Speicher verschwendet wird. Pakete, auf die keine Umgebung mehr verweist, können gelöscht werden:

```
conda saubere -pts
```

Alternativ können Sie eine Umgebung (wie _Project_One_) zusammen mit den zugehörigen Paketen löschen:

```
conda entfernen --name Project_One --all
```

(rr-renv-package-removing)=
## Installieren und Entfernen von Paketen innerhalb einer Umgebung

Innerhalb einer Umgebung können Sie weitere Pakete installieren:

```
conda install package_name
```

in ähnlicher Weise können Sie sie entfernen via:

```
conda package_name entfernen
```

Dies ist der beste Weg, um Pakete innerhalb von Conda zu installieren, da es auch eine Conda-angepasste Version des Pakets installieren wird. Es ist jedoch möglich, andere Methoden zu verwenden, wenn eine Conda-spezifische Version eines Pakets nicht verfügbar ist. Zum Beispiel wird `pip` häufig verwendet, um Python-Pakete zu installieren. Also ein Befehl wie:

```
pip install scipy
```

installiert das `scipy` Paket explizit - solange `pip` in der aktuell aktiven Conda Umgebung installiert ist. Unglücklicherweise werden Conda und `Pip` gemeinsam verwendet, um eine Umgebung zu erstellen es kann zu einem Zustand führen, der schwer zu reproduzieren sein kann. Konkret kann das Ausführen von Conda nach `pip` Pakete, die über `pip` installiert wurden, möglicherweise überschreiben oder unterbrechen. Eine Möglichkeit, dies zu vermeiden, ist die Installation so vieler Anforderungen wie möglich mit Conda und dann pip. Detaillierte Informationen können auf dem Beitrag gelesen werden, [Pip in einer Conda-Umgebung verwenden](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Obwohl Python-Pakete in vielen der hier angeführten Beispiele verwendet wurden, müssen Conda-Pakete keine Python-Pakete sein. Zum Beispiel wird hier die R Basissprache zusammen mit dem R-Paket `r-yaml` installiert:

```
conda erstellen --name Project_One r-base r-yaml
```

Um alle installierten Pakete in der aktuellen Umgebung zu sehen, benutzen:

```
conda Liste
```

Um zu überprüfen, ob ein bestimmtes Paket installiert ist, zum Beispiel `scipy` in diesem Fall:

```
conda list scipy
```

Ein Conda-Kanal ist der Ort, von dem ein Paket heruntergeladen wurde. Übliche Kanäle sind `Anaconda` (eine Firma, die den standardmäßigen Conda-Paketkanal bereitstellt) und `conda-forge` (ein gemeinschaftlich betriebenes Paketierungswerkzeug). Sie können ein Paket explizit aus einem bestimmten Kanal installieren, indem Sie es wie folgt spezifizieren:

```
conda install -c channel_name package_name
```

(rr-renv-package-export)=
## Computerumgebungen exportieren und reproduzieren

Conda-Umgebungen können im YAML-Format leicht in menschenlesbare Dateien exportiert werden. YAML-Dateien werden detaillierter diskutiert {ref}`später <rr-renv-yaml>` in diesem Kapitel.

Um eine Conda-Umgebung in eine Datei namens `environment.yml`zu exportieren, aktivieren Sie die Umgebung und führen Sie dann aus:

```
conda env export > environment.yml
```

In ähnlicher Weise können Conda-Umgebungen aus YAML-Dateien erstellt werden:

```
conda env create -f environment.yml
```

Dies ermöglicht es Forschern, die Rechenumgebungen untereinander schnell zu reproduzieren. Beachten Sie, dass die Liste der Pakete nicht nur die explizit installiert ist. Es kann OS-spezifische Abhängigkeitspakete enthalten, so dass Umgebungsdateien möglicherweise editiert werden müssen, um auf verschiedene Betriebssysteme portierbar zu sein.

Umgebungen können auch geklont werden. Dies wäre zum Beispiel wünschenswert, wenn ein Forscher ein neues Projekt beginnt und ein neues Umfeld schaffen möchte, in dem er arbeiten kann; die Umgebung des neuen Projekts (zumindest anfänglich) die gleichen Pakete benötigen kann wie die Umgebung eines früheren Projekts.

Zum Beispiel um die _Project_One_ Umgebung zu klonen und dieser neuen Umgebung den Namen _Project_Two_ zu geben:

```
conda erstellen --name Project_Two --clone Project_One
```
