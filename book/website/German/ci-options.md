(rr-ci-options)=
# Was ist kontinuierliche Integration?

Kontinuierliche Integration (CI) ist die Praxis, Änderungen an einem Projekt von Einzelpersonen in ein Hauptprojekt zu integrieren, häufig geteilte Version (meist mehrmals pro Tag). CI-Software wird in der Regel auch verwendet, um Konflikte und Fehler zu identifizieren, die durch Änderungen ausgelöst werden so dass sie gefunden und frühzeitig repariert werden, wodurch der dafür erforderliche Aufwand minimiert wird. Durch regelmäßige Tests werden auch Menschen davor bewahrt, dies manuell tun zu müssen. Indem die Benutzer so früh wie möglich auf Fehler aufmerksam gemacht werden (wenn das Projekt ein Forschungsprojekt ist) verschwenden Sie nicht viel Zeit mit der Arbeit, die möglicherweise weggeworfen werden muss. was der Fall sein kann, wenn Tests selten durchgeführt werden und Ergebnisse mit fehlerhaftem Code erzeugt werden.

Dieses Kapitel erfordert ein starkes Verständnis der Versionskontrolle. Die zentralen Konzepte, an die Sie sich erinnern müssen:

- Wie kann es genutzt werden, um Personen, die an einem einzelnen Projekt zusammenarbeiten, zu ermöglichen, ihre Arbeit durch Zusammenführung zu kombinieren
- Welche Zusammenschlüsse von Konflikten sind und welche Schwierigkeiten sie verursachen können
- Was GitHub ist und wie man es benutzt

Kurz gesagt, wenn eine Gruppe von Forschern an einem Projekt mitarbeitet, ist es eine gute Praxis, dass sie die Versionskontrolle nutzen, um ihre Änderungen im Laufe der Zeit zu verfolgen und ihre Arbeit regelmäßig kombinieren. Wenn sie ihre Arbeit nicht regelmäßig kombinieren (integrieren), dann ist es sehr schwierig, wenn sie dazu kommen, da verschiedene Menschen widersprüchliche Veränderungen vorgenommen haben.

Kontinuierliche Integration ist eine Softwareentwicklungspraxis, bei der Mitglieder eines Teams ihre Arbeit häufig integrieren statt in Isolation zu arbeiten und große Veränderungen in seltenen Intervallen zu fusionieren. In CI integriert in der Regel jeder Mensch mindestens täglich. Jede Integration wird durch ein automatisiertes Build (normalerweise auch Tests) überprüft, um Integrationsfehler so schnell wie möglich zu erkennen.

Die Idee besteht darin, die Integrationskosten zu minimieren, indem sie frühzeitig in Erwägung gezogen werden. Forscher können Konflikte an den Grenzen zwischen dem neuen und dem existierenden Code frühzeitig entdecken, während sie noch relativ einfach miteinander in Einklang zu bringen sind. Sobald der Konflikt gelöst ist, kann die Arbeit mit der Zuversicht fortgesetzt werden, dass der neue Kodex die Anforderungen der bestehenden Codebase erfüllt. Ziel ist es, gesündere Software durch Entwicklung und Testen in kleineren Schritten zu entwickeln. Viele Teams finden heraus, dass dieser Ansatz zu deutlich reduzierten Integrationsproblemen führt und es einem Team ermöglicht, sich schneller zu entwickeln.

Häufig bietet die Integration von Code keine Gewähr für die Qualität des neuen Codes oder der Funktionalität. Dies führt uns zum zweiten Aspekt der CI. Wenn ein Entwickler Code in das Hauptarchiv einbindet, erstellen automatisierte Prozesse eine funktionierende Version des Projektes. Danach werden Testsuiten gegen den neuen Build ausgeführt, um zu überprüfen, ob irgendwelche Fehler eingeführt wurden. Wenn entweder die Build- oder die Testphase fehlschlägt, wird das Team gewarnt, damit es an der Lösung des Problems arbeiten kann. Es ist einfacher, einen Fehler in etwas zu beheben, das du vor ein paar Minuten geschrieben hast als etwas, das du gestern geschrieben hast (oder letzte Woche) oder letzten Monat).

Indem Sie sicherstellen, dass Ihr Code regelmäßig erstellt und getestet wird, hilft CI Forschern zu zeigen, dass ihr Code das tut, was er vorgibt zu tun und dass es das richtig tut. Normalerweise erlauben kontinuierliche Integrationsserver auch das Ausführen von Build-and-Tester-Jobs zu bestimmten Zeiten damit ein [-Cronjob](https://en.wikipedia.org/wiki/Cron), Night-Build-and-Test, sowie ein Bau- und Testjob bei Bedarf ausgeführt werden kann.


## Welche Optionen gibt es für CI-Dienstleister?

Es gibt viele CI-Dienstleister, wie GitHub Actions und Travis CI. Jede dieser Dienstleistungen hat ihre eigenen Vor- und Nachteile. In diesem Bereich bieten wir Ihnen eine kurze Übersicht mit Links zu Beispielen, um Ihnen zu helfen, die für Sie am besten geeignete zu wählen.

 - [GitHub Aktionen](https://help.github.com/en/actions), für einige Beispiele lesen Sie die [Sprach- und Framework-Anleitungen](https://help.github.com/en/actions/language-and-framework-guides) und [dieses Tutorial](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
 - [Circle CI](https://circleci.com/), für einige Beispiele siehe [hier](https://circleci.com/docs/2.0/project-walkthrough/) und [hier](https://circleci.com/docs/2.0/hello-world/).
 - [GitLab CI](https://docs.gitlab.com/ee/ci/), für einige Beispiele die [GitLab CI Beispiele](https://docs.gitlab.com/ee/ci/examples/README.html) und [dieses Tutorial](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
 - [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), einige Beispiele finden Sie auf der [Ökosystem-Supportseite](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) und [dieses Tutorial](https://github.com/trallard/ci-research).
 - [Jenkins](https://www.jenkins.io/), für einige Beispiele siehe [dieses Tutorial](https://www.jenkins.io/doc/tutorials/)
 - [Travis CI](https://travis-ci.com/), für einige Beispiele das [Travis Tutorial](https://docs.travis-ci.com/user/tutorial/).

Eine umfangreichere Liste von CI-Dienstleistern finden Sie [hier](https://www.software.ac.uk/resources/guides/hosted-continuous-integration).
