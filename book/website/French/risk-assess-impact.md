# Évaluation des risques : complexité et impact

Nous utilisons tous des évaluations des risques en permanence. Parfois, ce sont des procédures formelles pour s'assurer qu'une activité est sûre, mais la plupart du temps ils sont la pensée d'un moment - Est-ce que ce café est trop chaud ? Y a-t-il un bus qui arrive ? Le logiciel n'est pas différent, et utiliser une approche d'évaluation des risques comme celle décrite ci-dessous peut vraiment aider à rendre votre travail efficace et durable.

## La matrice de risque

Une matrice de risque est une façon très populaire de quantifier ce qui se passe avec ce qui vous intéresse. Un axe mesure l'exposition d'une certaine manière, et l'autre l'impact d'un malentendu. Plus l'origine est éloignée, plus il faut des garanties pour rendre le risque acceptable.

```{figure} ../../figures/risk-matrix.png
---
nom : matrice de risque-risque
alt : Impact vs risque de complexité matrice
---
Impact vs risque de complexité matrice
```

Dans notre cas, nous utiliserons la ‘complexité’ et l’‘impact’ comme les deux axes. Certaines études de cas illustrent comment cela fonctionne…

Cas 1

> Richard doit soumettre 100 petits emplois au pôle départemental, les noms des emplois variant selon un modèle simple. C'est fastidieux et il veut sortir et jouer. Par conséquent, Richard décide d'écrire un script shell court pour soumettre tous les travaux. Il se met en pause pendant quelques secondes et demande :

> À quel point cela est-il compliqué? Il ne s’agira que d’un seul écran de texte.

> Que se passe-t-il si ça ne va pas ? Les tâches ne seront pas envoyées ou exécutées et je vais recevoir des courriels d’échec.

> Ici, Richard décide que la complexité et l'impact de ce petit logiciel sont faibles. Par conséquent, utiliser le contrôle de version et l'écriture de la documentation est disproportionné en ce moment. Il décide de faire une course à sec en faisant écho à la ligne de soumission vers le terminal afin qu'il puisse effectuer une vérification rapide.
> Quelques semaines plus tard, quelqu'un d'autre dans le laboratoire veut faire la même chose. Richard offre son script, car il a très bien fonctionné pour lui. Les goalposts ont bougé. Richard met encore quelques secondes en pause et réévalue le risque…
> …5 ans plus tard, Le script de Richard s’est transformé en un vaste système de contrôle de flux de travail permettant à plusieurs universités de gérer des flux de travail complexes constituant des milliers d’emplois soumis à une gamme de ressources de calcul différentes. Le logiciel a maintenant un comité de projet formel qui définit la gouvernance et la direction du logiciel, veiller à ce qu'il soit durable et qu'il réponde aux besoins des 100 utilisateurs dans le monde entier.

Cas 2...

> Jemma a un problème de visualisation de certaines données. La bibliothèque habituelle ne peut pas gérer le format de ses données. Elle a entendu parler du projet du vendredi après-midi de Seth, où il a écrit un conteneur autour de cette bibliothèque pour résoudre ce qui semble être le même problème. Ils ont un café et décident de travailler ensemble. Au cours de ce café, ils prennent des décisions quant à la manière dont ils vont travailler ensemble avec succès - il s’agit de leur évaluation des risques. Seth accepte de partir et d'améliorer la documentation en ligne et d'ajouter quelques exemples de cas d'utilisation avant de partager. Jemma accepte de mettre en place un référentiel dans lequel Seth mettra le code.

> Avec le temps, plus de gens commencent à utiliser ce logiciel, avec des demandes de fonctionnalités ajoutant de la complexité et des changements dans la bibliothèque sous-jacente causant des ruptures. Jemma et Seth conviennent que les choses deviennent un peu risquées parce que l'impact de mauvais résultats peut causer des problèmes avec la publication des résultats. Ils introduisent donc des tests d'intégration continue et un processus d'examen afin de garantir que les choses restent durables.

Le point clé de ces études de cas est que chaque logiciel a différents besoins pour être durable, et ces exigences peuvent changer au fil du temps. L'utilisation du contrôle de version, des tests, de la documentation et d'autres concepts de durabilité sont utiles pour gérer les risques. En n'utilisant aucun de ces outils, votre logiciel est exposé à des choses qui vont mal, mais les utiliser tous dès le début peuvent entraver l'innovation. L'approche d'évaluation des risques vous aide à trouver le juste équilibre pour l'instant. Revoyez le sujet de temps en temps, ou lorsque quelque chose change de circonstance.

## En savoir plus sur la mesure de la complexité

Une mesure de complexité est le nombre de lignes. Plus vous avez de lignes, plus il y a d'endroits pour commettre une erreur. Cependant, il y a d'autres choses dont on pourrait se soucier. De combien de bibliothèques dépendez-vous ? Combien de fonctions y a-t-il ? Toutes ces mesures mesurent la complexité du codebase. La complexité peut également prendre d'autres formes. Combien y a-t-il de cas d'utilisation? Est-ce que votre logiciel de comptage des blob est utilisé uniquement pour le comptage des blobs dans les biosciences? Y a-t-il des gens qui l'utilisent pour compter les blobs dans les images CCTV ? Sur quels types d’ordinateur les gens l’utilisent-ils ? Processeur ? GPU ? Raspberry Pi ? Adoptez une vision large de votre logiciel.

## En savoir plus sur la mesure de l'impact

Que se passe-t-il lorsque votre logiciel ne fonctionne pas (pas if) ? Parfois, cela ne fait que vous ennuyer pendant quelques minutes. Cependant, d'autres logiciels qui ne fonctionnent pas correctement peuvent avoir d'énormes conséquences - la rétractation de votre papier de travail ou même la perte de vies humaines. Mesurer l'impact nécessite une bonne connaissance de ce à quoi votre logiciel est utilisé. Il peut parfois être difficile de suivre cela jusqu'à ce que les choses tournent mal. Cependant, On peut essayer de résoudre ce problème lors du passage en posant des questions telles que «ce logiciel que j’utilise pour l’analyse dans mon papier?». Encore une fois, adoptez une vision large de votre logiciel.
