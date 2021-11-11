(cm-citable-steps)=
# Schritte um Forschungsobjekte zitierbar zu machen

Es gibt viele Gründe, warum Autoren die von ihnen verwendeten Daten und Software nicht zitieren aber einer der größten ist, dass es nicht klar ist, wie. Sie können diese Barriere weit verringern, indem Sie einige Schritte folgen, um sie so einfach wie möglich zu machen.

(cm-citable-steps-object)=
## 1. Identifiziere deine Forschungsobjekte

Wir möchten betonen, dass die meisten unserer Forschungsobjekte geteilt werden sollten, damit andere Forscher sie reproduzieren und wiederverwenden können. Daher ist der erste Schritt die Identifizierung aller Forschungskomponenten, die Sie online teilen würden. Die Durchführung offener Forschungen ist nicht notwendig, um Kredite für Ihre Daten oder Software zu erhalten aber es macht es für andere viel einfacher, auf Ihre Arbeit in einer Weise aufzubauen, die Ihren Beitrag würdigt. Es gibt eine wachsende Anzahl von Beweise, die zeigen, dass offene Forschung tendenziell mehr zitiert wird als nicht-offene Forschung von gleicher Qualität und Bedeutung.

Als Teil des Zitats für Ihre Forschungsobjekte ist es wichtig, Forschungsobjekte jenseits von Papieren zu veröffentlichen, B. Bilder, Daten, Software, Protokolle, Methoden ang Workflow im Zusammenhang mit Ihrer Forschung.

Der beste Weg, um damit anzufangen, besteht darin, einige Beispiele zu suchen, welche Art von Forschungsobjekten zitiert werden oder sollten. Die Suche nach häufig referenzierten Forschungsobjekten in Ihrer Disziplin dient zwei Zwecke:
1. Es zeigt, dass Software & Daten Dinge sind, die zitiert werden können;
2. Es gibt Autoren eine Referenz und ein Format, das sie direkt in ihr Dokument kopieren und einfügen können.
<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
Du kannst mehr über die verschiedenen Arten von Forschungsobjekten erfahren in den Kapiteln {ref}`damit deine Forschung geöffnet wird<rr-open>` und {ref}`damit deine Forschung FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=
## 2. Veröffentlichen Sie Ihr Werk online

Online-Publikationen werden an persistente Identifikatoren angehängt, die zum Zitieren verwendet werden. Es ist wichtig zu beachten, dass nicht alles, was online veröffentlicht wird, einen eindeutigen Identifikator erhält, aber es ist wichtig, dass Forschungsobjekte online mit DOIs veröffentlicht werden, wie unten beschrieben.

(cm-citable-steps-doi)=
### DOIs

```{figure} ../../figures/DOI.jpg
---
Name: doi
alt: Dieses Bild zeigt drei Felder mit Materialien oben an. Das Hauptfeld in der Mitte enthält 'Identifikatoren' mit drei oben stehenden Scheiben, die als 'Datensätze' bezeichnet werden. Beide Boxen an ihrer Seite haben Journalartikel oben. Ein Pfeil am oberen Rand des Bildes zeigt diese Bilder als "Digital Object Identifiers" an. Es gibt einen Text am unteren Rand des Bildes, der lautet: 'Persistent', 'Einzigartig', 'Trusted'.
---
Digitale Objekt-Identifikatoren oder DOIs sind persistent, einzigartig und vertrauenswürdig. _The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Einzigartige Identifikatoren oder persistente Links für digitale Objekte werden formell [Digital Object Identifikatoren oder DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier) genannt. Die Verwendung von DOIs erleichtert es anderen, Ihre Daten zu zitieren reduziert das Risiko von Link rot und bedeutet, dass Sie verfolgen können, wie Ihre Forschung verwendet und zitiert wird.

### Server, die DOIs bereitstellen

Unabhängig von der Arbeit können verschiedene Forschungsobjekte online auf Servern veröffentlicht werden, die DOIs anbieten. Einige dieser Server sind [Zenodo](https://zenodo.org/) und [FigShare](https://figshare.com/) (für verschiedene Objekte wie z. B. Zahlen, Präsentationen und Berichte), [Data Dryad](https://datadryad.org/stash) (für Daten), [Open Grants](https://www.ogrants.org/) (für Grant-Angebote) und [Open Science Framework (OSF)](https://osf.io/) (für verschiedene Komponenten eines offenen Forschungsprojektes).

Es ist durchaus möglich, direkt ein Datensatz- oder Softwarepaket zu zitieren, und die meisten großen Verlage erlauben dies nun in ihren Stilführungen. Allerdings kann es manchmal hilfreich sein, ein konventionelleres Papier zu zitieren, und hier kommen Software und Datenblätter ins Spiel. Diese Zeitschriften ähneln Methodenzeitschriften in dem sie dazu neigen, keine signifikanten Ergebnisse einzubringen, sondern sich stattdessen auf die Beschreibung von Daten und Software zu konzentrieren, die ausreichend detailliert sind, um die Wiederverwendung zu ermöglichen. Einige Beispiele sind:
- [Journal der Open Research Software](https://openresearchsoftware.metajnl.com/)
- [Journal der Open Source Software](https://joss.theoj.org/)

(cm-citable-steps-referencing)=
## 3. Füge maschinenlesbare Referenzinformationen hinzu

Sie können einen Schritt weiter gehen, indem Sie Personen erlauben, Informationen über Ihre Forschungsobjekte in ihre bevorzugte Referenzierungsdatenbank zu importieren. Wenn [BibTeX](https://en.wikipedia.org/wiki/BibTeX) in Ihrem Feld für die Verwaltung von Referenzen beliebt ist, schreiben Sie einen `. ib` Datei von *alle* Ihre Ausgaben (nicht nur Ihre Papiere). Wenn [Endnotiz](https://endnote.com/) beliebter ist, stellen Sie einen Endnoten-Export zur Verfügung. Wenn du GitHub, GitLab oder ähnliches verwendest, erwägen Sie eine `CITATION` Datei in jedem Projektarchiv mit Anleitung, wie jemand auf verschiedene Forschungsausgaben aus Ihrem Projekt verweisen kann.

Wenn möglich, geben Sie mehrere Formate: Sie müssen diese nicht sehr oft aktualisieren und es zahlt sich aus.

```{note}
Viele Online-Tools erlauben das Exportieren von Forschungsobjekten in verschiedenen Formaten.
Siehe zum Beispiel [https://www.citethisforme.com/](https://www.citethisforme.com/).
```
