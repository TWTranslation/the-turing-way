(rr-ci-building-gh-Aktionen)=
# Baue einen Block aus Github Aktionen

Wie bereits beschrieben, verwenden Workflow-Dateien YAML-Syntax, die entweder eine `.yml` oder `.yaml` Dateiendung hat. Wenn Sie neu bei YAML sind und mehr erfahren möchten, besuchen Sie unseren Abschnitt {ref}`über YMAL<rr-renv-yaml>`. Diese Workflow-Dateien müssen im `.github/workflows` Verzeichnis Ihres Projektarchivs gespeichert werden.

Jeder Workflow wird in einem separaten YAML definiert. Wir werden den Baustein eines Workflows anhand von Hallo World Beispielen einführen:

```
name:
    Hallo World Paket
um:
  Push:
    Filialen: [ main ]
Jobs:
  Build:
    runs-on: ubuntu-latest
    Schritte:
      - nutzt: actions/checkout@v2
```

**1. name**

Dies ist der Name des Workflows und es ist optional. GitHub wird diesen Namen auf der Aktionen-Seite des Projektarchivs anzeigen.
```
name:
    Hallo World Paket
```

**2. am**

Das Feld `auf` weist GHA an, wann es ausgeführt werden soll. Zum Beispiel können wir den Workflow jederzeit ausführen, wenn es einen `Push` oder einen `Pull-` auf dem `Hauptverzweig` gibt.
```
Auf:
  Push:
    Filialen: [ main ]
  pull_request:
    Filialen: [ main ]
```
Es gibt viele Ereignisse, mit denen ein Workflow ausgelöst werden kann. Sie können sie [hier erforschen](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. jobs und Schritte**

Dieser Block definiert die Kernkomponente eines Action-Workflows. Workflows bestehen aus `Jobs`. Jeder Job benötigt auch einen bestimmten Host-Rechner, auf dem er ausgeführt werden soll, das Feld `runs-on:` ist wie wir ihn angeben. Der Template-Workflow läuft mit dem `Build` Job in der neuesten Version von Ubuntu, einem Linux-basierten Betriebssystem.

```
jobs:
  Build:
  runs-on: ubuntu-latest
```

Wir können auch die `Build` und `Test-` Funktionen unseres Workflows in mehr als einen Job trennen, der ausgeführt wird, wenn unser Workflow ausgelöst wird. Jobs werden aus `Schritten` gemacht. Hier können Sie festlegen, was in jedem Job ausgeführt werden soll. Es gibt drei Möglichkeiten, Schritte zu definieren.

- Mit `nutzt`
- Mit `run`
- Mit `Name`

```

jobs:
  build:
    runs-on: ubuntu-latest
    Schritte:
    - verwendet: actions/checkout@v2
  test:
    Schritte:
    - Name: npm install
      run: |
        npm install
        npm test
```

Die einfachste Aktion ist `actions/checkout@v2`. Dies verwendet eine GitHub bereitgestellte Aktion namens [`Checkout`](https://github.com/actions/checkout) , um dem Workflow den Zugriff auf den Inhalt des Projektarchivs zu ermöglichen. Alle Schritte eines Jobs laufen sequentiell auf dem Läufer, der mit dem Job verbunden ist. Standardmäßig werden die nachfolgenden Schritte des Jobs übersprungen, wenn ein Schritt fehlschlägt. Jedes Run-Keyword stellt einen neuen Prozess und eine Shell in der Runnerumgebung dar. Wenn Sie mehrzeilige Befehle bereitstellen, läuft jede Zeile in der gleichen Shell ab.

Die Bereitstellung eines umfassenden Leitfadens mit allen verfügbaren Optionen geht über den Geltungsbereich dieser Übersicht hinaus und stattdessen wir empfehlen Ihnen, [offizielle Referenzdokumentation](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) und/oder die Referenzen für Open-Source-Projekte im vorherigen Abschnitt zu studieren.
