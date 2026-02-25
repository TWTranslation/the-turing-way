(rr-testing)=

# Tests de code

| Prerequisite                                                               | Importance |
| -------------------------------------------------------------------------- | ---------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Nécessaire |

## Summary

Le code écrit par un chercheur fait désormais partie d'une grande partie de la recherche, et s'il y a des erreurs dans le code, les résultats peuvent être partiellement ou entièrement peu fiables.
Il est vital de tester le code de façon approfondie et fréquente pour assurer une recherche fiable et reproductible.
Ce chapitre fournira des conseils généraux pour écrire des tests et décrira un certain nombre de différents types de tests, leurs utilisations et comment les mettre en œuvre.

## Motivation and Background

Il est très, très facile de faire des erreurs en codant.
Un seul caractère déplacé peut rendre la sortie d'un programme totalement erronée.
Un des exemples ci-dessus a été causé par un signe plus qui aurait dû être un moins.
Une autre a été causée par un morceau de code travaillant en mètres alors qu'un autre chercheur a travaillé dans les pieds.
_Everyone_ makes mistakes, and in research the results can be catastrophic.
Les carrières peuvent être endommagées/terminées, des sommes considérables peuvent être gaspillées et un temps précieux peut être perdu pour explorer des voies incorrectes. C'est pourquoi les tests sont vitaux.

Voici quelques illustrations illustrant pourquoi écrire des tests :

```{figure} ../../figures/testing-motivation1.*
---
name: testing-motivation1
alt: "Headline of a December 2006 news article by Greg Miller, published in Science, titled A Scientist's Nightmare: Software Problem Leads to Five Retractions"
---
```

```{figure} ../../figures/testing-motivation2.*
---
name: testing-motivation2
alt: "News article by Lisa Grossman, published on Wired.com in November 2010, describing an inconsistency between the units of force expected as output and input of two pieces of software that resulted in the loss of a weather satellite when it reached its destination at Mars. The piece is titled November 10, 1999: Metric Math Mistake Muffed Mars Meteorology Mission"
---
```

Même si des problèmes dans un programme sont détectés avant la publication de la recherche, il peut être difficile de déterminer quels sont les résultats contaminés et doivent être refaits.
Cela représente une perte de temps et d'efforts considérables.
Attraper ces problèmes le plus tôt possible minimise la quantité de travail nécessaire pour les résoudre, et pour la plupart des chercheurs, c'est de loin leur ressource la plus rare.
You should not skip writing tests because you are short on time, you should write tests _because_ you are short on time.
Les chercheurs ne peuvent pas se permettre d'avoir des mois ou des années de travail dans le vide, et ils ne peuvent pas se permettre de vérifier à plusieurs reprises manuellement tous les détails d'un programme qui pourrait être long de centaines ou de centaines de milliers de lignes.
Écrire des tests pour le faire pour vous est l'option de gain de temps, et c'est l'option sûre.

Comme les chercheurs écrivent du code, ils font généralement certains tests au fur et à mesure, souvent en ajoutant des déclarations imprimées et en vérifiant la sortie.
Cependant, ces tests sont souvent jetés dès qu'ils sont passés et ne sont plus présents pour vérifier ce qu'ils étaient censés vérifier.
C'est relativement peu de travail de placer ces tests dans des fonctions et de les garder afin qu'ils puissent être exécutés à tout moment dans le futur.
La main-d’œuvre supplémentaire est minimale, le temps gagné et les garanties fournies sont inestimables.
De plus, en formalisant le processus de test en une suite de tests qui peuvent être exécutés de manière indépendante et automatique, vous offrez un degré de confiance beaucoup plus grand que le logiciel se comporte correctement et augmentez la probabilité que des défauts soient trouvés.

Les tests offrent également aux chercheurs une plus grande tranquillité d'esprit lorsqu'ils travaillent ou améliorent un projet.
Après avoir modifié leur code, un chercheur voudra vérifier que leurs modifications ou corrections n'ont rien cassé.
Fournir aux chercheurs un environnement rapide permettant d'identifier rapidement les défaillances introduites par les modifications apportées au code.
L'alternative, du chercheur qui écrit et exécute les petits tests pour lesquels il a du temps est bien inférieur à une bonne suite de tests qui peut vérifier le code en profondeur.

Un autre avantage de l'écriture de tests est qu'il oblige généralement un chercheur à écrire plus propre, plus de code modulaire en tant que tel code est beaucoup plus facile à écrire des tests pour, menant à une amélioration de la qualité du code.
{ref}`Good quality code<rr-code-quality>` is far easier (and altogether more pleasant) to work with than tangled rat's nests of code I'm sure we've all come across (and, let's be honest, written). This point is expanded upon in the section {ref}`rr-testing-unittest`.

## Les avantages des tests pour la recherche

En plus de profiter des tests individuels des chercheurs, la recherche dans son ensemble est également bénéfique.
Il rend la recherche plus reproductible en répondant à la question "comment on sait même que ce code fonctionne".
Si les tests ne sont jamais enregistrés, il suffit de faire et de supprimer la preuve ne peut pas être reproduite facilement.

Les tests aident également à éviter que des fonds précieux ne soient dépensés pour des projets qui peuvent être partiellement ou totalement imparfaits en raison d'erreurs dans le code.
Pire encore, si des erreurs ne sont pas détectées et que le travail est publié, tout travail ultérieur qui s'appuie sur le projet sera tout aussi imparfait.

Perhaps the cleanest expression of why testing is important for research as a whole can be found in the [Software Sustainability Institute](https://www.software.ac.uk/) slogan: better software, better research.
