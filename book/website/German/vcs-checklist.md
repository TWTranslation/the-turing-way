(rr-vcs-Checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## Git nutzen

- Stellen Sie Ihre Projektversion unter Kontrolle durch Initialisieren eines Git-Repositorys in dessen Verzeichnis mithilfe von `git init`.
- Fügen Sie all Ihre Dateien mit `git add hinzu und übertragen Sie sie ins Projektarchiv.` und `git commit`.
- Fügen Sie Ihre Änderungen weiter hinzu und übermitteln Sie diese, sobald Ihr Projekt fortschreitet. Stage die Änderungen in bestimmten Dateien, die mit `übertragen werden sollen, indem git Dateiname hinzufügt`, und füge Nachrichten zu deinen Commits hinzu.
  - Jeder Commit sollte eine einfache Änderung vornehmen.
  - Keine erstellten Dateien übertragen.
  - Commit Nachrichten sind bedeutungsvoll, mit einer ~50 Zeichen Zusammenfassung oben.
  - Commit Botschaften sind in der gegenwärtigen angespannten und zwingend.
- Neue Funktionen an ihren eigenen Zweigen entwickeln die Sie über `git checkout -b branch_name` erstellen können und zwischen `git checkout branch_name` wechseln können.
  - Stellen Sie sicher, dass Branches informative Namen haben.
  - Stellen Sie sicher, dass der Hauptzweig sauber bleibt.
  - Stellen Sie sicher, dass jeder Zweig einen einzigen Zweck hat und nur Änderungen in Bezug auf diesen Zweck vorgenommen werden.
- Sobald die Funktionen vollständig sind, führen Sie ihre Zweige in den Hauptzweig ein, indem Sie in den Funktionszweig wechseln und `git merge main` ausführen.
  - Fügen Sie die Änderungen anderer häufig in Ihre Arbeit ein.
  - Stellen Sie sicher, dass Sie beide Versionen vollständig verstehen, bevor Sie versuchen, diese zu beheben.

(rr-vcs-checklist-contribute)=
## Zum Projekt von jemand anderem beitragen

- Kopiere das Projektarchiv von GitHub `git clone repository_url`.
- Änderungen vornehmen und überschreiben.
- Drücken Sie Ihre Änderungen auf GitHub Version des Projekts.
- Nutzen Sie Probleme, um mögliche Änderungen an einem Projekt zu diskutieren.
- Mache Pull-Requests auf GitHub um deine Arbeit zu teilen.
  - Erklären Sie die Änderungen, die Sie vorgenommen haben (und warum) in Ihrer Pull-Anfrage.

(rr-vcs-checklist-data)=
## Stellen Sie sicher, dass Ihre Daten versionengesteuert sind

- Wenn Ihre Projekte Daten enthalten, überprüfen Sie, ob [Git LFS](https://git-lfs.github.com/), [git-Anhang](https://git-annex.branchable.com/), oder [DataLad](https://www.datalad.org/) passt auf Ihre Bedürfnisse für die Versionskontrolle.
- Teilen Sie die Daten zusammen mit Ihrem Projekt, um anderen zu helfen, Ihre Ergebnisse zu reproduzieren.
