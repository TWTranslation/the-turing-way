(cm-étapes-citable-pas)=
# Étapes pour rendre les objets de recherche accessibles

Il y a de nombreuses raisons pour lesquelles les auteurs ne citent pas les données et les logiciels qu'ils utilisent, Mais le plus grand est que ce n'est pas clair comment. Vous pouvez faire beaucoup de chemin pour réduire cette barrière en suivant quelques étapes pour la rendre aussi facile que possible.

(cm-citable-steps-object)=
## 1. Identifier vos objets de recherche

Nous voulons insister sur le fait que la plupart de nos objets de recherche doivent être partagés afin que d'autres chercheurs puissent les reproduire et les réutiliser. Par conséquent, la première étape consiste à identifier tous les éléments de recherche que vous partagerez en ligne. Pratiquer une recherche ouverte n'est pas essentiel pour obtenir du crédit pour vos données ou vos logiciels, mais il est beaucoup plus facile pour les autres de construire sur votre travail d'une manière qui reconnaît votre contribution. Il y a de plus en plus de preuves qui montrent que la recherche ouverte a tendance à être citée plus que des recherches non ouvertes de qualité et de signification équivalentes.

Dans le cadre de la citation pour vos objets de recherche, il est important de publier des objets de recherche au-delà des papiers, tels que les images, les données, les logiciels, les protocoles, les méthodes de flux de travail ang associés à vos recherches.

La meilleure façon de commencer par cela sera de trouver des exemples de ce type d'objets de recherche ou de les citer. Trouver des objets de recherche couramment référencés dans votre discipline sert à deux fins :
1. Cela démontre que le logiciel & les données sont des choses qui peuvent être citées ;
2. Il donne aux auteurs une référence et un format qu'ils peuvent copier et coller directement dans leur document.
<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
Vous pouvez en apprendre plus sur les différents types d'objets de recherche dans les chapitres {ref}`rendre votre recherche ouverte<rr-open>` et {ref}`rendre votre recherche FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=
## 2. Publiez votre travail en ligne

Les publications en ligne sont jointes à des identificateurs persistants qui sont utilisés pour les citer. Il est important de noter que tout ce qui est publié en ligne ne reçoit pas un identifiant unique, mais il est important que les objets de recherche soient publiés en ligne avec des DOI comme décrit ci-dessous.

(cm-citable-pas-doi)=
### DOIs

```{figure} ../../figures/DOI.jpg
---
nom: doi
alt : Cette image montre trois boîtes avec des matériaux sur le dessus. La boîte principale au milieu a des "identifiants" écrits dessus avec trois disques qui sont étiquetés "jeux de données". Les deux boîtes à côté de celles-ci ont des articles de revue. Une flèche en haut de l'image pointe vers ces images comme étant des « Identifiants d'objets numériques ». Il y a du texte en bas de l'image qui dit "Persistant", "Unique", "Fié".
---
Les identifiants numériques ou les DOI sont persistants, uniques et fiables. Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Les identifiants uniques ou les liens persistants pour les objets numériques sont plus formellement appelés [Identificateurs d'objets numériques ou DOI](https://en.wikipedia.org/wiki/Digital_object_identifier). L'utilisation de DOI rend beaucoup plus facile pour les autres de citer vos données, réduit le risque de pourriture de lien et vous permet de suivre comment vos recherches sont utilisées et citées.

### Serveurs qui fournissent des DOIs

Indépendant du papier, différents objets de recherche peuvent être publiés en ligne sur des serveurs offrant des DOI. Certains de ces serveurs sont [Zenodo](https://zenodo.org/) et [FigShare](https://figshare.com/) (pour différents objets tels que les figures, présentations et rapports), [Dryad de données](https://datadryad.org/stash) (pour les données), [Subventions ouvertes](https://www.ogrants.org/) (pour les propositions de subventions) et [Open Science Framework (OSF)](https://osf.io/) (pour différents composants d'un projet de recherche ouvert).

Il est parfaitement possible de citer un jeu de données ou un progiciel directement, et la plupart des principaux éditeurs le permettent maintenant dans leurs guides de style. Cependant, il peut parfois aider à avoir un papier plus conventionnel à citer, et c'est là que les logiciels et les revues de données entrent en jeu. Ces revues sont similaires aux revues de méthodes, dans la mesure où ils ont tendance à ne pas inclure de résultats significatifs, mais plutôt à décrire les données et les logiciels dans des détails suffisants pour permettre la réutilisation. Quelques exemples incluent :
- [Journal des logiciels de recherche ouverts](https://openresearchsoftware.metajnl.com/)
- [Journal des logiciels libres](https://joss.theoj.org/)

(cm-citable-pas-référence-cm) =
## 3. Ajouter des informations de référence lisibles à la machine

Vous pouvez aller plus loin en permettant aux gens d'importer des informations sur vos objets de recherche dans leur base de données de référence préférée. Si [BibTeX](https://en.wikipedia.org/wiki/BibTeX) est populaire dans votre champ pour gérer les références, postez un `. ib` fichier de *toutes vos sorties* (pas seulement vos papiers). Si [Endnote](https://endnote.com/) est plus populaire, rendre un export de Endnote disponible. Si vous utilisez GitHub, GitLab ou similaire, envisagez de créer un fichier `CITATION` dans chaque dépôt contenant des conseils sur la façon dont quelqu'un peut faire référence à des résultats de recherche différents de votre projet.

Si possible, fournissez plusieurs formats : vous n'aurez pas besoin de les mettre à jour très souvent et cela sera payant.

```{note}
De nombreux outils en ligne permettent d'exporter des références d'objets de recherche sous différents formats.
Par exemple, voir [https://www.citethisforme.com/](https://www.citethisforme.com/).
```
