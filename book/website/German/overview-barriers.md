(rr-overview-barrieren)=
# Hindernisse zur Reproduzierbarkeit

Bisher haben wir {ref}`erklärt, was wir unter<rr-overview-definitions>` mit reproduzierbarer Forschung verstehen und einige der {ref}`zusätzlichen Vorteile<rr-overview-benefits>` erklärt.

In diesem Abschnitt decken wir einige der (realen und wahrgenommenen) Barrieren ab, mit denen Sie Ihre Arbeit reproduzierbar machen können.

```{figure} ../../figures/barriers-reproducibility.png
---
Breite: 500px
Name: Reproduzierbarkeitsbarrieren
alt: Slide von der Präsentation mit den verschiedenen Barrieren zur Reproduzierbarkeit. Der Text im Zentrum heißt "Barrieren zu reproduzierbarer Forschung" und die folgenden Barrieren sind im Uhrzeigersinn um die Folie herum angeordnet - wird nicht als Werbung angesehen, An einem höheren Standard gehalten als andere, Publikationsneigung gegenüber neuartigen Erkenntnissen, Plead the 5t, nimmt Zeit, Unterstützt zusätzliche Benutzer, Benötigt zusätzliche Fähigkeiten.
---
Eine Folie, die einige Hindernisse für reproduzierbare Forschungen von Kirstie Whitaker's [sprich über _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) auf [csv,conf,v4](https://csvconf.com/2019) im Mai 2019 skizziert.
Wird unter einer CC-BY 4.0 Lizenz verwendet.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Dieses Kapitel beschreibt einige dieser Barrieren und einige Vorschläge, um sie zu umgehen. Die Hindernisse für reproduzierbare Forschung lassen sich in drei Hauptgruppen beschreiben. Der erste und am schwersten zu überwinden sind diejenigen, die sich auf die aktuelle Incentive-Struktur in der akademischen Forschung beziehen: {ref}`Eingeschränkte Anreize, sich gegen sich selbst zu behaupten<rr-overview-barriers-incentives>` (oder "Plead the fünfter") die bekannte {ref}`Publikationsbias zu neuartigen Ergebnissen<rr-overview-barriers-publication>`, die Tatsache, dass reproduzierbare oder offene Forschung unter Umständen {ref}`an höheren Standards als andere gehalten werden kann<rr-overview-barriers-standards>`, und dass all diese Bemühungen {ref}`nicht für Werbung<rr-overview-barriers-promotion>` angesehen werden. Dann gibt es die technischen und theoretischen Herausforderungen der Arbeit mit {ref}`großen Daten und der komplexen Recheninfrastruktur<rr-overview-barriers-infrastructure>` und der Erinnerung daran, dass {ref}`nicht bedeutet, dass die Antwort richtig ist<rr-overview-barriers-notright>`. Wir schließen mit drei Hindernissen ab, wenn wir den Druck auf einzelne Datenwissenschaftler berücksichtigen: dass diese Arbeit für {ref}`mehr Zeit in Anspruch nehmen kann<rr-overview-barriers-time>`, dass du möglicherweise für {ref}benötigt wirst:`zusätzliche Benutzer unterstützen<rr-overview-barriers-support>` (Spoiler: du bist nicht dabei! , und dass Sie und Mitglieder Ihres Teams möglicherweise {ref}`zusätzliche Fähigkeiten benötigen<rr-overview-barriers-skills>`. Die gute Nachricht ist, dass es genau das ist, wofür _der Turing Way_ hier ist!

(rr-overview-barriers-incentives)=
## Eingeschränkte Anreize, sich gegen sich selbst zu behaupten

Der [Fünfte Änderungsantrag](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) zur Verfassung der Vereinigten Staaten enthält eine Klausel, dass niemand "in irgendeinem Straffall gezwungen werden soll, Zeuge gegen [them]sel[ves] zu sein". (Auf geschlechtsneutrale Sprache) Wenn man sich für die "Fünfte" ausspricht, so bedeutet dies, dass jemand sich entscheidet, nicht zu belegen, dass in der Vergangenheit etwas schief gelaufen sein könnte. Sie haben das Recht, zu schweigen.

Wir wissen, dass niemand sich selbst beschuldigen will und dass auch niemand unfehlbar ist. Code und Daten online zu stellen kann sehr aufschlussreich und einschüchternd sein und es ist Teil des menschlichen Zustandes, nervös von anderen beurteilt zu werden. Obwohl es kein _Gesetz_ für die Kommunikation reproduzierbarer Forschung gibt - es sei denn, Sie begehen explizite Betrug in Ihrer Arbeit - wird das Teilen von Fehlern, die Sie in Ihrer Arbeit finden, stark abgeschreckt.

```{figure} ../../figures/make-ok-to-be-human.jpg
---
Höhe: 500px
name: make-ok-to-be-human
alt: Ein Cartoon einer Frau, die einen Ordner mit Dateien hat und beunruhigt aussieht. Thought bubble says, if I share my data people might find errors. Die Beschriftung auf den Bildern liest Notwendigkeit, es in Ordnung zu machen, menschlich.
---
Eine Illustration der Barriere "plädiert für die fünfte Barriere", in der unsere aktuelle Kultur die Anerkennung und Korrektur von Fehlern verhindert.
Illustration von The Ludic Group LLP von Kirstie Whitaker's Keynote Präsentation bei Scientific Data 2017.
Wird unter einer CC-BY 4.0 Lizenz verwendet.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Es ist schwierig und stressvoll, gegen sich selbst Beweise zu erteilen, insbesondere wenn Sie Fehler im veröffentlichten Material finden. Aber wir müssen diese individuellen Kosten gegen die Tatsache abwägen, dass die Freigabe des Codes anderen Forschern helfen kann, Feedback zu geben. lernen und können ihnen bei ihrer Forschung helfen. Tatsächlich werden Sie mit ziemlicher Sicherheit feststellen, dass die Veröffentlichung Ihres Codes und der Datendokumentation Sie motiviert, Ihre Analysen auf einem höheren Standard durchzuführen. Vorsicht, was Sie aufschreiben und Ihre Entscheidungen dokumentieren, kann auch dazu beitragen, neue Ideen für sich selbst und andere zu generieren.

Vor allem müssen wir uns von einer Kultur entfernen, in der das Publizieren von nichts sicherer ist, als _etwas_ zu veröffentlichen. _Der Turing Way_ ist hier, um Ihnen zu helfen, kleine Schritte in Richtung reproduzierbarer zu machen, während Ihre Karriere fortschreitet. Wir wollen nicht, dass sich jemand allein fühlt, oder "nicht gut genug", wenn er seine offene Forschungsreise antritt und fortsetzt.

(rr-overview-barriers-publication)=
## Veröffentlichungsneigung gegenüber neuartigen Erkenntnissen

Neuartige Ergebnisse sind nicht unbedingt korrekt oder interessant, aber sie werden in der akademischen Welt belohnt! Beiträge, die keine statistisch signifikanten Beziehungen finden, sind schwer zu veröffentlichen, insbesondere wenn die Ergebnisse *nicht* vorher veröffentlichte Ergebnisse reproduzieren. (Dazu gehören statistisch signifikante Erkenntnisse, die in die entgegengesetzte Richtung der bereits veröffentlichten Arbeit gehen.) In ähnlicher Weise ein Artikel könnte weniger wahrscheinlich in eine Zeitschrift oder eine Konferenz aufgenommen werden, wenn er erfolgreich bereits veröffentlichte Ergebnisse reproduziert, anstatt ein neues Set zu erstellen. Es gibt eine gute Chance, dass die Prüfer sagen "wir wissen das bereits" und lehnen die Einreichung.

Die Voreingenommenheit in Richtung Neuheit in der Datenwissenschaft bedeutet, dass viele Forscher davon abgehalten werden, die Arbeit zu dokumentieren, zu testen und ihren Code und ihre Daten zu teilen. John Ioannidis veröffentlichte 2005 ein einflussreiches Papier mit dem Titel "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` in dem die vielen Faktoren, die zur Publikationsverzerrung beitragen, diskutiert werden. Angesichts dieser Voreingenommenheit ist es sehr wahrscheinlich, dass es in der Datenwissenschaft eine Menge doppelter Arbeit gibt. Zu viele verschiedene Forscher stellen die gleiche Frage. nicht bekommen die Antwort, die sie erwarten oder wollen, und dann nicht sagen, was sie gefunden haben.

Diese Barriere ist nicht spezifisch für die Rechenreproduzierbarkeit, wie wir sie in _der Turing Way_ definieren. Jedoch ist es eine große kulturelle Barriere für {ref}`transparente Kommunikation<cm>`und betrifft {ref}`Projektdesign<pd>`. _Die Turing Way_ Gemeinschaft befürwortet an allen Orten, die wir in der Lage sind für den systemischen kulturellen Wandel, der notwendig ist, um die aktuelle Publikation und akademische Kreditvergabe, zu neuem über die Strenge zu demontieren.

(rr-overview-barriers-standards)=
## An höheren Standards gehalten als andere

Ein Forscher, der seine Arbeit reproduzierbar macht, indem er seinen Code und seine Daten weitergibt, kann auf einem höheren Niveau gehalten werden als andere Forscher. Wenn Autoren überhaupt nichts teilen, dann können alle Leser eines Manuskripts oder eines Konferenzpapiers den Ergebnissen vertrauen (oder nicht vertrauen).

Wenn Code und Daten verfügbar sind, können Peer-Reviewer nach Unterschieden in der Implementierung suchen. Sie kommen vielleicht mit neuen Ideen zur Analyse der Daten zurück, weil sie mit der Arbeit experimentieren konnten. Es besteht das Risiko, dass sie dann zusätzliche Änderungen von den Autoren des eingereichten Manuskripts benötigen, bevor es zur Peer-Rezension angenommen wird.

Wie wir im {ref}`"Plead the Fifth" beschrieben haben<rr-overview-barriers-incentives>` Abschnitt oben, die Lösung für diese Herausforderung ist die Angleichung der beruflichen Anreize, so dass das Tun des Besten für _Wissenschaft_ auch den betroffenen Personen zugute kommt.

(rr-overview-barriers-promotion)=
## Nicht für Werbung berücksichtigt

Im gegenwärtigen akademischen System ist die nachgewiesene Fähigkeit, Stipendien zu erhalten und Studenten zu rekrutieren. Sowohl Förderstellen als auch zukünftige Studierende schätzen Neuheit und dieses Verhalten spiegelt sich in bevorzugt lohnenden Papieren mit einem hohen [Zeitschrifteneinflussfaktor](https://en.wikipedia.org/wiki/Impact_factor) wider. Es ist wahrscheinlich ein Teil des menschlichen Zustandes, von Dingen motiviert zu sein, die neu oder überraschend sind, aber, wie {ref}`oben diskutiert<rr-overview-barriers-publication>`, verursacht diese Voreingenommenheit in Richtung Neuheit eine systematische Publikationsverzerrung.

Allgemeiner ausgedrückt, neigt das Fördersystem in der Wissenschaft dazu, Einzelpersonen zu belohnen, die sich in ihrem Bereich als anders erwiesen haben als andere. Das bedeutet, dass die gemeinsame Nutzung von Code und Daten für "Wettbewerber" die gleiche Arbeit am Ende durch die Förderung und Finanzierung von Auswahlboxen entmutigt wird. Ein gutes Beispiel für diese Voreingenommenheit ist die Verleihung des Nobelpreises, die jedes Jahr nur an eine kleine Anzahl von Wissenschaftlern geht. und als solches ["übersieht viele seiner wichtigen Mitwirkenden"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, der Atlantik, 2017). Eines der Ziele von _Der Turing Way_ ist es, die Aufmerksamkeit auf die Fehlausrichtung des Arbeits- und Förderprozesses mit kooperativer und reproduzierbarer Datenwissenschaft zu lenken.

(rr-overview-barriere)=
## Große Daten und komplexe Recheninfrastruktur

Große Daten werden von verschiedenen Forschern auf unterschiedliche Weise konzeptualisiert. "Große" Daten können komplex sein, kommen aus einer Vielzahl von Datenquellen, sind groß im Speichervolumen und/oder werden mit sehr hoher zeitlicher Auflösung gestreamt. Obwohl es Möglichkeiten gibt, zufällige Samen zu setzen und Snapshots eines Datensatzes zu einem bestimmten Zeitpunkt zu machen Es kann schwierig sein, über verschiedene Durchläufe einer Analyse-Pipeline identische Daten zu haben. Dies ist insbesondere im Zusammenhang mit Werkzeugen zur Parallelrechnung. Zum Beispiel einige Daten wie Flugverfolgung oder Internet-Verkehr ist so groß, dass es nicht gespeichert werden kann und muss bearbeitet werden, wie es in Echtzeit gestreamt wird.

Eine häufigere Herausforderung für "Big Data" Forscher ist die Variabilität der Softwareleistung über die Betriebssysteme hinweg und wie schnell sich die Werkzeuge im Laufe der Zeit ändern. Ein fast ständig wechselndes Ökosystem der Informationstechnologien ist verfügbar Das heißt, in Zukunft Ergebnisse zu reproduzieren, ist sehr variabel und abhängig von der Verwendung vollkommen rückwärtskompatibler Werkzeuge, wie sie sich entwickeln. Sehr oft variieren die Ergebnisse statistischer Tests je nach Konfiguration der Infrastruktur, die in jedem der Experimente verwendet wurde, macht es sehr schwer, ein Ergebnis unabhängig zu reproduzieren. Experimente sind oft von einer zufälligen Initialisierung von iterativen Algorithmen abhängig, und nicht alle Software beinhaltet die Fähigkeit, eine Pseudorandom-Zahl zu reparieren, ohne die Parallelisierungsmöglichkeiten zu beschränken (zum Beispiel im Tensorflow). Diese Instrumente können tiefgreifende technische Fähigkeiten erfordern, die den Datenwissenschaftlern kaum zur Verfügung stehen. Das [Apache Hadoop](https://hadoop.apache.org/) Framework ist zum Beispiel extrem komplex, um Datenwissenschaftsexperimente ohne fundiertes Wissen über Software und Hardware einzusetzen.

Selbst "Standard" Hochleistungsrechner kann schwierig zu konfigurieren sein, um perfekt reproduzierbar zu sein, vor allem bei verschiedenen Cloud-Computing-Anbietern oder institutionellen Konfigurationen. _Die Turing Way_ enthält Kapitel zum Erlernen von Fähigkeiten von Datenwissenschaftlern in {ref}`reproduzierbare Rechenumgebungen<rr-renv>` einschließlich {ref}`Containern<rr-renv-containers>` wie Docker und Wege zu {ref}`Versionsverwaltung Ihrer Softwarebibliotheken<rr-renv-package>`. Wir sind immer [offen für weitere Beiträge](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) als Technologie, um reproduzierbare Forschung in sehr großen Datensätzen oder für komplexe Modellierung zu unterstützen.

(rr-overview-barriers-notright)=
## Reproduzierbar zu sein bedeutet nicht, dass die Antwort richtig ist

By making the code and data used to produce a result openly available to others, our results may be **reproduced** but mistakes made by the initial author can be carried through. Getting the same wrong answer each time is a step in the right direction, but still very much a **wrong** answer!

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science. Sie können die Rechenreproduzierbarkeit als notwendig erachten, aber nicht ausreichend für eine qualitativ hochwertige Forschung. Es bedarf eines kritischen Ansatzes, anstatt naiv vorhandene Software zu nutzen oder statistische Methoden einzuführen, ohne zu verstehen, was sie tun. Sehen Sie zum Beispiel [eine Diskussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) im August 2019, ob die Standardeinstellungen für Scikit-learn's Implementierung logistischer Regression für neue Benutzer irreführend sind. Um die ursprüngliche Forschung richtig zu bewerten und die Ergebnisse zu verstärken, sind Interpretations- und Interoperabilität erforderlich.

(rr-overview-barriers-time)=
## Verbraucht Zeit

Die Reproduzierbarkeit einer Analyse erfordert Zeit und Mühe, insbesondere zu Beginn des Projekts. Dies kann die Vereinbarung eines {ref}`Test-Frameworks beinhalten<rr-testing>`, das Einrichten von {ref}`Versionskontrolle<rr-vcs>` wie zum Beispiel ein Github Repository und {ref}`kontinuierliche Integration<rr-ci>`, und {ref}`zur Verwaltung von Daten<rr-rdm>`. Während des gesamten Projekts kann Zeit benötigt werden, um die reproduzierbare Pipeline aufrechtzuerhalten.

Die Zeit kann auch in der Kommunikation mit Mitarbeitern verwendet werden, um sich darüber zu verständigen, welche Teile des Projekts Open Source sein können und wann und wie diese Ausgaben gemeinsam genutzt werden. Forscher könnten herausfinden, dass sie ihre Kollegen "hochqualifizieren" müssen, damit das Team von Reproduzierbarkeitswerkzeugen wie Git und GitHub profitieren kann. Container, Jupyter Notebooks oder Datenbanken.

```{figure} ../../figures/help-you-of-the-future.jpg
---
Breite: 500px
Name: help-you-of-the-future
alt: Ein Cartoon einer Frau, der einen Ordner von Dokumenten an sich zurückgibt. Sprechblase sagt, Du hältst hauptsächlich Datensätze für dich in der Zukunft.
---
Obwohl das Erstellen klarer Dokumentation das Gefühl hat, dass es im Moment viel Zeit braucht Sie helfen Ihren Mitarbeitern und Ihren Mitarbeitern zu erinnern, was Sie getan haben, so dass es einfach ist, die Arbeit wiederzuverwenden oder in Zukunft Änderungen vorzunehmen.
Illustration von The Ludic Group LLP von Kirstie Whitaker's Keynote Präsentation bei Scientific Data 2017.
Wird unter einer CC-BY 4.0 Lizenz verwendet.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

_Die Turing Way_ Community setzt sich jedoch dafür ein, dass dieses Mal bis zum Ende des Projekts mehr als wettgemacht wird. Nehmen Sie als Gedankenexperiment einen Prüfer, der "nur eine weitere Analyse" fordert, wenn die Veröffentlichung in einer Zeitschrift eingereicht wurde. In vielen Fällen wird diese Anfrage 6 bis 12 Monate nach der Arbeit des Forschungsteams mit den Rohdaten kommen. Es kann sehr schwierig sein, in der Zeit zurückzukehren, um den einen Teil der Pipeline zu finden, um den der Überprüfer Sie gebeten hat, zu ändern. Wenn die Arbeit vollständig reproduzierbar ist, einschließlich versionskontrollierter Daten und Zahlengenerierung diese Analyse wird sehr schnell zu führen und in die endgültige Forschungsleistung zu integrieren. Die Analyse-Pipeline kann bei Bedarf auf Anfragen des Mitautors und des Prüfers angepasst werden. Es kann auch für zukünftige Forschungsprojekte leicht wiederverwendet werden.

(rr-overview-barriers-support)=
## Zusätzliche Benutzer unterstützen

Viele Leute befürchten, dass sie durch Reproduzierbarkeit ihrer Analyse viele Fragen von zukünftigen Benutzern ihres Codes beantworten müssen. Diese Fragen können Software-Inkompatibilität zwischen Betriebssystemen und die sich ändernden Abhängigkeiten im Laufe der Zeit betreffen (siehe {ref}`Große Daten und komplexe Recheninfrastruktur<rr-overview-barriers-infrastructure>` Barriere oben). Sie können auch Fragen darüber enthalten, wie der Code für einen anderen Zweck angepasst werden kann.

Diese Barriere basiert zum Teil auf der Vermischung von "reproduzierbar" mit "offenen" Forschung. Die _Turing Way_ {ref}`Definition von "reproduzierbar"<rr-overview-definitions>` erfordert keine Unterstützung der Erweiterung und Wiederverwendung der Daten und des Codes, die über die Ausführung der exakten Analysen, die die veröffentlichten Ergebnisse im begleitenden Manuskript generieren, hinausgehen.

In fast allen Fällen erfordert das Erstellen von Code und Daten Open Source bessere Dokumentation, als ein Forscher für sich selbst schreiben würde. Dies kann sich wie eine zusätzliche Barriere fühlen obwohl - wie im vorherigen Abschnitt über reproduzierbare Forschung {ref}`extra Zeit in Anspruch nehmen<rr-overview-barriers-time>` es wahrscheinlich ist, dass die primären Nutznießer von gut kommentiertem und getestetem Code mit detaillierter Dokumentation das Forschungsteam sind - insbesondere der Hauptuntersucher des Projekts - selbst.

(rr-overview-barriers-skills)=
## Benötigt zusätzliche Fähigkeiten

Wie Sie aus der stetig wachsenden Anzahl von Kapiteln in _der Turing Way_erzählen können, Eine reproduzierbare Arbeit erfordert Fähigkeiten, die nicht immer in Ausbildungsprogrammen gelehrt werden. Sie - oder jemand in Ihrem Team - müssen möglicherweise Fachwissen in der Datentechnik entwickeln, Recherche Software Engineering, Technisches Schreiben für Dokumentation oder Projektmanagement auf GitHub. Das ist eine große Barriere, wenn die derzeitigen Anreizstrukturen nicht mit dem Lernen dieser Fähigkeiten in Einklang stehen (siehe die Barrieren auf {ref}`plädieren für die fünfte<rr-overview-barriers-incentives>`, {ref}`Publikationsbias zu neuartigen Ergebnissen<rr-overview-barriers-publication>`, {ref}`hält höhere Standards als andere<rr-overview-barriers-standards>`, und {ref}`nicht als Promotion angesehen<rr-overview-barriers-promotion>`!) Dies ist jedoch die primäre Barriere, die wir bei _die Turing Way_ mit Ihnen abbauen. Wir hoffen, dass Sie diese Fähigkeiten mit uns lernen und dass Sie uns helfen, das Buch wie Sie zu verbessern.

> "Eine Reise von tausend Meilen beginnt mit einem einzigen Schritt" (chinesischer Philosoph [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Wir hoffen, dass wir durch unsere Bemühungen um die Erlernung einiger dieser wertvollen Fähigkeiten auch einige der strukturelleren Hindernisse für reproduzierbare Forschung abbauen.

## Weitere Lesungen und zusätzliche Ressourcen

Du kannst sehen, wie Kirstie Whitaker einige dieser Barrieren beschreiben in [ihr Vortrag über _den Turing Weg_](https://youtu.be/wZeoZaIV0VE?t=312) um [csv, onf,v4](https://csvconf.com/2019) im Mai 2019. Sie können ihre Folien unter einer CC-BY-Lizenz über Zenodo verwenden und wiederverwenden (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)). Der Abschnitt, der die Folie unten beschreibt, beginnt etwa 5 Minuten in das Video.
