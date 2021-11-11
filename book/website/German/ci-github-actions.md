(rr-ci-github-Aktionen)=
# Kontinuierliche Integration mit GitHub Aktionen

Dieser Abschnitt wird dich durch die Grundeinstellung der kontinuierlichen Integration (CI) mit **GitHub Actions (GHA)** führen. GHA ist ein Aufgabenautomatisierungssystem, das vollständig mit GitHub integriert ist. Mit anderen Worten, es ist eine API, die jeden Workflow basierend auf jedem Ereignis orchestriert. Obwohl es viele CI-Dienstleister gibt, macht es GHA einfacher als je zuvor CI in Ihre Repositories zu integrieren. Es bietet eine flexible Möglichkeit, nahezu jeden Aspekt Ihres Projekt-Workflows zu automatisieren. Hier sind nur einige Beispiele für Anwendungsfälle von GitHub Aktionen:

- Automatisches Testen der Software
- Berichte über den Status von Änderungen im Projektarchiv erstellen
- Antwort auf Workflow-Auslöser mit Labels, Fragen, Sonderangaben und mehr
- Code Rezensionen auslösen und Pull-Requests
- Verwalte Filialen

GitHub Aktionen sind ereignisgesteuert, was bedeutet, dass es auf jedes Ereignis reagiert (Beispiel: Pull-Request (PR) erstellt, erzeugt) und löst eine Aktion aus (Examples: fügt ein Label hinzu, führt Tests aus, sort). Jede Sammlung dieser Aktionen wird als Workflow bezeichnet. Eine detailliertere Beschreibung dieses GitHub-Vokabulars wird im nächsten Abschnitt beschrieben.

```{figure} ../../figures/github-actions.jpg
---
Breite: 700px
align: center
name: Github actions
alt: Ein Diagramm, das beschreibt, wie GitHub Aktion auf ein Ereignis hört (zum Beispiel `PR` erstellt, Problem erstellt, PR verschmolzen) und dann einen Job auslösen, der Testen, Sortieren, Kennzeichnung oder Einsatz sein kann.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
## GitHub-verwandtes Vokabular

### 1. Workflow

**Der Workflow** ist eine Einheit der Automatisierung von Anfang bis Ende. Es besteht aus allen Aspekten, die während der Automatisierung berücksichtigt werden sollten, einschließlich der Ereignisse, die die Automatisierung auslösen können. Der Workflow kann verwendet werden, um ein Projekt auf GitHub zu bauen, zu testen, zu paketieren oder freizugeben. Sie besteht aus mehreren Aufträgen, die aus Schritten gebildet werden, wie im Übersichtsdiagramm unten gezeigt.

```{figure} ../../figures/ci-01.png
---
Name: ContinuousIntegration-Nov20
alt: Eine Illustration, wie kontinuierliche Integration mit mehreren Jobs und Aktionen zusammenarbeitet, um in eine Illustration von Schritten einzutauchen, die das Zusammenführen in die Hauptversion zeigen.
---
Auf der linken Seite: _The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). Auf der rechten Seite: Übersicht der wichtigsten Konzepte von GitHub Actions, angepasst von [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Job

Ein **Job** ist definiert als eine Reihe von sequenziellen Schritten, die auf dem gleichen Runner ausgeführt werden. Ein Workflow kann sich aus einem oder mehreren Jobs zusammensetzen und kann entweder parallel (Standard) oder sequentiell ausgeführt werden.

### 3. Schritt

Ein **Schritt** stellt eine einzelne Aufgabe dar. Ein Schritt kann entweder eine Aktion oder eine andere Befehlseinheit sein, wie zum Beispiel ein Python-Skript auszuführen oder etwas auf die Konsole auszudrucken.

### 4. Aktionen

Ein GitHub **Aktion** ist eine Automatisierung, die mit Workflows kompatibel ist. Aktionen können von [GitHub](https://github.com/actions), von der Open Source [Community](https://github.com/sdras/awesome-actions)geschrieben werden, oder Sie können sie selbst schreiben!

## Erste Schritte mit GitHub Aktion

GitHub Actions verwendet YAML-Syntax und wird in einem Verzeichnis namens `.github/workflows` im Projektarchiv gespeichert. Sie können entweder einen Template-Workflow verwenden oder Ihren eigenen erstellen.


### 1- Verwendung der GitHub Aktions-Vorlage

Wenn du mit GitHub Aktionen beginnen möchtest, Sie können beginnen, indem Sie auf die Registerkarte "Aktionen" im Projektarchiv klicken, wo Sie einen Workflow erstellen möchten, wie unten gezeigt. Unter der Registerkarte "Aktionen" finden Sie beliebte CI-Workflows, die dazu beitragen können, einige Aufgaben im Projektarchiv zu verteilen oder zu automatisieren.

```{figure} ../../figures/gifs/start_ghactions.gif
---
Breite: 600px
align: center
name: GitHub action template
alt: A gif showing where you can find GitHub Actions template in your Github repo.
---
```
Sie können einen dieser Starterworkflows auswählen und diese weiter anpassen.  Eine Erklärung für Bausteine innerhalb des Workflows wird in einem späteren Abschnitt beschrieben.


### 2- Verwendung von Bibliotheksspezifischen Vorlagen.


Github Action Template ist nicht das einzige Starter Kit, sondern es gibt bibliotheksspezifische Templates für die Sprache des Interesses. Zum Beispiel können Sie das  {usethis} -Paket in R verwenden, um eine Vorlage für R-Pakete zu erstellen, indem Sie `usethis::use_github_action_check_standard()` ausführen. Dies generiert GitHub Aktionen zur Durchführung von CRAN Prüfungen nach jedem Commit oder Pull-Requests. Das ist alles, was Sie tun müssen!


### 3- Verwendung der Konfiguration anderer Projekte als Inspiration

Viele gut gepflegte Open Source Bibliotheken und <unk> eshed Projekte verwenden GitHub Actions für ihre CI. Werfen Sie einen Blick auf die Checklisten zu Pull-Requests dieser Projekte für Inspiration und Ideen; folgt, indem Sie ihre CI-Konfigurationsdateien überprüfen. In den meisten Fällen wird ihre Lizenz es erlauben, die Bits zu kopieren, die für Ihren Fall funktionieren würden. Der Vorteil dieses Ansatzes besteht darin, einige Ansätze anzuwenden, die bereits funktionieren.

Zum Beispiel:

- Der Turing Way Workflow für [erstellt das Turing Way Buch und bietet eine Vorschau für die Pull-Requests](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- Eine Matrix von Tests auf [3 Betriebssystemen und mehreren Python-Versionen für das Python-Paket NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- Ein komplexeres Setup zum Testen des [Builds unter mehreren Umständen für das Python-Paket Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


Im nächsten Abschnitt erläutern wir Bausteine für den Workflow.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
