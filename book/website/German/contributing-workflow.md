(ch-contributing-workflow)=
# Beitrags-Workflow

Unabhängig davon, ob Sie neue Inhalte schreiben oder bestehende überprüfen, einen Beitrag zu _der Turing Way_ leisten, umfasst in der Regel die in diesem Abschnitt diskutierten Schritte. Sie können sich auf die Empfehlungen hier beziehen, um sicherzustellen, dass Sie Ihren Beitrag ausreichend zur Überprüfung vorbereitet haben. Bitte beachten Sie, dass die Reihenfolge dieser Empfehlungen nicht streng ist und wir empfehlen Ihnen, den Ihnen am besten passenden Ansatz zu verfolgen.

(ch-contributing-workflow-template)=
## Vorlage auswählen

Sobald Sie sich für den Inhaltstyp entschieden haben, den Sie an _der Turing Way beitragen möchten,_, verwenden Sie die entsprechende [Vorlage](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) , um Ihren Beitrag vorzubereiten.

```{note}
Bitte beachten Sie, dass wir neue Template-Beiträge begrüßen.
Falls das Kapitel oder die Fallstudienvorlagen nicht Ihren Bedürfnissen entsprechen, öffnen Sie bitte eine Pull Request mit Vorschlägen zur Verbesserung.
Wenn du Inhalte beitragen möchtest, für die es keine entsprechende Vorlage gibt, Sie werden auch ermutigt, die fehlende Vorlage zu erstellen und zur Template-Sammlung hinzuzufügen.
```

(ch-contributing-workflow-location)=
## Neue Dateien und Ordner an geeigneten Orten speichern

_Das Github Repository von _ der Turing Way_folgt einer allgemeinen Dateistruktur, in der Hilfslinien Ordner sind und Kapitel Unterordner sind. Gleichermaßen finden sich Fallstudien innerhalb einer `Groß-/Kleinschreibung` innerhalb der Guide-Ordner. Alle Ordner befinden sich im [`Buch/Website`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website) Verzeichnis.</p>

Wenn Sie neue Inhalte schreiben, stellen Sie sicher, dass die neu erstellten Dateien und Ordner entsprechend platziert werden, um _die Turing Way's_ Dateistruktur zu erhalten.

Zum Beispiel wird das Kapitel [Versionskontrolle](https://the-turing-way.netlify.app/reproducible-research/vcs.html) im Leitfaden für Reproduzierbare Forschung wie folgt platziert:

````{admonition} Adding new files and folders
:class: Dropdown
```
book\website
<unk>
<unk> <unk> <unk> <unk> <unk> -reproduzible-research <---- (Ordner für den Guide to Reproducible Research)
<unk> <unk> reproducible-Research. d <---- (Landing Page der Anleitung)
<unk> <unk> vcs. d <---- (Landing-Seite für das Kapitel Version Control)
| | | new-chapter <---- (Landing-Seite für ein neues Kapitel)
<unk> <unk>
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> 日<unk> vcs (Kapitel Ordner)
<unk> | <unk> vcs-workflow. d
| | | vcs-git. d
| | | vcs-git-commit.md
| | | ...
| | vcs-personal-stories.md
<unk> | <unk> vcs-checklist. d
<unk> | <unk> vcs-Ressourcen. d
<unk> |
| | |
| <unk> ร<unk> <unk> <unk> <unk> <unk> <unk> <unk> neues Kapitel (neues Kapitel Ordner)
| | | | ...
|    
<unk> 文<unk> <unk> <unk> <unk> project-design <---- (Ordner für den Guide for Project Design)
    <unk> project-design.md
    <unk> ...
```
````

Neue Kapitel im Leitfaden für reproduzierbare Forschung sollten wie `neues Kapitel` im obigen Beispiel hinzugefügt werden.

(ch-contributing-workflow-naming)=
## Ordner/Dateien/Ordner entsprechend benennen

Bitte folge _den Konventionen von Turing Way_ um Dateien zu benennen. Mit korrekten Dateinamen können andere Mitwirkende einfach den Zweck und den Speicherort Ihrer Dateien identifizieren und sie gegebenenfalls hinzufügen oder verbessern.

(ch-contributing-workflow-guidelines)=
## Befolgen Sie die Stil- und Konsistenzrichtlinien

Während Sie Ihr Kapitel schreiben, behalten Sie den _Turing Way's_ [Stil](https://the-turing-way.netlify.app/community-handbook/style.html) und [Konsistenz](https://the-turing-way.netlify.app/community-handbook/consistency.html) Empfehlungen im Hinterkopf. Dadurch wird sichergestellt, dass Ihre neuen Inhalte zugänglich sind und dem Gesamtstil, der Struktur und der Formatierung des Buches entsprechen.

(ch-contributing-workflow-toc)=
## Fügen Sie Ihre neuen Dateien zum Inhaltsverzeichnis des Buches hinzu

Das buchweite Inhaltsverzeichnis lebt in der `_toc.yml` [Datei](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml). Diese Dateistruktur _Der Turing Way_ und definiert die Reihenfolge, in der die Kapitel erscheinen. Die Dateien deines Kapitels sollten dem `_toc.yml` entsprechend hinzugefügt werden.

For example, because the [Statistical Methods Manuscript](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) case study belongs to the Guide for Reproducible Research, it was added to the table of contents as follows:

````{admonition} Updating the book-wide table of contents
:class: Dropdown
```

- Datei: reproduzible-research/reproducible-research
  Abschnitte:
...

  - Titel: Fallstudien
    Datei: reproduzierbare Forschung/Fallstudien
    Abschnitte:
    - Titel: Ein Manuskript statistischer Methoden
      Datei: reproduzierbar/case-studies/statistische Methodenmanuskripte/statistische Methodenmanuskripte
```

````

(ch-contributing-workflow-referencing)=
## Externe Quellen angemessen referenzieren

Stellen Sie sicher, dass externe Quellen korrekt referenziert sind und in _enthalten sind. Die_ zentralisierte bibtex-Datei von Turing Way ist in der [Styleguide empfohlen](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html)

(ch-contributing-workflow-glossary)=
## Das Buch-weite Glossar aktualisieren

_Der Turing Way_ unterhält ein buchweites Glossar, das sich in seinem [Nachwort](https://the-turing-way.netlify.app/afterword/glossary.html) befindet. Beim Schreiben Ihres Kapitels [aktualisieren Sie das Buch-weite Glossar](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) mit den Schlüsselbegriffen in Ihrem Kapitel, die die Leser merken sollten.

(ch-contributing-workflow-crosschecking)=
## Überprüfe Deinen Pull-Request

Der Inhalt der Vorlagen ist nur dazu gedacht, Ihr Schreiben zu begleiten und zu strukturieren. Bitte entfernen Sie alle Platzhalter, Tipps und Vorschläge aus Ihrem Kapitel, bevor Sie Ihre PR zur Überprüfung einreichen.
