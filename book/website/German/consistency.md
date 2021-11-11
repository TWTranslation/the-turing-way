(ch-Konsistenz)=
# Aufrechterhaltung der Konsistenz

_Der Turing Way_ ist ein Open-Source-Projekt, das Mitwirkenden auf der ganzen Welt ermöglicht, ihre Fähigkeiten zu nutzen, Wissen und Expertise für den Aufbau und die Erweiterung seiner Inhalte. _Die Turing Way_ Führer entwickeln sich ständig, mit mehreren Kapiteln, die von Einzelpersonen mit unterschiedlichem Hintergrund mitentwickelt wurden - die alle leidenschaftlich daran interessiert sind, Wissen über Datenwissenschaft und Forschung zu teilen. Um diese lebendige Gemeinschaft zu erhalten und zu unterstützen, sollte _das Buch Turing Way_ während seiner Entwicklung konsistent und zugänglich bleiben. Das Kapitel {ref}`ch-style` enthält bereits Richtlinien, um einen konsistenten Stil im Buch zu erhalten. Allerdings folgen nicht alle Kapitel diesen Vorschlägen, da sie oft asynchron von verschiedenen Autoren geschrieben werden. Die Überprüfung der Konsistenz über _hinweg ist allein die Turing Way_ eine ziemliche Herausforderung. Dies weist auf die Notwendigkeit hin, unsere Mitwirkenden zu ermutigen und zu unterstützen, um die Konsistenz in allen Kapiteln in _der Turing Way_ Leitfäden beizubehalten. Daher wird dieses Kapitel eine Schritt-für-Schritt Konsistenz-Checkliste umrissen, die unsere Beitragenden leiten wird. Jeder Schritt wird eine Konsistenzprüfung betonen, nach der sie Ausschau halten, da sie Kapitel in _Die Turing Way_ entwerfen und entwickeln oder Konsistenz in bestehende Kapitel bringen.

(ch-Konsistenz-Anforderungen)=
## Hard vs Soft Requirements

Artikel in der Konsistenz-Checkliste werden in harte und weiche Anforderungen eingeteilt. Hard requirements are essential consistent checks, that a chapter must pass, so that _the Turing Way_ builds without errors. Darüber hinaus machen sie das Kapitel lesbar und für jedermann zugänglich.

Weiche Anforderungen hingegen sind nebensächliche Konsistenzprüfungen, die ein Kapitel durchlaufen sollte. Diese Prüfungen verbessern das Gesamtbild des Buches, können jedoch ignoriert werden, wenn sie nicht in Ihren Beitrag integriert werden können. Sie können immer wieder Ihre bisherigen Beiträge überprüfen und deren Inhalt verbessern.

Eine Übersicht dieser Anforderungen ist {ref}`unten <ch-consistency-requirements-checklist>` aufgelistet. Zur einfachen Beschreibung werden diese Konsistenzprüfungen nach Format, Struktur und Sprache klassifiziert. Die Unterkapitel erläutern diese detaillierter und beschreiben, wie sie erreicht werden können.

```{important} Please note that these requirements are not exhaustive or definitive, and neither are their classifications rigid.
Darüber hinaus sind keine Gegenstände von Natur aus wichtiger als die anderen.

Wenn du mehr Konsistenzprobleme identifizierst, die gelöst werden müssen, betrete das Gespräch [here](https://github.com/alan-turing-institute/the-turing-way/issues/1174).

```

```{figure} ../figures/theturingway-consistency.jpg
---
Höhe: 400px
Name: theturingway-Konsistenz
alt: Diese Abbildung zeigt eine Treppe an, die den Weg anzeigt, um die Konsistenz mit drei Säulen aufrechtzuerhalten - Formatierung, Struktur und Sprache. Eine Person leitet zwei neue Beitragende auf den Treppen.
---
Pfad zur Aufrechterhaltung der Konsistenz. _The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-konsistenz-requirements-checklist)=
### Konsistenz-Checkliste

#### Formatierung

| ANFRAGE | CHECK                                                                                                                                                                                          |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Schwer  | Verwenden Sie Markdown zum Erstellen Ihrer Inhalte (siehe dieses [WordPress-Cheatsheet](https://wordpress.com/support/markdown-quick-reference/)).                                             |
| Schwer  | Verwenden Sie die Header in sequentieller Reihenfolge. Zum Beispiel, das Starten der obersten Ebene mit h1 tag `#`, zweiter Header mit h2 Tag `##` und so weiter.                              |
| Schwer  | Fügen Sie Labels zu Kapiteln, Unterkapiteln und Bildern hinzu, um Querverweise zu aktivieren, wie in der {ref}`Styleguide beschrieben<ch-style-crossref>`                                |
| Schwer  | Verwende `MyST` für die Bildformatierung wie im {ref}beschrieben`Styleguide<ch-style-figures>` | Verwende öffentliche Domänenbilder, die kleiner als 1MB sind und entsprechend zitieren. |
| Weich   | Vergewissern Sie sich, dass die Namen der Kapitel/Unterkapitel kurz sind und genau dem zuordnen, wie sie im `_toc.yml` genannt werden                                                          |
| Weich   | Stellen Sie sicher, dass die Kopfzeile richtig ist | Kapitalisiere die ersten, letzten und 'wichtigen' Worte eines jeden Titels, zum Beispiel 'Schnee Weiß und die Sieben Zwerge'.             |


#### Struktur

| ANFRAGE | CHECK                                                                                                                                                                                                        |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Schwer  | Stellen Sie sicher, dass die Kapitel einer Struktur folgen, wie in der neuen [Kapitelvorlage beschrieben](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) |
| Schwer  | Fügen Sie keine 'Inhaltstabelle' in Kapiteln oder Unterkapiteln hinzu, da sie automatisch vom Jupyter Buch generiert wird                                                                                    |
| Schwer  | Stellen Sie sicher, dass externe Quellen korrekt referenziert und in der zentralisierten BibTeX-Datei enthalten sind, wie empfohlen im {ref}`Styleguide<ch-style-citing>`                              |
| Schwer  | Fügen Sie keine leeren Dateien in der `_toc.yml`hinzu, erstellen Sie stattdessen ein Problem für neue Kapitel                                                                                                |
| Weich   | Stellen Sie sicher, dass jedes Kapitel eine gute Zusammenfassung auf seiner Landingpage und Links zu seinen Unterkapiteln hat.                                                                               |
| Weich   | Teilt lange Kapitel in kleinere Unterkapitel, so dass sie modular sind.                                                                                                                                      |


#### Sprache

| ANFRAGE | CHECK                                                                                                                                                    |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Schwer  | Vergewissern Sie sich, dass die Kapitel keine lateinische Abkürzung verwenden, wie in der {ref}`Styleguide diskutiert wird<ch-style>`              |
| Schwer  | Richte die korrekte Grammatik und einen konsistenten Ton im Buch mit Hilfe von 1-2 Überprüfern                                                           |
| Schwer  | Stellen Sie sicher, dass Kapitel eine konsistente Sprache verwenden, zum Beispiel, wenn Sie auf britischem Englisch schreiben, bewahren Sie das in allen |

Diese Prüfungen werden weiter in der {ref}`Formatierung<ch-consistency-formatting>`erläutert, {ref}`Struktur<ch-consistency-structure>`und {ref}`Sprache<ch-consistency-language>` Unterkapitel.
