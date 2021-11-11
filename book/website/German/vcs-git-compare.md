(rr-vcs-git-compare)=
# Versionen abrufen und vergleichen

(rr-vcs-versions-receving)=
## Abrufen der letzten Versionen

Um den letzten Commit abzubrechen (zurück zur vorherigen Version), führen Sie folgenden Befehl aus:
```
git rückgängig machen HEAD
```

Dieser Befehl erzeugt einen neuen Commit, der die Änderungen der letzten Version rückgängig macht. Wenn Sie eine Version von Wochen oder Monaten abrufen möchten starten, indem Sie `git log` verwenden, um die SHA der Version zu finden, die Sie abrufen möchten. Um das gesamte Projekt auf diese Version zurückzusetzen, führen Sie folgende Befehle aus:

```
git checkout SHA_of_the_version
```

Wenn Sie die alte Version einer einzelnen Datei und nicht die vorherige Version des gesamten Projekts möchten Sie können dies mit folgendem Befehl tun:

 ```
 git checkout SHA_of_the_version -- deine_file_name
 ```

(rr-vcs-versions-retrieving-Praxis)=
### Gute Praxis

Commits sollten 'atomar' sein, was bedeutet, dass **sie eine einfache Sache machen sollten und sie sollten es komplett** tun. Zum Beispiel könnte ein 'atomisch' Commit eine neue Funktion hinzufügen oder eine Variable umbenennen. Wenn viele Änderungen an Ihrem Projekt gemeinsam vorgenommen werden es kann schwierig sein, Fehler zu beheben, wenn ein Fehler in dieser Version auftritt. Darüber hinaus kann die Rücknahme der gesamten Commit-Aktion eine gültige und nützliche Arbeit wegwerfen.

Es ist eine gute Praxis, **die Dateien anzugeben, die übertragen werden sollen**, also Hinzufügen von Dateien in den Staging-Bereich (`git add your_file_name`) statt alles hinzuzufügen (`git add .`). Dies hindert Sie daran, verschiedene Änderungen ungewollt zusammenzufassen. Zum Beispiel, wenn Sie eine Änderung an Datei A vorgenommen haben, während Sie primär an Datei B arbeiten Sie können dies vergessen haben, wenn Sie zum Commit gehen. Mit `git add .`wird die Datei A zur Fahrt mitgebracht. Wenn es mehrere *gibt, die nichts mit* zu tun haben, sollten diese Änderungen nicht in einer *einzigen* Datei hinzugefügt werden `Git add -p your_file_name` lässt Sie interaktiv auswählen, welche Änderungen hinzugefügt werden sollen. Das heißt, **Sie müssen bei der Arbeit an mehreren Dateien nicht unbedingt pro Datei übertragen** durchführen, sondern nur bei einem einzigen Problem. Wenn wir zum Beispiel hier eine Figur zu diesem Kapitel hinzufügen und eine auswählen, um die Aufmerksamkeit von jemandem zu erregen, der durchblättert:

```{figure} ../../figures/flipped-taj-mahal.png
---
Name: flipped-taj-mahal
alt: Ein gedrehtes Foto des Taj Mahal, um die Aufmerksamkeit des Lesers zu erregen.
---
Flucht Taj Mahal
```

zwei Dateien wurden geändert:

1. Zuerst wird die Figurdatei im Projektarchiv hinzugefügt.
2. Dann wird in dieser Datei eine Zeile hinzugefügt, die auf die Figur verweist, so dass sie angezeigt wird.

So sind zwei Dateien betroffen, aber "Bild zur Versionskontrolle hinzufügen" ist ein Einzel, *atomare* Arbeitseinheit, also ist nur ein Commit erforderlich.

Schließlich sollten Sie nichts übertragen, was aus anderen Dateien regeneriert wird, die in einer Version übertragen wurden (es sei denn, es würde einige Stunden dauern, um neu zu generieren). Generierte Dateien, wie Skripte, überlagern Sie Ihr Projektarchiv und können Funktionen wie Zeitstempel enthalten, die nervige Dateikonflikte verursachen können (siehe {ref}`rrr-vcs-git-merge`). Sie können Git anweisen, bestimmte Dateien zu ignorieren, indem Sie eine Datei namens `erstellen. itignore` mit Namen der Datei, die Sie nicht in Ihrem Git-Repository speichern müssen. Zum Beispiel sollten Konfigurationsdateien, die sich von Umgebung zu Umgebung ändern könnten, ignoriert werden.

(rr-vcs-versions-comparing)=
## Vergleiche Versionen

Irgendwann werden Sie wahrscheinlich Versionen eines Projekts vergleichen wollen zum Beispiel um zu sehen, mit welcher Version ein bestimmtes Ergebnis erzeugt wurde.

Um dieses Problem zu beheben, verwenden Sie die `git diff` Funktion, die zwei Eingabedatensätze benötigt und die Änderungen untereinander ausgibt.

`git diff` ist eine Multifunktionsfunktion, die auf Git-Datenquellen wie Commits, Branches, Dateien und mehr läuft. Standardmäßig zeigt `git diff` alle nicht übertragenen Änderungen seit dem letzten Commit. Wenn Sie zwei spezifische Dinge vergleichen wollen, die die Syntax ist:

```
git Diff Ding_Ding_b
```

Zum Beispiel, wenn Sie vergleichen wollen, wie sich eine Datei zwischen zwei Commits verändert hat, `git log` verwenden, um die SHAs dieser Commits zu erhalten und auszuführen:

```
git Diff SHA_a:your_file_name SHA_b:your_file_name
```

Oder wenn Sie zwei Zweige vergleichen wollten, wäre es:

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=
### Gute Praxis

Mit etwas Vertrautheit `git diff` wird zu einem extrem mächtigen Werkzeug, mit dem Sie verfolgen können, welche Dateien sich verändert haben und welche Änderungen genau diese Änderungen sind. Dies ist sehr wertvoll, um Fehler zu entfernen und die Arbeit verschiedener Leute zu vergleichen. Achten Sie darauf, dass **versteht, was genau verglichen wird** und wo möglich **vergleichen Sie nur die relevanten Dateien** mit dem, was Sie interessieren, um große Mengen an fremden Informationen zu vermeiden.
