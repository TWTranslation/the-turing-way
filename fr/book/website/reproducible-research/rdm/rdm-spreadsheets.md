(feuilles de calcul rr-rdm)=

# Organisation des données dans les feuilles de calcul

Spreadsheets, such as Microsoft Excel files, google sheets, and their Open Source alternative [(for instance) LibreOffice](https://www.libreoffice.org), are commonly used to collect, store, manipulate, analyse, and share research data.
Les feuilles de calcul sont des outils pratiques et faciles à utiliser pour organiser l'information dans un formulaire facile à écrire et facile à lire pour les humains.
Cependant, il faut les utiliser avec prudence, car l'utilisation d'une feuille de calcul inappropriée est une cause majeure d'erreurs dans le flux de travail d'analyse des données.
See for example the [loss of COVID19 data in England due to poor use of Excel](https://www.bbc.com/news/technology-54423988).
There is a collection of [horror-stories](https://eusprig.org/research-info/horror-stories/) that tells how the use of spreadsheets can ruin analysis-based studies due to unexpected behaviour of the spreadsheet or error-prone editing processes.
Some of these mishaps are not unique to spreadsheets, but many, such as [Gene name errors](https://doi.org/10.1186/s13059-016-1044-7) (and another [Gene name error example](https://doi.org/10.1186/1471-2105-5-80)), are.

Heureusement, la plupart des problèmes peuvent être évités avec les recommandations suivantes :

- Utiliser la feuille de calcul dans un format texte uniquement (.csv ou .tsv),
- Créer des feuilles de calcul bien ajustées,
- Rendre les feuilles de calcul cohérentes les unes avec les autres et implémenter les règles pour les entrées de données, et
- Évitez de manipuler et d'analyser les données dans les feuilles de calcul (incluant le copier-coller).

Les feuilles de calcul ne sont un outil puissant que si le jeu de données est collecté et organisé dans des formats spécifiques utilisables à la fois pour les ordinateurs et les chercheurs.

(rr-rdm-tabadsheets-nondata)=

## 1. Éviter le contenu des non-données

Les feuilles de calcul sont utilisées pour organiser les données sous une forme tabulaire.
Le sujet, l'objet et la relation entre eux sont transformés en lignes, cellules et colonnes, respectivement.
For example, the subject: `experiment`, relationship: `was performed on the date`, and the object: `2020-06-06` gives one row for each experiment, one column for `date of experiment`, and the value `2020-06-06` in the cell.
Malheureusement, les programmes de feuilles de calcul vous permettent d'ajouter d'autres types de contenu à cela, comme la couleur à certaines cellules.
While it may help the researchers at some point, one needs to remember that this kind of **cell modification should not be considered as data**, primarily because they cannot be exported to other software.

En règle simple, ce qui peut être exporté dans un format texte uniquement, des valeurs séparées par des virgules (CSV), ou des valeurs séparées par des tabulations (TSV), peut être considéré comme des données.
D'autres fonctions devraient être évitées lors de l'utilisation de ces programmes pour les données de recherche.
This includes:

- changement de police, de couleur ou de bordure,
- en utilisant des fonctions,
- fusion des cellules (celle-ci est particulièrement problématique),
- en utilisant des formats de cellules spécifiques (surtout les dates, voir ci-dessous).

En tant que test pour la compatibilité de votre tableur avec la recherche reproductible, exportez vos données de la feuille de calcul au format CSV et rouvez-les.
Si vous pouvez toujours obtenir toutes les informations que vous avez stockées dans votre feuille, alors vos données sont correctes.

```{tip}
If you want to use color to help with a rapid highlight in your document, create a new column to indicate which cells are highlighted (it becomes a part of your data).
In addition to the visual feedback, you can now also use this information to filter or sort your data and get the highlighted cells quickly.
```

(format de feuilles de calcul rr-rdm)=

## 2. Format de rangement pour les feuilles de calcul

If [the spreadsheet is poorly organised](https://luisdva.github.io/pls-don't-do-this/), then it may be difficult for collaborators to easily {ref}`read-in and reuse <rr-rdm-fair>` your data for further analysis.

En effet, une grande partie du travail des chercheurs de données est de transformer les données en une forme que l'ordinateur peut lire.
Cependant, Cela prend énormément de temps quand l'information est divisée entre plusieurs feuilles de calcul et quand il n'y a pas de plans concrets de transformation de données avant que les données ne soient acquises.

There are very simple rules to facilitate data use, which go into the concept of [**tidy data**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815) {cite:ps}`Wickham2014tidydata`.
Le format de données bien ajusté permet de filtrer et de trier facilement les données dans les feuilles de calcul.

En bref:

- Une colonne = une variable (ni plus, ni moins, cela implique que deux noms d'en-tête ne peuvent pas être identiques)
- Une ligne = un échantillon
- Une cellule = une information
- **The first row is the header**
- Les noms d'en-tête ne doivent pas inclure un caractère spécial (y compris l'espace) ou commencer par un nombre

```{figure} ../../../figures/tidy-1.*
---
name: tidy-1
alt: >
  Three images depicting visual representations of the descriptions mentioned previously.
  In the first image on the left, variables are demonstrated with double headed arrows going up and down the columns.
  In the middle image, double headed arrows go along rows, demonstrating observations.
  In the right hand image, black circles over each cell demonstrate values.
---
An illustration of tidy data.
```

Trois règles rendent un jeu de données rangé :

1. Chaque variable doit avoir sa propre colonne.
2. Chaque observation doit avoir sa propre rangée.
3. Chaque valeur doit avoir sa propre cellule.

There are data validation tools available, like [Frictionless Data](https://frictionlessdata.io/)'s [Python package](https://framework.frictionlessdata.io/) or [GitHub Action](https://repository.frictionlessdata.io/), that allow you to automatically check whether your spreadsheets are tidy.

(rr-rdm-tables-cohérents)=

## 3. Valeurs cohérentes

Lorsque vous travaillez avec plusieurs feuilles de calcul ou avec une équipe lors de la collecte de données, il est crucial de s'assurer que les mêmes informations seront saisies avec le même terme, et que le même terme communique toujours la même information.
In the example of iris data, if some people use different terms to record information for a specific column - such as naming the column `species` instead of `Species` or using `iris setosa`, `set.` or `i.setosa` instead of `setosa` - the creation of a reproducible workflow will be more difficult, and errors may even be overlooked.  
Discrepancies often lead to errors, especially when the same terms could mean different things depending on who is entering the data.
For example, indicating date as `02-03` will mean February the 3<sup>rd</sup> in the USA, but March the 2<sup>nd</sup> in Europe.

It is good practice to implement a `data dictionary` or a `taxonomy` of accepted terms and document the convention used in a README file.
Selon le logiciel que vous utilisez, vous pourriez être en mesure de restreindre les valeurs acceptées dans des colonnes spécifiques.
Si une telle taxonomie ou une telle ontologie est disponible, elle peut vous permettre (et d’autres) d’utiliser les données en conjonction avec d’autres jeux de données.
For example, you may use the generic `male` and `female` term for the sex of an animal (without capitals, and without using abbreviation), as many ontologies use these terms.
De plus, vous pouvez utiliser des outils supplémentaires pour valider les feuilles de calcul avant leur intégration dans l'analyse.

(rr-rdm-table-conseils-conseils)=

### Missing data points

Vous devriez également avoir des règles claires concernant les points de données manquants.
Using `NA`, `NULL`, or empty cells is not trivial and may have different meanings (impossible data point, not recorded, or lost data point).
Imaginez qu'un chercheur souhaite enregistrer le temps passé avant de voir une terre pollinisée sur une fleur d'iris, et aucun pollinisateur n'a été vu au cours de l'expérience de 10 minutes.
Suppose the researcher reports `600` (the duration of the experiment in seconds).
In that case, there will be no way to distinguish a scenario where no pollinator was seen, and one when a pollinator was seen at the end of the experiment (and you may forget that rule and treat `600` as a normal value).

If `NA` is reported, one may interpret this value as a non-existing data point (the experiment had not been performed).
An elegant solution is to have a second column stating whether a pollinator was seen during the experiment, where `TRUE`, `FALSE` and `NA` values are accepted.

Enfin, vous devriez également être au courant du comportement par défaut de votre programme de tableur, car il peut être différent pour différents programmes, et pour différentes versions du même programme.
Par exemple, la virgule est généralement indiquée par une virgule dans les versions françaises ou allemandes d'Excel.
In the English versions, a dot is used since the comma has no meaning (`9,000` will be translated into `9000` or `9` depending on the version you are using).

(manipulation des feuilles de calcul rr-rdm)=

## 4. Manipulation et analyse des données

When you manually manipulate data in a spreadsheet program, you will need to record all the steps that you took.
This can be time consuming and can be avoided by manipulating and analysing the data with automatic analyses or programmes such as [Open Refine](https://openrefine.org/) that will record the data manipulation steps for you.

OpenRefine can be used for tabular data (for example in [social sciences](https://datacarpentry.org/openrefine-socialsci/), [ecology](https://datacarpentry.org/OpenRefine-ecology-lesson/) and [history](https://programminghistorian.org/en/lessons/cleaning-data-with-openrefine).
OpenRefine can help you to get an overview of large datasets, identify and correct inconsistencies, and integrate datasets.
It automatically records these processes, saving a script of the steps involved.
OpenRefine uses your web browser as a graphical interface, but the software runs only locally so it is safe to use for sensitive data.

Automatic manipulation will also help with data validation, as software may return error messages if data is manipulated incorrectly.

Ne pas manipuler ou analyser les données dans une feuille de calcul.

## 5. Data validation

- [Excel support page on data validation](https://support.office.com/en-us/article/Apply-data-validation-to-cells-29FECBCC-D1B9-42C1-9D76-EFF3CE5F7249)
- Check manually whether your data is consistent, complete and correct:
- If a column should contain only numeric values or characters, check that there are no non-numeric values or non-character
- Check for consistency in names, unit of measurements, data type and so on
- Check if there are any empty cells and replace them with your chosen null value (see {ref}`above <rr-rdm-spreadsheets-missing>`)
- Remove redundant data (while keeping in mind what could be reused in the future!)

(rr-rdm-table-tips-plusieurs)=

## 6. Accessibility

Comma- or Tab-Separated Value (CSV/TSV) formats are not only best for preservation, but for accessibility as well.
For more information:

- [Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md#tabular)
- [Make your Excel documents accessible to people with disabilities](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593) (Microsoft Office)
- [Excel Tips](https://accessibility.psu.edu/microsoftoffice/excel/) (Accessibility and Usability at Penn State)
- [Create Accessible Spreadsheets](https://www.section508.gov/create/spreadsheets/) (General Services Administration of the 49 U.S. - focused on Excel)

(rr-rdm-table-conseils-conseils)=

## Autres conseils

(rr-rdm-tabadsheets-tips-time)=

### Traiter avec des informations sur le temps

While dates should be written as `yyyy-mm-dd`, Excel and other software tend to transform this data into their own date formats (even during data import from a CSV file).
La seule façon à 100% sûre de gérer cela est de faire différentes colonnes pour des années, mois et jours et recréer les données dans le logiciel utilisé pour l'analyse. Time entered with `hh:mm:ss` normally works.

(rr-rdm-table-tips-plusieurs)=

### Travailler avec plusieurs feuilles

Nous utilisons souvent plusieurs feuilles pour des données différentes mais liées.
It is a handy tool indeed, especially when one wants to share the complete dataset with colleagues.  
On the other hand, CSV files only save one sheet at a time.
Though most data analysis software have several ways to import `xlsx` files, the practical solution is to work with the `xlsx` format while making sure that the information is available in CSV format for each sheet.
Une meilleure solution, en particulier pour le stockage à long terme, est de sauvegarder toutes les feuilles séparément dans un fichier CSV et de les compresser ensemble.
Cette solution permet également d'inclure de la documentation supplémentaire qui pourrait être dans un format différent (par exemple, un fichier texte expliquant la signification des en-têtes et de l'unité choisie).

(rr-rdm-tabadsheets-tips-design)=

### Conception de la feuille de calcul

Les données sont souvent collectées manuellement, sur papier.
Pour être le plus efficace et éviter les erreurs, il est préférable de collecter les données dans le même format que celui qui sera numérisé.
Autrement dit, il faut concevoir la feuille de calcul lisible par ordinateur qui sera imprimée pour la collecte de données.
Cela pose certaines questions de conception, en particulier pour les informations qui sont uniques à une expérience (un seul papier) mais qui peuvent changer entre les expériences (par exemple, expérimentaliste ou température de la pièce).
Vous voulez en effet cette information dans une seule colonne, mais vous ne voudriez la saisir qu'une seule fois lors de l'acquisition de données (surtout sur la version papier).
Une solution est de déplacer ces colonnes sur une seconde page (non imprimée) de la feuille de calcul et d'ajuster les en-têtes et les pieds de page pour entrer l'information sur la version papier.
Il faut s'assurer que les informations sont saisies dans la colonne lors de la numérisation.

La façon dont vous saisissez les informations (c.-à-d. la façon dont vous concevez vos en-têtes et le contenu de votre cellule) peut être différente selon l'analyse que vous voulez effectuer.
Il faut toujours essayer d'être aussi générique et objectif que possible et réfléchir à toute analyse supplémentaire que l'on pourrait vouloir effectuer.

À titre d'exemple, supposons que vous êtes intéressé à décrire si le pourcentage de fleurs dont la longueur est supérieure à 6 mm est différente dans trois espèces d'iris.
You may be inclined to record a true or false column `is-sepal-longer-than-6cm`, but this will restrict the analysis you can perform.
Une meilleure solution consiste à enregistrer la longueur du sepal (en mm) et à créer automatiquement la catégorisation plus tard.

Si vous utilisez R, vous traceriez alors ce que vous vouliez avec:

```
iris %>% ## the iris dataset is included in R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal.Length >6, TRUE, FALSE)) %>% ## this create the new column
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Species)) + ggplot2::geom_bar() ## this plots the data
```

Les noms d'entêtes doivent être choisis avec soin, et quand il n'est pas clair ce que l'on entend et quelle unité est utilisée, vous pouvez ajouter quelques explications dans un document externe.
Vous pouvez également partager un exemple de feuille de calcul à un collègue pour recevoir des commentaires sur la façon dont votre feuille de calcul est compréhensible.

Une autre alternative est d'ajouter quelques explications en haut de la feuille dans les premières lignes avant les en-têtes.
En conservant des informations lisibles par l'homme en haut du fichier, on peut mieux comprendre les données qui commencent dans les lignes d'en-tête.
Ces informations peuvent également aider à analyser ces données, en s'assurant que les scripts ignorent les lignes d'explication et ne les considèrent que pendant l'analyse.
Cependant, un bon fichier avec des colonnes et des lignes bien ajustées ne devrait pas avoir besoin d'explications supplémentaires.

Comme pour les noms d'en-têtes, la taille des en-têtes n'est pas un problème pour les ordinateurs.
Cependant, pour la lisibilité humaine, il est préférable de le garder court (jusqu'à 32 caractères).

Vous n'avez pas à penser à l'ordre des colonnes pour l'analyse, car il n'a aucune importance pour les logiciels d'analyse de données.
Vous pouvez donc optimiser complètement ce paramètre pour l'étape de collecte de données.

(rr-rdm-tabadsheets-tips-versioning)=

### Standard et Versioning

Une bonne conception de feuille de calcul a des noms d'en-tête instructifs et intuitifs, et elle facilite à la fois la collecte et l'analyse de données.
La construction d'une telle feuille de calcul est difficile car il faut du temps, de multiples itérations et un consensus.
Il est donc avantageux de rechercher une feuille de calcul standard avant de concevoir le vôtre et de partager ouvertement votre design une fois qu'il est créé.
On devrait également utiliser un historique de version des feuilles de calcul (comme elles vont évoluer), et le script d'analyse devrait mentionner le numéro de version de la feuille de calcul.
La documentation de la feuille de calcul, son historique de versions et les ontologies auxquelles elle est liée, peuvent être utiles pour les futurs utilisateurs.

(rr-rdm-tabadsheets-tips-team)=

### Travailler en équipe : Embrasement

Si vous travaillez avec une équipe sur la collecte de données, assurez-vous :

- Tout le monde utilise le même logiciel (et la même version) pour entrer les données.
- Tout le monde utilise la même version du modèle de tableur.
- Tout le monde comprend ce que chaque colonne représente et l'unité à utiliser.
- Chaque colonne a un standard défini sur la façon de saisir des données ou la taxonomie des termes que l'on peut utiliser.
- Une personne est responsable de répondre à des questions putatives lors de la collecte de données.
- Chaque feuille de calcul est validée avant d'entrer dans le flux de travail d'analyse, et dès que possible.

(rr-rdm-spreadsheets-summary)=

## Summary

Bien que les feuilles de calcul puissent être un moyen très convivial de collecter et de partager des données, elles peuvent également être la source d'erreurs si elles sont mal utilisées.
Lorsqu'il s'agit de développer un flux de travail reproductible pour les analyses, il faut concevoir la feuille de calcul pour la lisibilité de l'ordinateur et de l'être humain, et, même avant de commencer la collecte de données, ils devraient réfléchir à ce qui faciliterait leur analyse de données.
Il vaut mieux éviter la manipulation et l'analyse des données dans les feuilles de calcul, en particulier, car cela conduit à des flux de travail non reproductibles.
Utiliser le contrôle de version et rendre les données en lecture seule sont deux autres pratiques de gestion des données qui peuvent prévenir les accidents.

Use a README [{term}`def<README>`] file and and other structure choices to explain naming conventions.
Il indiquera clairement aux autres ce que signifie le nom du fichier et des en-têtes et les critères à prendre en considération lors de la conception d'un flux de travail d'analyse.
Si vous travaillez dans une équipe, vous devriez prendre soin des conventions et vous assurer que tout le monde les suit.

To learn more about data organisation in spreadsheets, you may have a look at the Data Carpentry lessons for [Social Scientists](https://datacarpentry.org/spreadsheets-socialsci/) and [Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/).

To read about recommended practices, see {cite:ps}`Broman2018data`

See also a blogpost with [resources for using spreadsheets in research and moving onto other tools](https://www.software.ac.uk/blog/2021-11-05-resources-using-spreadsheets-research-and-moving-other-tools).

