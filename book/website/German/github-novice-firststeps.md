(cl-github-novice-firststeps)=
# Erste Schritte auf GitHub

Hier finden Sie Schritt-für-Schritt Anweisungen, um mit GitHub loszulegen.

## 1. Create a GitHub account

Gehen Sie zu [https://github.com/](https://github.com/) und erstellen Sie ein neues Konto mit der Anmeldung bei GitHub Box.

## 2. Repository erstellen

Wenn Sie ein neues Konto erstellt haben und angemeldet sind, müssen Sie ein neues Repository erstellen.

Ein Repository oder Repository ist der Online-Bereich, in dem Sie alle Dokumente, Daten und andere Dateien für Ihr Projekt speichern.

* Neue Repository anlegen, Sie müssen auf das + Anmelden in der oberen rechten Ecke (in der schwarzen Band oben in Ihrem Fenster) klicken und dann auf Neues Repository klicken. Dies führt Sie zu einer Seite, die wie ein Formular aussieht.
* Sie werden den Namen Ihres Kontos sehen und Sie müssen einen Repository-Namen neben ihm eingeben.
* Lassen Sie auch das Kästchen für „public“ (so ist Ihr Projektarchiv für alle geöffnet) und markieren Sie dann das Kästchen, um eine „README-Datei“ zu erstellen.
* Klicken Sie dann unten auf die Schaltfläche "Repository erstellen".

Das ist es, was Sie jetzt sehen sollten. Es ist die Zielseite für Ihr Projektarchiv. Das folgende Diagramm erklärt, was alle Schaltflächen, Tabs und andere Dinge machen!

```{figure} ../../figures/github-basic-diagram.jpg
---
Name: github-basic-Diagramm
alt: Annotiertes Diagramm des Projektarchivs nach seiner Erstellung, erklärt die wichtigsten Merkmale. Die Hauptmerkmale werden in der Figurenlegende erklärt.
align: links
---
Annotiertes Diagramm des Projektarchivs nach seiner grundlegenden Erstellung, erklärt die wichtigsten Merkmale. Auf der linken Seite der Webseite haben wir folgende Funktionen:
- **1. Benutzername:** GitHub Benutzername (Konto). In diesem Beispiel lautet der Benutzername „EKaroune“.
- **2. Repository:** Projektverzeichnis (auch als Repo bekannt). In diesem Beispiel lautet der Name des Projektarchivs „Trial-Repo“.
- **3. Code:** dieser Tab bringt Sie zurück zur Zielseite. Es zeigt Ihnen die Ordner, die Sie im Repo erstellt haben.
- **4. Haupt:** Dies ist Ihr Standard-Entwicklungszweig oder aktiver Zweig Ihres Projektarchivs.
- **5. Branch:** parallele Version(en) Ihres Projektarchivs.
- **6. README.md Datei:** Diese Datei enthält grundlegende Informationen über Ihr Projekt (in diesem Fall hat sie nur den Projektnamen: „Trial-Repo“. Wenn wir planen, eine Website zu machen, wird dies als Landung (Front) Seite für Ihre Website.

Auf der rechten Seite der Webseite haben wir folgende Features:
- **7. Grüne Code-Schaltfläche:** Klicke ihn, um dein Repository lokal herunterzuladen.
- **8. '+' Symbol:** wo Sie neue Repositories erstellen können, Repos importieren und neue Issues erstellen können.
- **9. Fork:** erstellen Sie eine persönliche Kopie des Repos eines anderen Benutzers. Die Zahl zeigt an, wie viele Abzweigungen von Ihrem aktuellen Repository vorhanden sind.
- **10: Datei hinzufügen:** erstellen oder laden Sie eine Datei in Ihr Projektarchiv.
- **11: Commits/Uhr-Symbol:** klicken, um den Verlauf dieser Datei als eine Liste aller Änderungen (Commits) zu verschiedenen Zeitpunkten zu sehen.
- **12: Bearbeiten/Bleistiftsymbol:** Klicke auf dieses Bleistiftsymbol, um deine README.md-Datei zu bearbeiten.
```

## 3. Bearbeiten Sie Ihre README.md Datei

Es sei denn, Sie haben andere Dateien hinzugefügt oder eine Lizenzdatei während der Repo-Erstellung eingefügt, sollten Sie jetzt eine Datei in Ihrem Projektarchiv haben - README.md. Wir müssen diese Datei bearbeiten, um Informationen über das Repo hinzuzufügen. Diese Datei ist eine Markdown-Datei, die Sie sehen können, da sie „.md“ hinter dem Dateinamen hat. Hier beginnen Sie die Markdown-Formatierung zu verwenden. Was immer Sie in diese Datei schreiben, wird auf der Landing-(Front) Seite Ihres Projekts auf GitHub angezeigt, also nutzen Sie es, um den Leuten alles über Ihr Projekt zu erzählen.

### Navigieren der GitHub-Bearbeitung
Um Ihre README.md Datei zu bearbeiten:

* Klicken Sie auf das Stiftsymbol oben rechts im zentralen Feld auf Ihrer Landungsseite.

**Oder**

* Klicken Sie auf die Datei README.md und klicken Sie dann auf das Bleistiftsymbol.

Sie können nun die Datei bearbeiten. Wir werden darüber reden, wie Sie Ihre Änderungen nach einigen Zeigern auf das Schreiben einer guten README speichern.

```{figure} ../../figures/github-readme-before-edit.jpg
---
Name: github-readme-before-edit
alt: Annotiertes Diagramm der README.md-Datei, wenn Sie auf den Dateinamen auf Ihrer Startseite klicken. Die Hauptmerkmale werden in der Figurenlegende erklärt.
align: links
---
Beschriebenes Diagramm der README.md-Datei, wenn Sie auf den Dateinamen auf Ihrer Zielseite klicken.
- **1. Repository und aktuelle Datei:** der Repository-Name und der Name der Datei, die Sie anzeigen.
- **2. Hauptzweig:** derzeit aktiver Branch ("main" ist die Standard). Verwenden Sie es, um zu verschiedenen Zweigen Ihres Repos zu wechseln (wenn es noch weitere Zweige gibt, die zuvor erstellt wurden).
- **3. Mitwirkende:** Anzahl der Mitwirkenden (Benutzer) zu Ihrer Datei.
- **4. README.md Datei Inhalt:** Der Inhalt Ihrer README.md Datei wird hier angezeigt. Dieser Inhalt wird erweitert, sobald wir weitere Informationen hinzufügen..
- **5. Rohdatei:** zeigt die Rohmarkdown-Textdatei an.
- **6. Blame:** zeigt die letzte Änderung, die an jeder Zeile der Datei vorgenommen wurde. Es kann verwendet werden, um zu verfolgen, wann und wer Änderungen vorgenommen hat, und zurück zu älteren Versionen der Datei zu gehen, um Fehler zu beheben.
- **7. Datei bearbeiten:** Klicken Sie auf diesen Stift, um Ihre README.md-Datei zu bearbeiten.
- **8. Datei löschen:** Klicken Sie auf den Papierkorb, um diese Datei zu löschen.
```

```{figure} ../../figures/github-readme-after-edit.jpg
---
Name: github-readme-after-edit
alt: Annotiertes Diagramm der Datei README.md im Bearbeitungsmodus – vor dem Bearbeiten. Im Titel erklärt.
align: links
---
Beschriebenes Diagramm der README.md-Datei im Bearbeitungsmodus – vor dem Bearbeiten.
- **1. Vorschau der Änderungen:** Drücken Sie, um Ihren Text zu sehen (wie er auf GitHub oder auf einer Webseite erscheinen würde).
- **2. Datei bearbeiten:** Drücken Sie diesen Reiter um den Inhalt Ihrer README.md-Datei zu bearbeiten.
- **3. Fügen Sie Inhalte zu README.md hinzu:** Schreiben Sie den Markdown Text für Ihre README.md Datei. Sie haben derzeit nur den Repository-Titel in dieser Datei.
```

### Tipps zum Schreiben Ihrer README-Datei

* Halten Sie es einfach! Wenn Sie in irgendeinem Bereich arbeiten, sei es in der Softwaretechnik oder in der Astrophysik, Sie lernen und verwenden Jargon – Begriffe, die eine besondere Bedeutung für Ihr Feld haben, aber wahrscheinlich für niemanden keinen Sinn machen, der nicht Teil dieses Feldes ist. Zu viel Jargon kann Neuankömmlinge verwirren, also verwenden Sie eine einfache Sprache und definieren Sie hier alle potenziell unbekannten Begriffe.
* Teilen Sie Ihr Projekt mit anderen - beschreiben Sie, was Sie jetzt tun und was Sie in Zukunft tun möchten.
* Sagen Sie Menschen, wer Sie sind und wie Sie kontaktiert werden können.


**HINWEIS: Wenn Sie Probleme mit dem Start haben, sollten Sie sich die README.md-Dateien anderer Leute anschauen.**

Wenn Sie Ihren Rohmarkdown-Inhalt nicht in der von Ihnen gewünschten Weise wiedergeben können, es ist auch eine gute Idee, eine Datei zu finden, die das hat, was Sie wollen, und dann schauen Sie sich die Rohdatei an. Sie können den Rohdateiinhalt anderer Personen in Ihre README.md-Datei kopieren und einfügen und sie dann bearbeiten.

Hier ist ein Beispiel für eine wirklich gut formatierte README.md-Datei: [STEMM Rollenmodelle App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

Wenn Sie auf den obigen Link klicken, gelangen Sie zu deren README.file. Sie können dies als Vorlage für Ihre README.md-Datei verwenden.

* Um die Roh-Markdown Datei anzusehen, müssen Sie auf den Roh-Button (rechts oben im weißen Feld) klicken.
* Dies führt Sie zu der Markdown-Rohdatei, die in einer schön formatierten README.md-Datei auf GitHub dargestellt wird.
* Kopieren Sie es einfach und fügen Sie es in Ihre README.md Bearbeitungstabelle ein. Sie können dies nun für Ihr Projekt bearbeiten.
* Denken Sie daran, zu überprüfen, wie es aussieht, indem Sie auf den Tab "Vorschau Änderungen" klicken.
* Wenn Sie die Bearbeitung beendet haben, müssen Sie nach unten scrollen und die grünen Änderungen drücken.

```{figure} ../../figures/github-edited-readme.jpg
---
Name: /github-edited-readme
alt: Annotiertes Diagramm der README.md-Datei im Bearbeitungsmodus – mit einer Vorlage hinzugefügt. Funktionen werden in der Figurenlegende erklärt.
align: links
---
Annotiertes Diagramm der README.md-Datei im Bearbeitungsmodus – mit einer Vorlage hinzugefügt.
- **1. Mit MarkDown können Sie Inhalte zu README.md hinzufügen:** die Markdown (gekennzeichnet durch '.md' in der Dateierweiterung) für Ihre README.md Datei. Dieses Beispiel zeigt die Template-Datei mit unterschiedlichen Abschnitten (Header und Unterüberschriften werden mit einem oder mehreren Symbolen erzeugt. Siehe {ref}`Formatierungskonsistenz-Abschnitt des Community Handbuchs<ch-consistency-formatting-hr-markdown>` für weitere Informationen zur Verwendung von Markdown.
```
### Übertragen - oder speichern - Ihre Änderungen
Das Übertragen Ihrer Änderungen ist wie das Drücken der "Speichern"-Taste für eine Datei. GitHub wird Ihre Änderungen nicht automatisch speichern, daher ist es wichtig, diesen Schritt nicht zu überspringen.

Welche Änderungen Sie in der Datei vorgenommen haben, werden in Ihrem Projektarchiv hinterlegt.

Es ist eine gute Praxis, einen beschreibenden Commit-Titel und eine kurze Beschreibung dessen zu schreiben, was Sie in der Commit-Änderungsbox getan haben. Also so etwas wie - Commit title: 'first edit of the readme file'; Beschreibung: 'kopierte Vorlage von … und bearbeitete sie mit den Details dieses Projekts'. Diese Informationen über den Commit werden als „Commit-Nachricht“ bezeichnet und der Übertragen-Titel wird es Ihnen ermöglichen, schnell durch die Chronik der Änderungen für eine Datei zu schauen (daher ist es so wichtig, sie beschreibend zu machen - es ist so, als würde man eine hilfreiche Notiz Ihrer zukünftigen selbst hinterlassen).

Sie können eine Liste Ihrer Commits (oder Ihres "Commit-Verlaufs") sehen, indem Sie auf Ihre Zielseite oder innerhalb der Seite für jede Datei auf das Uhrensymbol klicken.

## 4. Fügen Sie Ihrem Repository eine Lizenz hinzu

Es ist wichtig, dass Ihr gesamtes Werk von Anfang an eine Lizenz hat oder niemand es wiederverwenden kann. Lizenzen sagen anderen Forschern, wie sie Ihre Arbeit wiederverwenden, modifizieren und neu mischen können. No license implies that others are *not* allowed to use your work, even with attribution. Daher ist es besser, eine Lizenz hinzuzufügen, die die Leute wissen lässt, was sie tun können und was sie nicht tun können und wie Sie Ihre Arbeit würdigen.

Abhängig von Ihrem Fachgebiet kann es sich bei einem Großteil Ihrer Arbeit um Dokumente mit nur einigen Daten oder Code handeln. Die auf GitHub angebotenen Standardlizenzen sind für Software am besten geeignet und werden nicht wirklich die richtige Art für Dokumente sein.

[Creative Commons](https://creativecommons.org/licenses/) Lizenzen sind die besten für diesen Zweck, und das offenste davon ist das CC BY 4.0.

Um eine Lizenz zu Ihrem Projektarchiv hinzuzufügen, müssen Sie als erstes eine LICENSE.md-Datei erstellen:

* Klicken Sie dazu auf die Schaltfläche Datei hinzufügen und klicken Sie auf Datei erstellen. Dadurch erhalten Sie eine leere Datei.
* Dann müssen Sie die Datei angeben, nennen Sie sie LICENSE.md. Dies macht es zu einer Markdown-Datei.
* Sie können alle Creative Commons Lizenzen im obigen Link finden, so kopieren Sie den Text der Lizenz, die Sie möchten, und fügen Sie ihn dann in diese Datei ein.
* Vergessen Sie nicht, die grüne Übertragen-Taste unten zu drücken und eine Commit-Nachricht zu schreiben, um zu beschreiben, was Sie getan haben.
* Sie können auch einen Link zur Lizenz am unteren Ende Ihrer README.md Datei hinzufügen. Hier ist ein Link zu einem Projektarchiv, den Sie kopieren können, um es in einer [CC BY 4.0 Lizenz](https://github.com/santisoler/cc-licenses) hinzuzufügen. Es hat eine Textdatei für Ihre LICENSE. d Datei und auch ein Schild (oder Abzeichen), das Sie am unteren Ende Ihrer README.md-Datei platzieren können.

Weitere Informationen über Lizenzen finden Sie im Kapitel {ref}`rrr-licensing` von The Turing Way.
