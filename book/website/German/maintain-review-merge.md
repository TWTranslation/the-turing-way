(cl-maintain-review-merging)=
# Beiträge zusammenführen
Pull-Requests von Beitragenden können von Betreuern nach der Überprüfung genehmigt oder zusammengeführt werden. Es gibt verschiedene Möglichkeiten, einen Pull-Request zusammenzuführen:
- *Pull-Request*zusammenführen: Verbindet alle Commits zu einem Basis-Zweig. Es hält alle in der PR gemachten Commits als separat und fusioniert sie so, wie sie sind, durch eine einzige Merge Commits in den Base-Zweig.
- *Squash und verschmelzen*: Squasht alle Commits, die im Pull-Request erstellt wurden, zu einem Commit und fusioniert sie als einen einzigen Commit (mit Hilfe eines Merge Commits) in den Base-Zweig (siehe diesen [Blog für Details](https://github.blog/2016-04-01-squash-your-commits/)).
- *Rebase und Merge*: Rebasiert alle Änderungen einzeln zum Basis-Zweig (integriert Änderungen von einem Zweig zum anderen) vor dem Zusammenführen. In der Eingabeaufforderung kann der Betreuer eine Nachricht zusammen mit Kommentaren (falls vorhanden) angeben und dann auf die Schaltfläche „Zusammenführen bestätigen“ klicken.
