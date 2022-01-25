(formatage -cohérence)=
# Formatage en cours

Le formatage indique comment le livre _The Turing Way_ est écrit et affecte directement l'apparence et la présentation du livre.

_La méthode Turing_ est hébergée en ligne en tant que livre Jupyter et utilise les recommandations de mise en forme décrites dans leur [documentation](https://jupyterbook.org/intro.html). Un formatage correct garantit que _La voie Turing_ est lisible, accessible et ressemble à un travail modulaire.


(ch-consistcy-formatting-hr)=
## Exigences difficiles

Les exigences dures de la liste de contrôle de cohérence assurent que _The Turing Way_ privilégie l'accessibilité, la collaboration, la lisibilité et la facilité d'utilisation. Les vérifications qui traitent du formatage de _The Turing Way's_ incluent :

(ch-consistcy-formatting-hr-markdown)=
### Vérification 1 : Utiliser Markdown pour créer votre contenu

_La Voie Turing_ doit être écrite en [Markdown](https://en.wikipedia.org/wiki/Markdown) dans la mesure du possible, afin que le livre Jupyter apparaisse comme prévu.


#### Markdown x HTML

Des parties de chapitres précédents dans _The Turing Way_ ont été écrites en `HTML`, rendant une partie de leur contenu difficile à lire.

Par exemple, {ref}`html-to-markdown` représente une table qui a été écrite en `HTML`.

```{figure} ../../figures/html-to-markdown.png
---
nom: html-to-markdown
alt: Une capture d'écran d'un tableau mal formaté écrit en HTML. La table est effacée ensemble et n'a pas de bordure de colonne ou de ligne. Cela rend difficile pour un lecteur de déchiffrer son sens.
---
Le contenu écrit en HTML peut ne pas s'afficher correctement.
```

Lorsque le formatage en Markdown est reformaté, la table est devenue plus propre et plus facile à lire :

```{figure} ../../figures/html-to-markdown2.png
---
name : html-to-markdown2
alt : Une capture d'écran d'une table convertie en Markdown à partir du HTML. La table devient plus facile à lire et à comprendre lors de la conversion en Markdown.
---
La conversion de HTML en Markdown rend le livre de Turing Way plus facile à lire.
```
```{note} Une PR qui adresse cette vérification peut être trouvée [ici](https://github.com/alan-turing-institute/the-turing-way/pull/1460).
```

Le contenu du chapitre écrit en `HTML` sont généralement entourés par des balises qui commencent et se terminent par des crochets `<>`.
[W3Schools](https://www.w3schools.com/html/html_elements.asp) est une excellente ressource pour comprendre ce que ces balises signifient, et les guides de référence Markdown, comme [cette feuille de triche](https://www. arkdownguide.org/cheat-sheet/), peut aider à traduire le formatage du `HTML` en Markdown.
Il y a aussi des outils utiles sur le web, tels que [Turndown](https://domchristie.github.io/turndown/) et [CloudConvert](https://cloudconvert.com/html-to-md), qui convertissent le `HTML` en Markdown en un simple clic.

Veuillez noter que si `HTML` est la seule option pour vous de formater votre texte comme vous le souhaitez, vous ne pouvez l'utiliser que si le contenu du livre en ligne peut toujours être lu et compris (utilisez l'aperçu Netlify dans votre PR pour tester).
Par exemple, [superscripts et indices](https://support.squarespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-superscript-and-subscript) peuvent être écrits en `HTML` car ils apparaissent toujours comme prévus.
En outre, le contenu comme les vidéos YouTube et les tables avec des en-têtes qui s'étendent sur plusieurs colonnes ou lignes peut être écrit en `HTML`.


```{attention} A Note about Styling
:class: tip

_The Turing Way_ has a [book-wide stylesheet](https://github. om/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) qui contrôle l'apparence du contenu écrit en `HTML`.
Si vous incluez `HTML` dans votre contribution, assurez-vous que votre mise en forme inclut les classes et identifiants pertinents de la feuille de style.

Par exemple, si vous voulez ajouter une vidéo YouTube à votre contenu en utilisant la balise `<iframe>`, enveloppez le `<iframe>` dans une balise `<div>`, et donnez à la classe `div` une classe `video-container` comme montré ci-dessous.

<div class="video-container">
    <iframe>....</iframe>
</div>

```

Ceci est également décrit dans le Guide de style de {ref}`<ch-style-custom-styling-videos>`.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### Écriture des listes de contrôle

Lors de l'écriture d'un nouveau chapitre pour _The Turing Way_, vous pouvez inclure un sous-chapitre de la liste de contrôle qui définit les points d'action clés que vous voulez que les lecteurs prennent en fonction du contenu du chapitre. Pour les chapitres précédents dans _The Turing Way_, ce sous-chapitre est écrit en Markdown en tant que liste de tâches avec des cases à cocher :

```
# Liste de contrôle
- [ ] Élément One
- [ ] Élément 2
- [ ] Élément 3

```

Cependant, les cases à cocher ne s'affichent pas comme prévu dans la version en ligne du livre, par exemple :

```{figure} ../../figures/checklist-formatting.png
---
name : formatage de la liste de contrôle
alt : Quand le sous-chapitre de la liste de contrôle d'un chapitre est écrit dans Markdown en tant que liste de tâches avec cases à cocher, les crochets sont affichés plutôt que les cases à cocher dans la version web du livre.
---
Les cases à cocher sont affichées sous forme de crochets dans la version web du livre.
```

Ainsi, nous vous recommandons de formater vos sous-chapitres de Checklist en tant que listes non ordonnées dans vos futures contributions, et de modifier les chapitres précédents qui suivent l'autre convention :

```
# Liste de contrôle
- Élément One
- Élément 2
- Élément 3

```
#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistcy-formatting-hr-headers)=
### Vérifier 2: Utiliser les en-têtes dans l'ordre séquentiel.

Les en-têtes non consécutifs font référence à une augmentation de plus d'un niveau d'en-tête. Par exemple :

```
# En-tête
### Un autre titre
```
Une telle augmentation de deux niveaux d'en-tête donne lieu à des avertissements lors de la construction localement de _The Turing Way_. Idéalement, tous les fichiers Markdown devraient commencer par un titre de niveau 1 et augmenter séquentiellement le cas échéant :

```
# En-tête
## Un autre titre
```

Plusieurs fichiers du livre _The Turing Way_ ne suivent pas cette convention. Une liste de ces fichiers peut être trouvée dans [ce problème](https://github.com/alan-turing-institute/the-turing-way/issues/1321), et [cette PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) est un excellent exemple de la façon de corriger un fichier avec des en-têtes non consécutifs.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consolcy-formatting-hr-labels)=
### Cochez 3 : Ajouter des étiquettes aux chapitres, sous-chapitres, sections et images pour activer le renvoi croisé.

Souvent, un chapitre peut se référer au contenu d'un autre chapitre pour expliquer des concepts ou approfondir des points. Le référencement croisé facilite cela en s'assurant que le contenu référencé est facile à trouver en un simple clic. Cela aide à rendre _la voie Turing_ plus navigable et accessible.

{ref}`Le référencement croisé <ch-style-crossref>` est discuté en détail dans le style {ref}`ch-`. Le sous-chapitre explique quelles sont les étiquettes, fournit une convention de nommage pour les étiquettes dans _The Turing Way_, et donne plusieurs exemples utiles pour comment le renvoi croisé doit être fait.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistcy-formatting-hr-images)=
### Vérification 4 : Utiliser `MyST` pour le formatage d'image

Certaines figures et images dans _The Turing Way_ sont intégrées en utilisant la syntaxe Markdown. Pendant que cela fonctionne, il ne permet pas aux images de s'adapter à la taille d'écran de l'appareil sur lequel le livre est lu.

Markedly Structured Text (`MyST`) est une saveur de Markdown qui aborde cela et active les images réactives dans la _Voie Turing_.

Il permet également l'utilisation de légendes et de texte alternatif (texte ALT), qui sont les descriptions d'image invisibles qui sont lues à haute voix pour les lecteurs de la _Voie Turing_ qui utilisent un lecteur d'écran. Si aucun texte ALT n'est fourni avec une image, ces utilisateurs seront incapables de comprendre le but de l'image.

Lorsque vous écrivez du texte ALT, n'oubliez pas:
- **Soyez descriptif** - Décrivez correctement l'image en utilisant son contenu et son contexte pour l'orientation. Pour ce faire, il n'est pas nécessaire de "annoncer" une image dans votre description (par exemple, en utilisant "illustration de" ou "image de") puisque les lecteurs d'écran le feront déjà.
- **Gardez-le aussi court que possible** - Bien qu'une description longue puisse être nécessaire pour certaines images, il vaut mieux les garder aussi courts que possible. Cela garantit que les descriptions sont faciles à comprendre.

Veuillez noter que les images incluses dans le livre _The Turing Way_ doivent être inférieures à 1 Mo. Cela permet de charger le livre plus rapidement, en particulier pour les lecteurs qui peuvent avoir des connexions lentes à Internet.

Veuillez vous référer au guide de style {ref}`<ch-style-figures>` pour des exemples sur le formatage des images à l'aide de `MyST` et leur ajout de texte ALT. Lorsque vous incluez des images dans vos contributions, il est peut-être préférable d'éviter le paramètre de hauteur, car la mauvaise valeur peut faire apparaître votre image déformée sur les appareils mobiles. Vous devriez toujours vérifier l'apparence de votre image dans l'aperçu Netlify du livre lorsque vous faites une PR.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistcy-formatting-sr)=
## Exigences douces

Des exigences souples aident à améliorer l'aspect général de _The Turing Way_. Lorsqu'ils sont effectués, ces vérifications peuvent passer inaperçues, mais elles contribuent également à faire de _The Turing Way_ un travail poli. Les exigences logicielles qui traitent du formatage de _The Turing Way's_ incluent :

(ch-consistcy-formatting-sr-one)=
### Vérifiez 1 : Assurez-vous que les noms des chapitres/sous-chapitres sont courts et correspondent exactement à la façon dont ils sont tirés dans le `_toc.yml`

Certains chapitres et sous-chapitres de _La Voie Turin_ ne correspondent pas à leurs références correspondantes dans la table des matières à l'échelle du livre qui apparaît à gauche de la page Web. Cela peut être déroutant pour les utilisateurs, surtout lorsque la référence du chapitre/sous-chapitre dans la table des matières varie considérablement selon le nom du chapitre/sous-chapitre.

```{figure} ../../figures/mismatched-title-toc.png
---
nom : Incompatibilité title-toc
alt : Un sous-chapitre dont le titre diffère de sa référence dans la table des matières. Le titre du sous-chapitre est « Utilisation des feuilles de calcul pour les données de recherche », cependant dans la table des matières, il est appelé « Organisation des données dans les feuilles de calcul ».
---
Le titre de ce sous-chapitre est "Utiliser des feuilles de calcul pour les données de recherche", Cependant, la table des matières se réfère au même fichier que "Organisation des données dans les feuilles de calcul".
```

Pour s'assurer que le contenu de _de la Voie Turin_ passe cette vérification, une recommandation à suivre est de garder les titres court. Lors de l'écriture d'un nouveau chapitre, assurez-vous que son titre est court et a le même nom dans la table des matières. Similarly, when reviewing existing chapters, if its title and reference in the table of contents differ, make the shorter of the two the chapter's title, and update the `_toc.yml` if necessary.

```{note}
Le fichier `_toc.yml` est le fichier où vit la table des matières à l'échelle du livre pour _Le chemin de Turing_.
```

Néanmoins, rappelez-vous que le titre final devrait bien expliquer aux lecteurs ce à quoi s'attendre d'un chapitre ou d'un sous-chapitre.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistcy-formatting-sr-two)=
### Vérifier 2 : Assurez-vous que le casque de titre approprié pour les en-têtes

Les titres de certains chapitres dans _The Turing Way_ n'utilisent pas le boîtier de titre. [Le casse-titre](https://en.wikipedia.org/wiki/Title_case) est un style de capitalisation utilisé pour formater les titres et les en-têtes des œuvres publiées. Être une référence citée pour les personnes qui cherchent à réaliser des recherches scientifiques sur les données reproduites, les titres et les titres dans _The Turing Way_ devrait être sous titre.

Bien que _The Turing Way_ ne respecte pas un style de capitalisation titre spécifique, certaines règles générales et non exhaustives à considérer incluent :
- Mettre en majuscule les mots principaux ou importants
- Articles en minuscules, conjonctions et prépositions (sauf en cas de contrainte)
- Mettre en majuscule les premiers et les derniers mots

Il existe des outils utiles, tels que [CapitalizeMyTitle](https://capitalizemytitle.com/) et [Title Case Converter](https://titlecaseconverter.com/), qui peut être utilisé pour les en-têtes de casse de titre lors de l'écriture de votre contenu. De plus, les en-têtes de _The Turing Way_ peuvent être exécutés à travers ces outils pour s'assurer qu'ils respectent les conventions de casse de titre. Ils peuvent ensuite être remplacés dans les chapitres et dans le `_toc.yml` selon le cas.

Par exemple, dans {ref}`toc de titre non assorti` ci-dessus, **L'utilisation de feuilles de calcul pour les données de recherche** doit être encadrée par **Utiliser des feuilles de calcul pour les données de recherche**.

Il se peut que certains en-têtes n'aient pas besoin d'être cités en fonction du contexte dans lequel ils sont utilisés. Par exemple, parce que certains des en-têtes de ce chapitre constituent une liste de contrôle - ils n'ont pas besoin d'être cités au titre.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
