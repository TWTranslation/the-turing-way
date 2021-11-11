(rr-reviewing-workflow)=
# Typische Workflows

*Dieses Kapitel enthält eine besondere Referenz zu Github*

```{figure} ../../figures/readable-code.jpg
---
Höhe: 500px
Name: lesbarer Code
alt: Dieses Bild unterstreicht die Bedeutung der Code-Lesbarkeit.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Formale vs Informelle Bewertungen

Damit ein formeller Überprüfungsprozess effektiv funktioniert, ist es zwingend erforderlich, dass das Projekt eine gute {ref}`Versionskontrolle nutzt<rr-vcs>`. However, it bears stating that **all review of code is very valuable**, including informal or ad-hoc approaches. Tatsächlich kann diese Art informeller Peer-Review sogar in hochformalisierten Überprüfungsleitungen eine wichtige vorläufige Komponente darstellen. viel Stress zu sparen und zu streiten, sobald die formale Bühne beginnt.

Dieser Abschnitt konzentriert sich auf die typischen Workflows hinter einem formalen Überprüfungsprozess, wie sie üblicherweise in [Github](https://github.com/) implementiert werden. Andere Codierungsumgebungen wie [BitBucket](https://bitbucket.org/) oder [GitLab](https://about.gitlab.com/) könnten konzeptuell ähnliche Mechanismen haben, aber sie werden hier nicht erklärt.

## Den Code vorbereiten

Bevor Sie eine Überprüfung anfordern, stellen Sie sicher, dass Sie alle offensichtlichen Qualitätskriterien für das Projekt erfüllt haben, zu dem Sie beitragen. Dies bedeutet, dass Sie die Überprüfungsliste überprüft haben (siehe {ref}`Checkliste für den Coder<rr-checklist-for-code-review>`).

Ein Überprüfer sollte diese Dinge überprüfen (siehe {ref}`Checkliste für den Programmierer<rr-checklist-for-code-review>`), Aber Mängel an diesen Fronten sollten durch gelegentliche Kontrolle statt systematisch.

## Änderungen vorschlagen

Im GitHub System wird die Überprüfung direkt von der Seite des [Pull-Request-Request-Bereichs](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request) gestartet. Der Überprüfungsschritt erfolgt zwischen den Punkten, an denen der Programmierer glaubt, dass ihr Beitrag vollständig ist und wo dieser Beitrag in den Stamm-Code für das Projekt integriert wird. und so ist es eng mit einem einzigen Pull-Request verbunden.

Within the Github environment, projects can be configured to *require* a review before a given pull request can be merged. Auch wenn diese Option nicht ausgewählt wurde, ist es immer noch möglich (und in der Tat bewährte Methode), manuell eine Überprüfung eines ausstehenden Pull-Requests anzufordern.

## Erstellen und diskutieren Sie die Bewertung

An diesem Punkt kann der Überprüfungsprozess beginnen. In Github kann der Überprüfer sowohl allgemeine Kommentare als auch Zeilenumbrüche angeben, siehe [GitHub Code Überprüfung](https://github.com/features/code-review). Jeder Kommentar wird zu einem eigenen Kommentar-Thread, der die Diskussion über jedes Thema nach Bedarf ermöglicht. Diese Interaktion sollte es ermöglichen, zu jedem Kommentar einen Konsens zu erzielen.

Sobald die Überprüfung abgeschlossen ist, können Sie alle notwendigen Kommentare besprechen. Dann machen Sie die Änderungen und erfassen die Änderungen, die gegen entsprechende Kommentare vorgenommen wurden. Sie überprüfen auch, dass der Prüfer weiß, dass Sie glauben, Sie haben die Überprüfung vollständig angesprochen haben.

Sobald Sie der Meinung sind, dass die Änderungen abgeschlossen sind, überprüft der Prüfer, dass sie tatsächlich alle anfänglichen Kommentare behandeln. Bei Bedarf arbeitet der Überprüfer konstruktiv mit Ihnen zusammen, wenn er in bestimmten Punkten anderer Meinung ist, um zu einem Konsens zu gelangen. In den meisten Fällen hat der Prüfer ein endgültiges Mitspracherecht, wenn kein Konsens gefunden werden kann.

Sobald Änderungen nach der Überprüfung vorgenommen wurden Machen Sie abschließende Aktualisierungen der Kommentare, wenn nötig, um eine Geschichte von dem, was getan wurde, und die Gründe dahinter zu vervollständigen.

## Ergebnisse über GitHub kommunizieren

In Github sollten Kommentare im Bereich `geänderte Dateien hinzugefügt werden,` , damit sie an eine bestimmte Codezeile angehängt werden können, siehe [GitHub, die Änderungen in Pullrequests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests) prüft. Machen Sie auf diese Weise viele kleine Kommentare und nicht nur einen großen Ball von Text mit allem, so dass verschiedene Fragen voneinander getrennt werden können. Wo relevant, beziehen Sie sich auf bestehende Probleme und Dokumentation.

Wenn Sie existierenden Code überprüfen anstatt Änderungen zu ändern, ist es immer noch praktisch, Pull-Requests zu verwenden. Wenn du ein Problem findest, das eine offensichtliche Korrektur aufweist, kannst du einen Pull-Request mit einem Patch auf die übliche Art und Weise einreichen.

Wenn Sie keine Korrektur haben, können Sie der entsprechenden Zeile einen leeren Kommentar hinzufügen und erstellen Sie daraus einen Pull-Request als Patch. Die entsprechende Zeile(n) leuchten dann in den `Dateien geändert` Übersicht, und Sie können Ihre Kommentare dort hinzufügen. In diesem Fall wird entweder der Pull-Request nie zusammengeführt (aber die Kommentare wurden auf andere Weise bearbeitet oder überhaupt nicht), oder die zusätzlichen Kommentare werden rückgängig gemacht und durch eine vereinbarte Korrektur ersetzt.

In allen Fällen werden viele kleine Pull Requests eingereicht, keine große, da GitHubs Unterstützung für Code-Reviews ziemlich begrenzt ist. Es wird schwerfällig, zu viele Probleme in einen Pull-Request zu stecken.

## Die Änderungen zusammenführen

Sobald der Überprüfungsprozess abgeschlossen ist, stimmt der Überprüfer den Änderungen zu, und die Zusammenführung kann erfolgen. Einzelne Projekte haben in der Regel Regeln und/oder Richtlinien, ob der Codierer oder der Prüfer tatsächlich die Merge Taste drückt, also überprüfen Sie diese. In vielen Fällen machen Projektworkflows die Vollendung einer Überprüfung und deren Abmeldung durch den Prüfer zu einer formellen Voraussetzung für die Durchführung der Zusammenführung. Um Zweifel zu vermeiden, ist die Annahme dieses Prinzips selbst für kleine oder informelle Projekte wahrscheinlich sinnvoll.
