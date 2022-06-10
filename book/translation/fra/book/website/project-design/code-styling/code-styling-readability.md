(pd-code-styling-readability)=
# Écriture de code lisible pour les humains

Écrire du code clair, bien commenté, lisible et réutilisable profite non seulement à vous, mais aussi à la communauté (ou au public) pour laquelle vous le développez. Ceci peut être votre laboratoire, des collaborateurs externes, des parties prenantes, ou vous pourriez écrire des logiciels open source pour la distribution mondiale! Quelle que soit votre échelle de travail, la lisibilité compte !

Voici quelques aspects à considérer en rendant votre code facile à lire par les autres.

## Longueur de la ligne

Il existe un accord sur la longueur des lignes de codage. PEP8 suggère un maximum de 79 caractères par ligne et 80 par le guide de style R. Cela signifie que les lignes peuvent facilement tenir sur un écran, et que plusieurs fenêtres de codage peuvent être ouvertes. On fait valoir que si votre ligne est plus longue que cela, alors votre fonction est trop complexe et doit être séparée ! C'est le nœud de la méthode Tidy de la programmation R, qui a même un opérateur spécial `%>%` qui passe l'objet précédent à la prochaine fonction, si moins de caractères sont requis :

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #Nous avons maintenant un dataframe chiffré et fondu appelé recoded_melt_dat
```

## Commenter

Les commentaires ont été décrits par Jon Peirce, créateur de PsychoPy. Les commentaires peuvent être bloqués ou insérés.  
Les lignes directrices PEP8 ont des suggestions fermes que les commentaires de bloc doivent être des phrases complètes, ont deux espaces après une période et suivent un guide de style daté (Strunk et White). Heureusement, les Éléments de style n'exigent plus une insistance injuste sur les pronounces masculins. Tandis que les commentaires en ligne doivent être utilisés avec modération. Garder des commentaires clairs et concis, non seulement vous permet de garder une trace des décisions que vous avez prises, quelles fonctions particulières, et quelles variables sont utilisées, cela permet également à d'autres personnes de voir vos processus de pensée. La syntaxe des commentaires varie selon les langages de programmation. En R et en Python, un hashtag est utilisé, tandis qu'en C et Java, les accolades `/* /*` sont utilisées, et en C++/C# un double slash `//` commentaires de lignes simples.

En Python :
```python
times = 10 # Définir un entier
my_variable = "ma variable est %s fois mieux que la vôtre" %times #Définir my_variable à une chaîne de caractères
print(my_variable) #affiche la valeur
```

En R:
```r
my_func = function(number){ #R function

(number * 5) - 2
}
print(my_func(2))
```

Pour les commentaires plus longs, les informations peuvent être incluses au-dessus du bloc de code. En Python, vous pouvez utiliser des marques de parole triples comme parenthèses. Cela fera un commentaire entre les deux.

```python
"""
La fonction suivante prend un nombre, le multiplie par 5, et soustrait 2.
Cela peut paraître inutile, mais c'est simple pour la manifestation.
"""
def myfunc(numb): #python function
      return((numb*5)-2)
print(myfunc(8))
```
Les blocs de commentaires plus longs ne sont pas disponibles en R. Il y a des moyens de contourner cela, comme la mise en place d'une chaîne de caractères ou une instruction if(false) :

```r
"1 - Ceci est une chaîne. Il ne sera pas évalué par R, et ne lèvera pas
et exception"

if(false){
2 - Tout votre commentaire peut aller ici et ne sera jamais évalué.
Cela signifie également que vous respectez la suggestion de longueur de ligne de 80 caractères.
Aussi, dans RStudio, vous pouvez plier le commentaire en utilisant la flèche à côté du numéro de ligne
de l'instruction Si.
}
```

Ou commenter des lignes individuelles :

```r
#Ceci est également un commentaire très long
#couvrant plusieurs lignes.
```
Votre IDE aura probablement un raccourci clavier pour commenter les blocs.

## Indentation

Le guide de style R suggère que les lignes doivent être séparées :
```r
par
  deux espaces
```
Et non pas
```r
 un mélange
   de
    tabulations
      et espaces.
```

De toute évidence, les arguments d'une fonction peuvent parfois excéder 80 caractères. Dans ce cas, il est recommandé de mettre la deuxième ligne en retrait au début des arguments :

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      header = TRUE, verbose = TRUE)

```

Ce ne sont bien sûr que des lignes directrices, et vous devez choisir des éléments qui correspondent à votre style de codage. Cependant, et encore une fois, il est important de veiller à la cohérence de votre collaboration et de vous mettre d'accord sur un style commun. Il peut être utile de créer un fichier readme décrivant votre style de codage afin que les collaborateurs ou les contributeurs puissent suivre votre exemple.

### ... fin. ... fin.  ...ou fin.\\n

Si vous partagez des fichiers texte ou travaillez en collaboration sur des manuels ou des documents, puis il y a beaucoup de controverse autour de savoir s'il faut utiliser un ou deux espaces après une période. Lorsque vous utilisez Markdown, il peut être plus clair d'inclure une nouvelle ligne après chaque phrase. Ce chapitre (et la plupart, sinon la totalité, de ce livre) a une nouvelle ligne après chaque phrase qui rend le texte brut plus facile à lire, examiner et résoudre le problème de l'espacement.

```{figure} ../../figures/xkcd1285.png
---
hauteur : 500px
nom : xkcd1285
alt : Deux groupes tenant des drapeaux et des combats différents, l'un dit "deux espaces après une période" et l'autre "un espace après une période". Alors qu'une personne maintient son drapeau avec son drapeau qui dit "Interruption de ligne après chaque phrase"
---
*Interruption de ligne après chaque phrase rend facile à revoir et à commenter - [Lien XKCD](https://www. xplainxkcd.com/wiki/index.php/1285:_Third_Way)*
```
