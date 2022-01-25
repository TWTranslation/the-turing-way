(ch-style-figures)=
# Utilisation des chiffres dans _La Voie Turcan_

Nous vous encourageons à ajouter des images aux chapitres du livre _The Turing Way_. Cette section du guide de style expliquera comment utiliser le format [Texte structuré avec marquage](https://myst-parser.readthedocs.io/en/latest/) (MyST) pour les ajouter au livre avec {ref}`texte alt approprié<ch-style-figures-alttext>` et {ref}`légendes<ch-style-figures-caption>`.

Nous sommes très passionnés de nous assurer que les créateurs des fichiers d'image originaux (y compris vous !) soient {ref}`reconnus correctement<ch-style-figures-licence>`. Veuillez ne pas utiliser d'images qui ne sont pas autorisées à être réutilisées.

Dans ce sous-chapitre, nous avons utilisé le terme **figure** pour faire référence à une illustration qui transmet des informations dans le contexte des chapitres _The Turing Way_. Le terme **image** est utilisé pour faire référence à l'objet de fichier lui-même.

(ch-style-figures-licence)=
## Licence ouverte

Veuillez vous assurer que vous attribuez équitablement les fichiers image et évitez les fichiers qui sont soit restreints à la réutilisation, soit qui ne disposent pas des autorisations de reproduction.

Les recommandations suivantes vous aideront à vérifier que vous utilisez les images selon leurs autorisations de licence:

* Si vous utilisez vos propres images, veuillez les ajouter au dossier `figures`. Ils seront ensuite mis à disposition sous une [Creative Commons Attribution 4. International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.ast) licence comme pour le reste du livre.
* Alternativement, vous pouvez source des images dans le domaine public ([licence CC0](https://creativecommons.org/share-your-work/public-domain/cc0)) ou des images sous licence Creative Commons appropriée. Images également disponibles sous CC-BY 4. les permissions sont très facilement interopérables avec le _The Turing Way_ car il s'agit de la même licence que le reste du contenu du livre.
* Si une image (par exemple que vous avez trouvée sur l'internet), n'est pas disponible sous une licence ouverte, s'il vous plaît contacter l'auteur original de l'image et demander la permission de reproduire leur image. Assurez-vous de leur demander **comment ils aimeraient être crédités** dans la légende de la figure.

En général, assurez-vous de toujours citer l'image correctement comme dirigé par les propriétaires de l'image. "Image de l'internet" n'est pas suffisant.

(ch-style-figures-image)=
## Type d'image, nom de fichier, taille et emplacement

Veuillez télécharger des fichiers `.jpg` ou `.png` de moins de 1 Mo pour leur permettre de se charger plus rapidement dans le livre en ligne. Si votre fichier est supérieur à 1 Mo, veuillez utiliser un outil local d'édition d'images ou un outil en ligne comme [IMG2GO](https://www.img2go.com/compress-image) pour compresser votre fichier.

Pour nommer votre fichier image, veuillez utiliser des mots en minuscules et séparés par des traits d'union. Chaque fichier image utilisé dans ce livre doit être situé dans le fichier `_figure-list. d` dans le répertoire `book/website/figures` de notre dépôt [GitHub](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). Si vous utilisez un nouveau fichier image, veuillez ajouter le fichier dans le répertoire `figures` , et ajoutez des détails dans la `_figure-list. d`.

(ch-style-figures-syntax)=
## Syntaxe MyST pour ajouter une figure à un chapitre _Turing Way_

Tous nos chapitres sont écrits dans des fichiers Markdown. Therefore, using Markdown syntax to include a figure in a Markdown file will work fine, for example, `![](../../figures/file-collection.jpg)`, where the relative path of the image file is provided inside the round brackets '()'.

**Or**, ce formatage ne permet pas aux images de répondre aux tailles de l'écran, les rendre inaccessibles à la lecture sur les petits écrans et les smartphones. De plus, cela ne permet pas aux auteurs de redimensionner les chiffres dans leurs chapitres ou de les référencer ailleurs dans le livre.

Par conséquent, notre recommandation est d'utiliser le format [Markedly Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) disponible dans Jupyter Book.

Vous pouvez redimensionner les chiffres pour ajuster leur apparence dans nos chapitres en utilisant les paramètres : `largeur` et `hauteur` (prend de la valeur en px, par exemple, 400px) ou `échelle` (prend de la valeur en pourcentage, par exemple, 50%), surtout si votre chiffre d'origine est grand. Utilisation du paramètre : `name`, vous pouvez référencer des figures dans d'autres chapitres de manière similaire à celle définie dans {ref}`ch-style-crossref`.

Tous les composants de votre figure (emplacement, taille et nom) peuvent être encapsulés dans une section dans un fichier markdown en utilisant la directive suivante :

````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
---
```
````
Ce chiffre peut être référencé dans d'autres fichiers en utilisant le rôle {ref} comme :

```
{ref}`collection de fichiers`
```
Veuillez noter qu'une hauteur de 500px fonctionne très bien avec le livre _The Turing Way_ , mais ce n'est qu'une suggestion.
(ch-style-figures-alttext)=
## Texte alternatif
Le texte alternatif ou le texte alt sont utilisés pour décrire l'apparence et la fonction d'une image sur une page HTML. Notre exemple de figure peut être expliqué avec cette phrase : *Deux personnes lisent volontiers les fichiers dans un tiroir de documents.* L'ajout de texte alternatif à la figure est l'un des premiers principes de l'accessibilité du Web.
L'ajout de texte alternatif à la figure est l'un des premiers principes de l'accessibilité du Web. Le logiciel de lecture d'écran peut lire un texte alt pour mieux expliquer le contenu de la figure à ses utilisateurs.
(ch-style-figures-légende)=

````
```{figure} ../../figures/file-collection.jpg
---
hauteur: 500px
nom: file-collection
alt: Deux personnes lisent volontiers les fichiers dans un tiroir de documents.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````
Un autre avantage d'utiliser le texte alt est quand une image ne peut pas être chargée dans un navigateur, ou le lien vers les sauts d'image, il est affiché à la place d'une figure comme illustré ci-dessous:

```{figure} ../../figures/alt-text-demo.png
---
nom : alt-text-demo
alt : Deux personnes parcourent volontiers les fichiers dans un tiroir de documents.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Par exemple, une légende pourrait dire:

```{figure} ../../figures/file-collection.jpg
---
hauteur : 500px
nom : file-collection
alt : Deux personnes parcourent volontiers les fichiers dans un tiroir de documents.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-style-figures-légende)=
## Légende

Les légendes apparaissent sous la figure. Elles devraient être courtes et concises et inclure une référence à la source d'où elles proviennent. En particulier, il est important de décrire la licence sous laquelle l'image est réutilisée.

(figure-ch-style-advanced)=

> Effectuez votre première pull request sur GitHub. _Illustration du projet Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

La syntaxe pour cette image est la suivante, et la manière dont elle apparaît dans le livre est en dessous du code snippet.

````
```{figure} ../../figures/first-pull-request. ng
---
height: 400px
name : first-pull-request
alt: Une personne qui aide une autre personne à faire sa première pull request sur GitHub
---
Faire votre première pull request sur GitHub.
Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````

```{figure} ../../figures/first-pull-request.png
---
hauteur : 400px
: premier-pull-request
alt : Une personne aidant une autre personne faisant sa première demande d'ajout sur GitHub
---
faisant votre première demande d'ajout sur GitHub.
Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Veuillez vous assurer que le lien vers la source est le {term}`identifiant d'objet numérique <Digital Object Identifier>` et non l'enregistrement Zenodo. Assurez-vous également que vous avez créé un lien vers la source en utilisant le formatage du lien markdown : `[text](url)`.

(figure-ch-style-advanced)=
## Fonctionnalités avancées et "gotchas"

Pour des paramètres plus avancés, veuillez consulter la [Documentation du livre Jupyter](https://jupyterbook.org/content/figures.html). Cette page inclut des informations sur la façon de [mettre à l'échelle et aligner](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) les chiffres, et comment ajouter les chiffres ou leurs légendes aux [marges](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) du livre.

Nous avons remarqué quelques "gotchas" de contributeurs à _The Turing Way_ et nous allons essayer de garder cette section à jour pour quiconque apprend la syntaxe MyST pour les figures

* Les deux `:` et `"` ont une signification syntaxique pour Sphinx. Cela signifie qu'il est important de ne pas utiliser ces caractères dans votre texte alt.
