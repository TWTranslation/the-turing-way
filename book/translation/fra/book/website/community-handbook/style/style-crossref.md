(ch-style-crossref)=

# Sections et chapitres de référencement croisé

Nous recommandons d'utiliser le style de référence croisée tel que décrit dans le [Jupyter Book](https://jupyterbook.org/content/citations.html) pour les chapitres ou les fichiers, et les différents contenus des chapitres tels que les sections et les chiffres.

Dans Jupyter Book, les étiquettes sont un moyen d'ajouter des balises à des parties de votre contenu ou un fichier que vous pourrez référencer plus tard. Ceci est très utile car vous pouvez insérer des étiquettes dans d'autres parties de votre livre sans vous soucier des chemins relatifs ou absolus du fichier.

Dans ce document, nous avons fourni des exemples pour décrire comment vous pouvez utiliser des étiquettes pour différents chapitres ou parties de chapitres dans le livre. Nous avons également défini une convention de nommage pour les étiquettes pour _The Turing Way_ pour nous assurer que les emplacements de ces étiquettes dans le livre sont identifiables par leur nom.

## Étiquettes dans le livre Jupyter

Pour ajouter un libellé pour une section ou un chapitre/sous-chapitre, utilisez une syntaxe du motif suivant avant l'élément que vous souhaitez étiqueter :

```
(mon-label-name)=
# Ce que je veux étiqueter
```

Vous pouvez insérer des références croisées aux étiquettes des sections de votre fichier avec la syntaxe suivante :

```
{ref}`mon-label-name`

```

De même, vous pouvez utiliser des étiquettes pour les chapitres ou sous-chapitres de référencement croisé.

Veuillez consulter les détails dans les exemples ci-dessous.

### _La convention de nommage de Turing Way_ pour les étiquettes

Nous vous recommandons d'utiliser le standard de nommage suivant pour les étiquettes, qui permettra à différents auteurs et contributeurs de _The Turing Way_ d'identifier intuitivement les emplacements des fichiers où ces étiquettes ont été créées.

La convention de nommage suivante pour les étiquettes des différents chapitres :

```
(nom de fichier initials-section)=
```

Ici, le premier placeholder `sectioninitials` doit être remplacé par les initiales pour différentes sections du livre et le second placeholder `filename` doit être remplacé par le nom du fichier où l'étiquette est en cours de création.

Pour les différents guides du livre, nous utiliserons les `initiales de section suivantes`:

- Recherche reproductible: `rr`
- Conception de projet : `pd`
- Collaboration : `cl`
- Communication : `cm`
- Recherche éthique : `er`
- Community Handbook: `ch`

Par exemple, dans le guide `Reproducible Research`, nous avons un chapitre appelé `Aperçu`. Nous avons créé une étiquette pour ce chapitre appelé `rrr-overview` en ajoutant l'étiquette en haut de l'en-tête en utilisant la directive suivante

```
(rr-overview)=
# Aperçu
```

De même, pour différents sous-chapitres, nous recommandons d'étendre le nom du label avec un autre espace réservé pour le nom du sous-chapitre. Par exemple, `rr-overview-resources` est une étiquette dans le guide "Reproducible Research" (rr) pour le sous-chapitre "Ressources" pour le chapitre "Aperçu" (aperçu-ressources). Ce label peut être créé en utilisant la directive suivante dans le fichier correspondant :

```
(sectioninitials-filename)=
# Ressources
```

De la même manière, pour différentes sections dans un sous-chapitre, nous recommandons d'étendre le nom de l'étiquette avec un autre espace réservé. Cela peut être choisi par les auteurs, ce qui devrait être un nom court mais raisonnable pour la section où l'étiquette est en cours de création. Par exemple, `rr-overview-resources-addmaterial` est une étiquette dans le guide "Recherche reproductible" (rr) du sous-chapitre "Ressources" pour le chapitre "Aperçu" (aperçu-ressources) de la section "Matériaux additionnels" (addmaterails). Cette étiquette peut être créée dans le fichier correspondant pour le nom de section suggéré en utilisant la directive suivante :

```
(sectioninitials-filename-section)=
## Matériel supplémentaire
```

### Exemples de renvoi croisé

**Exemples pour référencer des sections de chapitres et sous-chapitres**

Nous utiliserons des exemples pour les chapitres dans le guide "Reproducible Research" situé dans le répertoire `book/website`.

**_Cas 1_**: Lorsque vous renversez une section du chapitre dans le même fichier _avant_ une étiquette a été créée.

Prenant l'exemple précédent de `rr-overview-resources-addmaterial`, nous pouvons utiliser ce label pour référencer le dans une section antérieure dans le même fichier en utilisant ce qui suit :

```
{ref}`rr-overview-resources-addmaterial`
```

Cela apparaîtra dans le livre en ligne comme ceci : {ref}`rr-overview-resources-addmaterial`.

**_Cas 2_**: Lorsque vous renversez une section du chapitre dans le même fichier _après_ une étiquette a été créée.

Dans le même sous-chapitre "Ressources", nous avons créé une étiquette `rr-overview-resources-reading` pour la section "Lecture supplémentaire". Nous pouvons le référencer dans une section ultérieure dans le même fichier en utilisant les éléments suivants :

```
{ref}`rr-overview-resources-reading`
```

Il apparaîtra dans votre chapitre comme ceci : {ref}`rr-overview-resources-reading`.

**_Cas 3_**: Lorsque vous renversez une section d'un chapitre dans un fichier différent (chapitre) avant ou après qu'une étiquette ait été créée.

Dans le sous-chapitre "Définitions" du chapitre "Aperçu", nous avons créé une étiquette `rr-overview-definitions` pour la section "Tableau des définitions pour la reproduccibility".

Nous pouvons le référencer dans un autre sous-chapitre ou chapitre. Dans ce cas, référençons-le de manière croisée dans la page d'accueil (principale) du chapitre "Aperçu" en utilisant les éléments suivants :

```
{ref}`rr-overview-definitions`
```

Il apparaîtra dans votre chapitre comme ceci : {ref}`rr-overview-definitions`.

Bien que nous démontrions cet exemple pour les sous-chapitres dans le même chapitre ("Aperçu"), les syntaxes similaires peuvent être utilisées pour le renvoi croisé dans d'autres chapitres du livre.

**Exemples pour les chapitres et sous-chapitres de référencement croisé**

**_Cas 4_**: Référencement croisé d'un chapitre ou d'un sous-chapitre dans un fichier différent (chapitre/sous-chapitre) avant ou après la création d'une étiquette.

Par exemple, dans la page d'accueil du chapitre "Open Research", nous avons créé une étiquette `rr-open`. Nous pouvons le référencer dans la section "Quoi apprendre ensuite?" dans un autre sous-chapitre "Ressources" du chapitre "Aperçu" en utilisant les éléments suivants :

```
{ref}`rr-open`
```

Il apparaîtra dans votre chapitre comme ceci : {ref}`rr-open`.

Bien que nous démontrions cet exemple pour le renvoi croisé des chapitres et des sous-chapitres dans le livre, la même syntaxe peut être utilisée pour référencer les sous-chapitres dans le même chapitre.

### Fournir un titre alternatif pour les références

Pour l'une des références mentionnées ci-dessus, vous pouvez fournir un titre alternatif tout en référencement croisé en ajoutant le titre avant le libellé comme indiqué dans cet exemple :

```
{ref}`Chapitre sur la Recherche Ouverte<rr-open>`
```

ici nous donnons un titre alternatif au chapitre "Recherche ouverte", qui apparaîtra dans votre fichier comme ceci : {ref}`Chapitre sur la Recherche Ouverte <rr-open>`
