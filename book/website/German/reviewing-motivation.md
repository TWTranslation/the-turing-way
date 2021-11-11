(rr-reviewing-Motivation)=
# Bedeutung und persönliche Vorteile

*Wie das dir helfen wird/ warum dies nützlich ist*

Wie bei [Test](#Testing), ein Hauptziel der Code-Überprüfung ist es, Fehler und schlechte Praxis von Änderungen an einem Software-Projekt zu entfernen, bevor diese Änderungen in die Haupt-Code-Basis eingeben. Sie hat jedoch auch eine Reihe anderer direkter und indirekter Vorteile für Projekte. Diese werden unten diskutiert.

Code-Rezensionen sind eine effektive Methode zur Verbesserung der Software-Qualität. McConnell (2004) legt nahe, dass Unit-Tests ungefähr 25% der Fehler entdecken, Funktion 35%, Integrationstest 45% und Code 55-60%. Während das bedeutet, dass keine dieser Methoden allein gut genug ist und dass sie kombiniert werden sollten, eindeutig Code Überprüfung ist hier ein wesentliches Werkzeug.

## Inhaltsverzeichnis

- [Fehler und elementare Fehler werden erfasst](#catching-bugs-and-elementary-errors)
- [Verbesserungen beim Testen](#improvements-to-testing)
- [Dokumentation](#documentation)
- [Lesbarkeit](#readability)
- [Stil durchsetzen](#style-enforcement)
- [Wissen und Zusammenhalt gruppieren](#group-knowledge-and-cohesion)

(rr-reviewing-motivation-bugs)=
## Fehler und elementare Fehler werden erfasst

Ein einfaches Ziel des Überprüfungsprozesses ist es, Fehler und elementare Fehler in den vorgeschlagenen Änderungen zu fangen, bevor sie es in den Stamm-Code machen. Auf diese Weise teilt die Code-Überprüfung Aspekte mit Tests. Ein solides Testprogramm sollte jedoch die Bedeutung der Codeüberprüfung für die Identifizierung dieser Art einfacher Fehler verringern. da die Tests sie fangen sollten, bevor der Code es macht, die Stufe zu überprüfen. Prinzipiell sollte sich diese Funktion der Code-Überprüfung auf triviale Änderungen wie Dokumentationstypen beschränken. In der Praxis jedoch fungiert die Überprüfung des Kodex als wichtige zweite Verteidigungslinie gegen alle möglichen Fehler und Fehler.

(rr-reviewing-motivation-improvements)=
## Verbesserungen beim Testen

Wie oben bereits erwähnt, sollte und tut dies häufig auch bei den vorgeschlagenen Änderungen des Codes tatsächlich Fehler auftreten. Das ist natürlich ein Zeichen dafür, dass die vorgeschlagenen Änderungen überhaupt nicht ausreichend getestet wurden. Ein wesentliches Ziel der Code-Überprüfung ist es, Orte im Code hervorzuheben, an denen bestehende oder neu entwickelte Testprozesse unzureichend sind. Auf diese Weise Code-Überprüfung hilft, die zukünftige Gesundheit der Codebasis zu gewährleisten, indem sie eine zweite Perspektive bietet, welche Art von Tests erforderlich sind - nicht nur jetzt. aber auch unter hypothetischen Szenarien, die in der Zukunft, wie sich der Code entwickelt.

(rr-reviewing-motivation-documentation)=
## Dokumentation

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
Eine sorgfältige Dokumentation<!--reference findet man hier, sobald ein Abschnitt existiert-->eine Schlüsselkomponente der Reproduzierbarkeit und der nachhaltigen Software im Allgemeinen. Die Code-Überprüfung bietet eine weitere Prüfung, ob die Dokumentation, die zusammen mit den vorgeschlagenen Code-Änderungen zur Verfügung gestellt wird, zweckmäßig ist. Dies ist doppelt wertvoll, da der Reviewer von außerhalb des Entwicklungsprozesses eine klarere Perspektive als der Codierer haben kann, ob die neue Dokumentation zum ersten Mal genügend Informationen für einen Benutzer bietet, der zum Code kommt.

Diese Art von Feedback auf Dokumentationen gilt gleichermaßen für anwenderorientierte Dokumentation wie auch für Inline-Kommentare.

(rr-reviewing-motivation-readability)=
## Lesbarkeit

Im Zusammenhang mit der Dokumentation kann die Überprüfung des Codes auch dazu beitragen, dass der Code lesbar und leicht verständlich ist. Ein zweites Paar Augen kann helfen, Bereiche zu finden, in denen der Code schwer zu befolgen ist. Je lesbarer Ihr Code ist, desto einfacher wird es für andere Entwickler sein, Ihren Code für ihre eigenen Zwecke zu reproduzieren.

(rr-reviewing-motivation-enforcement)=
## Stil durchsetzen

Viele Projekte erzwingen bestimmte {ref}`Code-Stilrichtlinien<rr-code-quality>`, sind die weit verbreiteten Standards (z. B. [PEP8](https://www.python.org/dev/peps/pep-0008/), der [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)) oder mehr projektspezifische Konventionen. [Automatisierte Dienste](../../code_quality/code_quality#online-services-providing-software-quality-checks) bieten einen bequemen Weg, um einen Code-Stil durchzusetzen und die Diskussion über die Code-Qualität zu beginnen. Die Überprüfung des Kodex bietet die Möglichkeit, sicherzustellen, dass alle vorgeschlagenen Änderungen die Mindestanforderungen für das Projekt erfüllen.

(rr-reviewing-motivation-knowledge )=
## Wissen und Zusammenhalt gruppieren

## Style-Durchsetzung

Viele Projekte erzwingen bestimmte [Code-Stilrichtlinien](../../code_quality/code_quality#coding-style), egal ob es sich um weit verbreitete Standards handelt (zum Beispiel [PEP8](https://www.python.org/dev/peps/pep-0008/), der [Google C++ Styleguide](https://google.github.io/styleguide/cppguide.html)) oder mehr projektspezifische Konventionen . [Automatisierte Dienste](../../code_quality/code_quality#online-services-providing-software-quality-checks) bieten einen bequemen Weg, um einen Code-Stil durchzusetzen und die Diskussion über die Code-Qualität zu beginnen. Die Überprüfung des Kodex bietet die Möglichkeit, sicherzustellen, dass alle vorgeschlagenen Änderungen die für das Projekt erforderlichen Mindeststandards erfüllen.


## Gruppenwissen und Kohäsion

Die Praktiken zur Überprüfung von Kodexen bieten wesentliche Vorteile über die bloße Verteidigung der Gesundheit des Stamm-Codes eines Projekts hinaus, wenn Änderungen vorgeschlagen werden. Peer-to-Peer Review schafft einen zweiseitigen Informationsaustausch über einen Webstrung zwischen allen Mitwirkenden eines Teams. Dies ermöglicht einen effektiven, organischen Transfer von Best Practices.

Auch im richtigen Geiste durchgeführte Bewertungen (siehe insbesondere [hier](#Be_nice)) dienen einem wichtigen Zweck, Teammitglieder zusammenzuführen und GruppenZusammenhalt zu schaffen. Insbesondere können gute Bewertungen von Teammitgliedern der Arbeit von Neuankömmlingen an einem Projekt dazu beitragen, dass sich diese Neuankömmlinge willkommen und geschätzt fühlen. und ermutigen ihre weitere Beteiligung.
