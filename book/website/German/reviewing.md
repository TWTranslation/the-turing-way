(rr-reviewing)=
# Code Review-Prozess

(rr-reviewing-Voraussetzungen)=
## Voraussetzungen

| Voraussetzung                          | Bedeutung | Notizen                                                                                                                                   |
| -------------------------------------- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| {ref}`Versionskontrolle<rr-vcs>` | Notwendig | Es ist zu verstehen, wie [Github](https://github.com) seine Zweigstellen, Gabeln und Pull-Requests innerhalb von Repositories arrangiert. |

```{figure} ../figures/bug-catching.jpg
---
Höhe: 500px
Name: Fehlerfänger
alt: Leute, die verschiedene Insekten auf unterschiedliche Weise fangen - die Fehler in unserem Code oder Projekt repräsentieren.
---
Fehler werden gefangen. _The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-summary)=
## Summary

Die Code-Überprüfung bietet eine zusätzliche Möglichkeit die Code-Qualität zu testen. Anstatt sich einfach auf {ref}`Tests<rr-testing>` zu verlassen, die der Originalautor selbst zusammenstellt -Code Rezension bekommt einen anderen Programmierer, der den neuen Code übersieht und ihn bewertet. Ziel ist es, Stärken und Verbesserungspotenziale aufzuzeigen.

Code-Überprüfung wird oft in Paaren durchgeführt, wobei jeder Überprüfer auch einen Teil seines Codes von seinem Partner überprüft hat. Dies kann Programmierern helfen, Probleme und alternative Ansätze für Aufgaben zu sehen und zu diskutieren und neue Tipps und Tricks zu lernen. Das bedeutet auch, dass die Praxis der Code-Überprüfung besonders gut für Projekte geeignet ist, bei denen mehr als ein Mitwirkender Änderungen vornimmt. wobei jeder an verschiedenen Teilen des Codes arbeitet. Dennoch können selbst kleinste Projekte diese Ansätze mit kreativem Projektmanagement nutzen.

Aufgrund ihrer Natur fungieren Code-Reviews als qualitative - und nicht quantitative - Tests, sind dafür aber nicht weniger wertvoll.

Dieser Abschnitt wird einen Überblick über rationale, bewährte Verfahren und einige mögliche Workflows für die Überprüfung von Code bieten. Einige Details beziehen sich speziell auf GitHubs Code-Review-Funktionalität als leistungsstarkes und weit verbreitetes Beispiel für ein formales Code-Review-System; gleichwertige und ähnliche Systeme sind jedoch woanders verfügbar (z.B. [GitLab](https://about.gitlab.com)), und sogar informelle Praktiken zur Überprüfung des Kodex können auch sehr nützlich für ein Projekt sein.
