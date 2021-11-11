(rr-vcs-git)=
# Erste Schritte mit Git

Um loszulegen, stellen Sie bitte sicher, dass Ihr Git auf Ihrem Computer installiert ist. Instructions for installing Git on Linux, Windows and Mac machines are available [here](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git). Sobald die Installation abgeschlossen ist, gehen Sie über Terminal oder Kommandozeilenschnittstelle in Ihr Projektverzeichnis (z.B. `cd my-project-Ordner`). Ihr Projektordner enthält alle Ihre Dateien, einschließlich Unterverzeichnisse.

Wenn Sie an einem Projekt arbeiten, werden Sie mit Ihrem Fortschritt zahlreiche Änderungen an Ihren Dateien vornehmen. Manchmal müssen Sie Änderungen rückgängig machen, vergangene Versionen noch einmal betrachten oder Versionen vergleichen. Jede Version einzeln zu speichern (wie `version_1.py` und `version_2.py`) ist chaotisch und wird schnell unpraktisch.

Commits dienen als Kontrollpunkte, bei denen einzelne Dateien oder ein ganzes Projekt bei Bedarf sicher zurückgesetzt werden können. Durch Überträge, können Sie Versionen Ihres Codes speichern und einfach zwischen diesen wechseln/vergleichen ohne das Verzeichnis zu überblenden.

Um mit Ihrem Git-Repository zu beginnen, führen Sie den folgenden Git-Befehl im Terminal aus, um Ihr Git-Repository zu erstellen/initialisieren:

```
git init
```

Dies muss nur einmal pro Projekt geschehen.

Stellen Sie sich das Projektarchiv als einen Ort vor, an dem die Geschichte gespeichert wird. Wenn Sie zum ersten Mal ein Repository mit `git init`initialisieren, alle Dateien in Ihrem Projekt werden nicht zum Git-Repository hinzugefügt, da sie standardmäßig von Git nicht verfolgt werden. Daher ist der nächste Schritt, Ihre Dateien zum Git-Repository hinzuzufügen und Git zu erlauben, sie zu verfolgen.

Führen Sie den folgenden Befehl aus, um alle Dateien im aktuellen Ordner hinzuzufügen:
```
git add .
```
Oder führen Sie den folgenden Befehl aus, um nur die Dateien hinzuzufügen ('your_file_name' in diesem Beispiel):
```
git füge deinen Datei_Name hinzu
```

Dieser Befehl legt Ihre neu hinzugefügten Dateien oder alle anderen Änderungen in den so genannten "Staging"-Status ab.

```{figure} ../../figures/change-stage-repo.png
---
Name: change-stage-repo
alt: Eine Illustration des `git add` und git commit Commands.
---
Wie `git add` und `git commit` funktioniert
```

Wenn Sie jemals unsicher sind, welche Dateien hinzugefügt wurden, welche Dateien geändert wurden, oder welche Dateien nicht getrackt wurden, können Sie folgendes ausführen, um herauszufinden:

```
git status
```

Der nächste Schritt ist es, alle in Ihrem Staging-Bereich gespeicherten Änderungen zu "übertragen", so dass sie in Ihrem Projektarchiv gespeichert werden.

```
git commit
```
Herzlichen Glückwunsch, Sie haben die Einrichtung Ihres Projektarchivs beendet!

Sie erfahren mehr über `git commit` im nächsten Kapitel.
