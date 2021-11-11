(rr-ci-resources)=
# Checkliste und Ressourcen

## Checklist

- Haben Sie ein Projekt, an dem Sie mit mindestens einer anderen Person zusammenarbeiten
- Das Projekt auf GitHub setzen
- Lass Projektmitglieder ihre Arbeit regelmäßig in diesem zentralen Repository begehen
- Dieses Projekt sollte mindestens einige Tests haben
- Schreibe eine `ci.yml` Datei, die ist:
  - Muss innerhalb von `.github/Workflows liegen`
  - Definieren Sie den Namen des GitHub Ereignisses, das den Workflow mit `auf der Taste` auf dem YMAL auslöst.
  - Definiert einen bestimmten Rechner, auf dem der Job mit `jobs` und `runs-on` ausgeführt werden soll.
  - Enthält Code, um alle Abhängigkeiten zu installieren, die erforderlich sind, um das Projekt in einem vorherigen Installationsschritt auszuführen
  - Enthält ein Skript zum Ausführen der Projekttests
- Übertrage die `ci.yml` Datei im GitHub Repository des Projekts
- Jedes Mal, wenn ein neuer Commit gedrückt wird, führt Travis die Tests aus und gibt die Ergebnisse zurück. Wenn diese melden, dass ein Commit Tests/Tests fehlschlagen, dann finden und beheben Sie das Problem so schnell wie möglich

## Was du als nächstes lernst

Wenn Sie das Kapitel Testing noch nicht gelesen haben, wird empfohlen, dies zu tun, um mehr über die verschiedenen Arten von Tests und deren Vorteile zu erfahren, um das Beste aus CI zu machen.

## Definitionen/Glossar

**Kontinuierliche Integration:** Der Prozess, die Arbeit der Projektmitglieder regelmäßig in eine zentrale Version zu integrieren. Auch CI genannt. CI-Software führt üblicherweise Tests über die integrierte Version eines Projekts durch, um Konflikte und Fehler zu identifizieren, die durch die Integration entstanden sind.

**Erstellt:** Eine Gruppe von Jobs. Zum Beispiel könnte eine Build zwei Jobs haben, von denen jeder ein Projekt mit einer anderen Version einer Programmiersprache testet. Ein Bauwerk beendet, wenn alle seine Jobs beendet sind.

**Computerumgebung:** Die Umgebung, in der ein Projekt ausgeführt wird, einschließlich des Betriebssystems, der darauf installierten Software und der Versionen von beiden.

**GitHub:** Eine weit verbreitete Versionskontrollplattform.

**GitHub Aktionen:** Es ist ein CI/CD-Dienst, der auf GitHub Repos läuft.

**Workflows** Es sind YAML-Dateien, die im _.github/workflows_ Verzeichnis eines Projektarchivs gespeichert sind.

**Aktion** Es ist ein Paket, das Sie in Ihrem **Workflow** importieren und verwenden können. GitHub stellt einen **[Aktionen Marktplatz](https://github.com/marketplace?type=actions)** zur Verfügung, um Aktionen zu finden, die in Workflows verwendet werden.

**Job** Es ist eine virtuelle Maschine, die eine Reihe von **Schritten** ausführt. **Jobs** werden standardmäßig parallelisiert, aber **Schritte** sind standardmäßig sequentiell.

## Praktische Tutorials

- Um dich mit GitHub Aktionen zu starten, bietet Padok [ein Hand-On-Tutorial](https://github.com/padok-team/github-actions-tutorial) an, in dem du einen Workflow erstellen kannst, der automatisch testt, entwickelt und veröffentlicht einen einfachen Microservice.
- GitHub Learning Lab bietet auch einen interaktiven Leitfaden für [praktische Projekte, um GitHub Aktionen](https://lab.github.com/githubtraining/github-actions:-continuous-integration) zu lernen.

## Referenzen

- [Was ist CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [SSI Blog](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Creative Commons Namensnennung Non-Commercial 2.5 Lizenz**
- [Der Unterschied zwischen kontinuierlicher Integration, kontinuierlicher Bereitstellung und kontinuierlicher Lieferung](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Creative Commons Namensnennung-NonCommercial-ShareAlike 4.0 Internationale Lizenz.**
- [CI mit Python](https://docs.python-guide.org/scenarios/ci/) **Namensnennung-Nichtkommerziell-ShareAlike 3.0 Unportiert**
- [Erste Schritte mit GitHub Aktionen: Konzepte und Tutorial](https://www.padok.fr/en/blog/github-actions)
- [CI/CD Tutorial mit GitHub Aktionen](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Docker Container-Aktion erstellen](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### Gebrauchte Materialien: Was ist Github Aktionen und wie funktioniert es?

- [GitHub Aktionen Cheat Blatt](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [GitHub docs: Aktionen - Kernkonzepte](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [GitHub docs: Aktionen - Konfigurieren und Verwalten von Workflows](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## Danksagungen

Dank an David Jones von der University of Sheffield RSE Group für nützliche Diskussionen.
