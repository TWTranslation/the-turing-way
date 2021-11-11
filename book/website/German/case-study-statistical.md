(rr-cs-statistical-methods-Manuscript)=
# Ein Statistisches Manuskript

## Über diese Fallstudie

Zweck dieser Fallstudie ist es, die verschiedenen Komponenten von Forschungsreproduzierbarkeit zu erörtern, die bei der Gestaltung und Durchführung einer statistischen Studie implementiert wurden. Mit Hilfe ihres Manuskripts die Autoren geben einen Katalog von Methoden an, die in ihrer Recherche verwendet werden, und verweisen sie auf die jeweiligen Abschnitte, die in diesem {ref}`rr` diskutiert werden.

## Über das Manuskript

- **Titel:** Eine Prüfung der Bayes-Perspektiven zur Probenableitung für Bestätigungstests{cite:ps}`Kunzmann2020CS`.
- **Autoren:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee, David S. Robertson, Kaspar Rufibach, James M. S. Vernunft
- **Veröffentlichungsmonat & Jahr**: Juni 2020

### Übersicht

The manuscript {cite:ps}`Kunzmann2020CS` itself is concerned with the problem of deriving a suitable sample size for a clinical trial. Das ist ein klassisches statistisches Problem und besonders wichtig für medizinische Statistiken, bei denen die Erhebung von Testdaten extrem teuer ist und ethische Erwägungen angegangen werden müssen. Die Manuskript-Rezensionen und erweitert Methoden, um Planungsunsicherheit in die Mustergrößenderivation zu integrieren.

### Zitat-Zusammenfassung

Das Manuskript kann im Klartext-APA-Format zitiert werden:

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). Ein Überblick über Bayes-Perspektiven zur Abzweigung der Probengröße für bestätigte Studien. arXiv preprint arXiv:2006.15715.

BibTeX-Format:

```
@article{
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     Autor = {Kunzmann, Kevin und Grayling, Michael J und Lee, Kim May und Robertson, David S und Rufibach, Kaspar und Wason, James},
    Journal = {arXiv preprint arXiv:2006.15715},
       Jahr = {2020}
}
```

## Katalog verschiedener Methoden für reproduzierbare Forschung

### Versionskontrolle

Das Git Repository [https://github.com/kkmann/sample-size-calculation-under-uncertainty](https://github.com/kkmann/sample-size-calculation-under-uncertainty) enthält den gesamten Code, der benötigt wird, um das Manuskript zu produzieren [arXiv:2006.15715](https://arxiv.org/abs/2006.15715) von Grund auf neu zu erstellen. Für eine ausführliche Erläuterung der Bedeutung der Versionskontrolle für reproduzierbare Recherchen siehe {ref}`Versionskontrollsysteme<rr-vcs>`.


### Recherchedatenmanagement

In diesem speziellen Fall
{ref}`Datenverwaltung <rr-rdm>` Aspekte sind kein Problem, da das Manuskript ausschließlich auf hypothetischen Beispielen und Nein extern basiert geschützte Daten werden benötigt.


#### Literate Programmierung

Das Manuskript {cite:ps}`Kunzmann20CS` selbst ist eingeschrieben und mit [LaTeX](https://www.latex-project.org/) eingebaut. Die Quelldateien sind im Unterordner `latex/` enthalten. Einfache TeX-Dateien wurden bevorzugt gegenüber literarischen Programmierlösungen wie [strickr](https://github.com/rstudio/rmarkdown) für [R](https://www.r-project.org/) um die Verwendung von dedizierten LaTeX-Editoren wie [Overleaf](https://www.overleaf.com/project) zu erleichtern. Das bedeutet jedoch, dass alle im Manuskript verwendeten Figuren separat erstellt werden müssen. Ein dediziertes [Jupyter Notebook](https://jupyter.org/) `Notebooks/figures-for-manuscript.ipynb` kombiniert Code und rudimentäre Beschreibungen.


### Reproduzierbare Software-Umgebung

Although this means that all code required to compile the manuscript from scratch is available in a self-contained environment, it is not yet sufficient for ensuring reproducibility. Die Installation von LaTeX, Jupyter und R mit der gleichen Spezifikation für die Ausführung des gesamten Codes kann für weniger erfahrene Benutzer immer noch eine Herausforderung sein. Um zu verhindern, dass interessierte Leser davon abhalten mit dem Code zu experimentieren Es wird eine Kombination aus dem Python-Paket [repo2docker](https://github.com/jupyter/repo2docker) und einem kostenlosen [BinderHub](https://mybinder.org/) Hosting-Dienst verwendet. Details zu diesen Techniken finden Sie im Kapitel {ref}`BinderHub<rr-binderhub>`. Dadurch können interessierte Personen eine interaktive Version des Projektarchivs mit allen erforderlichen Software vorinstalliert starten - in genau der richtigen Versionen! Beachten Sie, dass es möglich ist, *Version stable* Binderlinks bereitzustellen

[![abzeichen](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![abzeichen](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

Dieses Abzeichen verweist auf den Status des Projektarchivs zu einem bestimmten Zeitpunkt (über das Git-Tagging-Feature). Dies bedeutet, dass die Links auch dann gültig und unverändert bleiben, wenn es spätere Korrekturen am Inhalt des Projektarchivs gibt! Binder unterstützt mehrere Benutzeroberflächen. Dies wird genutzt um die integrierte Entwicklungsumgebung von Jupyter im Projektarchiv anzuzeigen, um die Datei zu erkunden das Jupyter Notebook oder um eine Shell für weitere Befehle zu öffnen. Das zweite Abzeichen öffnet direkt eine interaktive Shiny-App, die einige der im Manuskript besprochenen Punkte illustriert und keinerlei Kenntnis mit der Programmierung erfordert. Alle relevanten Konfigurationen für Binder befinden sich im Unterordner `.binder`.


### Workflow-Verwaltung mit Snakemake

Da JupyterLab es auch erlaubt eine Shell in der geöffneten Repository-Instanz zu öffnen, mit einem Binder-Link, eine weitere Funktion des Projektarchivs kann verwendet werden, um das *komplette Manuskript von Grund auf neu zu reproduzieren*. Der Python-Workflow-Manager [Snakemake](https://snakemake.readthedocs.io/en/stable/) wurde verwendet, um alle erforderlichen Schritte in einer `Schlangendatei` zu definieren. Um diesen Workflow auszuführen, können Sie eine Shell in der [Online-Version von JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/) öffnen. Sobald die Benutzeroberfläche geladen wurde, öffnen Sie ein neues Terminal und geben Sie es ein
```
snakemake -F --cores 1 Manuskript
```
Dies führt alle erforderlichen Schritte im Zug aus:

1. erstellen Sie alle Plots durch die Ausführung der Jupyter Notebook-Datei
2. kompiliert die aktuelle `latex/main.pdf` Datei aus den LaTeX Quellen

Sie sollten dann eine `main.pdf` Datei im Unterordner `latex` sehen.


### Unterstützung für die lokale Instanziierung der Software-Umgebung

Das Python-Paket repo2docker kann auch lokal verwendet werden, um die gleiche Rechenumgebung zu reproduzieren. Dazu müssen Python und Docker installiert sein. Details zu Docker und Containertechnologien im Allgemeinen: siehe das Kapitel über {ref}`Reproduzierbare Umgebungen und Container<rr-renv-containers>`. Dann klonen Sie einfach das Projektarchiv auf Ihrem lokalen Rechner mit den Befehlen
```
git clone git@github.com:kkmann/sample-size-calculation-under-unsicherheit.git
cd sample-size-calculation-under-un-unsicher
```
Nach dem Klonen des Projektarchivs, können Sie einen Docker Container lokal mit den Konfigurationsdateien erstellen und ausführen, die im `angegeben sind. inder/` Ordner mit folgendem Befehl
```
jupyter-repo2docker -E .
```
The container is started automatically after the build completes and you can use the usual Jupyter interface in your browser by following the link printed by repo2docker to explore the repository locally.


### Verwendung der kontinuierlichen Integration

Obwohl für die Reproduzierbarkeit dieses Manuskripts nicht notwendig, Das Projektarchiv nutzt auch die kontinuierliche Integration ({ref}`CI <rr-ci>`) mit [GitHub-Aktionen](https://github.com/features/actions). Läufer von GitHub Aktionen werden direkt von GitHub bereitgestellt (siehe `rr-ci-github-Aktionen`).

Das Projektarchiv definiert zwei Workflows im `.github/workflows` Verzeichnis. Die erste, [`.github/workflows/build_and_run. ml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml), wird aktiviert, wenn der Hauptzweig des Projektarchivs aktualisiert wird und die Spezifikationen in `. inder` wurden geändert. Dies baut den Container auf, verschiebt ihn in ein öffentliches Container-Repository [Docker Hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty), und prüft, ob der Snakemake Workflow problemlos durchläuft. Die zweite, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), läuft im Ordner `. inder` wurde nicht geändert und verwendet den vorgebauten Docker Container, um den Snakemake Workflow auszuführen. Letztere spart viel Rechenzeit, da sich die Rechenumgebung viel seltener ändern wird als der Inhalt des Projektarchivs. Die Verwendung von CI erleichtert so die Prüfung von Beiträgen durch Pull-Requests auf technische Integrität und stellt die jeweils neueste Version des benötigten Containers zum direkten Download bereit. Anstatt den Container lokal mit repo2docker zu bauen, können Sie ihn also einfach direkt herunterladen und den Workflow mit den folgenden Befehlen ausführen
```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-uncertainty
docker exec --name mycontainer /
    snakemake -F --cores 1 Manuskript
```

### Langfristige Archivierung und Zitabilität

Das GitHub Repository ist auch mit [zenodo.org](https://zenodo.org/) verknüpft, um eine langfristige Archivierung zu gewährleisten, siehe {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Beachten Sie, dass ein von Zenodo bereitgestelltes DOI auch mit BinderHub verwendet werden kann, um einen Repository-Schnappschuss zu drehen, der auf Zenodo in einer interaktiven Umgebung gesichert ist. ([siehe diesen Blogbeitrag](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
