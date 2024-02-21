(pd-code-styling-guidelines)=
# Lignes directrices pour le style de code

Les directives de style diffèrent entre les organisations, les langues et au fil du temps. Even, le guide de style Python Enhancement Proposal 8 (PEP 8) a eu de nombreuses révisions depuis sa sortie en 2001. Vous devez choisir un cadre qui soit le mieux adapté à vos besoins: que ce soit pour votre bénéfice ou pour celui des autres. Il est également important de rester cohérent (et non pas systématiquement incohérent)!

Les directives de style incluent des conseils pour le nommage des fichiers, le nommage des variables, l'utilisation des commentaires, les espaces et les accolades.

Les liens suivants sont des liens vers des guides de style existants qui peuvent être utiles lors de la décision de formater votre code:

* [PEP8](https://www.python.org/dev/peps/pep-0008/) pour Python.
* [Guide de style](http://adv-r.had.co.nz/Style.html) de Hadley Wickham pour R.
* Guide de style [Google](https://google.github.io/styleguide/Rguide.xml) pour R.
* Guide de style [Microsoft](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) pour C#.
* [PEP7](https://www.python.org/dev/peps/pep-0007/) pour C.

Cependant, pour commencer rapidement, les sections suivantes présentent quelques conseils pour le style de code.

## Nom du fichier

Le [Centre pour l'Open Science](http://help.osf.io/m/bestpractices/l/609932-file-naming) a quelques suggestions utiles pour nommer des fichiers, en veillant tout particulièrement à ce qu'ils soient lisibles tant pour les humains que pour les machines. Cela comprend notamment éviter l'utilisation de caractères génériques (@£$%) et utiliser des tirets bas ("\_") pour délimiter les informations, et des tirets ("\-") à des informations ou des espaces. Ils suggèrent également des fichiers de datation ou de numérotation et évitent des mots comme FINAL (ou FINAL). La suggestion de rencontre est le format long `AAAA-MM-JJ`, suivi du nom du fichier et du numéro de version. Il en résulte un ordre chronologique automatique. Par exemple :

```r
données <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
Le guide de style R suggère de conserver les noms de fichiers de base. Cela peut être approprié pour les petits projets compacts, cependant sur des projets plus grands avec beaucoup de fichiers similaires, ou si vous n'utilisez pas le contrôle de version (voir chapitre /? il peut être plus approprié d'utiliser les directives du COS. Pour plus de détails, veuillez consulter le chapitre sur {ref}`Nom de fichier<pd-filenaming>`.

### Versioning

Une considération supplémentaire pour le nommage des fichiers est le versionnage de votre logiciel. Utiliser des directives de versioning aidera à éviter d'utiliser des mots comme `_FINAL.R`. Une convention typique est l'approche MajorMinorPatch (ou MajorMinorRevision). En cela, votre première tentative pour un paquet ou une bibliothèque pourrait ressembler à ceci :
```
mon-paquet_1_0_0.py
```
Cela indique que le logiciel est dans l'étape alpha non révisée/corrigée (0) de la première version majeure.

## Nommage des variables

Dans les projets de mathématiques à l'école, les variables sont souvent nommées de façon peu imaginative "x", "y" et "z". Cette brièveté est probablement due au fait que les enseignants (tout à fait compréhensibles) ne veulent pas écrire à plusieurs reprises de longs noms de variables sur le tableau. En codant, cependant, vous avez la liberté de nommer vos variables tout ce que vous voulez. Cela peut être utile pour représenter le flux de votre script.

Soyez créatif!

### Conventions de nommage

Pour plus de clarté et de lisibilité, il est utile de choisir un ensemble de conventions de nommage pour vos variables. Il y a une grande variété, et certaines personnes peuvent être assez vocales sur lequel on est "correct" (choisissez une qui vous convient !). Celles-ci comprennent:

- Caisse de Camella
- format@@0 lowerCamelCase
- Méthode_de soulignement
- Cas Mixed_With_Soulignements
- minuscules

Par exemple :

```r
raw_data <- read.csv("data.csv") # Pas très créatif
rawData <- read.csv("data.csv") #lowerCamelCase
```

OK, `raw_data` n'est pas très créatif, mais il aurait pu facilement être `spam` ou `œufs` si cela a du sens dans votre script. Vous pouvez également avoir une fonction qui recode une variable :

```r
rawDat <- recode(rawDat)
```

La réutilisation du nom de la variable ne fournit aucune information sur le processus que rawDat a traversé. Le stockage en tant que variable séparée nous permet de voir quelles transformations ont été effectuées sur la variable originale :

```
rawDat_recoded <- recode(rawDat)
```

Si vous le souhaitez, vous pouvez effacer l'ancienne variable en utilisant supprimer comme ci-dessus.

```
remove(rawDat) #In R
del(rawDat) # In Python
```

Il est important de choisir un style et de s'y tenir:

```
This Is Because_SwitchingentreweenDifferentformats is.difficile à lire.
```

```
Où_en tant qu'if_you stick_to one_style, votre code sera_be plus simple_to_follow!
```
