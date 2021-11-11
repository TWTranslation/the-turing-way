(ch-style-citing)=
# Zitieren und Verweisen

Wir pflegen eine zentralisierte [BibTeX](http://www.bibtex.org/) Datei, die alle Referenzen enthält. Die Datei befindet sich in diesem Repository in der Datei [`./book/website/_bibliography/references.bib`][turingbib].

## Grundlagen der BibTeX-Datei

BibTeX-Dateien sind eine Möglichkeit, Referenzlisten strukturiert zu formatieren. Grundlegende Elemente eines Eintrags beinhalten einen Referenz-Typ, einen einzigartigen Zitierschlüssel, und eine Reihe von Schlüssel-Wert-Paaren, die die Referenz beschreiben (zum Beispiel Autor oder Titel).

Es gibt eine Reihe von Schlüsselwörtern für verschiedene Referenztypen in BibTeX. Zum Glück gibt es Werkzeuge, um Referenzen in BibTeX-Syntax zu formatieren. Wenn du den DOI für deine Referenz kennst, kannst du [doi2bib](https://doi2bib.org/) verwenden, um einen ausreichend guten BibTeX-Eintrag zu füllen. Zum Beispiel ist [hier](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) ein ausreichender BibTeX-Eintrag für das Handbuch des Turing Way selbst. Ein weiteres gutes Tool ist [Google Scholar](https://scholar.google.com/), wo Sie nach einer Referenz suchen, Klicken Sie auf die großen doppelten Anführungszeichen `"`, und klicken Sie dann auf "BibTeX" ganz unten an.

Beispiele für die Auflistung einer BibTeX-formatierten Referenz werden unten angezeigt.

## Füge eine neue Referenz in `references.bib` hinzu

Sie können die Referenzdatei lokal mit einer Methode aus folgenden Quellen bearbeiten:

- Bearbeiten [`references.bib`][turingbib] direkt mit einem Texteditor
- Bearbeiten [`references.bib`][turingbib] direkt mit einem Verwaltungsprogramm wie [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) oder [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

Wir verwenden ein Standard-Bibtex-Format, um einen neuen Eintrag hinzuzufügen. Zum Beispiel gibt es einen Eintrag in der [`references.bib`][turingbib] Datei als:

```
@article{baker2016reproduzierbarkeit,
    author={Baker, Monya},
    title={Reproduzierbarkeitskrise? ,
    Journal={Nature},
    Volumen={533},
    number={26},
    Seiten={353--66},
    Jahr={2016}
}
```

**Beenden Sie die Bearbeitung durch Hinzufügen eines neuen Eintrags am Ende der Datei.**

## Zitier-Tasten-Style-Guide

Wir empfehlen die folgende Struktur für Zitierschlüssel zu verwenden:

```
AutorYYYword
```

Wo:

1. `Autor` ist der Nachname des ersten Autors (`Bäcker` oben)
2. `JJJJ` ist das Jahr (`2016` oben)
3. `Wort` ist das erste aussagekräftige Wort im Titel (`Reproduzierbarkeit` oben). Beachten Sie, dies ist subjektive<unk> wählen Sie einen Namen, der es leicht macht, sich die Referenz zu erinnern, wenn Sie die Zitiertaste zu sehen.

## Eine neue Referenz im Text hinzufügen

Um ein Zitat in Ihren Inhalt aufzunehmen, folgen wir der Empfehlung von [Jupyter Book](https://jupyterbook.org/content/citations.html) , das [`sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/) Erweiterung verwendet.

Die Schlüsselkonzepte sind:

- Fügen Sie eine Referenz unter Verwendung ein:
```
{cite:ps}`CITEKEY`

```
Hier `CITEKEY` ist der zugehörige Zitierschlüssel in [`references.bib`][turingbib].
- Sie können auch mehrere Zitate in einem Schritt hinzufügen, indem Sie die CITEKEYs durch ein Komma trennen:
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

Wir werden den Artikel zitieren, den wir früher in der [`reference.bib bearbeiten`][turingbib] Datei verwenden:

```
{cite:ps}`Kuula2010Archivierung`
```

Dies wird in Ihrem Kapitel als {cite:ps}`baker2016reproduzierbarkeit` erscheinen.

Der komplette Bibliographieeintrag ist am Ende dieses Buches verfügbar (siehe {ref}`Ressourcen <bibliography>`) mit den Direktiven:

    ```{bibliography} ../_bibliography/references.bib

    ```

Für die erweiterte Verwendung lesen Sie die [-Dokumentation von sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), die eine Sphinx-Erweiterung für BibTeX-Zitate ist.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
