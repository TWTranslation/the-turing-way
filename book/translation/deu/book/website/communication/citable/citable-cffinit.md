(cm-citable-cffinit)=
# Erstelle eine `CITATION.cff` mit `cffinit`

`cffinit` ist eine Web-Anwendung, die Benutzern hilft, eine `CITATION.cff` Datei zu erstellen. Die Anwendung bietet eine Anleitung für jedes Feld des [CFF Schemas](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) und führt die Validierung automatisch durch. Wenn es Probleme gibt, wird `cffinit` ein visuelles Feedback zu relevanten Feldern geben.

In den folgenden Abschnitten finden Sie Details zu jedem Schritt des Prozesses.

Um loszulegen, besuche [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) und klicke auf "Erstellen" um zum **Start** zu gelangen.

```{figure} ../../figures/gifs/cffinit-0.gif
---
Name: cffinit-0
Breite: 80%
alt: Startseite von cffinit.
---
Startseite von cffinit. [^cffinitversion]
```

## Start

Geben Sie auf der ersten Seite der Anwendung den Titel Ihrer Arbeit ein Schreiben Sie eine Nachricht, um anzugeben, wie Sie Ihre Software erwähnen wollen, und wählen Sie aus, ob Sie eine `ZEIT erstellen. ff` Datei für Software oder Datensatz.

```{figure} ../../figures/gifs/cffinit-1.gif
---
Name: cffinit-1
Breite: 80%
alt: Erste Seite der Anwendung, für Titel, Nachricht und Typ. Felder sind leer.
---
Erste Seite der Anwendung, für Titel, Nachricht und Typ. [^cffinitversion]
```

Sie können die Vorschau der generierten `CITATION.cff` Datei rechts sehen.

Wenn es Probleme in den Feldern gibt, werden diese hervorgehoben, und Fehlermeldungen werden rot angezeigt. Wenn die `CITATION.cff` Datei nicht gültig ist, wird das Vorschau-Widget einen roten Rand haben.

```{note}
Als Titel, Nachricht und Autor sind Pflichtfelder des Schemas, diese Felder werden hervorgehoben, bis Sie sie angeben.
```

Klicken Sie neben um zum Bildschirm **Autoren** fortzufahren.

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
Name: cffinit-1-füllte
Breite: 80%
alt: Erste Seite des Formulars, für Titel, Nachricht und Typ. Felder sind ausgefüllt.
---
Erste Seite des Formulars, für Titel, Nachricht und Typ. Felder sind ausgefüllt. [^cffinitversion]
```

## Autoren

Das CFF-Schema erfordert mindestens einen Autor in der `CITATION.cff` Datei. Klicken Sie auf die Schaltfläche "Autor hinzufügen", um ein Formular zu öffnen. Füllen Sie die entsprechenden Felder für Autoren aus. Das Hinzufügen von ORCID für Autoren wird dringend empfohlen. Siehe {ref}`cm-citable-orcid` um mehr über ORCID zu erfahren.

```{figure} ../../figures/gifs/cffinit-2.gif
---
Name: cffinit-2
Breite: 80%
alt: Zweite Seite des Formulars, für Autoren.
---
Zweite Seite des Formulars, für Autoren. [^cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
Name: cffinit-2-Add-Autor
Breite: 80%
alt: Zweite Seite des Formulars, für Autoren. Hinzufügen des Autors ist im Gange.
---
Zweite Seite des Formulars, für Autoren. Hinzufügen des Autors ist im Gange. [^cffinitversion]
```

Nach dem Hinzufügen eines Autors haben Sie die mindestens erforderlichen Informationen für eine gültige `CITATION.cff` Datei. Weitere Autoren bei Bedarf hinzufügen. Klicken Sie danach auf "Weiter", um fortzufahren.

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
Name: cffinit-2 füllte
Breite: 80%
alt: Zweite Seite des Formulars, für Autoren. Ein Autor ausgefüllt.
---
Zweite Seite des Formulars, für Autoren. Ein Autor ausgefüllt. [^cffinitversion]
```

## Minimale `CITATION.cff` Datei

Gut gemacht! Jetzt erfüllt Ihre `CITATION.cff` Datei die Mindestanforderungen. In diesem Bildschirm können Sie die generierte Datei herunterladen oder aus dem Vorschau-Widget kopieren. Wir empfehlen Ihnen dringend, weitere Informationen hinzuzufügen. Klicken Sie auf die Schaltfläche "Mehr hinzufügen", um weitere Felder zu Ihrer Zitierdatei hinzuzufügen, um sie noch besser zu machen.

```{figure} ../../figures/gifs/cffinit-3.gif
---
Name: cffinit-3
Breite: 80%
alt: Letzte Seite der minimalen Form.
---
Letzte Seite des minimalen Formulars. [^cffinitversion]
```

## Zusätzliche Felder

Alle zusätzlichen Felder sind optional, aber es wird empfohlen, dass Sie die für Ihre Arbeit relevantesten ausfüllen.

```{note}
Wenn Sie sich entschließen, nicht weiter fortzufahren, können Sie die Schaltfläche "Fertig" drücken, um alle verbleibenden Schritte zu überspringen und zum letzten Bildschirm zu gehen.
```

Auf diesem Bildschirm sehen Sie neue Schritte im Schritt. Hier eine kurze Beschreibung der zusätzlichen Bildschirme:
- Identifikatoren: DOIs, URLs und Identifikatoren für das Software-Erbe hinzufügen;
- Ähnliche Ressourcen: URLs von Repositories im Zusammenhang mit der Arbeit und ihrer Webseite;
- Abstract: Eine kurze Zusammenfassung der Arbeit;
- Stichwörter: Stichworte, die die Arbeit beschreiben;
- Lizenz: Die Lizenz, unter der das Werk verfügbar ist;
- Versionsspezifisch: Informationen über ein bestimmtes Release oder Commit, einschließlich des Datums der Veröffentlichung.

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
Name: cffinit-3-advanced
Breite: 80%
alt: Dritte Seite des Formulars. Weitere Optionen erscheinen auf der linken Seite.
---
Dritte Seite des Formulars. Weitere Optionen erscheinen auf der linken Seite. [^cffinitversion]
```

Klicken Sie auf "Weiter", um weitere Felder hinzuzufügen.

## Letzter Bildschirm

Sehr schön, dass Sie es auf den finalen Bildschirm geschafft! Nach dem Hinzufügen aller relevanten Informationen haben Sie eine validierte `CITATION.cff` Datei. Laden Sie es herunter oder kopieren Sie es und fügen Sie es in Ihr öffentliches Repository ein, um das Guthaben zu erhalten, das Sie verdient!

```{figure} ../../figures/gifs/cffinit-final.gif
---
Name: cffinit-final
Breite: 80%
alt: Letzte Seite des vollständigen Formulars.
---
Letzte Seite des vollständigen Formulars. [^cffinitversion]
```
