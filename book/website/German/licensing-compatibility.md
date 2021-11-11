(rr-licensing-Kompatibilität)=
# Lizenzkompatibilität

Wenn Sie mehrere externe Komponenten in Ihrem Programm verwenden, können Sie am Ende mehrere verschiedene Einschränkungen der Lizenz des kombinierten Werkes haben. Wenn diese Einschränkungen widersprechen, können Sie das Ergebnis nicht rechtmäßig verteilen (falls proprietäre Software involviert ist dann können Sie unter Umständen die kombinierte Arbeit überhaupt nicht rechtlich machen).

Wenn zwei Lizenzen inkompatible Einschränkungen der Lizenz des kombinierten Werks angeben, dann sind sie _inkompatibel_.

Die GNU GPL, zum Beispiel, ist nicht kompatibel mit proprietären Lizenzen, weil es verlangt, dass das kombinierte Werk unter der GPL lizenziert wird, ohne dass zusätzliche Einschränkungen zulässig sind. Ein Teil des Werkes unter einer proprietären Lizenz zu haben ist eine solche zusätzliche Einschränkung, so dass Sie eine solche Kombination nicht verbreiten können (es sei denn, der Copyright-Besitzer des GPL-Codes gibt eine besondere Erlaubnis).

Wenn Sie verschiedene Teile der Software zusammen verwenden, um ein Problem zu lösen und wollen das Ergebnis verteilen, hier sind die Fragen, die Sie beantworten müssen:

- Welche einzelnen Werke gibt es, und was ist daraus abgeleitet?
- Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?
- Wie sollen die Arbeit(en) lizenziert werden?

Der nächste Abschnitt zeigt einige Beispiele dafür, wie das gemacht wird.

(rr-licensing-kompatible Beispiele)=
## Beispiele

Viele Beispiele in diesem Abschnitt beziehen sich auf [xtas](http://xtas.net). xtas ist ein natürliches Sprachverarbeitungs-Toolkit für Python, das viele Bibliotheken von Drittanbietern wiederverwendet -Programme und Datensets zur Verfügung stellen und somit eine Vielzahl ausgezeichneter Beispiele liefern.

```{figure} ../../figures/xtas-overview96.png
---
Name: xtas-overview96
alt: Eine grafische Übersicht über xtas. Ein großes Rechteck repräsentiert die kombinierte Arbeit xtas. Innerhalb dieses Rechtecks gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Darunter befinden sich drei nebeneinander stehende Quadrat, die jeweils Python-Bibliotheken, Software und Daten repräsentieren, die von xtas verwendet werden. Innerhalb der Python-Bibliotheken Quadrat gibt es drei Kästchen. Das erste Feld enthält die Wörter "BSD", "MIT" und "ALv2". Das zweite Feld enthält "LGPLv2.1". Das dritte Feld enthält "GPLv2+". Innerhalb der Software gibt es vier Kästchen. Das erste Feld enthält "Web Service". Das zweite Feld enthält "LGPL v2.1+". Die dritte Box enthält "Nur Forschung" und die vierte Box "GPL 2+/3+". Das Datenquadrat enthält auch vier Kästchen. Das erste Feld enthält "CC BY-SA 3.0". Das zweite Feld enthält "Nur forschen". Die dritte Box enthält "No license, US" und die vierte Box enthält "CoNLL'02 only".
---
Eine grafische Übersicht über xtas.
```

xtas selbst ist in Python geschrieben und verwendet eine Reihe von Python-Bibliotheken, die unter gängigen freien Lizenzen lizenziert sind. Dazu gehören die einfachen permissiven BSD- und MIT-Lizenzen, die permissive Apache License Version 2. (ALv2), die GNU Lesser General Public License Version 2.1 (LGPLv2.1) und die GNU General Public License Version 2 oder höher (GPLv2+).

(Beachten Sie, dass die Abhängigkeit von der GPLv2+ Python-Bibliothek veraltet ist, aber um dieser Beispiele willen gehen wir davon aus, dass es noch da ist.)

xtas' Python-Code wird unter der Apache License Version 2.0 vertrieben. Da die xtas Autoren das Urheberrecht besitzen, Sie können es nach Belieben lizenzieren (obwohl es eine Grauzone über GPL-Abhängigkeiten gibt, siehe unten). Die xtas Autoren verteilen keine kombinierten Werke oder Binärdateien sondern in den folgenden Beispielen, Wir gehen davon aus, dass es ein gemeinsames Werk gibt, so dass wir überlegen können, wie es lizenziert werden sollte.

In den folgenden Beispielen werden wir den größten Teil davon vereinfachen und uns eine oder einige Abhängigkeiten ansehen.

(rr-licensing-kompatibility-examples-apachevsbsd)=
### Apache vs. BSD

```{figure} ../../figures/xtas-snowball96.png
---
Name: xtas-snowball96
alt: Eine Illustration des xtas vs. Snowball Beispiels.  Ein großes Rechteck repräsentiert die kombinierte Arbeit xtas. Innerhalb dieses Rechtecks gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Unten befindet sich ein Quadrat mit den Wörtern "Snowball Stemmer" und "Python lib BSD".
---
Eine Illustration des xtas vs. Snowball Beispiels.
```

xtas verwendet [Schneeball](https://snowballstem.org/), eine Python-basierte stemming Bibliothek. Snowball wird unter der 3-Klausel BSD Lizenz veröffentlicht. Wenn wir nur xtas und Snowball betrachten, können wir die drei Fragen wie folgt beantworten:

#### Welche einzelnen Werke gibt es, und was ist daraus abgeleitet?

Es gibt drei Arbeiten: Snowball, der xtas Python Code und die kombinierte Arbeit xtas. Die kombinierte Arbeit ist von Snowball und xtas Python Code abgeleitet, die beide unabhängige Werke sind.

Beachten Sie, dass die ALv2 und die LGPL v2. geben Sie ausdrücklich an, dass der Quellcode, der in Kombination mit einer Bibliothek funktionieren soll, kein abgeleitetes Werk ist während das Binärprogramm, das aus (statisch oder dynamisch) der Verbindung der Teile resultiert, besteht. Andere Lizenzen, einschließlich der GPL, geben hierzu keine ausdrückliche Erklärung ab.

Soweit ich weiß, gibt es diesbezüglich keine Rechtsprechung; wir gehen davon aus, dass dies bei diesen Beispielen der Fall ist.

#### Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?

Snowball ist unter einer Lizenz lizenziert. Es kann unter dieser Lizenz weitervertrieben werden, und es gibt keine Einschränkungen für die Lizenz von abgeleiteten Werken. Die xtas Autoren können es beliebig lizenzieren.

#### Wie sollen die Arbeit(en) lizenziert werden?

Der xtas Python-Code und das xtas kombinierte Werk sind unter der Apache Lizenz v2.0 lizenziert.

Wenn xtas Autoren Snowball weiterverteilen, müssen sie dies unter der von Snowball-Autoren gewährten BSD-Lizenz tun. (Sie können keine zusätzlichen Berechtigungen für Snowball erteilen, da sie das Urheberrecht nicht besitzen und zusätzliche Einschränkungen aus demselben Grund nicht durchsetzbar sind.)

(rr-licensing-kompatibility-examples-apachevslgpl)=
### Apache gegen LGPL

```{figure} ../../figures/xtas-chardet96.png
---
Name: xtas-chardet96
alt: Eine Illustration des Beispiels xtas vs. chardet. Ein großes Rechteck repräsentiert die kombinierte Arbeit xtas. Innerhalb dieses Rechtecks gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Unten befindet sich ein Quadrat mit den Wörtern "chardet" und "Python lib LGPLv2.1".
---
Eine Illustration des xtas vs. chardet Beispiels.
```

xtas verwendet [chardet](https://pypi.org/project/chardet/), eine Python-Bibliothek, um den Zeichensatz zu erkennen, der in einem Text-String verwendet wird. Chardet wird unter der GNU Lesser General Public License v2.1 veröffentlicht. Unter Berücksichtigung von xtas und chardet, können wir die drei Fragen wie folgt beantworten.

#### Welche einzelnen Werke gibt es, und was ist daraus abgeleitet?

Es gibt drei Arbeiten: chardet, der xtas Python Code und die kombinierte Arbeit. Die kombinierte Arbeit ist von chardet und xtas Python Code abgeleitet. Die anderen sind unabhängige Werke.

#### Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?

Chardet ist unter einer schwachen Copyleft Lizenz lizenziert, so dass es unter den Bedingungen dieser Lizenz weitervertrieben werden kann. Derivative Werke können unter jeder Lizenz lizenziert werden. Die LGPL v2.1 setzt jedoch voraus, dass der Empfänger die Bibliothek ändern kann (und darf) und die modifizierte Bibliothek mit dem abgeleiteten Werk nutzen darf.

#### Wie sollen die Arbeit(en) lizenziert werden?

xtas als Ganzes und der xtas Python-Code können in beliebiger Weise lizenziert werden, so dass sie die Apache Lizenz v2.0 verwendet haben. Wenn sie chardet verbreiten, müssen sie dies unter der Lizenz LGPL v2.1 tun, die von ihren Urheberrechtsinhabern gewährt wird.

(rr-licensing-kompatibility-examples-apachevsgplv2)=
### Apache gegen GPLv2

```{figure} ../../figures/xtas-unidecode96.png
---
Name: xtas-unidecode96
alt: Eine Abbildung des xtas vs. unidecode Beispiel. Das große Rechteck repräsentiert die kombinierte Arbeit xtas. Innerhalb dieses Rechtecks gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Unten befindet sich ein Quadrat mit den Wörtern "Unidecode" und "Python lib GPLv2+".
---
Eine Illustration des xtas vs. unidecode Beispiel.
```

xtas hat zuvor [unidecode](https://pypi.org/project/Unidecode/)verwendet, eine Python-Bibliothek, um Text zu konvertieren, der gemäß Unicode® Standard in eine ASCII-Annäherung umgewandelt wurde. Unidecode wird unter der GNU General Public License Version 2 oder höher (GPLv2+) veröffentlicht. Unter Berücksichtigung von xtas und unidealem Code, können wir die drei Fragen wie folgt beantworten.

#### Welche einzelnen Werke gibt es, und was ist daraus abgeleitet?

Es gibt drei Arbeiten: Unidecode, der xtas Python Code und die kombinierte Arbeit. Das kombinierte Werk stammt aus dem Unidecode und dem xtas Python-Code.

Ob der xtas Python-Code ein abgeleitetes Werk von Unidecode ist, ist vom Gesetz nicht klar definiert und dazu gibt es keine Rechtsprechung. Die Apache-Lizenz und die LGPL geben ausdrücklich an, dass sie nicht für den Zweck dieser Lizenzen bestimmt ist aber die GPL enthält keine solche Klausel.

Da sie separat entwickelt werden und es keinen Code von Unidecode im xtas Code gibt wir gehen hier davon aus, dass es sich nicht um ein abgeleitetes Werk.

#### Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?

Unidecode ist unter einer starken Copyleft Lizenz lizenziert, so dass es unter den Bedingungen dieser Lizenz weitervertrieben wird. Derivative Werke müssen unter der gleichen Lizenz lizenziert sein.

Unidecode ist unter der GPL Version 2 oder höher lizenziert. Dies ist als _Disjunktive Lizenz_ bekannt. Die Copyright-Besitzer von Unidecode bieten jedem eine GPLv2-Lizenz an, aber auch eine GPLv3-Lizenz, und sogar proaktiv jede spätere Version der GNU GPL, die in Zukunft erstellt werden kann. Ein potenzieller Nutzer kann sich entscheiden, eine dieser Lizenzen anzunehmen, oder eine Kombination von ihnen, wenn sie das Werk kopieren oder abgeleitete Werke machen wollen.

#### Wie sollen die Arbeit(en) lizenziert werden?

Wenn die xtas Autoren unidecode verbreiten, sollten sie dies unter der GPL Version 2 oder höher tun da das Entfernen von Lizenzen aus dem Code eines anderen nicht sinnvoll ist. Das kombinierte Werk xtas muss unter den gleichen Lizenzen oder einer Teilmenge von ihnen vertrieben werden. Der xtas Python-Code kann beliebig lizenziert werden.

Die xtas Autoren sollten eine Lizenz für den xtas Python-Code wählen, der mit mindestens einer der Lizenzen kompatibel ist, unter denen Unidecode verteilt werden kann, so dass andere kombinierte Werke zusammenbauen und verteilen können. Der ALv2 ist kompatibel mit dem GPLv3 (aber nicht mit dem GPLv2, aus technischen Gründen), so dass sie es hier verwenden können.

Die kombinierte Arbeit sollte dann unter der GPL Version 3 oder höher lizenziert werden. Wenn es wichtig ist, dass es auch im Rahmen der GPLv2 verwendet werden kann dann können die xtas Autoren den xtas Python Code sowohl unter ALv2 als auch unter GPLv2 lizenzieren (bedeutet, Sie bieten beide Lizenzen an, und der Benutzer kann wählen, entweder oder beides zu akzeptieren) und die kombinierte Arbeit unter der GPL Version 2 oder höher.

Schließlich kann später entschieden werden, dass der xtas Python-Quellcode ein abgeleitetes Werk von Unidecode ist, da er in ihn aufruft. Auch wenn keiner von Unidecode in der Arbeit enthalten ist dann müssen die xtas Autoren den xtas Python-Code unter mindestens einer der GPL-Lizenzen verteilen, unter denen Unidecode verteilt wird. In diesem Fall können sie xtas unter dem ALv2- und GPLv2+-Lizenzsatz anbieten.

Die einfachste Lösung wäre in diesem Fall, einfach den xtas Python Code und das abgeleitete Werk unter der GPLv3 zu lizenzieren.

Wahrscheinlich ist jetzt klar, Abhängigkeiten unter einer starken Copyleft Lizenz komplizieren Ihr Leben, wenn Sie möchten, dass Leute proprietäre Werke auf Basis Ihrer Software erstellen können.

(rr-licensing-kompatibility-examples-apachevsall)=
### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../figures/xtas-all-python-libs96.png
---
Name: xtas-all-python-libs96
alt: Eine Illustration der xtas und aller Python-Bibliotheken. Ein großes Rechteck repräsentiert die kombinierte Arbeit xtas. Innerhalb dieses Rechtecks gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Darunter befinden sich drei Plätze. Das erste Quadrat enthält die Wörter "Snowball" und "Python lib BSD". Das zweite Quadrat enthält "chardet" und "Python lib LGPLv2.1". Das dritte Quadrat enthält die Wörter "unidecode" und "Python lib GPLv2+".
---
Eine Illustration der xtas und aller Python-Bibliotheken.
```

Jetzt werden wir alle drei der oben genannten Beispiele gleichzeitig berücksichtigen.

#### Wie viele einzelne Werke gibt es und was ist daraus abgeleitet?

Es gibt fünf Werke: Snowball, chardet, unidecode, der xtas Python Code und xtas die kombinierte Arbeit. Die kombinierte Arbeit wird aus allen ihren Bestandteilen abgeleitet.

#### Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?

Die vier nicht-xtas Komponenten stehen unter freien Software-Lizenzen, und die xtas Autoren besitzen das Copyright für den xtas Python-Code so dass alle fünf Komponenten von den xtas Autoren verteilt werden können. Die BSD, LGPLv2. und GPLv2+ erlauben alle die Lizenzierung der kombinierten Arbeit unter der GPL Version 2 oder höher, so gibt es mindestens eine Lizenz, unter der das kombinierte Werk lizenziert werden kann.

#### Wie sollen die Arbeit(en) lizenziert werden?

Der xtas Python-Code sollte unter der Apache Lizenz v2 und der kombinierten Arbeit unter der GPL Version 3 oder höher lizenziert werden. (Siehe das Beispiel {ref}`Unicode <rr-licensing-compatibility-examples-apachevsgplv2>` oben für Alternativen.)


### Externes Programm anrufen

xtas kann das [Stanford CoreNLP Programm](https://stanfordnlp.github.io/CoreNLP/)betreiben, das in Java geschrieben und unter der GNU GPL Version 3 oder höher verbreitet ist. Wenn der Benutzer die entsprechende xtas Funktion aufruft, wird CoreNLP von xtas gestartet, die Eingabe des Benutzers über eine Rohrleitung an ihn gesendet wird, und dann wird die Ausgabe von CoreNLP an den Benutzer zurückgegeben oder weiterverarbeitet.

```{figure} ../../figures/xtas-corenlp1-96.png
---
Name: xtas-corenlp1-96
alt: Eine Illustration des Beispiels xtas vs. CoreNLP. Das Quadrat repräsentiert die kombinierte Arbeit xtas. In diesem Quadrat gibt es ein breites niedriges Rechteck an der oberen Stelle, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Unten befindet sich ein Quadrat mit den Wörtern "Stanford CoreNLP" und "Java Programm GPLv3+".
---
Eine Illustration des xtas vs. CoreNLP Beispiels.
```

Eine Interpretation dieser Situation ist, dass sie nicht anders ist als Aufruf einer Funktion in einer Bibliothek und dass jede Verteilung von xtas, als Ganzes, einschließlich CoreNLP, sollte daher unter die GPLv3+. Zu dieser Interpretation beizutragen ist die Tatsache, dass xtas CoreNLP bei Bedarf automatisch herunterladen und installieren wird.

```{figure} ../../figures/xtas-corenlp2-96.png
---
Name: xtas-corenlp2-96
alt: Eine weitere Illustration des Beispiels xtas vs. CoreNLP. Das Quadrat auf der linken Seite repräsentiert die kombinierte Arbeit xtas. In diesem Quadrat gibt es ein Rechteck, das den xtas Python-Code repräsentiert, lizenziert unter der Apache Lizenz v2. Rechts befindet sich ein separates Quadrat mit dem Text "Stanford CoreNLP" und "Java Programm GPLv3+". Zwischen den Quadraten befinden sich zwei Pfeile, eine am oberen Rand von xtas nach CoreNLP, und eine am unteren Ende von CoreNLP nach xtas.
---
Eine weitere Illustration des xtas vs. CoreNLP Beispiels.
```

Eine weitere Interpretation ist, dass xtas und CoreNLP separate Arbeiten sind und dass xtas lediglich über seine Standard-Benutzeroberfläche mit CoreNLP kommuniziert.

In dieser Interpretation ist xtas ein separates Programm, das einem Benutzer hilft, das CoreNLP-Programm von der Python-Sprache zu nutzen und nicht ein abgeleitetes Werk von CoreNLP. Man kann xtas hier als analog zu einem Paketinstaller und einer Kommando-Shell betrachten die eindeutig keine abgeleiteten Werke der von ihnen installierten Pakete oder der von ihnen gestarteten Programme sind.

Unter dieser Interpretation xtas als Ganzes (nicht einschließlich CoreNLP) kann unter einer gegebenen Lizenz vertrieben werden (vorbehaltlich der Einschränkungen durch seine anderen Abhängigkeiten natürlich).

In der Praxis verteilen die xtas Autoren CoreNLP überhaupt nicht; sie verteilen nur den xtas Python-Code unter der Apache License Version 2.


### GPLv3 gegen Proprietäre Lizenz

In diesem Beispielprojekt wollen wir das [OpenIFS global circulation model](https://confluence.ecmwf.int/display/OIFS) mit dem [DALES großformatigen Simulationsmodell](https://github.com/dalesteam/dales) kombinieren. Beide Modelle sind als Bibliotheken verfügbar, so dass das Projekt die OpenIFS und Dales Bibliotheken zu einem einzigen Programm kombiniert.

(Dies ist ein vereinfachtes Beispiel, die Realität dieses Projekts ist ein oder zwei komplizierter, und das unten ist nicht genau das, was wir tun.)

Die OpenIFS Bibliothek (Teil des ECMWF Wettermodellcodes) ist unter einer proprietären Lizenz verfügbar, die es erlaubt, das Programm auszuführen und private Änderungen zu machen, aber nicht erlaubt, das Programm oder irgendwelche Derivate zu vertreiben. DALES wird unter der GPL Version 3 veröffentlicht.

#### Wie viele einzelne Werke gibt es und was ist daraus abgeleitet?

Es gibt vier Werke: OpenIFS, DALES, der Rest des Programms geschrieben von uns, und die Kombination von ihnen alle. Die kombinierte Arbeit wird aus ihren Komponenten abgeleitet.

#### Können die abgeleiteten Werke verteilt werden? Sind die Lizenzen zulässig, und sind sie kompatibel?

Die OpenIFS-Lizenz erlaubt keine Weitergabe, daher kann sie nicht verteilt werden. DALES kann unter der GPLv3 vertrieben werden. Der Rest des Programms ist von uns geschrieben und kann von uns lizenziert werden, wenn wir es wünschen.

Die gesamte kombinierte Arbeit kann nicht verteilt werden, da sie OpenIFS beinhaltet. Wenn es OpenIFS nicht enthielt, müsste es aufgrund der DALES-Abhängigkeit unter der GPLv3 verteilt werden.

#### Können wir daran privat arbeiten, ohne etwas zu verteilen?

Die GPL erlaubt private Änderungen an Software, die von ihr abgedeckt sind, ohne Einschränkungen, sofern die geänderte Software überhaupt nicht verteilt wird. Die OpenIFS-Lizenz erlaubt auch private Modifikationen. So können wir an diesem Projekt arbeiten (und kombinierte Werke vorbereiten und ausführen), ohne die Lizenzen zu verletzen, solange wir die Ergebnisse mit niemandem teilen.

Wenn wir jedoch mit jemandem außerhalb unserer Organisation zusammenarbeiten wollen, bedeutet dies, dass wir Materialien zwischen verschiedenen juristischen Personen austauschen, was als Verteilung zählt. Wir können das mit unserem eigenen Code tun (den wir sogar offen unter dem ALv2 veröffentlichen können) und mit DALES aber nicht mit OpenIFS oder einem kombinierten Werk.

#### Welche anderen Möglichkeiten gibt es in einer solchen Situation?

Wir können versuchen, das System in unabhängige Programme aufzuteilen, die in separaten Prozessen laufen und über gut dokumentierte generische Schnittstellen miteinander kommunizieren. Auf diese Weise gäbe es nie ein gemeinsames Werk, sondern nur ein paar unabhängige Arbeiten, die Informationen austauschen. Um jedoch nicht als ein einziges Werk betrachtet zu werden, ist unklar, wie die Programme voneinander getrennt sein müssen.

Wir könnten auch die Urheberrechtsinhaber von OpenIFS und DALES um Erlaubnis bitten, kombinierte Werke zwischen unserer Organisation und dem Außenstehenden zu teilen. Das würde alle Unsicherheiten beseitigen, aber vielleicht nicht ganz praktikabel.

Eine weitere Option wäre, eine der Abhängigkeiten durch eine zu ersetzen, die wir schreiben. Dies ist in der Regel nicht praktikabel, sowohl wegen zeitlicher Zwänge als auch weil die neue Version nicht den wissenschaftlichen Stammbaum der bestehenden haben würde.

Das grundlegende Problem dabei ist, dass die GPL versucht, alle Beteiligten an der von uns verwendeten Software teilhaben zu lassen. während proprietäre Software versucht, die Kontrolle in den Händen eines einzelnen Eigentümers zu halten.

Sie in einem einzigen Projekt zu kombinieren ist kompliziert und nicht ohne legales Risiko, und Sie sollten es vermeiden. Wenn dies nicht möglich ist, sollten Sie vorsichtig vorgehen.
