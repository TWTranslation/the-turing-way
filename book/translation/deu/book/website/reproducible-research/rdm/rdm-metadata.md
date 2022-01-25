(rr-rdm-metadata)=
# Dokumentation und Metadaten

Die Verfügbarkeit von Daten nützt nichts, wenn sie nicht verstanden werden können. Ohne Metadaten für Herkunft und Kontext können die Daten nicht effektiv genutzt werden. Zum Beispiel ist eine Tabelle mit Zahlen nutzlos, wenn keine Überschriften beschreiben, was die Spalten/Zeilen enthalten. Daher sollten Sie sicherstellen, dass offene Datensätze konsistente Metadaten enthalten, also Informationen über die Daten, so dass die Daten vollständig beschrieben werden. Dies setzt voraus, dass alle Dokumentationsdaten in klarer, einfacher Sprache geschrieben werden und dass die Nutzer über ausreichende Informationen verfügen, um die Quelle zu verstehen Stärken, Schwächen und analytische Einschränkungen der Daten treffen informierte Entscheidungen bei ihrer Nutzung.

## Dokumentation

Die Dokumentation bietet einen Kontext für Ihre Arbeit. Es ermöglicht Ihren Mitarbeitern, Kollegen und zukünftigen Mitarbeitern zu verstehen, was getan wurde und warum. Die Datendokumentation kann auf verschiedenen Ebenen erfolgen. Alle begleitenden Dokumentationen sollten in klarer, klarer Sprache geschrieben werden. Die Dokumentation erlaubt es den Benutzern ausreichende Informationen zu haben, um die Quelle, die Stärken zu verstehen, Schwachstellen und analytische Einschränkungen der Daten, so dass sie informierte Entscheidungen treffen können, wenn sie sie nutzen.

## Metadaten

Metadaten sind Informationen über die Daten, Deskriptoren, die die Katalogisierung von Daten und die Entdeckung von Daten erleichtern. Oft sind Metadaten für das maschinelle Lesen bestimmt. Wenn Daten in ein vertrauenswürdiges Daten-Repository übertragen werden, werden die maschinenlesbaren Metadaten vom Repository erzeugt. Wenn sich die Daten nicht in einem Projektarchiv befinden, kann eine Textdatei mit maschinenlesbaren Metadaten als Teil der Dokumentation hinzugefügt werden.

- Die Art der Forschung und die Art der Daten beeinflussen auch die Art der Dokumentation.
- Die Ebene der Dokumentation und Metadaten [{term}`def<Metadata>`] wird je nach Projekt variieren und das Spektrum der Menschen, unter denen die Daten verstanden werden müssen.
- Beispiele für die Dokumentation können Elemente wie [Datenwörterbücher](https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary) oder Codebooks, Protokolle, enthalten Logbücher oder Laborzeitschriften, README-Dateien, Forschungsprotokolle, Analysesyntax, Algorithmen und Codekommentare.
- Variablen sollten anhand von Data Wörterbüchern oder Codebooks definiert und erklärt werden.
- Die Daten sollten in logischen und hierarchischen Ordnerstrukturen gespeichert werden, wobei eine README-Datei zur Beschreibung der Struktur verwendet wird. Die README-Datei ist hilfreich für andere und hilft Ihnen auch, Ihre Daten in der zukünftigen {cite:ps}`Fuchs2018documentation` zu finden. Siehe die [README Vorlage von Cornell](https://cornell.app.box.com/v/ReadmeTemplate) für ein Beispiel.
- Es ist empfehlenswert, anerkannte Community-Metadatenstandards zu verwenden, um die Kombination von Datensätzen zu erleichtern.

(rr-rdm-metadata-Standards)=
### Community-Standards - Metadaten

Die Verwendung von Community-definierten Standards für Metadaten ist für reproduzierbare Forschung von entscheidender Bedeutung und ermöglicht den Vergleich von heterogenen Daten aus mehreren Quellen, Domänen und Disziplinen.

Metadaten-Standards beinhalten inhaltliche und strukturelle Standards. Die inhaltlichen Standards erklären, welche Informationen bei der Beschreibung einer bestimmten Ressource aufgezeichnet werden sollen und wie diese Informationen erfasst werden sollen. Während die strukturellen Standards definieren, was die Felder sind und welche Arten von Informationen in ihnen gespeichert werden sollen.

Metadaten-Standards sind auch disziplinspezifisch. Zum Beispiel ist die [Brain Imaging Data Struktur](https://doi.org/10.25504/FAIRsharing.rd1j6t) für Hirndaten der Standard. Nicht jede Disziplin kann jedoch Metadatenstandards anwenden. Du kannst sehen, ob deine Disziplin Metadatenstandards durch [FAIRsharing](https://fairsharing.org/)verwendet, eine Ressource, um Metadaten oder Identifikatorschemas, Datenbanken oder Repositories zu identifizieren und zu zitieren, die für Ihre Daten und Disziplinen existieren. Es gibt auch Situationen, in denen Forscher allgemeinere Metadatenstandards nutzen B. wenn sie ein generisches Archiv zur Speicherung ihrer Daten verwenden, müssen sie sich an die Metadatenstandards des Archivs halten. In diesem Fall kann eine Textdatei mit disziplinspezifischen Metadaten als Teil der Dokumentation hinzugefügt werden.
