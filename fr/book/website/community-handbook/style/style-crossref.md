(ch-style-crossref)=

# Sections et chapitres de référencement croisé

We recommend using targets as described in the [MyST Markdown documentation](xref:myst-guide/cross-references#targets-and-labels-for-referencing).
These look like `(my-label)=`, where `my-label` is the label of the target.
It is a flexible system which allows you to label many elements of a document including files, headings, lists, figures and even paragraphs.

You can use labels to create a reference to your target in any part of the book.
This is very helpful because you can make references without worrying about the relative or absolute paths of the file.
Also, if the element which you are referencing moves, your cross-reference will still work as long as the label is unchanged.

Dans ce document, nous avons fourni des exemples pour décrire comment vous pouvez utiliser des étiquettes pour différents chapitres ou parties de chapitres dans le livre.
We have also defined a naming convention for labels for _The Turing Way_ to ensure that the locations of these labels in the book are identifiable by their name.

## Labels and references

Pour ajouter un libellé pour une section ou un chapitre/sous-chapitre, utilisez une syntaxe du motif suivant avant l'élément que vous souhaitez étiqueter :

```
(my-label-name)=
# The thing that I want to label
```

There are a number of ways to reference a label.
These are described in the [Myst Markdown documentation](xref:myst-guide#link-references).
We prefer the short syntax, which will automatically generate the link text.
These cross references look like `[](#ch-style-crossref)`, which renders as [](#ch-style-crossref).
You can change the link text by writing in the first set of square brackets.
For example, `[My custom cross-reference](#ch-style-crossref)` renders as [My custom cross-reference](#ch-style-crossref).
Other styles can be used if you want to customise the link text or use another style.

You will also see references using the older roles like ``{ref}`my-label` `` in the book.
Cross-references using this style will still work but are not preferred.

## _The Turing Way_ naming convention for labels

We recommend using the following naming standard for labels, which will allow different authors and contributors of _The Turing Way_ to intuitively identify the locations of the files where these labels have been created.

La convention de nommage suivante pour les étiquettes des différents chapitres :

```
(sectioninitials-filename)=
```

Here, the first placeholder `sectioninitials` should be replaced by the initials for different sections in the book and the second placeholder `filename` should be replaced by the name of file where the label is being created.

For the different Guides of the book, we will use the following `sectioninitials`:

- Reproducible Research: `rr`
- Project Design: `pd`
- Collaboration: `cl`
- Communication: `cm`
- Ethical Research: `er`
- Community Handbook: `ch`

For example, in the guide `Reproducible Research`, we have a chapter called `Overview`.
We have created a label for that chapter called `rr-overview` by adding the label on the top of the header by using the following directive

```
(rr-overview)=
# Overview
```

De même, pour différents sous-chapitres, nous recommandons d'étendre le nom du label avec un autre espace réservé pour le nom du sous-chapitre.
For example, `rr-overview-resources` is a label in the guide "Reproducible Research" (rr) for the subchapter "Resources" for the "Overview" chapter (overview-resources).
Ce label peut être créé en utilisant la directive suivante dans le fichier correspondant :

```
(rr-overview-resources)=
# Resources
```

De la même manière, pour différentes sections dans un sous-chapitre, nous recommandons d'étendre le nom de l'étiquette avec un autre espace réservé.
Cela peut être choisi par les auteurs, ce qui devrait être un nom court mais raisonnable pour la section où l'étiquette est en cours de création.
For example, `rr-overview-resources-addmaterial` is a label in the guide "Reproducible Research" (rr) for the subchapter "Resources" for the "Overview" chapter (overview-resources) for the section for "Additional Materials" (addmaterial).
Cette étiquette peut être créée dans le fichier correspondant pour le nom de section suggéré en utilisant la directive suivante :

```
(rr-overview-resources-addmaterial)=
## Additional Material
```
