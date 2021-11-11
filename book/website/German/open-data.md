(rr-open-data)=
# Daten öffnen

Die Welt ist Zeuge eines bedeutenden globalen Wandels, der durch Technologie und digitale Medien erleichtert und durch Daten und Informationen angeheizt wird. Diese Transformation hat ein enormes Potenzial, um transparentere, verantwortungsvollere und effizientere Forschung zu fördern. Nur ein sehr geringer Teil der Originaldaten wird in herkömmlichen Zeitschriften veröffentlicht. Trotz bestehender Richtlinien zur Archivierung von Daten werden in der heutigen Praxis Daten in erster Linie in privaten Dateien gespeichert nicht in sicheren institutionellen Repositories und werden effektiv der Öffentlichkeit (und oft sogar dem Forscher, der die Daten erzeugt hat) verloren.

Dieser Mangel an Datenaustausch ist ein Hindernis für die internationale Forschung (ob akademisch, staatlich oder kommerziell) aus zwei Hauptgründen:

1. Es ist in der Regel schwierig oder unmöglich, eine Studie ohne die ursprünglichen Daten zu reproduzieren.
2. Die Daten können von anderen Forschern nicht wiederverwendet oder in neue Arbeit aufgenommen werden, wenn sie keinen Zugang dazu erhalten.

Dementsprechend gibt es eine anhaltende globale Datenrevolution, die darauf abzielt, die Zusammenarbeit und die Schaffung und Erweiterung wirksamer, effizienter Forschungsprogramme voranzutreiben. Offene Daten [{term}`def<Open data>`] sind entscheidend, um diese Ziele zu erreichen. Offene Daten sind im Internet frei verfügbar. Jedem Nutzer ist es gestattet, es mit minimalen finanziellen, rechtlichen und technischen Barrieren für jeden anderen Zweck herunterzuladen, zu kopieren, zu analysieren, neu zu verarbeiten und wiederzuverwenden.

Dies stellt eine echte Veränderung der Arbeitsweise der Forschung dar. Funders fangen an, Forscher zu verpflichten, ihre Daten zur Verfügung zu stellen und Datenmanagement-Pläne {ref}`Datenmanagement-Pläne<rr-rdm-dmp>` als Teil von Projektvorschlägen einzureichen. Im Moment muss sich derjenige, der Daten eines Forschers verwenden möchte, oft mit dem Forscher in Verbindung setzen und eine Anfrage stellen. "Standardmäßig öffnen" behebt dies mit der Annahme einer Veröffentlichung für alle. Wenn beispielsweise der Zugriff auf Daten aus Sicherheitsgründen eingeschränkt wird, sollte die Begründung dafür deutlich gemacht werden. Der freie Zugang zu und die anschließende Nutzung von Daten ist für die Gesellschaft und die Wirtschaft von erheblichem Wert. Diese Daten sollten daher standardmäßig geöffnet und nur so geschlossen wie nötig.

Weitere Informationen zu den praktischen Schritten, um Ihre Daten zur Verfügung zu stellen, finden Sie im Abschnitt {ref}`Schritte, um Ihre Daten zu teilen <rr-rdm-sharing-steps>` im Unterkapitel: {ref}`Teilen und Archivieren von Daten<rr-rdm-sharing>`.

(rr-open-data-barriers)=
## Barrieren zum Datenaustausch
Viele Wissenschaftler finden den Austausch von Daten schwierig. Aktuelle Umfragen {cite:t}`Stuart2018sharing` unter Forschern führen folgende Gründe auf:

- Die Organisation von Daten auf eine darstellbare und nützliche Art und Weise ist anspruchsvoll (erwähnt von 46%)
- Forscher sind sich über Urheberrechte und Lizenzierung unsicher (erwähnt von 37%)
- Forscher wissen nicht, welches Repository für verschiedene Datentypen verwendet werden soll (erhöht um 33%)

Dies sind kulturelle Herausforderungen, die in einer sich wandelnden Praxis angegangen werden könnten. Es gibt jedoch auch rechtliche, ethische oder vertragliche Gründe, die manchmal verhindern, dass Daten vollständig oder teilweise öffentlich zugänglich gemacht werden. Unten diskutieren wir einige Gründe dafür, warum dies der Fall sein könnte.

```{figure} ../../figures/data-privacy.jpg
---
Höhe: 500px
Name: Datenschutz
alt: Ein Bild, das beschreibt, warum private Daten verwendet werden sollen. Eine Person steht neben einem Brunnen mit 'privaten Daten' auf ihr und einem Schloss um sie herum. Es ist schwarz und weiß und blau. Der Text listet "Menschen verdienen - Würde, Agentur, Privatsphäre, Rechte, bestätigte Zustimmung".
---
_The Turing Way_ Projekt Illustration von Scriberia. Originalversion auf Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barriers-privacy)=
### Datenschutz und Datenschutz

Viele Forschungsbereiche umfassen die Zusammenarbeit mit sensiblen personenbezogenen Daten, wobei die medizinische Forschung das offensichtlichste Beispiel ist. Einzelpersonen müssen durch ihre Forschungsdaten vor (wieder-)Identifizierung geschützt werden. Die Anonymisierung der Daten mag in einigen Fällen ausreichen, aber die Gewährleistung einer (Neu-)Identifizierung wird aufgrund des technischen Fortschritts immer schwieriger. wachsende Rechenleistung und – ironischerweise – offenere Daten. Beispielsweise kann eine (Neu-)Identifizierung durch Data-Mining von zugänglichen Daten und so genannten Quasi-Identifikatoren möglich sein. eine Reihe von (gemeinsamen) Eigenschaften, die – in ihrer Kombination – so spezifisch sind, dass sie zur Identifizierung von Individuen verwendet werden können.

Der Schutz der Privatsphäre ist unter Umständen auch möglich, wenn Teil- oder allgemeine Datensätze zur Verfügung gestellt werden. Zum Beispiel können Sie anstelle des Geburtsdatums oder nur die ersten zwei Ziffern der Postleitzahlen angeben. Es kann auch möglich sein, die Daten so zu liefern, dass Forscher sie abfragen können, während die Daten selbst geschlossen bleiben. Zum Beispiel kann ein Benutzer in der Lage sein, eine Anfrage zu senden, um den Mittelwert eines Datensatzes abzurufen, aber nicht in der Lage sein, auf einzelne Datenpunkte zuzugreifen.

Viele Bereiche der wissenschaftlichen Disziplinen umfassen die Arbeit mit sensiblen personenbezogenen Daten. Ihre Verwaltung ist gut reguliert in den Datenschutzgesetzen (in Europa durch die nationale Umsetzung der Allgemeinen Datenschutzverordnung) und in den meisten Forschungseinrichtungen etablierten ethischen Prozeduren. {cite:t}`EU2016protection`.

(rr-open-data-barriers-consent)=
### Einverständnis

Damit anonymisierte Forschungsdaten für die zukünftige Wiederverwendung zur Verfügung gestellt werden können, müssen die Zustimmungsformulare die gemeinsame Nutzung dieser Daten mit anderen Forschern umfassen. Die bisherige Forschung legt nahe, dass die Teilnehmer der Studie in der Regel weniger über die zu archivierenden und freigegebenen Daten besorgt sind, als Forscher denken, {cite:t}`Kuula2010Archivierung`. Informationsblätter und Einwilligungsformulare der Teilnehmer sollten die Speicherung von Forschungsdaten beinhalten auf lange Sicht erhalten und genutzt werden und wie die Vertraulichkeit bei Bedarf geschützt wird.

(rr-open-data-barriers-anonymisation)=
### Anonymisation

Personen müssen durch ihre Daten vor (wieder-)Identifizierung geschützt sein Die Anonymisierung der Daten kann in einigen Fällen ausreichen aber es wird immer schwieriger, dafür zu sorgen, dass eine Neuidentifizierung nicht möglich ist. Es könnte sogar aufgrund des technischen Fortschritts, der wachsenden Rechenleistung und – ironischerweise – offenerer Daten unmöglich sein.

Zum Beispiel kann eine Neuidentifizierung durch Data-Mining von zugänglichen Daten und so genannten Quasi-Identifikatoren möglich sein. eine Reihe von (gemeinsamen) Eigenschaften, die – in ihrer Kombination – so spezifisch sind, dass sie zur Identifizierung einer Person verwendet werden können. Der Schutz der Privatsphäre ist unter Umständen möglich, wenn Teil- oder allgemeine Datensätze zur Verfügung gestellt werden, wie z.B. Altersgruppen statt Geburtsdatum oder nur die ersten zwei Ziffern der Postleitzahlen. Es kann auch möglich sein, die Daten in einem Format zur Verfügung zu stellen, das Forscher bei gleichzeitiger Schließung der Daten selbst abfragen können. Zum Beispiel kann ein Benutzer in der Lage sein, eine Anfrage zu senden, um den Mittelwert eines Datensatzes abzurufen, aber nicht in der Lage sein, auf einzelne Datenpunkte zuzugreifen. Eine andere Möglichkeit, anonymisierte Daten bereitzustellen, ist die Bereitstellung von [synthetischen Daten](https://en.wikipedia.org/wiki/Synthetic_data), Daten, die erstellt wurden, um die Bedingungen und Eigenschaften der Rohdaten wiederzugeben, ohne dass personenbezogene Daten enthalten sind.

(rr-open-data-barriers-national)=
### Nationale und kommerzielle Daten

In vielen Fällen sind Unternehmen verständlicherweise nicht bereit, einen Großteil ihrer Daten zu veröffentlichen. Die Argumentation besagt, dass, wenn kommerziell sensible Informationen eines Unternehmens bekannt gegeben werden, dies den kommerziellen Interessen des Unternehmens schadet und die Wettbewerbsfähigkeit untergraben würde. Dies beruht auf dem Gedanken, dass Innovation auf den Wettbewerbsmärkten nur mit einem gewissen Informationsschutz erfolgen wird. Wenn ein Unternehmen Zeit und Geld damit verbringt, etwas Neues zu entwickeln, dann werden die Details öffentlich gemacht dann kann es einfach kopiert werden, ohne die gleichen Ressourcen investieren zu müssen. Das Ergebnis ist, dass niemand von vornherein innovativ wäre. In ähnlicher Weise sind die Regierungen im Hinblick auf die öffentliche Sicherheit häufig nicht bereit, Daten zu veröffentlichen, die sich auf Fragen wie die nationale Sicherheit beziehen. In solchen Fällen ist es möglicherweise nicht möglich, Daten zu öffnen oder es ist möglich, nur partiale/verdeckte Datensätze zu teilen.

***Kapitel Tags**: Dieses Kapitel ist kuratiert für die `Turing Data Study Group` (`turing-dsg`).*
