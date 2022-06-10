(rr-ci-pratiques)=
# Meilleures pratiques et recommandations

## Petites modifications itératives

L'une des pratiques les plus importantes lors de l'adoption de l'intégration continue est d'encourager les membres du projet à apporter et à engager de petits changements. De petits changements minimisent la possibilité et l'impact des problèmes qui surgissent lorsqu'ils sont intégrés, ce qui réduit le temps et le coût d'effort de l'intégration.

## Développement basé sur les troncs

Avec le développement basé sur le tronc, le travail est fait dans la branche principale du référentiel ou fusionné dans le référentiel partagé à intervalles fréquents. Les branches de fonctionnalités à court terme sont autorisées tant qu'elles représentent de petits changements et sont fusionnées dès que possible.

L'idée qui sous-tend le développement basé sur le tronc est d'éviter les gros commits qui violent le concept de petits changements itératifs décrits ci-dessus. Le code est disponible aux pairs tôt pour que les conflits puissent être résolus lorsque leur portée est faible.

## Garder les phases de construction et de test rapides

Étant donné que les étapes de construction et de test doivent être effectuées fréquemment, il est essentiel que ces processus soient rationalisés afin de minimiser le temps passé sur eux. L'augmentation du temps de construction devrait être traitée comme un problème majeur parce que l'impact est aggravé par le fait que chaque commit démarre une construction.

Lorsque cela est possible, exécuter différentes sections de la suite de tests en parallèle peut aider à déplacer la construction plus rapidement à travers le pipeline. Il convient également de veiller à ce que la proportion de chaque type de test soit sensée. Les tests unitaires sont généralement très rapides et ont une maintenance minimale en tête. En revanche, les tests automatisés de système ou d'acceptation sont souvent complexes et sujets à des ruptures. Pour expliquer cela, c'est souvent une bonne idée de s'appuyer lourdement sur des tests unitaires, effectuer un bon nombre de tests d'intégration, puis revenir sur le nombre de tests plus tard, plus complexes.

## Dépenses de calcul

Certains logiciels nécessiteront des ressources de calcul importantes pour la construction et/ou l'exécution. Parmi les exemples figurent les modèles météorologiques et climatiques. Cela peut rendre l'utilisation d'une intégration continue peu pratique car les tests prennent trop de temps ou utilisent trop de ressources. Il faut donc trouver un compromis pour équilibrer le risque de tests incomplets par rapport à un processus de développement utilisable.

Une approche consiste à utiliser différents niveaux de tests, différents sous-groupes étant requis en fonction de ce qui est modifié. Un sous-groupe large commun peut être utilisé dans tous les cas, avec des sous-groupes supplémentaires pour tester certaines zones plus en détail. Cela introduit un élément de jugement dans le processus de test, mais peut être appliqué avec succès.

## Suivi des dépendances

La vérification des mises à jour des dépendances devrait être effectuée régulièrement. Cela peut gagner beaucoup de temps, en évitant les bogues en raison du code dépendant des fonctionnalités obsolètes. Des services tels que [David](https://david-dm.org/) sont disponibles pour la gestion des dépendances.

## Cohérence à travers le pipeline

Un projet devrait être construit une fois au début du pipeline, le logiciel qui en résulte devrait être stocké et accessible aux processus ultérieurs sans reconstruction. En utilisant exactement le même artefact dans chaque phase, vous pouvez être certain que vous n'introduisez pas d'incohérences à la suite de différents outils de construction.
