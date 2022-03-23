(rr-code-Qualita)=
# 代码质量identes

| Voraussetzung                                                                                | Bedeutung |
| -------------------------------------------------------------------------------------------- | --------- |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Hilfreich |

## Summary

Es gibt mehrere Möglichkeiten, die Software-Qualität zu verbessern, die relativ wenig Aufwand erfordert. Durch das Befolgen eines Codierungsstils wird Code für Sie und andere leichter zu verstehen sein und wird daher weniger Fehler enthalten. Tools für statische Codeanalyse können Fehler sowie Stil-Probleme melden, ohne den Code auszuführen.

## Statische Code-Analyse

Statische Code-Analyse ist eine Methode, die Code untersucht und Software-Verwundbarkeiten entdeckt, bevor Ihr Code ausgeführt wird oder das Projekt gebaut und verteilt wird. Diese Analyse ist in der Lage, Qualitätsprobleme zu identifizieren, einschließlich Sicherheitslücken und Fehlern. Neben dem Auffinden von Fehlern können viele dieser Tools auch dazu beitragen, einen konsistenten Programmierstil zu erhalten.

(rr-code-Qualität-Vorteile)=
### Vorteile der statischen Codeanalyse

- Schreibe qualitativ hochwertigen Code: Frühe Erkennung möglicher Programmierfehler hilft Entwicklern zu wissen, wo sie schief gelaufen sind.

- Erzielen regulatorischer Compliance: Die Einhaltung von Software ist entscheidend für die Stabilität und Sicherheit von Produkten. Damit können Entwickler ihren Code umfassend in einer nicht-Laufzeitumgebung testen, um sicherzustellen, dass alle Code-Standards eingehalten werden und Unternehmenssicherheit erreicht wird.

- Lebenszyklen für die Softwareentwicklung: Statische Codeanalyse sorgt dafür, dass qualitativ hochwertiger Code in kürzester Zeit Tester erreicht. Das bedeutet, dass selbst Tester viel weniger Zeit brauchen, um das Produkt zu testen und so die Software-Entwicklungslebenszyklen zu beschleunigen.

Einige der am häufigsten verwendeten `Linters` werden in der folgenden Tabelle erwähnt:

| Sprache    | Statisches Codeanalysewerkzeug                                                                                        |
| ---------- | --------------------------------------------------------------------------------------------------------------------- |
| C/C++      | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                            |
| Python     | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                           |
| Javascript | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                           |
| 贾尔塔        | [检查样式](https://checkstyle.sourceforge.io/), [FindBug](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl       | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                         |
| L          | [lintr](https://github.com/jimhester/lintr)                                                                           |
| Shell/Bash | [边框检查](https://www.shellcheck.net)                                                                                    |
