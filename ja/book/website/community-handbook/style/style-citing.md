(ch-style-citing)=

# 引用と参照

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

## Bibliography

### BibTeXファイルの基本

BibTeXファイルは、構造化された方法で参照のリストをフォーマットする方法です。
エントリの基本要素には参照型、一意の引用キーが含まれます。 そして、参照を記述する一連のキーと値のペア(例えば、著者やタイトル)があります。

BibTeXには、さまざまな参照タイプのキーワードが数多くあります。
幸いなことに、参照をBibTeX構文にフォーマットするのに役立つツールがあります。
If you know the DOI for your reference, you can use [doi2bib](https://doi2bib.org/) to help populate a good enough BibTeX entry.
For example, [here](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) is a good enough BibTeX entry for The Turing Way handbook itself.
Another good tool is [Google Scholar](https://scholar.google.com/), where you search for a reference, click on the large double quotes `"` or activate the pop-up menu labeled "Cite," and then click on "BibTeX" near the bottom.

BibTeX形式の参照をリストする例を以下に示します。

### Adding a new reference in `references.bib`

次の方法を使用して、参照ファイルをローカルで編集できます。

- Edit [`references.bib`][turingbib] directly using a text editor
- Edit [`references.bib`][turingbib] directly using a managing program such as [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) or [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

We use a standard BibTeX format to add a new entry.
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

### 文献キーのスタイルガイド

文献キーには以下の構造を使用することを推奨します:

```
AuthorYYYYword
```

場所:

1. `Author` is the surname of the first author (`Baker` above)
2. `YYYY` is the year (`2016` above)
3. `word` is the first meaningful word in the title (`reproducibility` above). これは主観的で、引用キーを見たときに参照を覚えやすくする名前を選択します。

### テキストに新しい参照を追加する

To cite an item in the bibliography, use the citation key (from [`references.bib`][turingbib]) with an `@` prefix.
For example, `@baker2016reproducibility` renders as @baker2016reproducibility.

You can cite multiple items at once by separating them with semi-colons and enclosing them in square brackets.
For example, `[@baker2016reproducibility; @Markowetz2015]` renders as [@baker2016reproducibility; @Markowetz2015].

You can read more about the markdown citation syntax in the [MyST Markdown documentation](xref:myst-guide/citations#markdown-citations).

### Sphinx-style Citation Roles

MyST also support the older style of [citation role](xref:myst-guide/citations#citation-roles) used in Jupyter Book v1.
These are not preferred for new citations, but you may see existing citation in this style in the book.

[turingbib]: https://github.com/the-turing-way/the-turing-way/blob/main/book/website/references.bib
