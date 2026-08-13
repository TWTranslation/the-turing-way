(rr-licence-compatibilité)=

# Compatibilité avec la licence

Si vous utilisez plusieurs composants externes dans votre programme, vous risquez de vous retrouver avec plusieurs contraintes différentes sur la licence du travail combiné.
Si ces contraintes sont en conflit, vous ne pouvez pas distribuer légalement le résultat (si un logiciel propriétaire est impliqué, alors vous pourriez ne pas être légalement en mesure de faire le travail combiné).

If two licenses specify incompatible constraints on the license of the combined work, then they are _incompatible_.

(rr-licensing-software-derivative)=

## Derivative Software

Within the category of free software, there are several subcategories, which are distinguished by what is allowed when making derivative software.
There are two basic ways of making a derivative work of a program or library: modifying it (forking), or combining it with other software (for example using a library in your program).
Of course, you can modify and then combine as well.

Modifying a program leads to a new program that is derived from the original.
This is similar to deriving the new edition of a textbook from the original.
Both the original and modified versions are works under copyright law, and both of them may be licensed.

As an example of combining software, imagine a program A that uses two preexisting libraries B and C.
The complete program A will consist of library B, library C, and some code D that connects the libraries together and perhaps adds additional functionality.
Each of these four items is a work of authorship with a license.
Program A can sometimes be referred to as the "Combined work", "Work as a whole" or "Larger work".

Different free software licenses place different constraints on how modified versions and combined works can be licensed.

Copyleft licenses add some restrictions to the licensing of derivative works.
Like permissive licenses, they let you distribute the software unchanged under that license.
However, if you distribute a binary, then you have to include the source code as well.
Modified versions have to be distributed under the same license as the original; you are not allowed to change the license.

La GNU GPL, par exemple, est incompatible avec les licences propriétaires, parce qu'il nécessite que le travail combiné soit sous licence GPL, sans aucune restriction supplémentaire.
Avoir une partie de l'œuvre sous une licence propriétaire est une telle restriction supplémentaire, vous ne pouvez donc pas distribuer une telle combinaison (à moins que le détenteur des droits d'auteur du code GPL ne donne une permission spéciale).
However, GPL codebases often have many contributors and you need all of their permission. This is an intended feature of the license which is by design hostile to being re-licensed in a proprietary fashion.
{ref}`Contributor License Agreements (CLAs)<rr-licensing-edge-clas>` can be used by GPL projects circumvent this by empowering a single party to make decisions about relicensing if they want to allow for dual licensing of GPL or AGPL codebases.

When creating a combined work, a further distinction can be made.
_Strong_ copyleft licenses on a component require a combined work to be licensed under the same license as the component.
In the example above, if library B is distributed under a strong copyleft license such as the GNU GPL, then program A must be distributed under that same license.

_Weak_ copyleft licenses allow the combined work (A) to be distributed under any license, as long as the source for the licensed component (B) is also made available under its original license.
They may also require that the recipient of the combined work can re-link the modules after modifying the component.

(rr-licensing-software-overview)=

## Permission Overview

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Copyleft</th>
            <th rowspan="2">Permissive</th>
            <th rowspan="2">Proprietary</th>
        </tr>
        <tr>
            <th>Strong</th>
            <th>Weak</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Use for anything</th>
            <td>Yes</td>
            <td>Yes</td>
            <td>Yes</td>
            <td>Sometimes</td>
        </tr>
        <tr>
            <th>Private changes</th>
            <td>Yes</td>
            <td>Yes</td>
            <td>Yes</td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute original</th>
            <td>Same license, with source</td>
            <td>Same license, with source</td>
            <td>Same license, also binary-only<sup>1</sup></td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute modified</th>
            <td>Same license, with source</td>
            <td>Same license, with source<sup>2</sup></td>
            <td>Any license, also binary-only</td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute combined</th>
            <td>Same license, with source</td>
            <td>Any license, binary additions</td>
            <td>Any license, also binary-only</td>
            <td>Rarely</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote"><sup>1</sup>Under any license for the MIT license <sup>2</sup>Relicensing LGPL to GPL is allowed
      </div>
      Permissive licenses grant the largest set of permissions to users. Copyleft licenses require redistribution of the original or modified source to use the same license, with weak copyleft licences allowing a different choice of license for the combined work. Proprietary licenses rarely provide any permissions beyond the right to use the software.
    </caption>
</table>

Lorsque vous utilisez différents logiciels ensemble pour résoudre un problème, et vous voulez distribuer le résultat, voici les questions auxquelles vous devez répondre :

- Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?
- Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?
- Comment l'œuvre doit-elle être licenciée?

La section suivante montre quelques exemples de la manière dont cela est fait.

(Exemples de compatibilité-licence-rr) =

## Exemples

Many of the examples in this section relate to [xtas](http://xtas.net).
xtas est un outil de traitement de langage naturel pour Python qui réutilise de nombreuses bibliothèques tierces, programmes et jeux de données, et fournit donc une variété d'excellents exemples.

```{figure} ../../../figures/xtas-overview96.*
---
name: xtas-overview96
alt: A graphical overview of xtas. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Underneath this, there are three side-by-side squares, representing respectively Python libraries, software, and data, that are used by xtas. Within the Python libraries square, there are three boxes. The first box contains the words "BSD", "MIT" and "ALv2". The second box contains "LGPLv2.1". The third box contains "GPLv2+". Within the Software square, there are four boxes. The first box contains "Web Service". The second box contains "LGPL v2.1+". The third box contains "Research only", and the fourth box contains "GPL 2+/3+". The Data square also contains four boxes. The first box contains "CC BY-SA 3.0". The second box contains "Research Only". The third box contains "No license, US" and the fourth box contains "CoNLL'02 only".
---
A graphical overview of xtas.
```

Les auteurs de xtas devraient choisir une licence pour le code Python xtas qui est compatible avec au moins une des licences sous lesquelles unidecode peut être distribué pour que d'autres puissent assembler et distribuer des travaux combinés.
L'ALv2 est compatible avec la GPLv3 (mais pas avec la GPLv2, pour des raisons techniques), donc ils peuvent l'utiliser ici.

(Notez que la dépendance à la bibliothèque Python GPLv2+ est dépréciée, mais pour le bien de ces exemples, nous supposerons que ce sera toujours là.)

Le code Python de xtas est distribué sous la licence Apache 2.0.
Depuis que les auteurs xtas sont propriétaires du droit d'auteur, ils peuvent le mettre sous licence comme bon leur semble (bien qu'il y ait une zone grise concernant les dépendances de la GPL, voir ci-dessous).
Les auteurs xtas ne distribuent aucune œuvre ou binaire combinés, mais dans les exemples ci-dessous, nous supposerons qu'il y a un travail combiné, afin que nous puissions réfléchir à la manière dont il devrait être autorisé.

Dans les exemples suivants, nous simplifierons la plupart de cela et regarderons une ou quelques dépendances à tour de rôle.

(rr-licensing-compatibility-examples-apachevsbsd)=

### Apache vs BSD

```{figure} ../../../figures/xtas-snowball96.*
---
name: xtas-snowball96
alt: An illustration of the xtas vs. Snowball example.  A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Snowball Stemmer" and "Python lib BSD".
---
An illustration of the xtas vs. Snowball example.
```

xtas uses [Snowball](https://snowballstem.org/), a Python-based stemming library. Snowball est publié sous la licence BSD 3-clause.
En considérant seulement xtas et Snowball, nous pouvons répondre aux trois questions comme suit:

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : Snowball, le code Python xtas et le travail combiné xtas.
Le travail combiné est dérivé du code Python Snowball et xtas qui sont tous deux des travaux indépendants.

Notez que l'ALv2 et la LGPL v2. indiquer explicitement que le code source qui est destiné à fonctionner en combinaison avec une bibliothèque n'est pas un travail dérivé, alors que le binaire résultant de (statiquement ou dynamiquement) reliant les pièces entre elles.
D'autres licences, y compris la GPL, ne font aucune déclaration explicite à ce sujet.

Pour autant que je sache, il n'y a pas de jurisprudence en la matière; nous supposerons que ce soit le cas dans ces exemples.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Snowball est sous licence permissive.
Il peut être redistribué sous cette licence et il n'y a pas de contraintes sur la licence des œuvres dérivées.
Les auteurs de xtas peuvent le licencier comme ils veulent.

#### Comment l'œuvre doit-elle être licenciée?

Le code Python xtas et le travail combiné xtas sont sous licence Apache License v2.0.

Si les auteurs xtas redistribuent Snowball, ils doivent le faire sous la licence BSD accordée par les auteurs de Snowball.
(Ils ne peuvent pas donner de permissions supplémentaires pour Snowball, car ils ne possèdent pas le droit d'auteur, et des restrictions supplémentaires seraient inapplicables pour la même raison.)

(rr-licensing-compatibility-examples-apachevslgpl)=

### Apache vs. LGPL

```{figure} ../../../figures/xtas-chardet96.*
---
name: xtas-chardet96
alt: An illustration of the xtas vs. chardet example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "chardet" and "Python lib LGPLv2.1".
---
An illustration of the xtas vs. chardet example.
```

xtas uses [chardet](https://pypi.org/project/chardet/), a Python library for detecting the character set used in a string of text. Chardet est publié sous la GNU Lesser General Public License v2.1.
En considérant seulement xtas et chardet, nous pouvons répondre aux trois questions comme suit.

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : chardet, le code Python xtas et le travail combiné.
Le travail combiné est dérivé du chardet et du code Python xtas.
Les autres sont des œuvres indépendantes.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Chardet est licencié sous une licence de faible copyleft et peut donc être redistribué sous les termes de cette licence.
Les travaux dérivés peuvent être licenciés sous n'importe quelle licence.
However, the LGPLv2.1 requires that the recipient can (and is allowed to) modify the library and use the modified library with the derivative work.

#### Comment l'œuvre doit-elle être licenciée?

xtas dans son ensemble, et le code Python xtas peuvent être licenciés comme les auteurs le veulent, donc ils ont utilisé la licence Apache v2.0.
If they distribute chardet, they must do so under the LGPLv2.1 license granted by its copyright owners.

(rr-licensing-compatibility-examples-apachevsgplv2)=

### Apache vs. GPLv2

```{figure} ../../../figures/xtas-unidecode96.*
---
name: xtas-unidecode96
alt: An illustration of the xtas vs. unidecode example. The large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas vs. unidecode example.
```

xtas previously used [unidecode](https://pypi.org/project/Unidecode/), a Python library for converting text encoded according to The Unicode® Standard into an ASCII approximation of it.
Unidecode est publié sous licence GNU General Public License version 2 ou ultérieure (GPLv2+).
En considérant seulement xtas et unidecode, nous pouvons répondre aux trois questions comme suit.

#### Quelles sont les œuvres distinctes qui existent, et ce qui est dérivé de quoi?

Il y a trois travaux : unidecode, le code Python xtas et le travail combiné. Le travail combiné dérive du code unidecode et du code Python xtas.

Si le code Python xtas est un travail dérivé d'unidecode n'est pas clairement défini par la loi, et il n'y a pas de jurisprudence à ce sujet.
La licence Apache et la LGPL indiquent explicitement que ce n'est pas dans le but de ces licences, mais la GPL ne contient pas une telle clause.

Comme ils sont développés séparément, et il n'y a pas de code de l'unidecode dans le code xtas, nous supposons ici qu'il ne s'agit pas d'un travail dérivé.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Unidecode est licencié sous une forte licence copyleft, donc il est redistribué sous les termes de cette licence. Les travaux dérivés doivent être licenciés sous la même licence.

Unidecode est sous licence GPL version 2 ou ultérieure. This is known as a _disjunctive license_.
Les détenteurs de droits d'auteur d'unidecode offrent à tout le monde une licence GPLv2, mais aussi une licence GPLv3, et même proactivement toute version ultérieure de la GNU GPL qui pourrait être créée dans le futur.
Un utilisateur potentiel peut choisir d'accepter l'une de ces licences, ou une combinaison d'eux, s'ils veulent copier le travail ou faire des travaux dérivés.

#### Comment l'œuvre doit-elle être licenciée?

Si les auteurs xtas distribuent undecode, ils devraient le faire sous la version 2 de la GPL ou supérieure, car la suppression arbitraire des licences du code de quelqu'un d'autre n'a pas de sens.
Le travail combiné xtas doit être distribué sous les mêmes licences ou sous un sous-ensemble d'eux.
Le code Python xtas peut être licencié comme il le veut.

xtas lui-même est écrit en Python, et il utilise un certain nombre de bibliothèques Python qui sont sous licence libre courante. Celles-ci incluent la simple licence permissive BSD et MIT, la permissive Apache License version 2. (ALv2), la GNU Lesser General Public License version 2.1 (LGPLv2.1), et la GNU General Public License version 2 ou ultérieure (GPLv2+).
L'ALv2 est compatible avec la GPLv3 (mais pas avec la GPLv2, pour des raisons techniques), donc ils peuvent l'utiliser ici.

Le travail combiné devrait alors être sous licence GPL version 3 ou ultérieure.
S'il est important qu'il puisse également être utilisé sous la GPLv2 alors les auteurs de xtas peuvent licencier le code Python xtas sous ALv2 et la GPLv2 (signifiant, ils offrent les deux licences, et l'utilisateur peut choisir d'accepter l'un ou l'autre ou les deux), et le travail combiné sous la version 2 ou supérieure.

Enfin, il peut être décidé plus tard que le code source Python xtas est un travail dérivé d'unidecode parce qu'il y fait appel.
Même si aucun unidecode n'est inclus dans le travail, alors les auteurs de xtas doivent distribuer le code Python de xtas sous au moins une des licences GPL sous lesquelles unidecode est distribué.
Dans ce cas, ils peuvent proposer xtas avec les jeux de licences ALv2 et GPLv2+.

La solution la plus simple, dans ce cas, serait de simplement licencier le code Python xtas et le travail dérivé sous la GPLv3.

Comme il est probablement clair à l'heure actuelle, les dépendances qui sont sous une forte licence copyleft compliquent votre vie si vous voulez que les gens soient en mesure de faire des œuvres propriétaires basées sur votre logiciel.

(rr-licensing-compatibility-examples-apachevsall)=

### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../../figures/xtas-all-python-libs96.*
---
name: xtas-all-python-libs96
alt: An illustration of the xtas and all Python libraries example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below this, there are three squares. The first square contains the words "Snowball" and "Python lib BSD". The second square contains "chardet" and "Python lib LGPLv2.1". The third square contains the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas and all Python libraries example.
```

Maintenant, nous allons considérer les trois exemples ci-dessus en même temps.

#### Combien y a-t-il d'œuvres séparées, et qu'est-ce qui est dérivé de quoi?

Il y a cinq travaux : Snowball, chardet, unidecode, le code Python xtas et xtas le travail combiné. Le travail combiné est dérivé de tous ses composants.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

Les quatre composants non-xtas sont sous licence de logiciel libre, et les auteurs xtas possèdent les droits d'auteur sur le code Python xtas ainsi les cinq composants peuvent être distribués par les auteurs xtas.
Le BSD, LGPLv2. et GPLv2+ autorisent toutes les licences du travail combiné sous la version 2 de la GPL ou supérieure, donc il y a au moins une licence sous laquelle le travail combiné peut être licencié.

#### Comment l'œuvre doit-elle être licenciée?

Le code Python xtas doit être sous licence Apache License v2 et le travail combiné sous la version 3 ou supérieure.
(See the {ref}`unicode example <rr-licensing-compatibility-examples-apachevsgplv2>` above for alternatives.)

### Appeler un programme externe

xtas can run the [Stanford CoreNLP program](https://stanfordnlp.github.io/CoreNLP/), which is written in Java and distributed under the GNU GPL version 3 or later. Lorsque l'utilisateur appelle la fonction xtas correspondante, CoreNLP est lancé par xtas, la saisie de l'utilisateur lui est envoyée à travers un tuyau, puis la sortie CoreNLP est remise à l'utilisateur ou traitée plus loin.

```{figure} ../../../figures/xtas-corenlp1-96.*
---
name: xtas-corenlp1-96
alt: An illustration of the xtas vs. CoreNLP example. The square represents the combined work xtas. Within this square, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Stanford CoreNLP" and "Java program GPLv3+".
---
An illustration of the xtas vs. CoreNLP example.
```

Une interprétation de cette situation est qu'il n'est pas différent d'appeler une fonction dans une bibliothèque et que toute distribution de xtas, dans son ensemble, y compris CoreNLP, devrait donc être sous la GPLv3+.
Contribuer à cette interprétation est le fait que xtas va télécharger et installer CoreNLP automatiquement si nécessaire.

```{figure} ../../../figures/xtas-corenlp2-96.*
---
name: xtas-corenlp2-96
alt: Another illustration of the xtas vs. CoreNLP example. The square on the left represents the combined work xtas. Within this square, there is a rectangle representing the xtas Python code, licensed under the Apache License v2. On the right is a separate square representing CoreNLP, with the text "Stanford CoreNLP" and "Java program GPLv3+". Between the squares are two arrows, one at the top pointing from xtas to CoreNLP, and one at the bottom pointing from CoreNLP to xtas.
---
Another illustration of the xtas vs. CoreNLP example.
```

Une autre interprétation est que xtas et CoreNLP sont des travaux séparés et que xtas communique simplement avec CoreNLP sur son interface utilisateur standard.

Dans cette interprétation, xtas est un programme séparé qui aide un utilisateur à utiliser le programme CoreNLP du langage Python, et non pas un travail dérivé de CoreNLP.
On peut considérer xtas comme analogue à un installateur de paquets et à un shell de commande ici, qui ne sont clairement pas des travaux dérivés des paquets qu'ils installent ou des programmes qu'ils lancent.

Sous cette interprétation, xtas dans son ensemble (n'incluant pas CoreNLP) peut être distribué sous n'importe quelle licence (sous réserve des restrictions imposées par ses autres dépendances bien sûr).

Dans la pratique, les auteurs xtas ne distribuent pas du tout CoreNLP ; ils ne distribuent que le code Python xtas sous la licence Apache version 2.

### Licence GPLv3 vs Propriétaire

In this example project we want to combine the [OpenIFS global circulation model](https://confluence.ecmwf.int/display/OIFS) with the [DALES large-eddy simulation model](https://github.com/dalesteam/dales).
Ces deux modèles sont disponibles en tant que bibliothèques, de sorte que le projet implique de combiner les bibliothèques OpenIFS et Dales en un seul programme.

(C'est un exemple simplifié, la réalité de ce projet est un encoche ou deux plus compliqué, et ce qui suit n'est pas exactement ce que nous faisons.)

La bibliothèque OpenIFS (partie du code du modèle météo ECMWF) est disponible sous une licence propriétaire qui permet d'exécuter le programme et d'effectuer des modifications privées, mais ne permet pas de distribuer le programme ou les dérivés.
DALES est publié sous la version 3 de la GPL.

#### Combien y a-t-il d'œuvres séparées, et qu'est-ce qui est dérivé de quoi?

Il y a quatre œuvres: OpenIFS, DALES, le reste du programme écrit par nous, et la combinaison de toutes ces œuvres. Le travail combiné provient de ses composants.

#### Les travaux dérivés peuvent-ils être distribués ? Les licences le permettent-elles et sont-elles compatibles ?

La licence OpenIFS n'autorise pas la redistribution, donc elle ne peut pas être distribuée. Les DALES peuvent être distribuées sous la GPLv3.
Le reste du programme est écrit par nous et peut être autorisé par nous si nous le voulons.

L'ensemble du travail combiné ne peut pas être distribué, puisqu'il intègre OpenIFS.
S'il n'inclut pas OpenIFS, il devrait être distribué sous la GPLv3, à cause de la dépendance DALES.

#### Pouvons-nous y travailler en privé, sans rien distribuer?

La GPL permet d'effectuer des modifications privées des logiciels qui y sont couverts, sans restrictions, à condition que le logiciel modifié ne soit pas distribué du tout.
In the case of the AGPL, running a server interacted with in some way by users over a network is equivalent to distribution under the GPL and you would be required to provide any users with the source code.
La licence OpenIFS permet également d'effectuer des modifications privées.
Nous pouvons donc travailler sur ce projet (et préparer et exécuter des travaux combinés) sans violer les licences, tant que nous ne partageons pas les résultats avec qui que ce soit.

Cependant, si nous voulons collaborer avec une personne extérieure à notre organisation, cela signifie que nous échangeons des documents entre différentes entités juridiques, qui comptent comme une distribution.
Nous pouvons le faire avec notre propre code (que nous pouvons même publier ouvertement avec ALv2) et avec DALES, mais pas avec OpenIFS ou tout travail combiné.

#### Quelles autres options existe-t-il dans ce genre de situation?

Nous pouvons essayer de diviser le système en programmes indépendants qui s'exécutent dans des processus séparés et qui communiquent entre eux sur des interfaces génériques bien documentées.
De cette façon, il n'y aurait jamais de travail combiné, juste quelques œuvres indépendantes qui échangent des informations.
Cependant, pour ne pas être considéré comme une seule œuvre, la séparation des programmes n'est pas claire.

Nous pourrions également demander aux détenteurs des droits d'auteur OpenIFS et DALES l'autorisation de partager des œuvres combinées entre notre organisation et l'extérieur.
Cela supprimerait toute incertitude, mais peut ne pas être pratique en général.

Une autre option serait de remplacer l'une des dépendances par une que nous écrivons.
C'est généralement impraticable, à la fois en raison de contraintes de temps et parce que la nouvelle version n'aurait pas l'arbre scientifique de la version existante.

Le problème fondamental ici est que la GPL essaie de faire partager à tous les administrateurs du logiciel que nous utilisons, alors que le logiciel propriétaire tente de garder le contrôle entre les mains d'un seul propriétaire.

Les combiner dans un seul projet est compliqué et non sans risque juridique, et vous devriez l'éviter.
Si ce n'est pas possible, vous devriez marcher avec prudence.
