(rr-code-quality-readability)=

# Écriture de code lisible pour les humains

Writing clear, well commented, readable and reusable code benefits not only you but the community (or audience) that you are developing it for.
Ceci peut être votre laboratoire, des collaborateurs externes, des parties prenantes, ou vous pourriez écrire des logiciels open source pour la distribution mondiale!
Quelle que soit votre échelle de travail, la lisibilité compte !

Voici quelques aspects à considérer en rendant votre code facile à lire par les autres.

## Longueur de la ligne

Il existe un accord sur la longueur des lignes de codage.
PEP8 suggère un maximum de 79 caractères par ligne et 80 par le guide de style R.
Cela signifie que les lignes peuvent facilement tenir sur un écran, et que plusieurs fenêtres de codage peuvent être ouvertes.
On fait valoir que si votre ligne est plus longue que cela, alors votre fonction est trop complexe et doit être séparée !
This is the crux of the Tidy method of R programming, which even has a special operator `%>%` which passes the previous object to the next function, so fewer characters are required:

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #We now have a recoded, melted dataframe called recoded_melt_dat
```

## Commenter

Les commentaires ont été décrits par Jon Peirce, créateur de PsychoPy.
Comments can be blocked or inline.  
The PEP8 guidelines have firm suggestions that block comments should be full sentences, have two spaces following a period, and follow a dated style guide (Strunk and White).
Heureusement, les Éléments de style n'exigent plus une insistance injuste sur les pronounces masculins.
Tandis que les commentaires en ligne doivent être utilisés avec modération.
Garder des commentaires clairs et concis, non seulement vous permet de garder une trace des décisions que vous avez prises, quelles fonctions particulières, et quelles variables sont utilisées, cela permet également à d'autres personnes de voir vos processus de pensée.
La syntaxe des commentaires varie selon les langages de programmation.
In R and Python, a hashtag is used, whereas in C and Java the brackets `/* /*` are used, and in C++/C# a double slash `//` comments single lines.

En Python :

```python
times = 10 # Set integer
my_variable = "my variable is %s times better than yours" %times #Set my_variable to a string
print(my_variable) #print the value
```

En R:

```r
my_func = function(number){ #R function

(number * 5) - 2
}
print(my_func(2))
```

Pour les commentaires plus longs, les informations peuvent être incluses au-dessus du bloc de code.
En Python, vous pouvez utiliser des marques de parole triples comme parenthèses.
Cela fera un commentaire entre les deux.

```python
"""
The following function takes a number, multiplies it by 5, and subtracts 2.
This may seem pointless but is simple for demonstration.
"""
def myfunc(numb): #python function
      return((numb*5)-2)
print(myfunc(8))
```

Les blocs de commentaires plus longs ne sont pas disponibles en R. Il y a des moyens de contourner cela, comme la mise en place d'une chaîne de caractères ou une instruction if(false) :

```r
"1 - This is a string. It will not be evaluated by R, and will not raise
and exception"

if(false){
2 - All of your comment can go here and will never be evaluated.
It also means you keep to the 80 character line length suggestion.
Also, in RStudio you can fold away the comment using the arrow next to the
line number of the if statement.
}
```

Ou commenter des lignes individuelles :

```r
#This is also a very long comment
#covering many lines.
```

Votre IDE aura probablement un raccourci clavier pour commenter les blocs.

## Indentation

Le guide de style R suggère que les lignes doivent être séparées :

```r
by
  two spaces
```

Et non pas

```r
 a mixture
   of
   	tabs
   	  and 	spaces.
```

De toute évidence, les arguments d'une fonction peuvent parfois excéder 80 caractères.
Dans ce cas, il est recommandé de mettre la deuxième ligne en retrait au début des arguments :

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      header = TRUE, verbose = TRUE)

```

Ce ne sont bien sûr que des lignes directrices, et vous devez choisir des éléments qui correspondent à votre style de codage.
Cependant, et encore une fois, il est important de veiller à la cohérence de votre collaboration et de vous mettre d'accord sur un style commun.
Il peut être utile de créer un fichier readme décrivant votre style de codage afin que les collaborateurs ou les contributeurs puissent suivre votre exemple.

## Whitespace after sentences

Si vous partagez des fichiers texte ou travaillez en collaboration sur des manuels ou des documents, puis il y a beaucoup de controverse autour de savoir s'il faut utiliser un ou deux espaces après une période.
When using {term}`Markdown`, it can be clearer to include a new line after every sentence.
This makes the {term}`Markdown` source easier to read, but doesn't change the appearance of the output document.
This practice is part of a system of requirements and recommendations called [semantic line breaks](https://sembr.org/), which aim to make {term}`markup` source easier to read without affecting the rendered output.
Ce chapitre (et la plupart, sinon la totalité, de ce livre) a une nouvelle ligne après chaque phrase qui rend le texte brut plus facile à lire, examiner et résoudre le problème de l'espacement.

```{figure} https://imgs.xkcd.com/comics/third_way.png
---
name: xkcd1285
alt: Two groups holding different flags and fighting, one says "two spaces after a period" and other says "one space after a period". While a person stands with their flag that says "Line break after every sentence"
---
Line break after each sentence makes it easy to review and comment. [Reproduced from xkcd 1285](https://xkcd.com/1285), used under CC BY-NC 2.5.
```
