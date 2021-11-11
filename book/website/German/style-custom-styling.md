(ch-style-custom-style)=
# Eigenes Styling

Obwohl der Inhalt zu _der Turing Way_ beigetragen hat, sollte er in {ref}`Markdown <ch-consistency-formatting-hr-markdown>` geschrieben werden, wo möglich manchmal ist die Syntax von `HTML` notwendig, um Ihren Beitrag so zu formatieren, wie Sie es wünschen. Jupyter Book konvertiert Markdown Syntax bereits in `HTML`, ermöglicht eine Web-Version von _dem Turing Way_ Buch. Infolgedessen Wenn Sie Ihr eigenes benutzerdefiniertes `HTML` schreiben, können Sie Abweichungen in der Art und Weise einführen, wie Ihr neuer Inhalt im Vergleich zum Rest des Buches online erscheint.

Um diesen Unterschied zu verringern: _Die Turing Way_ hält buchweite [Stylesheets](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) , die das Erscheinungsbild des Buchinhalts steuern. Wenn du `HTML` in deine Beiträge einfügst, bitte beachten Sie diese Stylesheets und fügen Sie die dort definierten relevanten Klassen und IDs zu Ihren `HTML` Elementen hinzu. Dadurch wird sichergestellt, dass Ihre neuen Inhalte dem Gesamtstil von _The Turing Way_ entsprechen.

In diesem Unterkapitel geben wir Ihnen eine Erklärung, wie Sie die Stylesheets des Buches in Beispiel-Anwendungsfällen einbetten können. Wenn Sie den Stil des Buches verbessern wollen, bietet dieses Unterkapitel auch einen kurzen Überblick darüber, wie das zu tun ist.

(ch-style-custom-stylesheets)=
## Verwendung der Stylesheets

(ch-style-custom-style)=
### Videos

Während es möglich ist, Bilder und GIFs mit Markdown Syntax in Ihren Inhalt einzubinden, es ist derzeit nur möglich Videos mit `HTML` einzubetten. Mehr so, wir empfehlen nicht, Videos direkt zu _der Turing Way's_ Github Repository hinzuzufügen, da die Videodateien normalerweise groß sind und das Buch viel langsamer laden lassen besonders für Leser mit langsamen Internetverbindungen.

Um ein Video zu Ihrem Beitrag hinzuzufügen, laden Sie es zuerst auf _Der Turing Way's_ Youtube Kanal hoch kopieren/einfügen dann den `HTML` Code, der generiert wird, wenn Sie:
1. Klicke auf die `Share` Option unter dem Video,
1. Und dann klicken Sie auf die `Einbettung` Option aus dem Bereich der Optionen, die angezeigt werden.


Der `HTML` Code, den Sie kopieren, wird ein [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe) Element sein. Zum Beispiel:

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Standardmäßig reagieren `iframes` nicht, was bedeutet, dass das Video, das Sie gerade eingebettet haben, für Leser auf mobilen Geräten nicht zugänglich ist. Um dies zu beheben _Die_ Stylesheets von Turing Way definieren Klassen und Styling, die `iframes` erlauben, die Größe und Passung des Bildschirms, von dem das Buch gelesen wird, zu verändern.

Um dieses benutzerdefinierte Styling zu nutzen, umwickeln Sie den `iframe` in `div` Tags und geben Sie dem `div` Element eine `Videocontainer` Klasse. Zum Beispiel:

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

Der obige Code wird wie folgt dargestellt:

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-style-custom-styling-improvements)=
## Verbessere _die Turing Way's_ Styling

Jupyter Book funktioniert durch Konvertierung der Markdown-Syntax in `HTML`. Um das gesamte Styling des Buches zu verbessern, sollten daher die `CSS-` Regeln die `HTML` Elemente ansprechen, die Jupyter Book generiert.

Bevor Sie ein CSS schreiben, prüfen Sie zuerst den HTML-Quellcode des Buches. Dies gibt dir eine Vorstellung davon, welche Elemente du anvisieren solltest, und kann dir helfen, herauszufinden, wie du deine CSS-Regeln strukturieren kannst.

Alle Web-Browser erlauben Ihnen den Quellcode von Webseiten einfach zu sehen. Auf Computern mit Windows Betriebssystem wird dies mit `STRG + U` getan. Für Computer mit Mac OS wird dies mit `Option + Command + U` getan.

Wenn Sie das Element, das Sie ändern möchten, bestimmt haben, schreiben Sie Ihr CSS in _Die Turing Way's_ [Stylesheet Datei](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css). Wenn zum Beispiel Sie wollten die `Schriftfamilie` des Absatztextes über den gesamten _Turing Way_ Buch ändern dann können Sie die folgende CSS-Regel zu den Stylesheets hinzufügen, die Ziel alle Elemente mit einem `<p>` Tag haben:

```
p {
    Schriftfamilie: georgia, garamond, serif;
}
```

Wenn du denkst, dass der in _eingeführte Styling Weg_ nützlich für andere Jupyter Book-Benutzer sein kann erwägen Sie bitte, einen Beitrag zum Projekt zu leisten, indem Sie ein neues GitHub Problem erstellen und eine Diskussion mit ihren Betreuern beginnen: [https://github. om/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
