(ch-style)=
# Style Guide

Pour s'assurer que le livre puisse être lu facilement par tout le monde, y compris les lecteurs d'écran et les non-locuteurs anglophones, nous avons compilé un ensemble de lignes directrices pour conserver un style cohérent dans tous les chapitres du livre.

Nous suivons les [directives GOV.UK](https://www.gov.uk/guidance/content-design/writing-for-gov-uk) pour améliorer l'accessibilité des ressources dans _The Turing Way_.

## Écrire chaque phrase dans une nouvelle ligne (saut de ligne)

Veuillez écrire toutes les phrases dans le fichier markdown sur des lignes séparées. Avoir chaque phrase sur une nouvelle ligne ne fera aucune différence dans la façon dont le texte est affiché, il y aura toujours des paragraphes, mais cela signifie que toutes les demandes d'ajout seront plus faciles à vérifier; les modifications se feront sur une seule ligne au lieu d'un paragraphe. Prenons l'exemple ci-dessous.

 ```
Aujourd'hui, vous êtes vous, c'est plus vrai que vrai. Il n'y a personne vivant qui est vous que vous. - Dr Seuss
```

Une pull request à ce sujet qui le corrige pour avoir un "." après le Dr montrerait comme un changement à l’ensemble du paragraphe. Contrastez cela avec l'exemple suivant qui sera affiché en ligne exactement de la même manière, mais qui verrait un changement sur une seule ligne.

 ```
Aujourd'hui, vous êtes vous, c'est plus vrai que vrai.
Il n'y a personne vivant qui est vous que vous.
- Dr Seuss
```

## Les opinions sont les bienvenues, mais ...

_Le livre de Turing Way_ est destiné à être *seulement une* opinionnés. Si un contenu plus opinionné est autorisé, ce contenu devrait être clairement marqué. La meilleure façon de le faire est de l'afficher dans une boîte de devis. Cela peut être fait en préfixant chaque ligne avec le symbole plus grand que `>`. Notez que le formatage sera conservé, de sorte que nous pouvons séparer chaque phrase en une nouvelle ligne comme recommandé avant.

```
> Je ne les mangerai pas dans une maison,
> je ne les mangerai pas avec une souris,
> Je ne les mangerai pas dans une boîte, je ne les mangerai pas avec un renard,
> je ne les mangerai pas ici, je ne les mangerai nulle part,
> Je n'aime pas les oeufs verts et le jambon je ne les aime pas sam i am
```

## Éviter l'abréviation latine

S'il vous plaît, n'utilisez pas les abréviations latines. Voir les recommandations de [Gov.uk](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style) pour plus de détails.

Certaines de ces abréviations sont:

```{figure} ../figures/latin-abbreviation.png
---
hauteur : 400px
nom : latin-abréviation
alt : une image avec une liste de 3 abréviations latines
---
Une liste d'abréviations latines pour *exempli gratia* (par exemple), *et-cetera* (ainsi de suite), et *id est* (c'est-à-dire).
Capture d'écran d'une partie de la [liste des abréviations communes en latin pour le style APA](https://blog.apastyle.org/files/apa-latin-abréviations-table-2.pdf).
```

Au lieu de la première abréviation dans le tableau pour *exempli gratia*, qui peut parfois lire à haute voix comme « œuf » par le logiciel de lecture d'écran, veuillez utiliser « par exemple » ou « comme » ou « comme » ou « comme » ou « comme » ou « inclure » - selon ce qui fonctionne le mieux dans le contexte spécifique.

Au lieu de la seconde abréviation dans la table pour *et-cetera* pour indiquer la liste ouverte, veuillez commencer la liste avec des mots comme « par exemple » ou « tel » ou « like » ou « inclure ».

Au lieu de la troisième abréviation dans le tableau pour *id est* qui est souvent utilisé pour clarifier une phrase, essayez de (re)écrire des phrases pour éviter de les utiliser. Si ce n’est pas possible, utilisez une alternative telle que «sens» ou «cela».

N'importe quel chapitre contenant une abréviation latine échouera dans le workflow d'intégration continue (CI) du dépôt GitHub _The Turing Way_ de passer avec succès, qui est testé par ce [script Python](https://github.com/alan-turing-institute/the-turing-way/blob/main/tests/no-bad-latin.py).

*Pour éviter que le CI échoue, même dans ce chapitre, nous avons évité d'écrire ces abréviations et à la place utilisé une image pour illustrer les exemples ci-dessus.*

## Conseils

### Indentation

Retirer le contenu suivant chaque élément d'une liste numérotée. Si le contenu n'est pas indenté, la numérotation de la liste sera réinitialisée.

Par exemple, veuillez éviter :
1. Premier élément de la liste
```
Ce contenu appartient au premier élément de la liste.
```
2. Deuxième élément de la liste

Au lieu de cela, il est recommandé :
1. Premier élément de la liste
   ```
   Ce contenu appartient au premier élément de la liste.
   ```

2. Deuxième élément de la liste


### Liens externes

Écrire des liens externes en utilisant "http://" au lieu de "www". Cela permet de s'assurer qu'ils sont correctement reconnus comme des hyperliens.
