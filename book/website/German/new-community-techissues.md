(cm-new-community-techissue)=
# Technische Probleme ansprechen

Stellen Sie sicher, dass Sie auch Pläne für Personen haben, die zu Ihrem Projekt beitragen wollen, aber ohne Aufsicht oder Anleitung sehr schnell von Ihren ursprünglichen Zielen abweichen können. Wenn spezielle Fähigkeiten oder Praktiken erforderlich sind, damit jemand zu Ihrem Projekt beitragen kann Sie sollten Menschen auf relevante Ressourcen verweisen können, damit sie sich effektiv mit Ihrem Projekt auseinandersetzen können.

Hier sind einige Empfehlungen zur Vorbereitung Ihres Projekts auf technische Probleme, denen Ihr Team oder Ihre Community sehr wahrscheinlich gegenüberstehen können.

## Tools einrichten, um die Zusammenarbeit zu aktivieren

Bei der Erstellung der Forschung entweder des Abschlussberichts oder für den Austausch vorläufiger Erkenntnisse es sollte eine bewusste Entscheidung darüber geben, welche Software Sie verwenden, um Ihr Ergebnis zu schreiben. Diese Entscheidung beeinflusst die Zusammenarbeit in Ihrem Projekt. Um mögliche Hindernisse für die Zusammenarbeit zu vermeiden, berücksichtigen Sie folgende Aspekte:
* **Verfügbarkeit von Software**: Stellen Sie sicher, dass alle Mitarbeiter Zugriff auf die von Ihnen verwendete Software und Plattform haben, B. bezahlte Abonnements oder eine Lizenz zur Nutzung proprietärer Software.
* **Technische Fertigkeiten**: Stellen Sie sicher, dass alle Mitarbeiter mit der Software zufrieden sind zum Beispiel sind sie zuversichtlich, eine Datei zu bearbeiten, die in einer Programmier- oder Markup-Sprache geschrieben ist.

Kontextspezifische Probleme können in Abhängigkeit von den Rollen und Verantwortlichkeiten eines Teams auftauchen. Daher können potenzielle Lösungen geplant werden, um diese Probleme zu lösen, einschließlich der Bereitstellung von kurzen Tutorials (siehe den nächsten Punkt). Die Tatsache, dass wir uns der potenziellen Barrieren bewusst sind, die die von uns geschaffene Software schaffen kann, kann zu der Wahl von Werkzeugen und Lösungen führen, die für alle unsere Mitarbeiter funktionieren.

## Kurze und prägnante Tutorials

Bei den meisten Forschungsprojekten arbeiten wir gerade an der Dringlichkeit was dazu führen könnte, dass wir übersehen, was auf lange Sicht wichtig ist. Zum Beispiel vielleicht wollen wir mehrere Algorithmen auf unseren Daten testen, aber achten Sie nicht darauf, das Ergebnis systematisch in einer zentralen Plattform aufzuzeichnen, auf die andere zugreifen. Das Anbieten von Schulungen oder kurzen, vorgefertigten Videos zu empfohlenen Verfahren kann es Ihren Community-Mitgliedern ermöglichen, mit einem Standard-Workflow zu arbeiten oder einige Aufgaben von anderen zu übernehmen.

## Testen ist wichtig

Irrtum ist menschlich! Und wenn sie unter Druck arbeiten, könnten sie häufiger sein.

Testen Sie Ihre Codes und ermutigen Sie Ihre Gemeinschaft, den Code der anderen zu überprüfen und zu testen. Zusätzlich zum Schreiben von Code, der Probleme löst du solltest die Praxis von [Unit-Test](http://softwaretestingfundamentals.com/unit-testing/) unterrichten und fördern, um zu testen, ob die einzelnen Einheiten/Komponenten der Software wie erwartet funktionieren.

Sie können auch eine {ref}`Continuous Integration<rr-ci>` Umgebung einrichten, um Tests in Ihrem Workflow zu automatisieren.

Siehe {ref}`Test <rr-testing>` Abschnitt in der Anleitung für reproduzierbare Forschung für weitere Informationen.

## Reproduzierbarkeit ist noch wichtiger

Eine tolle Sache für weniger engagierte Teammitglieder ist die ständige Prüfung der Reproduzierbarkeit von Code-/Umwelt. Tun Sie dies von Anfang an und es wird später keine Überraschung sein, wenn es nicht auf dem Computer anderer funktioniert.

Erreichen Sie die Experten, insbesondere im Umgang mit Legacy-Code. Erreichen Sie andere Gemeinschaften mit spezieller Expertise, um Aufwand und Zeit zu sparen, die in andere Aufgaben investiert werden können. Zum Beispiel basiert ein Großteil der wissenschaftlichen Erkenntnisse auf den Ergebnissen von FORTRAN, C, und Java-Code, der nicht mehr gewartet wird und wahrscheinlich nicht dokumentiert ist. Jemanden mit dem Wissen und der Erfahrung des Legacy-Codes zu finden, um Fragen zu beantworten, die andere Entwickler haben, wird ein riesiger Zeitersparnis sein.

Siehe {ref}`Anleitung für reproduzierbare Forschung <rr>` Kapitel für weitere Informationen.

## Code (und Daten) frühzeitig teilen

Entwickler müssen ihren Code in einem öffentlich versionskontrollierten Repository (wie GitHub und GitLab) teilen und koordinieren, wer an welchen Funktionen arbeitet oder welche Reparaturen durchgeführt werden. Insbesondere bei dringenden Projekten gegen die Uhr, Es ist wichtig, keine Zeit am Ende Ihres Projekts zu verschwenden, wenn Sie die verschiedenen Komponenten Ihrer Forschung zusammenstellen, wenn Sie es von Anfang an praktizieren können.

## Beachten Sie die Datenschutzprobleme

Fragen Sie sich selbst, wie können Menschen, die auf diese Daten zugreifen müssen, darauf zugreifen. Wie sie die Daten entsprechend nutzen und weitergeben können. Wählen Sie eine passende Open-Source-Lizenz für Ihre Daten, Skripte und Software. Wählen Sie eine relevante Lizenz aus, um den Schutz sensibler Informationen wie Bewegungs- und Standortdaten zu gewährleisten persönliche Gesundheitsfragen, Kontaktinformationen, Namen, Geburtsdatum und persönliche Adressen. Vermeiden Sie das Sammeln nicht notwendiger personenbezogener Daten oder verletzen die Vertraulichkeit.
