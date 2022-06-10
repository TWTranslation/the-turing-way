(feuilles de calcul rr-rdm)=
# Organisation des données dans les feuilles de calcul

Feuilles de calcul, comme les fichiers Microsoft Excel, les feuilles Google, et leur alternative Open Source [(par exemple) LibreOffice](https://www.libreoffice.org), sont couramment utilisés pour collecter, stocker, manipuler, analyser et partager des données de recherche. Les feuilles de calcul sont des outils pratiques et faciles à utiliser pour organiser l'information dans un formulaire facile à écrire et facile à lire pour les humains. Cependant, il faut les utiliser avec prudence, car l'utilisation d'une feuille de calcul inappropriée est une cause majeure d'erreurs dans le flux de travail d'analyse des données. Il y a une collection de [horror-stories](http://www.eusprig.org/horror-stories.htm) qui raconte comment l'utilisation de feuilles de calcul peut ruiner des études basées sur l'analyse en raison du comportement inattendu de la feuille de calcul ou des processus d'édition sujets à des erreurs. Certaines de ces erreurs ne sont pas uniques aux feuilles de calcul, mais plusieurs, telles que [ceci](https://doi.org/10.1186/s13059-016-1044-7) et [ceci](https://doi.org/10.1186/1471-2105-5-80), sont.

Heureusement, la plupart des problèmes peuvent être évités avec les recommandations suivantes :
- Utiliser la feuille de calcul dans un format texte uniquement (.csv ou .tsv),
- Créer des feuilles de calcul bien ajustées,
- Rendre les feuilles de calcul cohérentes les unes avec les autres et implémenter les règles pour les entrées de données, et
- Évitez de manipuler et d'analyser les données dans les feuilles de calcul (incluant le copier-coller).

Les feuilles de calcul ne sont un outil puissant que si le jeu de données est collecté et organisé dans des formats spécifiques utilisables à la fois pour les ordinateurs et les chercheurs.

(rr-rdm-tabadsheets-nondata)=
## 1. Éviter le contenu des non-données

Les feuilles de calcul sont utilisées pour organiser les données sous une forme tabulaire. Le sujet, l'objet et la relation entre eux sont transformés en lignes, cellules et colonnes, respectivement. Par exemple, le sujet : `expérience`, relation : `a été effectuée à la date`, et l'objet : `2020-06-06` donne une ligne pour chaque expérience, une colonne pour `date d'expérimentation`, et la valeur `2020-06-06` dans la cellule. Malheureusement, les programmes de feuilles de calcul vous permettent d'ajouter d'autres types de contenu à cela, comme la couleur à certaines cellules. Même si cela peut aider les chercheurs à un certain moment, il faut se rappeler que ce type de **modification de cellule ne doit pas être considéré comme des données**, principalement parce qu'ils ne peuvent pas être exportés vers d'autres logiciels.

En règle simple, ce qui peut être exporté dans un format texte uniquement, des valeurs séparées par des virgules (CSV), ou des valeurs séparées par des tabulations (TSV), peut être considéré comme des données. D'autres fonctions devraient être évitées lors de l'utilisation de ces programmes pour les données de recherche. Cela comprend :
- changement de police, de couleur ou de bordure,
- en utilisant des fonctions,
- fusion des cellules (celle-ci est particulièrement problématique),
- en utilisant des formats de cellules spécifiques (surtout les dates, voir ci-dessous).

En tant que test pour la compatibilité de votre tableur avec la recherche reproductible, exportez vos données de la feuille de calcul au format CSV et rouvez-les. Si vous pouvez toujours obtenir toutes les informations que vous avez stockées dans votre feuille, alors vos données sont correctes.

```
Astuce : Si vous voulez utiliser la couleur pour aider avec une mise en valeur rapide dans votre document, créer une nouvelle colonne pour indiquer quelles cellules sont surlignées (cela devient une partie de vos données).
En plus des retours visuels, vous pouvez maintenant utiliser ces informations pour filtrer ou trier vos données et obtenir rapidement les cellules surlignées.

```
(format de feuilles de calcul rr-rdm)=
## 2. Format de rangement pour les feuilles de calcul

Si la feuille de calcul est mal organisée, alors il peut être [difficile pour les collaborateurs](https://luisdva.github.io/pls-don't-do-this/) de facilement {ref}`accéder et réutiliser vos données <rr-rdm-fair>` pour une analyse plus approfondie.

En effet, une grande partie du travail des chercheurs de données est de transformer les données en une forme que l'ordinateur peut lire. Cependant, Cela prend énormément de temps quand l'information est divisée entre plusieurs feuilles de calcul et quand il n'y a pas de plans concrets de transformation de données avant que les données ne soient acquises.

Il y a des règles très simples pour faciliter l'utilisation des données, qui vont dans le concept de [**données ajustées**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815). Le format de données bien ajusté permet de filtrer et de trier facilement les données dans les feuilles de calcul.

En bref:

- Une colonne = une variable (ni plus, ni moins, cela implique que deux noms d'en-tête ne peuvent pas être identiques)
- Une ligne = un échantillon
- Une cellule = une information
- **La première ligne est l'en-tête**
- Les noms d'en-tête ne doivent pas inclure un caractère spécial (y compris l'espace) ou commencer par un nombre

```{figure} ../../figures/tidy-1.png
---
name : tidy-1
alt : L'image représente des données bien rangées. Une colonne représente une variable, une ligne représente un échantillon, et une cellule représente un morceau d'information.
---
Une illustration de données de rangement.
```

Trois règles rendent un jeu de données rangé :
1. Chaque variable doit avoir sa propre colonne.
2. Chaque observation doit avoir sa propre rangée.
3. Chaque valeur doit avoir sa propre cellule.

Il y a des outils de validation de données disponibles, comme https://goodtables.io, qui vous permettent de vérifier automatiquement si vos feuilles de calcul sont bien rangées.

(rr-rdm-tables-cohérents)=
## 3. Valeurs cohérentes

Lorsque vous travaillez avec plusieurs feuilles de calcul ou avec une équipe lors de la collecte de données, il est crucial de s'assurer que les mêmes informations seront saisies avec le même terme, et que le même terme communique toujours la même information. Dans l'exemple des données iris, si certaines personnes utilisent des termes différents pour enregistrer des informations pour une colonne spécifique - comme nommer la colonne `espèces` au lieu de `espèces` ou utiliser `iris setosa`, `défini.` ou `i. etosa` au lieu de `setosa` - la création d'un workflow reproductible sera plus difficile, et les erreurs peuvent même être négligées.  
Les différences entraînent souvent des erreurs, surtout lorsque les mêmes termes peuvent signifier des choses différentes en fonction de la personne qui entre les données. Par exemple, indiquer la date comme `02-03` signifie Février le 3<sup>rd</sup> aux États-Unis, mais Mars le 2<sup>e</sup> en Europe.

Il est de bonne pratique d'implémenter un `dictionnaire de données` ou une `taxonomie` de termes acceptés et de documenter la convention utilisée dans un fichier README. Selon le logiciel que vous utilisez, vous pourriez être en mesure de restreindre les valeurs acceptées dans des colonnes spécifiques. Si une telle taxonomie ou une telle ontologie est disponible, elle peut vous permettre (et d’autres) d’utiliser les données en conjonction avec d’autres jeux de données. Par exemple, vous pouvez utiliser le terme générique `mâle` et `femelle` pour le sexe d'un animal (sans majuscules, et sans abréviation), car de nombreuses ontologies utilisent ces termes. De plus, vous pouvez utiliser des outils supplémentaires pour valider les feuilles de calcul avant leur intégration dans l'analyse.

Vous devriez également avoir des règles claires concernant les points de données manquants. En utilisant `NA`, `NULL`, ou les cellules vides ne sont pas triviales et peuvent avoir des significations différentes (point de données impossible, non enregistré ou point de données perdu). Imaginez qu'un chercheur souhaite enregistrer le temps passé avant de voir une terre pollinisée sur une fleur d'iris, et aucun pollinisateur n'a été vu au cours de l'expérience de 10 minutes. Supposons que le chercheur rapporte `600` (la durée de l'expérience en secondes). Dans ce cas, il n'y aura aucun moyen de distinguer un scénario où aucun pollinisateur n'a été vu, et une fois qu'un pollinisateur a été vu à la fin de l'expérience (et vous pouvez oublier cette règle et traiter `600` comme une valeur normale).

Si `NA` est signalé, on peut interpréter cette valeur comme un point de données inexistant (l'expérience n'a pas été effectuée). Une solution élégante est d'avoir une deuxième colonne indiquant si un pollinisateur a été vu pendant l'expérience, où les valeurs `TRUE`, `FALSE` et `NA` sont acceptées.

Enfin, vous devriez également être au courant du comportement par défaut de votre programme de tableur, car il peut être différent pour différents programmes, et pour différentes versions du même programme. Par exemple, la virgule est généralement indiquée par une virgule dans les versions françaises ou allemandes d'Excel. Dans les versions anglaises, un point est utilisé car la virgule n'a aucun sens (`9, 00` sera traduit en `9000` ou `9` selon la version que vous utilisez).

(manipulation des feuilles de calcul rr-rdm)=
## 4. Manipulation et analyse des données

***Ne pas manipuler ou analyser les données dans une feuille de calcul.***

En particulier, seulement copier-coller d'une feuille de calcul à une autre si le processus est très rarement. Il est maintenant facile de lire et de combiner différents feuilles de calcul dans le logiciel d'analyse, avec l'avantage supplémentaire que le logiciel retournera un message d'erreur si les en-têtes ne correspondent pas.

(rr-rdm-table-conseils-conseils)=
## Autres conseils

(rr-rdm-tabadsheets-tips-time)=
### Traiter avec des informations sur le temps

Tandis que les dates doivent être écrites en tant que `aaaa-mm-jj`, Excel et d'autres logiciels ont tendance à transformer ces données en leur propre format de date (même lors de l'importation de données à partir d'un fichier CSV). La seule façon à 100% sûre de gérer cela est de faire différentes colonnes pour des années, mois et jours et recréer les données dans le logiciel utilisé pour l'analyse. Le temps entré avec `hhh:mm:ss` fonctionne normalement.

(rr-rdm-table-tips-plusieurs)=
### Travailler avec plusieurs feuilles

Nous utilisons souvent plusieurs feuilles pour des données différentes mais liées. C'est un outil pratique en effet, surtout quand on veut partager l'ensemble des données avec ses collègues.  
Par contre, les fichiers CSV n'enregistrent qu'une seule feuille à la fois. Bien que la plupart des logiciels d'analyse de données aient plusieurs façons d'importer des fichiers `xlsx` la solution pratique est de travailler avec le format `xlsx` tout en s'assurant que l'information est disponible au format CSV pour chaque feuille. Une meilleure solution, en particulier pour le stockage à long terme, est de sauvegarder toutes les feuilles séparément dans un fichier CSV et de les compresser ensemble. Cette solution permet également d'inclure de la documentation supplémentaire qui pourrait être dans un format différent (par exemple, un fichier texte expliquant la signification des en-têtes et de l'unité choisie).

(rr-rdm-tabadsheets-tips-design)=
### Conception de la feuille de calcul

Les données sont souvent collectées manuellement, sur papier. Pour être le plus efficace et éviter les erreurs, il est préférable de collecter les données dans le même format que celui qui sera numérisé. Autrement dit, il faut concevoir la feuille de calcul lisible par ordinateur qui sera imprimée pour la collecte de données. Cela pose certaines questions de conception, en particulier pour les informations qui sont uniques à une expérience (un seul papier) mais qui peuvent changer entre les expériences (par exemple, expérimentaliste ou température de la pièce). Vous voulez en effet cette information dans une seule colonne, mais vous ne voudriez la saisir qu'une seule fois lors de l'acquisition de données (surtout sur la version papier). Une solution est de déplacer ces colonnes sur une seconde page (non imprimée) de la feuille de calcul et d'ajuster les en-têtes et les pieds de page pour entrer l'information sur la version papier. Il faut s'assurer que les informations sont saisies dans la colonne lors de la numérisation.

La façon dont vous saisissez les informations (c.-à-d. la façon dont vous concevez vos en-têtes et le contenu de votre cellule) peut être différente selon l'analyse que vous voulez effectuer. Il faut toujours essayer d'être aussi générique et objectif que possible et réfléchir à toute analyse supplémentaire que l'on pourrait vouloir effectuer.


À titre d'exemple, supposons que vous êtes intéressé à décrire si le pourcentage de fleurs dont la longueur est supérieure à 6 mm est différente dans trois espèces d'iris. Vous pouvez être enclin à enregistrer une colonne vraie ou fausse `est sepal-longer-than-6cm`, mais cela restreindra l'analyse que vous pouvez effectuer. Une meilleure solution consiste à enregistrer la longueur du sepal (en mm) et à créer automatiquement la catégorisation plus tard.

Si vous utilisez R, vous traceriez alors ce que vous vouliez avec:
```
iris %>% ## le jeu de données iris est inclus dans la base R
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal. longueur >6, TRUE, FALSE)) %>% ## cela crée la nouvelle colonne
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Espèces)) + ggplot2::geom_bar() ## ce tracer les données
```

Les noms d'entêtes doivent être choisis avec soin, et quand il n'est pas clair ce que l'on entend et quelle unité est utilisée, vous pouvez ajouter quelques explications dans un document externe. Vous pouvez également partager un exemple de feuille de calcul à un collègue pour recevoir des commentaires sur la façon dont votre feuille de calcul est compréhensible.

Une autre alternative est d'ajouter quelques explications en haut de la feuille dans les premières lignes avant les en-têtes. En conservant des informations lisibles par l'homme en haut du fichier, on peut mieux comprendre les données qui commencent dans les lignes d'en-tête. Ces informations peuvent également aider à analyser ces données, en s'assurant que les scripts ignorent les lignes d'explication et ne les considèrent que pendant l'analyse. Cependant, un bon fichier avec des colonnes et des lignes bien ajustées ne devrait pas avoir besoin d'explications supplémentaires.

Comme pour les noms d'en-têtes, la taille des en-têtes n'est pas un problème pour les ordinateurs. Cependant, pour la lisibilité humaine, il est préférable de le garder court (jusqu'à 32 caractères).

Vous n'avez pas à penser à l'ordre des colonnes pour l'analyse, car il n'a aucune importance pour les logiciels d'analyse de données. Vous pouvez donc optimiser complètement ce paramètre pour l'étape de collecte de données.

(rr-rdm-tabadsheets-tips-versioning)=
### Standard et Versioning

Une bonne conception de feuille de calcul a des noms d'en-tête instructifs et intuitifs, et elle facilite à la fois la collecte et l'analyse de données. La construction d'une telle feuille de calcul est difficile car il faut du temps, de multiples itérations et un consensus. Il est donc avantageux de rechercher une feuille de calcul standard avant de concevoir le vôtre et de partager ouvertement votre design une fois qu'il est créé. On devrait également utiliser un historique de version des feuilles de calcul (comme elles vont évoluer), et le script d'analyse devrait mentionner le numéro de version de la feuille de calcul. La documentation de la feuille de calcul, son historique de versions et les ontologies auxquelles elle est liée, peuvent être utiles pour les futurs utilisateurs.

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

Bien que les feuilles de calcul puissent être un moyen très convivial de collecter et de partager des données, elles peuvent également être la source d'erreurs si elles sont mal utilisées. Lorsqu'il s'agit de développer un flux de travail reproductible pour les analyses, il faut concevoir la feuille de calcul pour la lisibilité de l'ordinateur et de l'être humain, et, même avant de commencer la collecte de données, ils devraient réfléchir à ce qui faciliterait leur analyse de données. Il vaut mieux éviter la manipulation et l'analyse des données dans les feuilles de calcul, en particulier, car cela conduit à des flux de travail non reproductibles. Utiliser le contrôle de version et rendre les données en lecture seule sont deux autres pratiques de gestion des données qui peuvent prévenir les accidents.

Utilisez un fichier README [{term}`def<README>`] et d'autres choix de structure pour expliquer les conventions de nommage. Il indiquera clairement aux autres ce que signifie le nom du fichier et des en-têtes et les critères à prendre en considération lors de la conception d'un flux de travail d'analyse. Si vous travaillez dans une équipe, vous devriez prendre soin des conventions et vous assurer que tout le monde les suit.

Pour en savoir plus sur l'organisation des données dans les feuilles de calcul, vous pouvez consulter les cours de menuiserie de données pour les [scientifiques sociaux](https://datacarpentry.org/spreadsheets-socialsci/) et les [écologistes](https://datacarpentry.org/spreadsheet-ecology-lesson/).
