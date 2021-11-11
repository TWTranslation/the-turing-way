(ch-style-citing)=
# Citation et référencement

Nous maintenons un fichier centralisé [BibTeX](http://www.bibtex.org/) contenant toutes les références. Le fichier se trouve dans ce dépôt dans le fichier [`./book/website/_bibliography/references.bib`][turingbib].

## Les bases du fichier BibTeX

Les fichiers BibTeX sont un moyen de formater les listes de références de manière structurée. Les éléments de base d'une entrée incluent un type de référence, une clé de citation unique, et une série de paires clé-valeur qui décrivent la référence (par exemple, l'auteur ou le titre).

Il y a un certain nombre de mots-clés pour différents types de références dans BibTeX. Heureusement, il y a des outils pour aider à formater les références en syntaxe BibTeX. Si vous connaissez le DOI à titre de référence, vous pouvez utiliser [doi2bib](https://doi2bib.org/) pour aider à remplir une entrée BibTeX suffisamment bonne. Par exemple, [ici](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) est une entrée BibTeX suffisamment bonne pour The Turing Way handbook. Un autre bon outil est [Google Scholar](https://scholar.google.com/), où vous recherchez une référence, cliquez sur les gros guillemets doubles `"`, puis cliquez sur "BibTeX" près du bas.

Des exemples de listage d'une référence au format BibTeX sont affichés ci-dessous.

## Ajout d'une nouvelle référence dans `references.bib`

Vous pouvez modifier le fichier de référence localement en utilisant une méthode de ce qui suit :

- Modifier [`references.bib`][turingbib] directement à l'aide d'un éditeur de texte
- Modifier [`references.bib`][turingbib] directement en utilisant un programme de gestion tel que [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) ou [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

Nous utilisons un format standard de bibtex pour ajouter une nouvelle entrée. Par exemple, il y a une entrée dans le fichier [`references.bib`][turingbib] comme :

```
@article{baker2016reproduccibility,
    author={Baker, Monya},
    title={crise de reproductibilité? ,
    journal={Nature},
    volume={533},
    numéro={26},
    pages={353--66},
    an={2016}
}
```

**Terminer l'édition en ajoutant une nouvelle entrée à la fin du fichier.**

## Guide de style clé de citation

Nous recommandons d'utiliser la structure suivante pour les clés de citation :

```
YYYYword Autorisateur
```

Où :

1. `Auteur` est le nom de famille du premier auteur (`Baker` ci-dessus)
2. `AAAA` est l'année (`2016` ci-dessus)
3. `le mot` est le premier mot significatif dans le titre (`reproduccibilité` ci-dessus). Note, il s'agit d'un nom subjectif - choisissez un nom qui permet de se souvenir facilement de la référence lorsque vous voyez la clé de citation.

## Ajout d'une nouvelle référence dans le texte

Pour inclure une citation dans votre contenu, nous suivons la recommandation de [Jupyter Book](https://jupyterbook.org/content/citations.html) qui utilise l'extension [`sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/).

Les concepts clés sont :

- Inclure une référence en utilisant :
```
{cite:ps}`CITEKEY`

```
Ici `CITEKEY` est la clé de citation correspondante dans [`references.bib`][turingbib].
- Vous pouvez également inclure plusieurs citations en une seule fois en séparant les CITEKEYs par une virgule :
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

Nous citerons l'article que nous éditons plus tôt dans le fichier [`reference.bib`][turingbib] en utilisant :

```
{cite:ps}`Kuula2010archiving`
```

Cela apparaîtra dans votre chapitre en tant que {cite:ps}`baker2016reproduccibility`.

L'entrée bibliographique complète est disponible à la fin de ce livre (voir {ref}`ressources <bibliography>`) en utilisant les directives :

    ```{bibliography} ../_bibliography/references.bib

    ```

Pour l'utilisation avancée, voir la documentation [par sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), qui est une extension Sphinx pour les citations de style BibTeX.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
