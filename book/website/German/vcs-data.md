(rr-vcs-data)=
# Versionskontrolle für Daten

Wir diskutierten, dass die Versionskontrolle der Komponenten sich entwickelnder Projekte helfen könnte, die Arbeit organisierter, effizienterer, kooperativer und reproduzierbarer zu machen. Viele wissenschaftliche Projekte enthalten jedoch nicht nur Code, Manuskripte oder andere kleine Dateien. Viele Projekte enthalten größere Dateien wie (Eingabe-)Daten oder Analyseergebnisse die in einem Projekt geändert oder aktualisiert werden können, genau wie andere Komponenten wie Code und Manuskripte. Der Reproduzierbarkeitsaspekt eines wissenschaftlichen Projekts kann viel verbessern, wenn wir die Untermenge oder Version von Daten, auf die eine bestimmte Analyse oder Ergebnis basiert, verfolgen können.

(rr-vcs-data-importance)=
## Bedeutung der Versionskontrolldaten

Wir sollten nicht die Vorstellung vertreten, dass die für die Analyse verwendeten Daten statisch sind; Sobald es erworben ist, ändert es sich nicht und dient als Input für eine bestimmte Analyse und das Rückgrat unserer wissenschaftlichen Ergebnisse. Die Realität sieht so aus, dass Daten nur selten invariant sind. Beispielsweise können Datensätze während eines wissenschaftlichen Projekts um neue Daten erweitert werden, die an neue Benennungsschemata angepasst sind, umstrukturiert in verschiedene Dateierierierarchien, aktualisiert mit neuen Datenpunkten oder modifiziert, um Fehler zu beheben.

Such dynamic processes are excellent and beneficial for science as they ensure that data is usable and up-to-date, but they can be confusing if they are not adequately documented. Wenn sich ein Datensatz, der die Grundlage für die Berechnung eines wissenschaftlichen Ergebnisses darstellt, ohne Versionskontrolle ändert Reproduzierbarkeit kann bedroht werden: Ergebnisse können ungültig werden, oder Skripte, die auf Dateinamen basieren, die sich zwischen Versionen ändern, können kaputt gehen. Insbesondere wenn Originaldaten durch neue Daten ohne Versionskontrolle ersetzt werden, dürfen die ursprünglichen Ergebnisse der Analyse nicht wiedergegeben werden. Daher -Version, die die Daten und andere große Dateien ähnlich der Versionsverwaltung von Code oder Manuskripten kontrolliert, kann dazu beitragen, die Reproduzierbarkeit eines Projekts zu gewährleisten und die Herkunft der Ergebnisse zu erfassen; Hut ist "die genaue Untermenge und Version der Daten, aus der ein Ergebnissatz stammt". Zusammen mit allen anderen Bestandteilen eines Forschungsprojekts sind in präzisen Versionen identifizierte Daten Teil des Forschungsergebnisses.

```{figure} ../../figures/provenance.jpg
---
Höhe: 500px
Name: Herkunft
alt: Herkunft auf welchen Daten in welcher Version welche Berechnungen für die Reproduzierbarkeit entscheidend sind.
---
Provenance on which data in which version was underlying which computation is entscheidend for reproduzability.
_The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data-challenges)=
## Herausforderungen in Versionskontrolldaten

Abhängig von der Größe der Daten und den Änderungen, denen sie unterzogen werden, sind Versionskontrollwerkzeuge wie Git möglicherweise nicht für Daten geeignet. Solange die Dateien zur Versionskontrolle klein sind und in ein paar `csv` oder zeichengetrennte Dateien gespeichert werden können Werkzeuge wie [Git](https://git-scm.com/) sind angemessen.

Wenn Sie arbeiten, teilen und zusammenarbeiten an großen, möglicherweise [binären](https://en.wikipedia.org/wiki/Binary_file) Dateien (wie viele wissenschaftliche Datenformate) Sie müssen darüber nachdenken, wie Sie diese Daten mit spezialisierten Werkzeugen verteilen können. Das liegt daran, dass die meisten Versionskontrollwerkzeuge - wie Git - nicht gut geeignet sind, um große Binärdaten zu verwalten. Als Git-Repository speichert jede Version jeder Datei, die hinzugefügt wird große Dateien, die regelmäßig modifiziert werden, können die Größe von a·project erheblich vergrößern. Wenn andere versuchen, Ihr Projektarchiv zu klonen oder es lokal zu aktualisieren, es dauert länger, wenn es größere Dateien enthält, die versioniert und modifiziert wurden.

Besonders unbequem ist, dass Repository-Hosting-Dienste wie GitHub Benutzern maximale Dateigrößen auferlegt (zumindest in ihren freien Versionen). Wenn zum Beispiel eine einzelne Datei in Ihrem Projektarchiv mehr als 100 MB übersteigt, können Sie diese Datei nicht in ein GitHub Repository übertragen. Außerdem, wenn eine große Datei versehentlich zu einem Repository hinzugefügt wurde, das Entfernen der Datei aus dem Projektarchiv kann mühsam sein, da diese Datei [gelöscht werden muss](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository). Diese Mängel können die Versionsverwaltung von Dateien mühselig und langsam machen, die Zusammenarbeit bei Repositories mit großen Daten behindern und verhindern, dass Daten oder Projekte mit Daten auf Plattformen wie GitHub geteilt werden.

(rr-vcs-data-tools)=
## Tools für Versionskontrolldaten

Mehrere Werkzeuge sind verfügbar, um die Versionskontrolle und den Austausch großer Dateien zu bewältigen. Die meisten von ihnen integrieren sich sehr gut in Git und erweitern die Möglichkeiten eines Projektarchivs auf die Versionsverwaltung von großen Dateien. Mit diesen Werkzeugen können große Daten zu einem Repository hinzugefügt werden, die Version gesteuert und auf frühere Zustände zurückgesetzt werden oder gemeinschaftlich aktualisiert und modifiziert und sogar über GitHub als kleine Dateien freigegeben. Einige dieser Tools beinhalten:

(rr-vcs-data--tools-lfs)=
### Git LFS

[Git LFS](https://git-lfs.github.com/) verfügt über eine Befehlszeilenerweiterung von Git und erlaubt es Ihnen, Dateien beliebiger Größe mit Standard-Git-Befehlen gleich zu behandeln. Ein großes Defizit besteht jedoch darin, dass Git LFS eine _zentralisierte_ Lösung ist. Große Dateien werden nicht verteilt, sondern auf einem entfernten Server gespeichert. Dies erfordert in der Regel die Einrichtung Ihres Servers oder die Bezahlung für einen Dienst - was ihn sehr unzugänglich machen kann.

(rr-vcs-data-tools-gitannex)=
### `git-annex`

Das [`git-annex`](https://git-annex.branchable.com/) Tool ist ein verteiltes System, das große Dateien unabhängig von einem zentralen Dienst oder Server verwalten und teilen kann. `git-annex` manages all file _content_ in a separate directory in the repository (`.git/annex/objects`, the so-called _annex_) and only places file _names_ with some metadata into version control by Git. Wenn ein Git-Repository mit einem Anhang an einen Webhosting-Dienst wie GitHub gedrückt wird, werden die im Anhang gespeicherten Inhalte nicht hochgeladen. Stattdessen können sie auf ein Speichersystem (wie z.B. einen Webserver, übertragen werden aber auch Drittanbieter-Dienste wie Dropbox, Google Drive, Amazon S3, box. om, und [viele weitere](https://git-annex.branchable.com/special_remotes/)). If a repository with an annex is cloned, the clone will not contain the _contents_ of all annexed files by default, but display only file names. Dies macht das Projektarchiv klein, auch wenn es Hunderte von Gigabytes von Daten aufzeichnet und schnell klonen während die Dateiinhalte in einer oder mehreren freien oder kommerziellen externen Speicherlösungen gespeichert werden. On-demand, jeder Dateiinhalt kann dann mit einem `git-annex erhalten` Befehl vom externen Datei-Speicher.

(rr-vcs-data-tools-datalad)=
### DataLad

[DataLad](https://www.datalad.org/)baut auf Git und Git-Anhang auf. Wie der `Git-Anhang`erlaubt er Ihnen die Versionskontrolle von Daten und deren Freigabe über Drittanbieter, vereinfacht und erweitert diese Funktionalität. Zusätzlich zur Freigabe und Versionskontrolle großer Dateien, Es ermöglicht die Aufnahme, Freigabe und Nutzung von Software-Umgebungen, die Aufzeichnung und Neuausführung von Befehlen oder Datenanalysen und den nahtlosen Betrieb über eine Hierarchie von Repositories hinweg.
