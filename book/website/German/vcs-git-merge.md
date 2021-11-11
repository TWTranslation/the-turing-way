(rr-vcs-git-merge)=
# Zweige in Git zusammenführen

(rr-vcs-merge-command)=
## Das `Git Merge` Kommando

Sobald Sie die Arbeit an einem Zweig abgeschlossen haben und Sie sind bereit, ihn in Ihr Hauptprojekt (oder jede andere Filiale) zu integrieren Sie können den Zweig, an dem Sie gearbeitet haben, in den Hauptzweig oder einen anderen Zielzweig Ihres Interesses zusammenführen. Sie können auch Fusion verwenden, um Arbeit zu kombinieren, die andere mit Ihrer eigenen und umgekehrt.

Um einen Branch, Branch_A, in einen anderen Branch, Branch_B, zusammenzuführen, wechseln Sie zu Branch_A via:
```
git checkout Branch_A
```
Zusammenführen in Branch_B von:

```
git merge Branch_B
```

Zusammenführung ist nicht möglich, wenn es Änderungen in Ihrem Arbeitsverzeichnis oder in Ihrem Staging-Bereich gibt, die durch die Dateien geschrieben werden könnten, in die Sie sich einfügen. Wenn dies geschieht, gibt es in einzelnen Dateien keine Zusammenführungskonflikte. Sie müssen die Dateien, die sie auflistet, übertragen oder stauben und dann erneut versuchen. Die Fehlermeldungen lauten:

```
error: Eintrag 'your_file_name' nicht aktualisiert. Kann nicht zusammenführen. (Änderungen im Arbeitsverzeichnis)
```

oder

```
error: Eintrag 'your_file_name' würde durch Zusammenführung überschrieben werden. Kann nicht zusammenführen. (Änderungen im Staging-Bereich)
```

(rr-vcs-merge-command-practice)=
### Gute Praxis

Zuallererst sollte Ihr **Hauptzweig immer stabil sein**. Nur fertige und getestete Arbeiten zusammenführen (zum Beispiel auf einem anderen Zweig). Wenn Ihr Projekt kooperativ ist, dann ist es eine gute Idee, Änderungen, die andere häufig in Ihre eigene Arbeit einführen, zusammenzuführen oder Ihre Änderungen mit Ihren Mitarbeitern zu teilen. Wenn Sie es nicht oft tun, ist es sehr einfach, Konflikte zu verschmelzen, die auftreten (nächster Abschnitt).

(rr-vcs-merge-conflicts)=
## Fusionskonflikte

Wenn Änderungen an derselben Datei in verschiedenen Zweigen vorgenommen werden, können diese Änderungen manchmal inkompatibel sein. Dies geschieht meist bei kollaborativen Projekten, aber auch bei Einzelprojekten. Es gibt ein Projekt, das eine Datei mit dieser Codezeile enthält:

```
print('Hallo Welt')
```

Nehmen wir an, dass eine Person auf ihrem Zweig beschließt, es ein bisschen oben zu schieben und die Zeile ändert:

```
print('Hallo Welt!!!')
```

während jemand anderem, auf einem anderen Zweig, beschließt, es zu ändern:

```
print('Hallo Welt')
```

Sie arbeiten weiterhin an ihren jeweiligen Zweigen und beschließen schließlich, zusammenzuführen. Ihre Versionskontrollsoftware geht dann durch und kombiniert ihre Änderungen in einer einzigen Version der Datei; *, aber*, wenn es zur `Hallo Welt` Anweisung kommt, weiß es nicht, welche Version verwendet werden soll. Dies ist ein Zusammenführungskonflikt: Es wurden inkompatible Änderungen an der gleichen Datei vorgenommen.

Wenn ein Zusammenführungskonflikt auftritt, wird er während des Zusammenführungsverfahrens gekennzeichnet. Innerhalb der Dateien mit Konflikten werden die inkompatiblen Änderungen markiert, so dass Sie sie beheben können:

```
<<<<<<< HEAD
print('Hallo Welt!!!')
=======
print('Hallo Welt')
>>>>>>> main
```
`<<<<<<<`: Zeigt den Beginn der Zeilen an, die einen Zusammenführungskonflikt hatten. Die erste Reihe von Zeilen sind die Zeilen aus der Datei, in die Sie die Änderungen zusammenführen wollten.

`=======`: Gibt den Haltepunkt an, der zum Vergleich verwendet wird. Es trennt die Änderungen, die der Benutzer (oben) vorgenommen hat, von den Änderungen, die aus der Zusammenführung (unten) resultieren, zum visuellen Vergleich.

`>>>>>>>`: Zeigt das Ende der Zeilen, die einen Zusammenführungskonflikt hatten, an.

Sie lösen einen Konflikt, indem Sie die Datei bearbeiten, um die Teile der Datei manuell zusammenzuführen, die Git bei der Zusammenführung nicht hatte. Dies kann bedeuten, entweder Ihre Änderungen oder die einer anderen Person zu verwerfen oder eine Mischung aus beidem zu machen. Sie müssen auch `<<<<<<<`löschen, `=======`, und `>>>>>>>` in der Datei. In diesem Projekt können die Benutzer sich für eine `Hallo Welt` entscheiden oder sie können den Konflikt ersetzen mit:

```
print('Hallo Welt!!!')
```

Sobald Sie die Konflikte behoben haben, übertrage die neue Version. Sie haben den Konflikt jetzt gelöst. Wenn Sie während des Prozesses eine Erinnerung benötigen, in welchen Dateien sich die Konflikte befinden, können Sie `Git Status` verwenden, um herauszufinden.

Wenn Sie feststellen, dass es besonders schlimme Konflikte gibt und Sie die Zusammenführung abbrechen möchten, die Sie verwenden können:
```
git merge --abort
```

(rr-vcs-merge-conflicts-practice)=
### Gute Praxis

Bevor Sie anfangen, Konflikte zu lösen, Vergewissern Sie sich, dass Sie die Änderungen vollständig verstehen und wie sie inkompatibel sind, um das Risiko zu vermeiden, dass die Dinge vermischt werden. Zusammenführungskonflikte können einschüchternd sein, um sie zu lösen, vor allem wenn Sie Zweige zusammenführen, die vor vielen Commits voneinander abweichend sind und jetzt zahlreiche Inkompatibilitäten haben. Es sei jedoch daran erinnert, dass Ihre früheren Versionen sicher sind und dass Sie dieses Problem beheben können, ohne die früheren Versionen zu beeinträchtigen. This is why it is good practice to **merge other's changes into your work frequently**.

Es stehen Hilfsmittel zur Verfügung, um die Lösung von Fusionskonflikten zu unterstützen, einige sind kostenlos, andere nicht. Finden und kennen Sie sich mit einem, das für Sie arbeitet. Häufig verwendete Merge Tools sind [KDiff3](http://kdiff3.sourceforge.net/), [Beyond Vergleich](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/)und [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge). Um ein Werkzeug als Standard zu setzen:

```
git config --global merge.tool name_of_the_tool
```

und starten mit:

```
git Mergetool
```

Grundsätzlich besteht der beste Weg zur Lösung von Fusionskonflikten darin, nach Möglichkeit zu versuchen, diese zunächst zu vermeiden. Sie können Ihre Chancen hier verbessern, indem Sie die Zweige sauber halten und sich auf ein einziges Problem konzentrieren und so wenig Dateien wie möglich einbinden. Achten Sie vor dem Zusammenführen darauf, dass Sie wissen, was in beiden Filialen ist. Wenn du nicht der einzige bist, der an den Zweigen gearbeitet hat, dann halten Sie die Linien der Kommunikation offen, so dass Sie alle wissen, was die anderen tun.
