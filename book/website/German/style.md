(ch-Stil)=
# Style Guide

Um sicherzustellen, dass das Buch leicht von allen gelesen werden kann, einschließlich Screenreader und Nicht-Muttersprachler, wir haben eine Reihe von Richtlinien zusammengestellt, um einen konsistenten Stil für alle Kapitel des Buches zu erhalten.

Wir befolgen die [GOV.UK Anleitung](https://www.gov.uk/guidance/content-design/writing-for-gov-uk) um die Zugänglichkeit der Ressourcen zu verbessern in _The Turing Way_.

## Schreibe jeden Satz in eine neue Zeile (Zeilenumbrüche)

Bitte tragen Sie alle Sätze in die Markdown-Datei in separate Zeilen ein. Jeder Satz in einer neuen Zeile ändert nichts daran, wie der Text angezeigt wird, es wird immer noch Absätze geben, aber es wird bedeuten, dass alle Pull-Requests leichter zu überprüfen sind; die Änderungen werden auf einer einzigen Zeile statt irgendwo in einem Absatz sein. Betrachten Sie das folgende Beispiel.

 ```
Heute bist du du, das ist wahrer als wahr. Es ist niemand lebendig, der Sie ist als Sie. - Dr Seuss
```

Ein Pull-Request zu dieser Korrektur, dass ein „.“ nach Dr. Dr. würde als eine Änderung des gesamten Absatzes zeigen. Vergleichen Sie dies mit dem nächsten Beispiel, das auf die gleiche Weise online angezeigt wird, aber eine Änderung zu einer einzigen Zeile sehen würde.

 ```
Heute bist du du, das ist wahrer als wahr.
Es ist niemand lebendig, der Sie ist als Sie.
- Dr Seuss
```

## Meinungen sind willkommen, aber ...

_Das Turing Way_ Buch soll nur *leicht* gewertet werden. Obwohl mehr Meinungen über Inhalte erlaubt sind, sollten diese Inhalte klar gekennzeichnet sein. Der beste Weg, dies zu tun, ist die Anzeige in einem Zitatkasten. Dies kann durch Voreinstellen jeder Zeile mit dem größer als dem Symbol `>` erreicht werden. Beachten Sie, dass die Formatierung beibehalten wird, so dass wir jeden Satz wie bisher in eine neue Zeile teilen können.

```
> Ich werde sie nicht in einem Haus essen,
> i i wird sie nicht mit einer Maus essen,
> i will not eat them in a box i will not eat them with a fox,
> i will not eat them here of there i will not eat them anywhere, where
> Ich mag keine grünen Eier und Schinken ich mag sie sam i am
```

## Lateinische Abkürzung vermeiden

Bitte verwenden Sie keine lateinischen Abkürzungen. Details finden Sie in den [Gov.uk Empfehlungen](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style).

Einige dieser Abkürzungen sind:

```{figure} ../figures/latin-abbreviation.png
---
Höhe: 400px
Name: latin-Abkürzung
alt: ein Bild mit einer Liste von 3 lateinischen Abkürzungen
---
Eine Liste von lateinischen Abkürzungen für *exempli gratia* (zum Beispiel), *et-cetera* (so weiter), und *id est* (das ist).
Screenshot eines Teils der [Liste der gewöhnlichen lateinischen Abkürzungen für APA-Style](https://blog.apastyle.org/files/apa-latin-abbreviations-table-2.pdf).
```

Anstelle der ersten Abkürzung in der Tabelle für *exempli gratia*, die manchmal laut vorgelesen werden kann als "egg" nach der Bildschirmauslese-Software Bitte verwenden Sie „zum Beispiel“ oder „so als“ oder „Gefällt mir“ oder „einbeziehen“ – je nachdem, was im jeweiligen Kontext am besten funktioniert.

Anstelle der zweiten Abkürzung in der Tabelle für *et-cetera* um eine offene Liste anzuzeigen Bitte beginnen Sie die Liste mit Wörtern wie „zum Beispiel“ oder „wie“ oder „like“ oder „including“.

Anstelle der dritten Abkürzung in der Tabelle für *id est* die häufig zur Klärung eines Satzes verwendet wird Versuchen Sie (wiederholen) Sätze zu schreiben, um zu vermeiden, dass sie verwendet werden müssen. Wenn dies nicht möglich ist, verwenden Sie eine Alternative wie „Bedeutung“ oder „das“.

Jedes Kapitel, das eine lateinische Abkürzung enthält, wird die kontinuierliche Integration (CI)-Workflow des _Der Turing Weg_ GitHub Repository nicht erfolgreich passieren, welches von diesem [Python-Skript](https://github.com/alan-turing-institute/the-turing-way/blob/main/tests/no-bad-latin.py) getestet wird.

*Um zu vermeiden, dass CI fehlschlägt, auch in diesem Kapitel haben wir es vermieden, diese Abkürzungen zu schreiben und stattdessen ein Bild zu verwenden, um die obigen Beispiele zu illustrieren.*

## Tipps

### Einrückung

Den Inhalt nach jedem Element einer nummerierten Liste einrücken. Wenn der Inhalt nicht eingerückt ist, wird die Listennummerierung zurückgesetzt.

Zum Beispiel bitte vermeiden:
1. Erstes Listenelement
```
Dieser Inhalt gehört zum ersten Listenelement.
```
2. Zweites Listenelement

Stattdessen wird folgendes empfohlen:
1. Erstes Listenelement
   ```
   Dieser Inhalt gehört zum ersten Listenelement.
   ```

2. Zweites Listenelement


### Externe Links

Schreibe externe Links mit "http://" anstelle von "www". Dies stellt sicher, dass sie als Hyperlinks richtig erkannt werden.
