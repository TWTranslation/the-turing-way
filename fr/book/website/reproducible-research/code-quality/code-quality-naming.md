(rr-code-style-naming)=

# File and Variable Naming

### Nom du fichier

The [Centre for Open Science](https://help.osf.io/article/146-file-naming) has some useful suggestions for the naming of files, particularly ensuring that they are readable for both humans and machines.
This includes avoiding the use of wildcard characters (`@£$%`) and using underscores (`_`) to delimit information, and dashes (`-`) to conjunct information or spaces.
Ils suggèrent également des fichiers de datation ou de numérotation et évitent des mots comme FINAL (ou FINAL).
The dating suggestion is the long format `YYYY-MM-DD`, followed by the name of the file, and the version number.
Il en résulte un ordre chronologique automatique. For example:

```r
data <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")
```

Le guide de style R suggère de conserver les noms de fichiers de base.
This might be appropriate for small compact projects, however over larger projects with lots of similar files, or if you are not using version control (see chapter on {ref}`Version Control<rr-vcs>`) it may be more appropriate to use the COS guidelines.
For more details please see the chapter on {ref}`File Naming<pd-filenaming>`.

#### Versioning

Une considération supplémentaire pour le nommage des fichiers est le versionnage de votre logiciel.
Using versioning guidelines will help avoid using words like `_FINAL.R`.
Une convention typique est l'approche MajorMinorPatch (ou MajorMinorRevision).
En cela, votre première tentative pour un paquet ou une bibliothèque pourrait ressembler à ceci :

```
my-package_1_0_0.py
```

Cela indique que le logiciel est dans l'étape alpha non révisée/corrigée (0) de la première version majeure.

### Nommage des variables

In maths projects at school, variables are often unimaginatively named "x", "y", and "z".
Cette brièveté est probablement due au fait que les enseignants (tout à fait compréhensibles) ne veulent pas écrire à plusieurs reprises de longs noms de variables sur le tableau.
En codant, cependant, vous avez la liberté de nommer vos variables tout ce que vous voulez.
Cela peut être utile pour représenter le flux de votre script.

Soyez créatif!

#### Conventions de nommage

Pour plus de clarté et de lisibilité, il est utile de choisir un ensemble de conventions de nommage pour vos variables.
Il y a une grande variété, et certaines personnes peuvent être assez vocales sur lequel on est "correct" (choisissez une qui vous convient !).
Celles-ci comprennent:

- Caisse de Camella
- format@@0 lowerCamelCase
- Méthode_de soulignement
- Cas Mixed_With_Soulignements
- minuscules

For example:

```r
raw_data <- read.csv("data.csv") # Not very creative
rawData <- read.csv("data.csv")  #lowerCamelCase
```

OK, `raw_data` is not very creative, but it could easily have been `spam` or `eggs` if that makes sense in your script.
Vous pouvez également avoir une fonction qui recode une variable :

```r
rawDat <- recode(rawDat)
```

La réutilisation du nom de la variable ne fournit aucune information sur le processus que rawDat a traversé.
Le stockage en tant que variable séparée nous permet de voir quelles transformations ont été effectuées sur la variable originale :

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
ThisIs Because_SwitchingbetweenDifferentformats is.difficult to read.
```

```
Where_as if_you stick_to one_style, your_code will_be easier_to_follow!
```