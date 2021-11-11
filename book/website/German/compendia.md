(rr-compendia)=
# Compendia forschen

## Voraussetzung

| Voraussetzung                                    | Bedeutung | Notizen                                                           |
| ------------------------------------------------ | --------- | ----------------------------------------------------------------- |
| {ref}`Versionskontrolle<rr-vcs>`           | Hilfreich | Kann zur Version des Kompendiums verwendet werden                 |
| {ref}`Offene Forschung<rr-open>`           | Hilfreich | Komponenten sind Teil des Kompendiums                             |
| {ref}`Reproduzierbare Umgebungen<rr-renv>` | Hilfreich | Kann verwendet werden, um das Kompendium reproduzierbar zu machen |
| {ref}`Binder Hub<rr-binderhub>`            | Hilfreich | Kann verwendet werden, um das Kompendium zu veröffentlichen       |
| {ref}`Stelle<rr-make>` her                 | Hilfreich | Kann für die Automatisierung im Kompendium verwendet werden       |

## Summary

Ein Forschungskompendium ist eine Sammlung aller digitalen Teile eines Forschungsprojekts einschließlich Daten, Code, Texte (Protokolle, Berichte, Fragebögen, Metadaten). Die Sammlung wird so erzeugt, dass die Wiedergabe aller Ergebnisse unkompliziert {cite:ps}`Nuest2017compendia,Gentleman2007statistik` ist.

Dieses Kapitel bietet viele Voraussetzungen, da es alle digitalen Bestandteile eines Projekts zu einem reproduzierbaren Forschungspaket zusammenführt. Das sagte: Ein Forschungskompendium kann mit minimalem technischen Wissen konstruiert werden. Der Hauptzweck ist, dass alle Elemente eines Projekts zusammen veröffentlicht werden, so dass eine grundlegende Ordnerstruktur, die alle Komponenten kombiniert, ausreichen kann.

```{figure} ../figures/research-compendium.jpg
---
Höhe: 500px
Name: research-compendium
alt: Eine Illustration, die eine Person zeigt, die eine große Maschine hervorbringt, die wissenschaftliche Informationen aus mehreren Papieren nimmt und eine Ausgabe lesbarer Datei liefert.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

Ein Forschungskompendium [{term}`def<Research Compendia>`] vereint alle Elemente Ihres Projekts damit andere Ihre Arbeit reproduzieren können, und sollte das Endprodukt Ihres Forschungsprojekts sein. Veröffentlichen Sie Ihr Forschungsdokument zusammen mit einem Forschungskompendium und anderen Zugriff auf Ihre Eingabe, testen Sie Ihre Analyse und, wenn das Kompendium ausgeführt werden kann, erneuern Sie, um die resultierende Ausgabe zu bewerten. Dadurch wird nicht nur das Vertrauen in Ihre Forschung gestärkt, sondern auch die Sichtbarkeit erhöht. Andere können Ihre Forschung auf unerwartete Weise nutzen einige davon sind weiter unten diskutiert (siehe Abschnitt {ref}`Verwendung eines Forschungskompendiums<rr-compendia-using>`).

## Hintergrund

Ein Forschungskompendium ist ein umfassendes Dateisystem, das alle Bestandteile eines Projekts zusammenfasst. Dieses Kompendium kann heruntergeladen und lokal ausgeführt werden, um die erledigte Arbeit wiederherzustellen oder es kann Elemente enthalten, die es erlauben, auf einem entfernten Server ausgeführt zu werden. Executable research compendia zielt darauf ab, den rechnerischen Teil einer wissenschaftlichen Publikation reproduzierbar zu machen, indem alle Bausteine zur Verfügung gestellt werden und geben Sie eine Beschreibung, wie der Benutzer den enthaltenen Code ausführen kann.


### Struktur eines Forschungskompendiums

Drei Prinzipien sollten beim Bau eines Forschungskompendiums {cite:ps}`Marwick2018compendia` beachtet werden.

- Dateien sollten in einer herkömmlichen Ordnerstruktur organisiert werden;
- Daten, Methoden und Ausgaben sollten klar getrennt werden;
- Die Rechenumgebung sollte angegeben werden.

Mit diesen Prinzipien ist eine Vielzahl von Kompendien möglich. Beginnen wir mit der grundlegendsten Version.


#### Einfaches Kompendium

Ein grundlegendes Kompendium folgt diesen drei Prinzipien. Es trennt Daten und Methoden in eine herkömmliche Ordnerstruktur und beschreibt die Rechenumgebung in einer bestimmten Datei. Außerdem sollte jedes Kompendium eine Landingpage in Form eines README-Dokuments haben.

```text
compendium/
<unk> 文<unk> Daten
<unk> <unk> <unk> <unk> <unk> <unk> Mein_data.csv
<unk> <unk> <unk> <unk> Analyse
<unk> <unk> <unk> <unk> <unk> <unk> <unk> mein_script.R
<unk> <unk> <unk> <unk> <unk> BESCHREIBUNG
<unk> <unk> README.md
```

#### Ausführbares Compendium

Der folgende Ordner kann als ausführbares Recherchecompendium angesehen werden. Es enthält alle digitalen Teile des Forschungsprojekts (Code, Daten, Text, Zahlen) und alle Informationen über die Erzielung der Ergebnisse. Die Rechenumgebung ist in der `Dockerfile`beschrieben, die Abhängigkeiten von Dateien und die automatische Generierung der Ergebnisse werden in der `Makefile` beschrieben. Zusätzlich haben wir eine `README. d` beschreibt, worum es sich bei dem Kompendium handelt, und eine `LICENSE` Datei mit Informationen darüber, wie es verwendet werden kann.

```text
compendium/
<unk> 本<unk> CITATION
<unk> 本<unk> code
<unk> <unk> <unk> <unk> 日<unk> analyse_data.R
<unk> <unk> 本<unk> clean_data.
<unk> 本<unk> data_clean
<unk> <unk> 本<unk> data_clean.csv
<unk> 本<unk> data_raw
<unk> <unk> <unk> <unk> <unk> Datapackage. son
<unk> <unk> <unk> 本<unk> data_raw.csv
<unk> <unk> <unk> Dockerfile
<unk> 本<unk> Figuren
<unk> 本<unk> flow_chart. peg
<unk> 本<unk> LICENSE
<unk> <unk> <unk> Makefile
<unk> <unk> <unk> <unk> <unk> <unk> <unk> Papier.Rmd
<unk> <unk> <unk> <unk> README.md
```

#### Trennungsmethoden, Daten, Ausgabe

Die Prinzipien eines Forschungskompendiums besagen, dass es Methoden, Daten und Ausgaben klar voneinander trennen sollte. Anders ausgedrückt, bedeutet dies, dass wir zwischen drei Arten von Dateien und Ordnern unterscheiden sollten:

- **Nur**: Rohdaten (``data_raw\`), Metadaten (``datapackage.json`,`CITATION`)
- **Menschlich generierte**: Code (`clean_data.R`, `analyse_data.`), Papier (`paper.Rmd`), Dokumentation (`README.md`)
- **Projekt-generierte**: saubere Daten (``data_clean\`, Zahlen (``Zahlen\`), andere Ausgaben

Die hier genannten Beispiele sind nicht erschöpfend und einige können zuerst "menschlich generiert" und irgendwann "schreibgeschützt werden" werden (zum Beispiel kann ein Mensch die Datenmetadaten `generieren. Sohn`, aber sobald das erledigt ist, kann es zu etwas werden, das nicht berührt werden kann). Mit anderen Worten, ob ein Ordner Dateien in einer dieser Kategorien enthält, kann vom Lebenszyklus des Projekts abhängen.


### Erstellen eines Kompendiums

Wenn Sie bereits einige der Werkzeuge in diesem Buch verwenden - wie Versionskontrolle, Makefiles, und/oder reproduzierbare Umgebungen - es kann natürlich zu Ihnen kommen, ein Forschungskompendium zu erstellen. Dies ist, weil ein Versionskontroll-Repository ein Forschungs-Compendium sein kann; A Makefile macht es ausführbar; Eine reproduzierbare Umgebung macht es reproduzierbar. Um ein Forschungskompendium zu erstellen, wir empfehlen, zuerst über *nachzudenken, welche Komponenten Ihres Projekts* sind und die Ordnerstruktur entsprechend zu erstellen. Verwenden Sie Namen für Dateien und Ordner, die es anderen erleichtern zu verstehen, was sie enthalten. Es ist eine gute Idee, schon früh im Forschungsprozess darüber nachzudenken und Ihr Projekt mit der Denkweise zu beginnen, dass das Ergebnis am Ende eher ein Forschungskompendium als nur ein Forschungsdokument ist.


### Ein Compendium veröffentlichen

Es gibt mehrere Möglichkeiten, ein Forschungskompendium zu veröffentlichen:

- Auf einer Versionierungsplattform wie GitHub oder GitLab (potentiell mit einem Link zu Binder).
- Zu einem Forschungsarchiv wie Zenodo oder dem Open Science Framework (OSF).
- Als ergänzendes Material einer Papierpublikation.

Beispiele dafür finden Sie im Label/tag/community "research-compendium" (Anwendung auf GitHub, Zenodo, OSF) oder als Fallback den Begriff "Forschungskompendium" in der Beschreibung (Verwendung auf GitLab). Weitere Informationen finden Sie unter [Research Compendium](https://research-compendium.science).

In Zukunft könnte das Forschungskompendium sogar die Publikation selbst sein, die Peer Reviews des gesamten Forschungsprojekts ermöglicht.

(rr-compendia-us)=
### Benutze ein Kompendium

Ein Forschungskompendium kann auf verschiedene Arten verwendet werden, einschließlich (aber nicht beschränkt auf):

- Peer-Review: Wenn Peers überprüfen können, was Sie getan haben, können sie es viel gründlicher überprüfen.
- Forschung: Wenn Sie wirklich verstehen wollen, was jemand in seinem Forschungsprojekt gemacht hat das Forschungskompendium ist das, was Sie sich ansehen müssen.
- Lehren: Comendia Research kann großartige Beispiele für den Unterricht sein.
- Reproduzierbarkeitsstudien / Repro Hacks: Ein Forschungskompendium ermöglicht anderen Forschern zu versuchen (und hoffentlich erfolgreich) Ihre Berechnungen zu wiederholen.


## Checklist

Um ein Forschungskompendium zu erstellen, folgen Sie diesen Schritten:

- Denken Sie an eine gute Ordnerstruktur (siehe Beispiel oben)
- Ordnerstruktur erstellen (Hauptverzeichnis und Unterverzeichnisse)
- Optional: Mache das Kompendium zu einem Git-Repository
- Fügen Sie alle Dateien hinzu, die für die Wiedergabe der Projektergebnisse benötigt werden
- Versuchen Sie, das Kompendium so sauber und einfach wie möglich zu halten, wenn Sie es für andere werben
- Optional: Prüfen Sie das Kompendium und überprüfen Sie, ob es korrekt funktioniert
- Veröffentlichen Sie Ihr Kompendium

## Weiterlesen

- Die Website [Research Compendium](https://research-compendium.science) enthält Links zu weiteren Ressourcen und Publikationen zu Forschungskompendien sowie Links zu Beispielen.


<!---
> top 3/5 resources to read on this topic (if they weren't licensed so we could include them above already) at the top, maybe in their own box/in bold.
> less relevant/favourite resources in case someone wants to dig into this in detail
-->
