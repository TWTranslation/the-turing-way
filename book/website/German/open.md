(rr-open)=
# Forschung öffnen

(rr-offene Voraussetzungen)=
## Voraussetzungen

| Voraussetzung  | Bedeutung | Notizen                                        |
| -------------- | --------- | ---------------------------------------------- |
| {ref}`rrr-vcs` | Hilfreich | Erfahrungen mit GitHub sind besonders nützlich |


```{figure} ../figures/evolution-open-research.jpg
---
Name: evolution-open-research
alt: Dieses Bild zeigt einen Forscher, der seine Forschungspraktiken entwickelt, um sich in die Ära der offenen Forschung zu bewegen.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=
## Summary

Offene Forschung zielt darauf ab, die Forschung zu transformieren, indem sie reproduzierbarer, transparenter, wiederverwendbarer, kooperativ, rechenschaftspflichtig und für die Gesellschaft zugänglich gemacht wird. Er drängt auf Veränderungen in der Art und Weise, wie die Forschung mit digitalen Werkzeugen durchgeführt und verbreitet wird. Eine Definition der offenen Forschung, [, wie sie von der Organisation für wirtschaftliche Zusammenarbeit und Entwicklung (OECD) angegeben wurde](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), ist die Praxis, „die primären Ausgaben öffentlich finanzierter Forschungsergebnisse – Publikationen und Forschungsdaten – in einem digitalen Format ohne oder ohne Einschränkung öffentlich zugänglich zu machen.“ Um diese Offenheit in der Forschung zu erreichen, sollte jedes Element des Forschungsprozesses sein:

- _Sei öffentlich verfügbar_: Es ist schwierig, Wissen zu nutzen und zu nutzen, versteckt hinter Barrieren wie Passwörtern und Paywalls.
- _Be reusable_: Research outputs need to be licensed appropriately, so that prospective users know any limitations on re-use.
- _Sei transparent_: Mit geeigneten Metadaten, um klare Angaben darüber zu machen, wie Forschungsleistung erzeugt wurde und was darin enthalten ist.

Der Forschungsprozess hat typischerweise das folgende Formular: Daten werden gesammelt und anschließend ausgewertet (üblicherweise mit Software). Dieser Prozess kann die Verwendung von spezieller Hardware beinhalten. Die Forschungsergebnisse werden dann veröffentlicht. Während des gesamten Prozesses ist es empfehlenswert, dass Forscher ihre Arbeit in Notizbüchern dokumentieren. Offene Forschung zielt darauf ab, jedes dieser Elemente offen zu machen:

- _Daten öffnen_: Forschungsdaten für die Wiederverwendung offen dokumentieren und teilen.
- _Open Source Software_: Forschungscode und Routinen dokumentieren und frei zugänglich und verfügbar machen.
- _Offene Hardware_: Dokumentation von Designs, Materialien und anderen relevanten Informationen rund um die Hardware, die frei zugänglich und verfügbar sind.
- _Open Access_: Alle veröffentlichten Ausgaben für maximale Nutzung und Wirkung frei zugänglich machen.
- _Öffne Notebooks_: Eine aufstrebende Praxis, dokumentiert und teilt den experimentellen Prozess von Test- und Fehlerversuch.

Diese Elemente werden in diesem Kapitel erweitert.

Offenes Stipendium [{term}`def<Open Scholarship>`] ist ein Konzept, das die offene Forschung weiter ausdehnt. Er bezieht sich auf die Öffnung anderer Aspekte der wissenschaftlichen Forschung für die Öffentlichkeit, beispielsweise:

- _Öffne Bildungsressourcen_: Erschaffe Bildungsressourcen öffentlich für die Wiederverwendung und Modifizierung.
- _Eigenkapital, Vielfalt, Inklusion_: Stipendien stehen jedem ohne Barrieren auf Basis von Faktoren wie Rasse, Herkunft, Geschlecht und sexueller Orientierung zur Verfügung.
- _Citizen Science_: Die Einbeziehung von Mitgliedern der Öffentlichkeit in die wissenschaftliche Forschung.

Diese Elemente werden auch in diesem Kapitel ausführlich diskutiert.

(rr-open-nützlich)=
## Motivation und Hintergrund

Es gibt fünf Denkschulen, die offene Praktiken zum Nutzen der Forschung motivieren:

| Schule        | Glaube                                                                                   | Aim                                                                                   |
| ------------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| Infrastruktur | Effiziente Forschung hängt von den verfügbaren Werkzeugen und Anwendungen ab.            | Schaffung offen verfügbarer Plattformen, Werkzeuge und Dienstleistungen für Forscher. |
| Pragmatisch   | Die Schaffung von Wissen könnte effizienter sein, wenn Forscher zusammenarbeiten würden. | Die Öffnung des Prozesses der Wissensschaffung.                                       |
| Messung       | Heute benötigen wissenschaftliche Beiträge alternative Wirkungsmessungen.                | Entwicklung eines alternativen metrischen Systems für Forschungseffekte.              |
| Demokratisch  | Der Zugang zu Wissen ist ungleich verteilt.                                              | Wissen für jedermann frei zugänglich machen.                                          |
| Öffentlich    | Die Forschung muss der Öffentlichkeit zugänglich gemacht werden.                         | Forschung für die Bürger zugänglich machen.                                           |

Offene Praktiken kommen auch den Forschern zugute, die sie propagieren. Zum Beispiel gibt es Beweise {cite:ps}`McKiernan et al. 2016<McKiernan2016Open>` dass offene Zugriffsartikel öfter zitiert werden, wie die Metastudie in der Abbildung unten zeigt.

```{figure} ../figures/open-access-citations.jpg
---
Höhe: 500px
name: open-access-citations
alt: A scatter plot of the relationship between citation rates and discipline
---
The relative citation rate (OA: non-OA) in 19 fields of research. Diese Rate ist definiert als die mittlere Zitierrate von OA-Artikeln, die durch die durchschnittliche Zitierrate von Nicht-OA-Artikeln geteilt werden. Mehrere Punkte für die gleiche Disziplin zeigen unterschiedliche Schätzungen aus der gleichen Studie oder Schätzungen aus mehreren Studien. (Siehe Fußnote 1 für Referenzen.)
```

Ein weiterer Vorteil der Offenheit besteht darin, dass die Zusammenarbeit in der Forschung zwar entscheidend für die Förderung des Wissens ist, aber die Identifizierung und Verbindung mit geeigneten Mitarbeitern nicht trivial ist. Offene Praktiken können es Forschern erleichtern, sich miteinander zu verbinden, indem sie die Erkennbarkeit und Sichtbarkeit der eigenen Arbeit erhöhen einen schnellen Zugang zu neuartigen Daten- und Software-Ressourcen zu ermöglichen und neue Möglichkeiten zu schaffen, mit laufenden Gemeinschaftsprojekten zu interagieren und dazu beizutragen.

***Kapitel Tags**: Dieses Kapitel ist kuratiert für die `Turing Data Study Group` (`turing-dsg`).*
