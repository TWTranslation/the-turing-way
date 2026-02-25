(ch-style-citing)=

# Citation et référencement

In [MyST Markdown](xref:myst-guide) you can make citations in two ways, using DOIs or the bibliography.
If you want to cite an article with a DOI, you can use a [DOI link](https://mystmd.org/guide/citations#doi-links).
We maintain a centralised [BibTeX](http://www.bibtex.org/) bibliography file containing references.
The bibliography file is located in the book repository, [`./book/website/references.bib`][turingbib].

## DOI citations

You can reference a document by its DOI simply by linking to the DOI url.
For example, `[_The Turing Way_](https://doi.org/10.5281/zenodo.15213042)` renders as [_The Turing Way_](https://doi.org/10.5281/zenodo.15213042).
Note that this _only_ works for the `doi.org` url and not, for example, a `zenodo.org` url.

You can also let MyST create a citation string using the DOI string and the prefix `doi:`.
For example, `[](doi:10.5281/zenodo.15213042)` renders as [](doi:10.5281/zenodo.15213042).

You can read more about DOI links in the [MyST Markdown documentation](xref:myst-guide#doi-links).

(ch-style-citing-bibliography)

## Bibliographie

### Les bases du fichier BibTeX

Les fichiers BibTeX sont un moyen de formater les listes de références de manière structurée.
Les éléments de base d'une entrée incluent un type de référence, une clé de citation unique, et une série de paires clé-valeur qui décrivent la référence (par exemple, l'auteur ou le titre).

Il y a un certain nombre de mots-clés pour différents types de références dans BibTeX.
Heureusement, il y a des outils pour aider à formater les références en syntaxe BibTeX.
If you know the DOI for your reference, you can use [doi2bib](https://doi2bib.org/) to help populate a good enough BibTeX entry.
For example, [here](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) is a good enough BibTeX entry for The Turing Way handbook itself.
Another good tool is [Google Scholar](https://scholar.google.com/), where you search for a reference, click on the large double quotes `"` or activate the pop-up menu labeled "Cite," and then click on "BibTeX" near the bottom.

Des exemples de listage d'une référence au format BibTeX sont affichés ci-dessous.

### Adding a new reference in `references.bib`

Vous pouvez modifier le fichier de référence localement en utilisant une méthode de ce qui suit :

- Edit [`references.bib`][turingbib] directly using a text editor
- Edit [`references.bib`][turingbib] directly using a managing program such as [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) or [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

Nous utilisons un format standard de bibtex pour ajouter une nouvelle entrée.
For example, there is an entry in the [`references.bib`][turingbib] file as:

```
@article{baker2016reproducibility,
    author={Baker, Monya},
  	title={Reproducibility crisis?},
  	journal={Nature},
  	volume={533},
  	number={26},
  	pages={353--66},
  	year={2016}
}
```

### Guide de style clé de citation

Nous recommandons d'utiliser la structure suivante pour les clés de citation :

```
AuthorYYYYword
```

Où :

1. `Author` is the surname of the first author (`Baker` above)
2. `YYYY` is the year (`2016` above)
3. `word` is the first meaningful word in the title (`reproducibility` above). Note, il s'agit d'un nom subjectif - choisissez un nom qui permet de se souvenir facilement de la référence lorsque vous voyez la clé de citation.

### Ajout d'une nouvelle référence dans le texte

To cite an item in the bibliography, use the citation key (from [`references.bib`][turingbib]) with an `@` prefix.
For example, `@baker2016reproducibility` renders as @baker2016reproducibility.

You can cite multiple items at once by separating them with semi-colons and enclosing them in square brackets.
For example, `[@baker2016reproducibility; @Markowetz2015]` renders as [@baker2016reproducibility; @Markowetz2015].

You can read more about the markdown citation syntax in the [MyST Markdown documentation](xref:myst-guide/citations#markdown-citations).

### Sphinx-style Citation Roles

MyST also support the older style of [citation role](xref:myst-guide/citations#citation-roles) used in Jupyter Book v1.
These are not preferred for new citations, but you may see existing citation in this style in the book.

[turingbib]: https://github.com/the-turing-way/the-turing-way/blob/main/book/website/references.bib
