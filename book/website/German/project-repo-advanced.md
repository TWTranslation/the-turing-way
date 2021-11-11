# Erweiterte Struktur für Datenanalyse

## Voraussetzungen/Empfohlene Fertigkeitsstufe

| Voraussetzung                                    | Bedeutung | Notizen                                                           |
| ------------------------------------------------ | --------- | ----------------------------------------------------------------- |
| {ref}`Versionskontrolle<rr-vcs>`           | Hilfreich | Wissen über die Verwendung von git für Versionskontrolle          |
| {ref}`Offene Forschung<rr-open>`           | Hilfreich | Komponenten sind Teil des Kompendiums                             |
| {ref}`Reproduzierbare Umgebungen<rr-renv>` | Hilfreich | Kann verwendet werden, um das Kompendium reproduzierbar zu machen |

## Summary

Eine entscheidende und oft vergessene Komponente bei der Planung einer Forschungsstudie ist die Einrichtung eines Projektarchivs. In diesem Abschnitt werden die Vorteile und Überlegungen zur Gestaltung eines Projektarchivs skizziert, zusammen mit einer Beispielstruktur und weiteren Ressourcen, um Ihren Workflow zu steuern.

Die Voraussetzungen für dieses Kapitel können je nach Organisationsbedarf eines Projekts variieren. Die Erstellung eines Projektarchivs mit einem einfachen Layout für Forschungsprojekte kann minimales technisches Wissen erfordern (wie die Verwaltung von nur Eingabedaten und Ausgabeergebnissen). In der Zwischenzeit können für kompliziertere Projekte (wie z.B. Projekte mit Abhängigkeiten von anderen Projekten) erweiterte Repository-Layouts benötigt werden.

## Hintergrund

Ein Repository (oder ein "Repo") ist ein Speicherort für Ihr Forschungsprojekt. Ein Repository kann eine Reihe von digitalen Objekten enthalten und kann verwendet werden, um Ihr Projekt über Online-Plattformen wie GitHub zu speichern. Das Ziel eines Projektarchivs ist es, Ihr Projekt so zu organisieren, dass es für andere zugänglich ist und effizient zu benutzen.

Bisher haben wir die Schlüsseldokumente gesehen, die man beim Starten oder Einrichten eines Projektarchivs hinzufügen sollte. Wenn du folgst, sollte dein Projekt folgende Dateien enthalten:

```
Projekt-Ordner/
<unk> <unk> CODE_OF_CONDUCT          <- Code of Conduct for Community projects
<unk> 文<unk> CONTRIBUTING             <- Mitwirkende Richtlinie für Mitarbeiter
<unk> 本<unk> LICENSE                  <- Software-Lizenz
<unk> <unk> <unk> . .                      <- alle anderen Dateien, die Sie möglicherweise für Ihr Projekt hinzugefügt haben
<unk> <unk> README. d                <- Informationen über das Repo
```

In diesem Unterkapitel skizzieren wir die Vorteile und Überlegungen zur Gestaltung eines Projektarchivs, zusammen mit einer Beispielstruktur und weiteren Ressourcen, um Ihren Workflow zu leiten.

```{note}
Der Hauptvorteil des Entwurfs Ihres Projektarchivs durch das Hinzufügen von Dokumentationen, Ressourcen und relevante Informationen ermöglichen die Schaffung einer Infrastruktur für ethische, offene und qualitativ hochwertige Forschung aus dem get-go.
```

## Hauptüberlegungen

Wenn Sie Ihre Ressourcen über Ihr Projektarchiv teilen, berücksichtigen Sie die folgenden Aspekte der Reproduzierbarkeit in Ihrer Forschung:

- Transparenz und Offenheit
- Versionskontrollsystem (keine Dateien mehr wie final_v1_FINAL.R, final_v2_FINAL.R, ...)
- Machen Sie es einfach zu navigieren, damit Sie Zeit für alle Beteiligten sparen
- Betrachten Sie {ref}`pd-overview-repro` Aspekte
- Stelle sicher, dass du ausreichende Details angibst, damit andere auf deiner Arbeit aufbauen können

## Hauptempfehlungen

Überlegen Sie immer, Ihr Projekt für die Zusammenarbeit zu entwerfen, indem Sie Schlüsseldokumente zur Beschreibung von Projektzielen, Vision, Roadmap, Beitrag und Kommunikation hinzufügen (wie in früheren Unterkapiteln beschrieben).
- Fügen Sie Details in {ref}`README Datei<pd-project-repo-readme>`hinzu, die _beschreiben, wofür_ das Projektarchiv ist, und _wie_ um es zu navigieren
- Geben Sie Vision, Ziele und Roadmap soweit möglich ein (siehe [Kamran Ahmeds Entwicklerfahrplan](https://github.com/kamranahmedse/developer-roadmap) beispielsweise)
- Allgemeine Struktur sollte Eingaben (Daten), Methoden (Skripte) und Ausgabe (Ergebnisse, Zahlen, Manuskript) trennen.
- Geben Sie an, was nicht in der `.gitignore` Datei verfolgt werden soll, wie z.B. sensible/private Dateien, große Datensätze oder persönliche Notizen
- Fügen Sie Informationen zu Ihrer Rechenumgebung {ref}hinzu`Reproduzierbare Umgebungen<rr-renv>` um die Reproduzierbarkeit zu gewährleisten (dies kann auch im README angegeben werden)

## Beispiel-Repository-Struktur

### Beispiel für ein Forschungsprojekt

Hier sind Vorschläge für Dateien und Ordner, die ein Forschungsprojekt haben muss.

```
Projekt-Ordner/
<unk> 本<unk> docs                     <- Dokumentation
<unk> <unk> <unk> <unk> <unk> <unk> codelist.txt 
<unk> <unk> <unk> <unk> <unk> <unk> project_plan.txt
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> ...
<unk> <unk> 本<unk> deliverables.txt
<unk> 本<unk> Daten
<unk> <unk> <unk> <unk> <unk> raw/
<unk> <unk> 本<unk> my_data. sv
<unk> <unk> <unk> 本<unk> clean/
<unk> <unk> 本<unk> data_clean . sv
<unk> 文<unk> Analyse                 <- Skripte
<unk> <unk> <unk> <unk> my_script.
<unk> 文<unk> results                  <- Analyseausgabe     
<unk> <unk> <unk> <unk> <unk> Zahlen
<unk> 文<unk> . itignore               <- Dateien, die von git Versionskontrolle 
<unk> <unk> Installation ausgeschlossen sind.                <- Umgebungseinrichtung
<unk> 文<unk> CODE_OF_CONDUCT          <- Code of Conduct for community projects
<unk> <unk> <unk> CONTRIBUTING             <- Beitrag Leitlinie für Mitarbeiter
<unk> 文<unk> LICENSE                  <- Software-Lizenz
<unk> <unk> <unk> README. d                <- Informationen über den Repo
<unk> <unk> Bericht. d                <- Projektbericht
```

### Beispiel mit jedem möglichen Ordner

Dieses Beispiel zeigt verschiedene Dateien und Verzeichnisse, die ein Projekt enthalten kann, wenn es eine Softwareanwendung oder Forschungswerkzeuge erstellt.

```
Projekt-Ordner/                        
<unk> <unk> Analyse                 <- Skripte
<unk> <unk> <unk> <unk> my_script.
<unk> 本<unk> build                    <- Build-Dateien Makefile
| <unk> 本<unk> debug
| <unk> <unk> <unk> Release
<unk> <unk> <unk> <unk> <unk> Daten
<unk> <unk> raw/
<unk> <unk> <unk> my_data. sv
<unk> <unk> <unk> 本<unk> clean/
<unk> <unk> <unk> 本<unk> data_clean. sv
<unk> 本<unk> docs                     <- Dokumentation
<unk> <unk> <unk> Codelist. xt 
<unk> 文<unk> Projektmanagement       <- Projektverwaltungsbezogene Dokumente
<unk> <unk> <unk> Kommunikation. d
<unk> <unk> 本<unk> people.md
<unk> <unk> <unk> 本<unk> project-report.md
<unk> <unk> 日<unk> tools. d
<unk> 文<unk> res                      <- statische Ressourcen (Bilder und Audiodateien)
<unk> <unk> <unk> <unk> Figuren
<unk> 本<unk> . itignore               <- Dateien, die von der git Versionskontrolle ausgeschlossen werden 
<unk> <unk> CODE_OF_CONDUCT          <- Code of Conduct für Community-Projekte
<unk> 本<unk> CONTRIBUTING             <- Mitwirkende Richtlinien für Mitarbeiter
<unk> 本<unk> lib                      <- Abhängigkeiten (gemeinsame Komponenten, die über eine Anwendung oder Projekte hinweg genutzt werden können -Code, der die Kernanwendung unterstützt)
<unk> <unk> Protokolle. xt                 <- Verlauf aller wichtigsten Updates wie Feature-Release, Fehlerbehebung, aktualisiert
<unk> <unk> Beispiel                  <- Beispielcode Anwendung
<unk> <unk> LICENSE                  <- Softwarelizenz
<unk> 本<unk> environment. ml          <- Anaconda Umgebungseinrichtung   
<unk> <unk> Installation.                <- R Umgebung Setup
<unk> <unk> Requirements xt         <- Python-Umgebung Setup
<unk> <unk> Runtime. xt              <- R im Binder-Setup
<unk> <unk> Bericht. d                <- Analysebericht
<unk> 文<unk> README. d                <- Informationen über das Repo
<unk> 文<unk> src                      <- Quelldateien
<unk> 文<unk> test                     <- Unit-Tests  
```

## Ressourcen

### R und Python-Pakete

| L                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [vorlage](https://github.com/Pakillo/template)                    | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [neu erstellen](https://github.com/richfitz/remake)               |                                                              |

### Kuratierte Beispiele für GitHub Repositories

- [_Der Turing Way_ Projektrepo](https://github.com/alan-turing-institute/the-turing-way)
- [Jupyter Buch Projektrepo](https://github.com/executablebooks/jupyter-book)
- [Pandas Paket Repo](https://github.com/pandas-dev/pandas)
- [Atom-Texteditor Repo](https://github.com/atom/atom)

Für weitere Details folgen Sie bitte {ref}`Projektrepo-Empfehlungen-Fortgeschrittenen-`.
