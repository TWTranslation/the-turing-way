(ch-consistcy-language)=

# Language

Language is concerned with the way concepts and ideas in _The Turing Way_ are expressed.
A consistent language ensures that _The Turing Way_ is clear and understandable.

(ch-consistcy-language-hr)=

## Hard Requirements

The hard checks that deal with _The Turing Way's_ language include:

(ch-consistcy-language-hr-grammaire)=

### Vérification 1 : Assurer une grammaire correcte et une tonalité homogène dans le livre

Correct grammar and consistent tone would help readers of all backgrounds, knowledge, and skill levels to better understand _The Turing Way_'s content.

En plus d'être distrayante, une grammaire incorrecte pourrait enlever ce qu'un texte tente de communiquer.

Tools such as [Grammarly](https://grammarly.com), [Ginger Grammar](https://gingersoftware.com/grammarcheck), and [Reverso Speller](https://reverso.net/spell-checker/english-spelling-grammar/) can help catch grammatical errors present in a piece of text.
These tools can be used to assess grammar in new contributions and existing content of _The Turing Way_.
En outre, lors de la levée de PRs pour de nouveaux contenus, invitez les examinateurs à vérifier également la grammaire.
This could help minimize the number of grammatical errors that make it to the final version of _The Turing Way_.

En ce qui concerne le ton, assurez-vous que les chapitres adhèrent à un style formel d'écriture et que les phrases sont faciles à digérer.
Une règle à considérer est que si une phrase doit être lue plus d'une fois pour être comprise, alors il doit probablement être reformulé.

#### Demo

:::{iframe} https://www.youtube.com/embed/Prv23kGekVY
:width: 100%
:::

(ch-consistcy-language-hr-language)=

### Vérifier 2 : Assurez-vous que les chapitres utilisent un langage cohérent

```{note} Language, in this context, refers to the American and British variants of the English language.
```

With contributors from around the world, _The Turing Way_ does not restrict the language used to write chapters.
This makes it easier for contributors to bring in their perspectives as they write content for _The Turing Way_.
La recommandation est plutôt que si un chapitre est écrit dans un style (par exemple, l'anglais britannique), il devrait rester cohérent tout au long de la procédure.
This makes _The Turing Way_ less distracting and easier to read.

(-cohérence-language-hr-abréviations)=

### Vérification 3 : Assurez-vous que les abréviations latines ne sont pas utilisées pour écrire des chapitres

When writing content for _The Turing Way_, the use of Latin abbreviations is discouraged.
Cela est dû au fait que les lecteurs d'écran peuvent les lire à haute voix d'une manière qui est confuse pour ceux qui comptent sur de tels appareils.

Please refer to the [style guide](#ch-style-writing-markdown-latin) for recommendations on how to avoid common Latin abbreviations in your writing.

To enforce this consistency, contributions that contain Latin abbreviations will fail the _The Turing Way_ repository's continuous integration workflow.
