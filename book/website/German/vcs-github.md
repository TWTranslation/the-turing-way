(rr-vcs-github)=
# Git Befehle auf GitHub arbeiten

Da die Forschung zunehmend kooperativ wird und mehrere Menschen an demselben Projekt arbeiten Es wird schwierig, Änderungen von anderen zu verfolgen, wenn nicht systematisch. Darüber hinaus ist es zeitaufwändig, die Arbeit der verschiedenen Teilnehmer in ein Projekt einzubinden, selbst wenn alle Änderungen kompatibel sind. Das Hosting des Projekts auf einem Online-Repository-Hosting-Service wie GitHub ist nützlich, um die Zusammenarbeit offen und effektiv zu gestalten. Wenn du neu in Zusammenarbeit mit [GitHub](https://github.com)bist, folge bitte der umfassenden Anleitung in den vorherigen Abschnitten.

In diesem Abschnitt werden wir diskutieren, wie man Git Befehle verwenden, um mit einem Online-Git Repository zu arbeiten.

Bitte beachten Sie, dass die in diesem Kapitel aufgelisteten Befehle (sowohl in diesem als auch in früheren Unterkapiteln) NICHT für GitHub spezifisch sind. Sie werden für die Zusammenarbeit in allen Git-Repositories und für die Interaktion mit jeder Hosting-Site des Projektarchivs, das [GitHub](https://github.com/)sein kann, aber auch [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) oder ein [selbsteinrichtetes Git Repository auf einem Webserver](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Aus Gründen der Einfachheit werden wir GitHub als Beispiel verwenden, um Befehle zu erklären, die für die Interaktion mit Git-Repositories verwendet werden.

(rr-vcs-github-local)=
## Lokale Kopie eines Online-Repositorys erstellen

Bisher betreffen alle Git-Befehle, die in diesem Kapitel eingeführt wurden, lokale, nicht verbundene Git-Repositorys. Um mit anderen zusammenzuarbeiten, Hosting-Dienste wie GitHub, kann einen *Klon* (eine Kopie) Ihres lokalen Projektarchivs speichern und anderen aussetzen. Normalerweise haben Sie ein lokales Repository und ein *entferntes*, web-gehostetes Repository. Ihr lokales Repository ist mit dem webbasierten Klon verbunden. Technisch gesehen ist der webbasierte Klon ein `entfernter` des lokalen Projektarchivs. Normalerweise nennt man diese Fernbedienung "origin". Having a web-based remote allows you to *push* changes to your project online. Es ermöglicht anderen, ihren eigenen Klon Ihres Projektarchivs zu erhalten (eine Kopie Ihres Projektarchivs auf ihren lokalen Computer), Änderungen vornehmen und eine *-Pull-Request* einreichen, mit der Sie ihre Änderungen integrieren können. Zum Beispiel kann man mit dem folgenden Git-Befehl eine unabhängige lokale Kopie eines Projekts erstellen:

```
git clone <insert GitHub link of the repository here>
```

Mitarbeiter können ihre lokale Version eines Online-Projektarchivs aktualisieren oder *ziehen Sie* die Arbeit anderer mit dem Befehl in ihre Kopie:
```
git pull
```
Ebenso können sie Dateien lokal bearbeiten und ihre Aktualisierungen stufen (`git add .`), Änderungen an einer neuen Version übertragen (`git commit`) und *pushen* Änderungen in das entfernte Online-Repository mit dem Git-Befehl:
```
git Push
```
(rr-vcs-github-online)=
## Verknüpfen Sie ein lokales Projekt auf Ihrem Computer mit einem Online-Repository

Um ein Projekt auf deinem Computer mit einem neuen GitHub Repository zu verknüpfen (vorzugsweise mit dem gleichen Namen), Sie müssen dem Standard-Workflow folgen, um ein Git-Repository zu erstellen (beschrieben im Unterkapitel {ref}`rrr-vcs-workflow` </code> indem Sie die folgenden Befehle im Terminal ausgeben, eins nach dem einen:

```
cd <your project folder>
git init
git add .
git commit
```
Wenn du ein GitHub Repository hast, das du mit diesem Projekt verbinden möchtest, führe den folgenden Befehl aus:

```
git remote add origin <GitHub repository link for your project>
```

Dann, *drücken Sie* alle Dateien auf Ihrem Computer auf die Online-Version, damit sie übereinstimmen:

```
git Push-u Ursprung main
```

Sie können dann weitermachen und mehr Commits auf Ihrem Computer machen. Wenn Sie sie auf Ihre Online-Version schieben möchten, tun Sie es ebenfalls:

```
git Push-Ursprung branch_you_want_to_push_to
```

Du kannst auch direkt auf GitHub Änderungen vornehmen, indem du das Online-Repository editierst, und *ziehen* diese Änderungen lokal durch Verwendung des `git pull` Befehls.

Andere können das Projektarchiv auch auf ihren Computer klonen:

```
git clone git@github.com:your-github-username/repository_name
```

They can make and commit changes to the code without impacting the original, and push their changes to *their* online GitHub account using:

```
git Push-u Ursprung main
```

Die gleiche Prozedur gilt für Sie, wenn Sie das Projektarchiv einer anderen Person klonen möchten.

(rr-vcs-github-online-pull)=
### Pull-Anfragen

Wenn Sie an einem persönlichen Zweig arbeiten und andere Änderungen im Hauptzweig vorgenommen wurden, du kannst *mit dem Git-Befehl* diese Änderungen in deinen Zweig ziehen:
```
git Pull-Ursprung Haupt
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can *push* their changes to their branch using the following command:

```
git Push-Ursprungs Branch-Name
```

Wenn Sie jedoch das Projektarchiv nicht direkt bearbeiten können (wenn Sie kein Eigentümer oder Administrator des Projekts sind), Sie können Ihre Arbeit mit Hilfe von *Pull-Requests* teilen. Ein Pull-Request erlaubt es einem Mitwirkenden, die vorgeschlagenen Änderungen aus seinem Zweig oder Projektarchiv in den Hauptzweig des Projekts zu integrieren. Es ist auch möglich, Pull-Requests über die Kommandozeile zu erstellen (siehe die GitLab-Dokumentation [hier](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-beitragen)=
## Zu anderen Projekten beitragen

Wenn Sie eine lokale Kopie eines Projektarchivs erstellen, behalten Sie nur die Versionen der Dateien, die sich im Projektarchiv befinden, zum Zeitpunkt der Erstellung dieser Kopie. Wenn danach irgendwelche Änderungen im ursprünglichen Projektarchiv vorgenommen werden, wird Ihre Kopie nicht synchronisiert. Dies kann zu Problemen wie widersprüchlichen Dateiinhalten führen, wenn Sie einen Pull-Request machen oder Änderungen von Ihrem Branch zum Hauptarchiv zusammenführen. Daher bei der Arbeit an verschiedenen Zweigen oder Gabeln eines Projektarchivs, Es ist eine gute Praxis, sie mit dem Hauptarchiv auf dem Laufenden zu halten und mit dem ursprünglichen Projektarchiv zu synchronisieren.

(rr-vcs-github-contributing-workflow)=
### Ein Workflow zum Mitwirken zu anderen Github Projekten über `git`:

Mit dem Fork-Button auf dem GitHub Repository erstellen Sie eine Kopie des Projektarchivs in Ihrem Konto. Das von Ihnen abgewiesene Haupt-Repository wird als das "Upstream"-Repository bezeichnet.

Sie können nun mit der Befehlszeile an Ihrer Kopie über die folgenden Schritte arbeiten (stellen Sie sicher, dass Sie den Platzhalter- und Repository-Namen ersetzen):

1. Klonen Sie es auf Ihrem lokalen Rechner:

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. Fügen Sie das 'upstream' Repository mit dem `git remote` Befehl zur Liste der Remote Repositories hinzu:

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. Überprüfen Sie das neue Remote-'Upstream'-Repository:

    ```
    git remote -v
    ```

4. Aktualisieren Sie Ihre Fork mit den neuesten Änderungen des Upstream-Servers, indem Sie zuerst die Zweige des Upstream-Repositorys und die neuesten Commits abrufen, um sie in Ihr Repository zu bringen:

    ```
    git Abruf von Upstream
    ```

5. Alle Zweige anzeigen, auch die aus dem Upstream:

    ```
    git branch -va
    ```

Vergewissern Sie sich, dass Sie lokal in Ihrem Hauptzweig sind, falls nicht, dann auschecken Sie Ihren Hauptzweig mit dem Befehl `git checkout main`

6. Halten Sie Ihre Fork auf dem neuesten Stand, indem Sie diese Commits (aus dem Upstream) zu Ihrem eigenen lokalen Hauptzweig zusammenführen.

    ```
    git upstream/main zusammenführen
    ```

Jetzt ist Ihr lokaler Hauptzweig auf dem neuesten Stand mit allen geänderten Upstreams. Wenn es keine eindeutigen Commits für den lokalen Hauptzweig gibt, führt git einfach einen schnellen Vorlauf durch.

*Notiz: Upstream/main ist der Hauptteil des ursprünglichen Projektarchivs, zu dem Sie beitragen möchten während der Ursprung/main auf das Repository verweist, das Sie auf Ihrem lokalen Rechner geklont haben, nachdem es auf GitHub geforkt wurde.*

Sobald dein Fork mit dem Hauptarchiv synchronisiert ist, Sie können Ihr lokales geklontes Repository immer mit dem Ursprung synchronisieren (in diesem Fall fork) indem Sie folgen:

```
git checkout main
git pull
```

Der `git pull` Befehl kombiniert zwei andere Befehle, `git fetch` und `git merge`. Beim `Git holen`werden die resultierenden Commits als entfernter Zweig gespeichert, um die Änderungen vor dem Zusammenführen zu überprüfen.

Ähnlich ist, wenn Sie andere Zweige als Hauptzweige erstellt haben, Sie können sie auch mit Ihrem Main synchronisieren, sobald es mit dem Upstream-Repository synchronisiert ist.

```
git checkout my-other-Branch
git pull origin main
```

Wenn alles aktuell ist, können Sie an Ihrem Zweig arbeiten und Änderungen bearbeiten.

Wenn Sie bereit sind, Ihre lokalen Commits in Ihr geforktes Projektarchiv (origin) zu schieben, verwenden Sie den folgenden Befehl.

```
git Push-Ursprung forked_repository
```

Jetzt kannst du eine Pull-Anfrage machen!

(rr-vcs-github-contributing-practice)=
### Gute Praxis

Bevor Sie einen Zweig erstellen, stellen Sie sicher, dass Sie alle Upstream-Änderungen aus dem Quell-/Hauptzweig haben.


**Ein Wort der Vorsicht auf den `rebase` Befehl**: Während des Versuchs, Ihre Zweige synchron zu halten, Sie können über den `rebase` Befehl kommen. Es neigt dazu, die Geschichte neu zu schreiben und könnte problematisch sein, wenn es nicht mit anderen kommuniziert wird, die an demselben Zweig arbeiten. Versuchen Sie, den `rebase` Befehl zu vermeiden, und verwenden Sie stattdessen `pull` oder `holen Sie`+`Merge`, wie in diesem Abschnitt diskutiert. Weitere Details finden Sie unter [Zusammenführen vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).


## Weiterlesen
- Ein [-Artikel zum Synchronisieren einer Abzweigung eines Projektarchivs](https://help.github.com/en/articles/syncing-a-fork) um ihn mit dem Upstream-Repository auf dem Laufenden zu halten.
- Anleitungen, wenn Sie alles [im Browser selbst machen wollen](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
