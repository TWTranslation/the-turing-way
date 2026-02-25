(cm-étapes-citable-pas)=

# Étapes pour rendre les objets de recherche accessibles

There are many reasons why authors don't cite the data, protocols, software and hardware that they use, but one of the biggest ones is that it's not clear how.
Vous pouvez faire beaucoup de chemin pour réduire cette barrière en suivant quelques étapes pour la rendre aussi facile que possible.

(cm-citable-steps-object)=

## 1. Identifier vos objets de recherche

Nous voulons insister sur le fait que la plupart de nos objets de recherche doivent être partagés afin que d'autres chercheurs puissent les reproduire et les réutiliser.
Par conséquent, la première étape consiste à identifier tous les éléments de recherche que vous partagerez en ligne.
Pratiquer une recherche ouverte n'est pas essentiel pour obtenir du crédit pour vos données ou vos logiciels, mais il est beaucoup plus facile pour les autres de construire sur votre travail d'une manière qui reconnaît votre contribution.
Il y a de plus en plus de preuves qui montrent que la recherche ouverte a tendance à être citée plus que des recherches non ouvertes de qualité et de signification équivalentes.

As part of the citation for your research objects, it is important to publish research objects beyond papers, such as images, data, software, protocols, methods, and workflow associated with your research.

La meilleure façon de commencer par cela sera de trouver des exemples de ce type d'objets de recherche ou de les citer.
Trouver des objets de recherche couramment référencés dans votre discipline sert à deux fins :

1. It demonstrates that software & data are things that can be cited;
2. It gives authors a reference and format that they can copy and paste directly into their document.

<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
You can learn more about the different types of research objects in the chapters {ref}`making your research open<rr-open>` and {ref}`making your research FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=

## 2. Publiez votre travail en ligne

Online publications are attached to [persistent identifiers](https://www.youtube.com/watch?v=iea6d5oI8Ag) that are used for citing them.
Il est important de noter que tout ce qui est publié en ligne ne reçoit pas un identifiant unique, mais il est important que les objets de recherche soient publiés en ligne avec des DOI comme décrit ci-dessous.

(cm-citable-pas-doi)=

### DOIs

```{figure} ../../../figures/DOI.*
---
name: doi
alt: This image shows three boxes with materials on top. The main box in the middle has 'identifiers' written on it with three discs on top of it that are labelled 'data sets'. Both boxes by their side have journal articles on top of them. An arrow on the top of the image points to these images as being 'Digital Object Identifiers'. There is text at the bottom of the image which says 'Persistent', 'Unique', 'Trusted'.
---
Digital Object Identifiers or DOIs are persistent, unique and trusted. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Unique identifiers or persistent links for digital objects are more formally called [Digital Object Identifiers or DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier).
L'utilisation de DOI rend beaucoup plus facile pour les autres de citer vos données, réduit le risque de pourriture de lien et vous permet de suivre comment vos recherches sont utilisées et citées.

### Serveurs qui fournissent des DOIs

Indépendant du papier, différents objets de recherche peuvent être publiés en ligne sur des serveurs offrant des DOI.
Some of these servers are [Zenodo](https://zenodo.org/) and [FigShare](https://figshare.com/) (for different objects such as figures, presentations and reports), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework (OSF)](https://osf.io/) (for different components of an open research project).

Il est parfaitement possible de citer un jeu de données ou un progiciel directement, et la plupart des principaux éditeurs le permettent maintenant dans leurs guides de style.
Cependant, il peut parfois aider à avoir un papier plus conventionnel à citer, et c'est là que les logiciels et les revues de données entrent en jeu.
Ces revues sont similaires aux revues de méthodes, dans la mesure où ils ont tendance à ne pas inclure de résultats significatifs, mais plutôt à décrire les données et les logiciels dans des détails suffisants pour permettre la réutilisation.
Quelques exemples incluent :

- [Journal of Open Research Software](https://openresearchsoftware.metajnl.com/)
- [Journal of Open Source Software](https://joss.theoj.org/)

You can read more about these different article types in our {ref}`Chapter on Publishing Different Article Types<cm-dif-articles>`.

(cm-citable-pas-référence-cm) =

## 3. Ajouter des informations de référence lisibles à la machine

Vous pouvez aller plus loin en permettant aux gens d'importer des informations sur vos objets de recherche dans leur base de données de référence préférée.
If [BibTeX](https://en.wikipedia.org/wiki/BibTeX) is popular in your field for managing references, post a `.bib` file of _all_ your outputs (not just your papers).
If [Endnote](https://endnote.com/) is more popular, make an Endnote export available.
If you use GitHub, GitLab or a similar public repository, consider creating a `CITATION.cff` file in each repository, which will describe how someone can refer to different research outputs from your project.
You can read more about `CITATION.cff` in {ref}`Software citation with CITATION.CFF <cm-citable-cff>`.

Si possible, fournissez plusieurs formats : vous n'aurez pas besoin de les mettre à jour très souvent et cela sera payant.

