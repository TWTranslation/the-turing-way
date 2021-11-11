(rr-vcs-git-Zweig)=
# Git Zweige

Wenn Sie an einem Projekt arbeiten, können Sie auf die folgenden Szenarien stoßen:

- Wenn Sie Ihrem Projekt eine neue Funktion hinzufügen, besteht das Risiko, während Sie die Funktion testen, versehentlich Ihren Arbeitscode zu brechen. Dies würde zu unerwarteten Problemen für aktive Benutzer Ihres Projekts führen, auch wenn Sie der einzige aktive Benutzer sind.
- Wenn du mit anderen zusammenarbeitest und jeder gleichzeitig am Hauptzweig arbeitest, könnte es eine Menge Verwirrung und widersprüchliche Veränderungen geben.
- Einige Code/Feature sind vielleicht nicht für alle interessant. Möglicherweise muss es eine Möglichkeit geben, neue Arbeit an einem Projekt zu leisten und gleichzeitig die bereits geleistete Arbeit zu schützen.

Git Zweige sind sehr wertvoll, wenn man sich mit diesen Fragen auseinandersetzt. Für jedes Git-Projekt haben Sie standardmäßig einen Zweig namens 'main', in dem alle Commits protokolliert werden. Die Verzweigungsfunktion von Git ermöglicht es uns, eine Kopie eines Projekts zu erstellen, an dem wir arbeiten können und weiterhin Commits zu machen, ohne sie sofort in den Hauptzweig zu integrieren. In der Zwischenzeit kann man weiterhin Commits für den Hauptzweig machen, der von den Änderungen an anderen Zweigen unberührt bleibt. Sobald du zufrieden bist mit allem, was du an einem Zweig arbeitest, Sie können es in Ihren Hauptzweig (oder sogar in irgendeinem anderen Zweig) zusammenführen. Zusammenführung wird im Unterkapitel {ref}`rrr-vcs-git-merge` behandelt.

Wenn Sie eine Funktion auf einem Zweig testen, der nicht funktioniert, können Sie sie löschen oder aufgeben (zum Beispiel Feature B im Diagramm unten) anstatt Zeit für die Auswahl der Änderungen zu verbringen, wenn Sie all Ihre Arbeit am Hauptzweig erledigen. Sie können so viele Zweige aus den Zweigen haben, wie Sie möchten (z. B. Feature A-1).

Die Verwendung von Zweigen hält funktionierenden Code sicher, insbesondere in Kooperationen. Jeder Mitwirkende kann seinen eigenen Zweig oder Zweigstellen haben, die nur dann in das Hauptprojekt integriert werden, wenn er bereit ist.

```{figure} ../../figures/sub-branch.png
---
Name: Unterzweig
alt: Eine Illustration des Zweigs in Git. Es gibt vier Zweige mit dem Namen main, Feature A, Feature B und Feature A-1. Feature A und B sind Zweige der Hauptbranche, während Feature A-1 ist ein Zweig aus Feature A.
---
Eine Abbildung des Verzweigens in Git
```

Sie können einen Zweig erstellen und zu ihm wechseln:
```
git checkout -b name_of_your_new_branch
```

Um zwischen den Zweigen zu wechseln, verwenden Sie den folgenden Befehl:
```
git checkout name_of_the_Branch
```

Du musst alle laufenden Arbeiten übertragen, bevor du zu einem anderen Zweig wechseln kannst.

Sie können alle Zweige Ihres Projekts sehen unter Verwendung von:

```
git Branch
```
Dies gibt die Ausgabe als eine Liste mit einem Stern neben dem Zweig, auf dem Sie sich befinden. Sie können auch `Git Status` verwenden, wenn Sie vergessen haben, in welchem Zweig Sie sind.

Wenn du dich entschließst, einen Branch loszuwerden, kannst du ihn löschen mit:

```
git Branch -D name_of_the_Branch
```
(rr-vcs-branches-practice)=
## Gute Praxis

Zweige sollten verwendet werden, um **den Hauptzweig sauber zu halten**. Das heißt, der Hauptteil sollte nur Arbeiten enthalten, die vollständig, getestet und rechtmäßig in die Hauptversion des Projekts gehören. Ebenso sollten Sie versuchen, einzelne Zweige so sauber wie möglich zu halten, indem **nur eine neue Funktion pro Zweig** hinzufügt. Dies liegt daran, wenn Sie an mehreren Funktionen arbeiten, Einige können fertig und bereit sein, sich in main einzufügen, während andere noch in Entwicklung sind. Ihre Zweige sauber zu halten bedeutet, nur Änderungen an der Funktion des Zweiges vorzunehmen. Geben Sie Ihren Branches **vernünftige Namen**, "new_feature" ist schön und gut, bis Sie mit der Entwicklung einer neueren Funktion auf einem anderen Branch beginnen.

## Interaktives Tutorial

[Lerne Git Branching](https://learngitbranching.js.org/) ist ein Projekt, um eine interaktive Art Git zu lernen. Wenn du durch ihre Tutorials gehst, wirst du viel Erfahrung mit den am häufigsten verwendeten Git Befehlen und Branchenmanipulationstechniken haben.
