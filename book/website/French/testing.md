(rr-testing)=
# Tests de code

| Pré-requis                                                                                        | Importance |
| ------------------------------------------------------------------------------------------------- | ---------- |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Nécessaire |

## Summary

Le code écrit par un chercheur fait désormais partie d'une grande partie de la recherche, et s'il y a des erreurs dans le code, les résultats peuvent être partiellement ou entièrement peu fiables. Il est vital de tester le code de façon approfondie et fréquente pour assurer une recherche fiable et reproductible. Ce chapitre fournira des conseils généraux pour écrire des tests et décrira un certain nombre de différents types de tests, leurs utilisations et comment les mettre en œuvre.

```{figure}  ../figures/error-management.jpg
---
name : gestion des erreurs
alt : Une personne est heureuse de coder, puis une erreur se déclenche et le codeur est confondu. Ensuite, le codeur peut trouver l'erreur et la corriger.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivation

Il est très, très facile de faire des erreurs en codant. Un seul caractère déplacé peut rendre la sortie d'un programme totalement erronée. Un des exemples ci-dessus a été causé par un signe plus qui aurait dû être un moins. Une autre a été causée par un morceau de code travaillant en mètres alors qu'un autre chercheur a travaillé dans les pieds. *Tout le monde* fait des erreurs, et dans la recherche les résultats peuvent être catastrophiques. Les carrières peuvent être endommagées/terminées, des sommes considérables peuvent être gaspillées et un temps précieux peut être perdu pour explorer des voies incorrectes. C'est pourquoi les tests sont vitaux.

Voici quelques illustrations illustrant pourquoi écrire des tests :

```{figure}  ../figures/testing-motivation1.png
---
name : testing-motivation1
alt :
---
```

```{figure}  ../figures/testing-motivation2.png
---
nom: testing-motivation2
alt :
---
```

Même si des problèmes dans un programme sont détectés avant la publication de la recherche, il peut être difficile de déterminer quels sont les résultats contaminés et doivent être refaits. Cela représente une perte de temps et d'efforts considérables. Attraper ces problèmes le plus tôt possible minimise la quantité de travail nécessaire pour les résoudre, et pour la plupart des chercheurs, c'est de loin leur ressource la plus rare. Vous ne devriez pas ignorer les tests d'écriture parce que vous avez peu de temps, vous devez écrire des tests *parce que* vous avez peu de temps. Les chercheurs ne peuvent pas se permettre d'avoir des mois ou des années de travail dans le vide, et ils ne peuvent pas se permettre de vérifier à plusieurs reprises manuellement tous les détails d'un programme qui pourrait être long de centaines ou de centaines de milliers de lignes. Écrire des tests pour le faire pour vous est l'option de gain de temps, et c'est l'option sûre.

Comme les chercheurs écrivent du code, ils font généralement certains tests au fur et à mesure, souvent en ajoutant des déclarations imprimées et en vérifiant la sortie. Cependant, ces tests sont souvent jetés dès qu'ils sont passés et ne sont plus présents pour vérifier ce qu'ils étaient censés vérifier. C'est relativement peu de travail de placer ces tests dans des fonctions et de les garder afin qu'ils puissent être exécutés à tout moment dans le futur. La main-d’œuvre supplémentaire est minimale, le temps gagné et les garanties fournies sont inestimables. De plus, en formalisant le processus de test en une suite de tests qui peuvent être exécutés de manière indépendante et automatique, vous offrez un degré de confiance beaucoup plus grand que le logiciel se comporte correctement et augmentez la probabilité que des défauts soient trouvés.

Les tests offrent également aux chercheurs une plus grande tranquillité d'esprit lorsqu'ils travaillent ou améliorent un projet. Après avoir modifié leur code, un chercheur voudra vérifier que leurs modifications ou corrections n'ont rien cassé. Fournir aux chercheurs un environnement rapide permettant d'identifier rapidement les défaillances introduites par les modifications apportées au code. L'alternative, du chercheur qui écrit et exécute les petits tests pour lesquels il a du temps est bien inférieur à une bonne suite de tests qui peut vérifier le code en profondeur.

Un autre avantage de l'écriture de tests est qu'il oblige généralement un chercheur à écrire plus propre, plus de code modulaire en tant que tel code est beaucoup plus facile à écrire des tests pour, menant à une amélioration de la qualité du code.
{ref}`Le code de bonne qualité<rr-code-quality>` est beaucoup plus facile (et tout à fait plus plaisant) à travailler avec des nids de code de rat enchevêtrés, je suis sûr que nous avons tous rencontré (et, soyons honnêtes, écrits). Ce point est étendu dans la section {ref}`rr-testing-unittest`.

## Les avantages des tests pour la recherche

En plus de profiter des tests individuels des chercheurs, la recherche dans son ensemble est également bénéfique. Il rend la recherche plus reproductible en répondant à la question "comment on sait même que ce code fonctionne". Si les tests ne sont jamais enregistrés, il suffit de faire et de supprimer la preuve ne peut pas être reproduite facilement.

Les tests aident également à éviter que des fonds précieux ne soient dépensés pour des projets qui peuvent être partiellement ou totalement imparfaits en raison d'erreurs dans le code. Pire encore, si des erreurs ne sont pas détectées et que le travail est publié, tout travail ultérieur qui s'appuie sur le projet sera tout aussi imparfait.

Peut-être l'expression la plus propre des raisons pour lesquelles les tests sont importants pour la recherche dans son ensemble se trouve dans le slogan de [Software Sustainability Institute](https://www.software.ac.uk/) : meilleur logiciel, meilleur logiciel. une meilleure recherche.
