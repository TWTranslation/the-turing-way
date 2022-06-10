(rr-testing-acceptance-regression)=
# Acceptation et test de régression

(rr-testting-acceptance)=
## Test d'acceptation

Les tests d'acceptation sont l'un des derniers types de tests qui sont effectués sur un logiciel avant la livraison. Les tests d'acceptation sont utilisés pour déterminer si un logiciel répond à toutes les exigences du point de vue de l'entreprise ou de l'utilisateur. Est-ce que ce logiciel fait ce qu'il faut pour faire? Ces tests sont parfois construits selon la spécification originale.

Comme le logiciel de recherche est généralement écrit par le chercheur qui l'utilisera (ou au moins avec une contribution significative de leur part) les tests d'acceptation peuvent ne pas être nécessaires.

(rr-testing-régression)=
## Test de régression

Le test de régression est un style de test qui se concentre sur le retest après que des modifications ont été apportées. Les résultats des tests après les changements sont comparés aux résultats précédents, et les erreurs sont soulevées si elles sont différentes. Les tests de régression ont pour but de s'assurer que les changements (améliorations ou corrections de défauts) du logiciel ne l'ont pas endommagé. La probabilité de tout changement de code impactant des fonctionnalités qui ne sont pas directement associées au code est toujours là et il est essentiel que des tests de régression soient effectués pour s'assurer que la correction d'une chose n'a pas cassé une autre. Les tests de régression peuvent être effectués pendant n'importe quel niveau de test (unité, intégration, système ou acceptance), mais ils sont principalement pertinents lors des tests du système. Tout test peut être réutilisé, et donc tout test peut devenir un test de régression.

Les tests de régression sont évidemment particulièrement importants dans le travail d'équipe, mais il est étonnamment facile d'enfreindre votre propre code sans le remarquer, même si vous travaillez seul. Et comme les tests de régression sont presque impossibles à faire de manière satisfaisante à la main (c'est tout simplement trop fastidieux), c'est un cas évident pour l'automatisation.

Les tests de régression sont écrits en exécutant d'abord le (ou une partie du code) pour les entrées données et en enregistrant les sorties. Cela peut être fait en écrivant des fichiers d'entrée et en enregistrant les fichiers de sortie correspondants. Ces sorties servent de sorties attendues du programme en fonction des entrées correspondantes. Les tests de régression sont ensuite écrits. Chaque test de régression exécute le code pour l'ensemble des entrées. Il compare ensuite la sortie du code aux sorties attendues, et déclenche une erreur si celles-ci ne correspondent pas.

Les approches de tests de régression diffèrent dans leur contexte.

Les exemples communs incluent :
- Régression des bugs : Nous retardons un bogue spécifique qui aurait été corrigé.
- Ancien correctif de tests de régression : Nous retardons plusieurs anciens bogues qui ont été corrigés, pour voir s'ils sont de retour. (C'est la notion classique de régression: le programme a régressé vers un mauvais état.)
- Régression fonctionnelle générale: Nous réagissons largement le projet, y compris les domaines qui ont travaillé avant, pour voir si des changements plus récents ont déstabilisé le code de fonctionnement.
- Conversion ou test de port : Le programme est porté sur une nouvelle plate-forme et une suite de tests de régression est exécutée pour déterminer si le port a été réussi.
- Test de configuration : Le programme est exécuté avec un nouveau périphérique ou sur une nouvelle version du système d'exploitation ou en conjonction avec une nouvelle application. C'est comme le test de portage, sauf que le code sous-jacent n'a pas été modifié, seuls les composants externes avec lesquels le logiciel en test doit interagir.

### Limitation des tests de régression

Les tests de régression ne sont pas garantis de tester toutes les parties du code. Plus important encore, les tests de régression ne testent pas si le résultat affiché par un morceau de code est *correct*, seulement qu'il n'a pas changé. Ceci est la compétence d'autres types de tests, bien que les tests de régression peuvent servir de point de départ pour introduire des tests de correction, par l'utilisation de solutions analytiques et à travers les fonctions de test qui lisent les fichiers de sortie et vérifient les données pour qu'elles soient correctes, telles que définies par un chercheur.
