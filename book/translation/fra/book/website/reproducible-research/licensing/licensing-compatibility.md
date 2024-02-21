(rr-licence-compatibilité)=
# Compatibilité avec la licence

Si vous utilisez plusieurs composants externes dans votre programme, vous risquez de vous retrouver avec plusieurs contraintes différentes sur la licence du travail combiné. Si ces contraintes sont en conflit, vous ne pouvez pas distribuer légalement le résultat (si un logiciel propriétaire est impliqué, alors vous pourriez ne pas être légalement en mesure de faire le travail combiné).

Si deux licences spécifient des contraintes incompatibles sur la licence du travail combiné, alors elles sont _incompatibles_.

La GNU GPL, par exemple, est incompatible avec les licences propriétaires, parce qu'il nécessite que le travail combiné soit sous licence GPL, sans aucune restriction supplémentaire. Avoir une partie de l'œuvre sous une licence propriétaire est une telle restriction supplémentaire, vous ne pouvez donc pas distribuer une telle combinaison (à moins que le détenteur des droits d'auteur du code GPL ne donne une permission spéciale).

Lorsque vous utilisez différents logiciels ensemble pour résoudre un problème, et vous voulez distribuer le résultat, voici les questions auxquelles vous devez répondre :

- Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?
- Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?
- Comment l'œuvre doit-elle être licenciée?

La section suivante montre quelques exemples de la manière dont cela est fait.

(Exemples de compatibilité-licence-rr) =
## Exemples

Beaucoup d'exemples dans cette section concernent [xtas](http://xtas.net). xtas est un outil de traitement de langage naturel pour Python qui réutilise de nombreuses bibliothèques tierces, programmes et jeux de données, et fournit donc une variété d'excellents exemples.

```{figure} ../../figures/xtas-overview96.png
---
nom : xtas-overview96
alt : Une vue d'ensemble graphique de xtas. Un grand rectangle représente le travail combiné xtas. À l'intérieur de ce rectangle, il y a un grand rectangle bas en haut représentant le code xtas Python, sous licence Apache License v2. En dessous de cela, il y a trois carrés côte à côte représentant respectivement les bibliothèques Python, les logiciels et les données, qui sont utilisés par xtas. Dans le carré des bibliothèques Python, il y a trois boîtes. La première boîte contient les mots "BSD", "MIT" et "ALv2". La deuxième boîte contient "LGPLv2.1". La troisième boîte contient "GPLv2+". Dans le carré du logiciel, il y a quatre boîtes. La première boîte contient "Web Service". La seconde boîte contient "LGPL v2.1+". La troisième boîte contient "Recherche uniquement", et la quatrième contient "GPL 2+/3+". Le carré Data contient aussi quatre boîtes. La première boîte contient "CC BY-SA 3.0". La deuxième boîte contient "Recherche uniquement". La troisième case contient "No license, US" et la quatrième case contient "CoNLL'02 uniquement".
---
Un aperçu graphique de xtas.
```

xtas lui-même est écrit en Python, et il utilise un certain nombre de bibliothèques Python qui sont sous licence libre courante. Celles-ci incluent la simple licence permissive BSD et MIT, la permissive Apache License version 2. (ALv2), la GNU Lesser General Public License version 2.1 (LGPLv2.1), et la GNU General Public License version 2 ou ultérieure (GPLv2+).

(Notez que la dépendance à la bibliothèque Python GPLv2+ est dépréciée, mais pour le bien de ces exemples, nous supposerons que ce sera toujours là.)

Le code Python de xtas est distribué sous la licence Apache 2.0. Depuis que les auteurs xtas sont propriétaires du droit d'auteur, ils peuvent le mettre sous licence comme bon leur semble (bien qu'il y ait une zone grise concernant les dépendances de la GPL, voir ci-dessous). Les auteurs xtas ne distribuent aucune œuvre ou binaire combinés, mais dans les exemples ci-dessous, nous supposerons qu'il y a un travail combiné, afin que nous puissions réfléchir à la manière dont il devrait être autorisé.

Dans les exemples suivants, nous simplifierons la plupart de cela et regarderons une ou quelques dépendances à tour de rôle.

(rr-licensing-compatibility-examples-apachevsbsd)=
### Apache vs BSD

```{figure} ../../figures/xtas-snowball96.png
---
nom: xtas-snowball96
alt: Une illustration de l'exemple xtas vs. Snowball exemple.  Un grand rectangle représente le travail combiné xtas. À l'intérieur de ce rectangle, il y a un grand rectangle bas en haut représentant le code xtas Python, sous licence Apache License v2. Ci-dessous se trouve un carré contenant les mots "Snowball Stemmer" et "Python lib BSD".
---
Une illustration de l'exemple xtas vs. Boule de neige.
```

xtas utilise [Snowball](https://snowballstem.org/), une bibliothèque basée sur Python. Snowball est publié sous la licence BSD 3-clause. En considérant seulement xtas et Snowball, nous pouvons répondre aux trois questions comme suit:

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : Snowball, le code Python xtas et le travail combiné xtas. Le travail combiné est dérivé du code Python Snowball et xtas qui sont tous deux des travaux indépendants.

Notez que l'ALv2 et la LGPL v2. indiquer explicitement que le code source qui est destiné à fonctionner en combinaison avec une bibliothèque n'est pas un travail dérivé, alors que le binaire résultant de (statiquement ou dynamiquement) reliant les pièces entre elles. D'autres licences, y compris la GPL, ne font aucune déclaration explicite à ce sujet.

Pour autant que je sache, il n'y a pas de jurisprudence en la matière; nous supposerons que ce soit le cas dans ces exemples.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Snowball est sous licence permissive. Il peut être redistribué sous cette licence et il n'y a pas de contraintes sur la licence des œuvres dérivées. Les auteurs de xtas peuvent le licencier comme ils veulent.

#### Comment l'œuvre doit-elle être licenciée?

Le code Python xtas et le travail combiné xtas sont sous licence Apache License v2.0.

Si les auteurs xtas redistribuent Snowball, ils doivent le faire sous la licence BSD accordée par les auteurs de Snowball. (Ils ne peuvent pas donner de permissions supplémentaires pour Snowball, car ils ne possèdent pas le droit d'auteur, et des restrictions supplémentaires seraient inapplicables pour la même raison.)

(rr-licensing-compatibility-examples-apachevslgpl)=
### Apache vs. LGPL

```{figure} ../../figures/xtas-chardet96.png
---
nom : xtas-chardet96
alt : Une illustration de l'exemple xtas vs. chardet . Un grand rectangle représente le travail combiné xtas. À l'intérieur de ce rectangle, il y a un grand rectangle bas en haut représentant le code xtas Python, sous licence Apache License v2. Ci-dessous se trouve un carré contenant les mots "chardet" et "Python lib LGPLv2.1".
---
Une illustration de l'exemple xtas vs. chardet .
```

xtas utilise [chardet](https://pypi.org/project/chardet/), une bibliothèque Python pour détecter le jeu de caractères utilisé dans une chaîne de texte. Chardet est publié sous la GNU Lesser General Public License v2.1. En considérant seulement xtas et chardet, nous pouvons répondre aux trois questions comme suit.

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : chardet, le code Python xtas et le travail combiné. Le travail combiné est dérivé du chardet et du code Python xtas. Les autres sont des œuvres indépendantes.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Chardet est licencié sous une licence de faible copyleft et peut donc être redistribué sous les termes de cette licence. Les travaux dérivés peuvent être licenciés sous n'importe quelle licence. Cependant, la LGPL v2.1 requiert que le destinataire puisse (et soit autorisé) modifier la bibliothèque et utiliser la bibliothèque modifiée avec le travail dérivé.

#### Comment l'œuvre doit-elle être licenciée?

xtas dans son ensemble, et le code Python xtas peuvent être licenciés comme les auteurs le veulent, donc ils ont utilisé la licence Apache v2.0. S'ils distribuent des cartes à puce, ils doivent le faire sous la licence LGPL v2.1 accordée par leurs détenteurs de droits d'auteur.

(rr-licensing-compatibility-examples-apachevsgplv2)=
### Apache vs. GPLv2

```{figure} ../../figures/xtas-unidecode96.png
---
nom : xtas-unidecode96
alt : Une illustration de l'exemple xtas vs. unidecode. Le grand rectangle représente le travail combiné xtas. À l'intérieur de ce rectangle, il y a un grand rectangle bas en haut représentant le code xtas Python, sous licence Apache License v2. Ci-dessous se trouve un carré contenant les mots "unidecode" et "Python lib GPLv2+".
---
Une illustration de l'exemple xtas vs. unidecode.
```

xtas a précédemment utilisé [unidecode](https://pypi.org/project/Unidecode/), une bibliothèque Python pour convertir du texte encodé selon le standard Unicode® en une approximation ASCII. Unidecode est publié sous licence GNU General Public License version 2 ou ultérieure (GPLv2+). En considérant seulement xtas et unidecode, nous pouvons répondre aux trois questions comme suit.

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : unidecode, le code Python xtas et le travail combiné. Le travail combiné dérive du code unidecode et du code Python xtas.

Si le code Python xtas est un travail dérivé d'unidecode n'est pas clairement défini par la loi, et il n'y a pas de jurisprudence à ce sujet. La licence Apache et la LGPL indiquent explicitement que ce n'est pas dans le but de ces licences, mais la GPL ne contient pas une telle clause.

Comme ils sont développés séparément, et il n'y a pas de code de l'unidecode dans le code xtas, nous supposons ici qu'il ne s'agit pas d'un travail dérivé.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Unidecode est licencié sous une forte licence copyleft, donc il est redistribué sous les termes de cette licence. Les travaux dérivés doivent être licenciés sous la même licence.

Unidecode est sous licence GPL version 2 ou ultérieure. Ceci est connu sous le nom de _licence de disjonction_. Les détenteurs de droits d'auteur d'unidecode offrent à tout le monde une licence GPLv2, mais aussi une licence GPLv3, et même proactivement toute version ultérieure de la GNU GPL qui pourrait être créée dans le futur. Un utilisateur potentiel peut choisir d'accepter l'une de ces licences, ou une combinaison d'eux, s'ils veulent copier le travail ou faire des travaux dérivés.

#### Comment l'œuvre doit-elle être licenciée?

Si les auteurs xtas distribuent undecode, ils devraient le faire sous la version 2 de la GPL ou supérieure, car la suppression arbitraire des licences du code de quelqu'un d'autre n'a pas de sens. Le travail combiné xtas doit être distribué sous les mêmes licences ou sous un sous-ensemble d'eux. Le code Python xtas peut être licencié comme il le veut.

Les auteurs de xtas devraient choisir une licence pour le code Python xtas qui est compatible avec au moins une des licences sous lesquelles unidecode peut être distribué pour que d'autres puissent assembler et distribuer des travaux combinés. L'ALv2 est compatible avec la GPLv3 (mais pas avec la GPLv2, pour des raisons techniques), donc ils peuvent l'utiliser ici.

Le travail combiné devrait alors être sous licence GPL version 3 ou ultérieure. S'il est important qu'il puisse également être utilisé sous la GPLv2 alors les auteurs de xtas peuvent licencier le code Python xtas sous ALv2 et la GPLv2 (signifiant, ils offrent les deux licences, et l'utilisateur peut choisir d'accepter l'un ou l'autre ou les deux), et le travail combiné sous la version 2 ou supérieure.

Enfin, il peut être décidé plus tard que le code source Python xtas est un travail dérivé d'unidecode parce qu'il y fait appel. Même si aucun unidecode n'est inclus dans le travail, alors les auteurs de xtas doivent distribuer le code Python de xtas sous au moins une des licences GPL sous lesquelles unidecode est distribué. Dans ce cas, ils peuvent proposer xtas avec les jeux de licences ALv2 et GPLv2+.

La solution la plus simple, dans ce cas, serait de simplement licencier le code Python xtas et le travail dérivé sous la GPLv3.

Comme il est probablement clair à l'heure actuelle, les dépendances qui sont sous une forte licence copyleft compliquent votre vie si vous voulez que les gens soient en mesure de faire des œuvres propriétaires basées sur votre logiciel.

(rr-licensing-compatibility-examples-apachevsall)=
### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../figures/xtas-all-python-libs96.png
---
nom : xtas-all-python-libs96
alt : Une illustration des xtas et de tous les exemples de bibliothèques Python. Un grand rectangle représente le travail combiné xtas. À l'intérieur de ce rectangle, il y a un grand rectangle bas en haut représentant le code xtas Python, sous licence Apache License v2. Ci-dessous, il y a trois carrés. Le premier carré contient les mots "Snowball" et "Python lib BSD". Le deuxième carré contient "chardet" et "Python lib LGPLv2.1". Le troisième carré contient les mots "unidecode" et "Python lib GPLv2+".
---
Une illustration des xtas et de toutes les bibliothèques Python.
```

Maintenant, nous allons considérer les trois exemples ci-dessus en même temps.

#### Combien y a-t-il d'œuvres séparées, et qu'est-ce qui est dérivé de quoi?

Il y a cinq travaux : Snowball, chardet, unidecode, le code Python xtas et xtas le travail combiné. Le travail combiné est dérivé de tous ses composants.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Les quatre composants non-xtas sont sous licence de logiciel libre, et les auteurs xtas possèdent les droits d'auteur sur le code Python xtas ainsi les cinq composants peuvent être distribués par les auteurs xtas. Le BSD, LGPLv2. et GPLv2+ autorisent toutes les licences du travail combiné sous la version 2 de la GPL ou supérieure, donc il y a au moins une licence sous laquelle le travail combiné peut être licencié.

#### Comment l'œuvre doit-elle être licenciée?

Le code Python xtas doit être sous licence Apache License v2 et le travail combiné sous la version 3 ou supérieure. (Voir l'exemple {ref}`unicode <rr-licensing-compatibility-examples-apachevsgplv2>` ci-dessus pour des alternatives.)


### Appeler un programme externe

xtas peut exécuter le programme [Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/), qui est écrit en Java et distribué sous la version 3 ou ultérieure de la GNU GPL. Lorsque l'utilisateur appelle la fonction xtas correspondante, CoreNLP est lancé par xtas, la saisie de l'utilisateur lui est envoyée à travers un tuyau, puis la sortie CoreNLP est remise à l'utilisateur ou traitée plus loin.

```{figure} ../../figures/xtas-corenlp1-96.png
---
nom: xtas-corenlp1-96
alt : Une illustration de l'exemple xtas vs. CoreNLP. Le carré représente le travail combiné xtas. À l'intérieur de ce carré, il y a un grand rectangle bas en haut représentant le code xtas Python, sous la licence Apache License v2. Ci-dessous se trouve un carré contenant les mots "Stanford CoreNLP" et "Java program GPLv3+".
---
Une illustration de l'exemple xtas vs. CoreNLP.
```

Une interprétation de cette situation est qu'il n'est pas différent d'appeler une fonction dans une bibliothèque et que toute distribution de xtas, dans son ensemble, y compris CoreNLP, devrait donc être sous la GPLv3+. Contribuer à cette interprétation est le fait que xtas va télécharger et installer CoreNLP automatiquement si nécessaire.

```{figure} ../../figures/xtas-corenlp2-96.png
---
nom : xtas-corenlp2-96
alt : Une autre illustration de l'exemple xtas vs. CoreNLP. Le carré à gauche représente le travail combiné xtas. Dans ce carré, il y a un rectangle représentant le code xtas Python, sous la licence Apache License v2. Sur la droite se trouve un carré séparé représentant CoreNLP, avec le texte "Stanford CoreNLP" et "Java program GPLv3+". Entre les carrés se trouvent deux flèches, l'une en haut pointant de xtas vers CoreNLP, et l'autre en bas pointant de CoreNLP vers xtas.
---
Une autre illustration de l'exemple xtas vs. CoreNLP.
```

Une autre interprétation est que xtas et CoreNLP sont des travaux séparés et que xtas communique simplement avec CoreNLP sur son interface utilisateur standard.

Dans cette interprétation, xtas est un programme séparé qui aide un utilisateur à utiliser le programme CoreNLP du langage Python, et non pas un travail dérivé de CoreNLP. On peut considérer xtas comme analogue à un installateur de paquets et à un shell de commande ici, qui ne sont clairement pas des travaux dérivés des paquets qu'ils installent ou des programmes qu'ils lancent.

Sous cette interprétation, xtas dans son ensemble (n'incluant pas CoreNLP) peut être distribué sous n'importe quelle licence (sous réserve des restrictions imposées par ses autres dépendances bien sûr).

Dans la pratique, les auteurs xtas ne distribuent pas du tout CoreNLP ; ils ne distribuent que le code Python xtas sous la licence Apache version 2.


### Licence GPLv3 vs Propriétaire

Dans cet exemple de projet, nous voulons combiner le [modèle de circulation globale OpenIFS](https://confluence.ecmwf.int/display/OIFS) avec le modèle de simulation [DALES Large eddy](https://github.com/dalesteam/dales). Ces deux modèles sont disponibles en tant que bibliothèques, de sorte que le projet implique de combiner les bibliothèques OpenIFS et Dales en un seul programme.

(C'est un exemple simplifié, la réalité de ce projet est un encoche ou deux plus compliqué, et ce qui suit n'est pas exactement ce que nous faisons.)

La bibliothèque OpenIFS (partie du code du modèle météo ECMWF) est disponible sous une licence propriétaire qui permet d'exécuter le programme et d'effectuer des modifications privées, mais ne permet pas de distribuer le programme ou les dérivés. DALES est publié sous la version 3 de la GPL.

#### Combien y a-t-il d'œuvres séparées, et qu'est-ce qui est dérivé de quoi?

Il y a quatre œuvres: OpenIFS, DALES, le reste du programme écrit par nous, et la combinaison de toutes ces œuvres. Le travail combiné provient de ses composants.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

La licence OpenIFS n'autorise pas la redistribution, donc elle ne peut pas être distribuée. Les DALES peuvent être distribuées sous la GPLv3. Le reste du programme est écrit par nous et peut être autorisé par nous si nous le voulons.

L'ensemble du travail combiné ne peut pas être distribué, puisqu'il intègre OpenIFS. S'il n'inclut pas OpenIFS, il devrait être distribué sous la GPLv3, à cause de la dépendance DALES.

#### Pouvons-nous y travailler en privé, sans rien distribuer?

La GPL permet d'effectuer des modifications privées des logiciels qui y sont couverts, sans restrictions, à condition que le logiciel modifié ne soit pas distribué du tout. La licence OpenIFS permet également d'effectuer des modifications privées. Nous pouvons donc travailler sur ce projet (et préparer et exécuter des travaux combinés) sans violer les licences, tant que nous ne partageons pas les résultats avec qui que ce soit.

Cependant, si nous voulons collaborer avec une personne extérieure à notre organisation, cela signifie que nous échangeons des documents entre différentes entités juridiques, qui comptent comme une distribution. Nous pouvons le faire avec notre propre code (que nous pouvons même publier ouvertement avec ALv2) et avec DALES, mais pas avec OpenIFS ou tout travail combiné.

#### Quelles autres options existe-t-il dans ce genre de situation?

Nous pouvons essayer de diviser le système en programmes indépendants qui s'exécutent dans des processus séparés et qui communiquent entre eux sur des interfaces génériques bien documentées. De cette façon, il n'y aurait jamais de travail combiné, juste quelques œuvres indépendantes qui échangent des informations. Cependant, pour ne pas être considéré comme une seule œuvre, la séparation des programmes n'est pas claire.

Nous pourrions également demander aux détenteurs des droits d'auteur OpenIFS et DALES l'autorisation de partager des œuvres combinées entre notre organisation et l'extérieur. Cela supprimerait toute incertitude, mais peut ne pas être pratique en général.

Une autre option serait de remplacer l'une des dépendances par une que nous écrivons. C'est généralement impraticable, à la fois en raison de contraintes de temps et parce que la nouvelle version n'aurait pas l'arbre scientifique de la version existante.

Le problème fondamental ici est que la GPL essaie de faire partager à tous les administrateurs du logiciel que nous utilisons, alors que le logiciel propriétaire tente de garder le contrôle entre les mains d'un seul propriétaire.

Les combiner dans un seul projet est compliqué et non sans risque juridique, et vous devriez l'éviter. Si ce n'est pas possible, vous devriez marcher avec prudence.
