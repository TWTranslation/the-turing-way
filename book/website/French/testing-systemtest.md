(rr-testing-systemtest)=
# Tests du système

Une fois les tests d'intégration effectués, un autre niveau de test appelé test système peut commencer. Le test du système est un niveau de test logiciel où un logiciel complet et intégré est testé. Le testeur fournit au programme des entrées et vérifie si la sortie du programme est correcte. Si ce n'est pas le cas, il y a un problème quelque part dans le système. Notez que cela ne doit pas être fait manuellement, il peut être automatisé. Le but de ces tests est d'évaluer la conformité du système avec les exigences spécifiées. À bien des égards, les tests de système servent d'extension aux tests d'intégration. Le but des tests système est de s'assurer que les groupes de composants fonctionnent correctement comme un ensemble cohérent.

Cependant, au lieu de se concentrer sur les interfaces entre les composants, les tests système évaluent généralement la fonctionnalité extérieure d'un logiciel complet. Cet ensemble de tests ignore les parties constituantes afin de mesurer le logiciel composé en tant qu'entité unifiée. À cause de cette distinction, les tests du système se concentrent généralement sur les sorties accessibles aux utilisateurs ou externes.

Les tests de système peuvent également tester des fonctionnalités du système autres que la correction. Exemples :

- Test de performance : la performance du programme est-elle conforme aux exigences minimales? Un test de performance peut mesurer le temps de fonctionnement du système dans un cas donné.
- Tests de migration : le programme fonctionne-t-il lorsqu'il est transféré dans un autre environnement informatique ?
- Test de contrainte/échelle/charge : teste comment le programme se comporte lorsqu'il est soumis à un stress, par exemple, lorsqu'il est nécessaire de traiter de très gros volumes de données.
- Test d'utilisabilité : à quel point le programme est facile à utiliser (plus courant dans les logiciels commerciaux, les tests généralement effectués par des humains plutôt que automatisés).
- Test de récupération : si le programme peut continuer si des erreurs surviennent (encore une fois, plus couramment dans les logiciels commerciaux).

## Astuces de test du système

Les tests système, également appelés tests de bout en bout, exécutent le programme, de bout en bout, de bout en bout. En tant que tels, ce sont les tests qui prennent le plus de temps à exécuter. Par conséquent, vous ne devriez les exécuter que si tous les tests de niveau inférieur (fumée, unité, intégration) sont déjà passés. S'ils ne l'ont pas fait, corrigez les problèmes qu'ils ont détectés avant de perdre du temps à exécuter les tests du système.

En raison de leur nature qui prend beaucoup de temps, il sera aussi souvent peu pratique de disposer de suffisamment de tests système pour tracer tous les itinéraires possibles à travers un programme, surtout s'il y a un nombre significatif d'instructions conditionnelles. Par conséquent, vous devriez considérer les cas de test système que vous exécutez avec soin et la priorité :

- Les routes les plus courantes à travers un programme.
- Les itinéraires les plus importants pour un programme. Par exemple, le détecteur LIGO vise à trouver des événements d'ondes gravitationnelles extrêmement rares. S'il y a un bogue dans ce chemin à travers le programme qui surveille le détecteur, alors c'est un problème *énorme*.
- Les cas qui sont sujets à des ruptures dues à des problèmes structurels au sein du programme. Dans l'idéal, il est préférable de résoudre ces problèmes, mais il existe des cas où ce n'est pas faisable.

Parce que les tests système peuvent prendre du temps, il peut être peu pratique de les exécuter très régulièrement (comme plusieurs fois par jour après de petits changements dans le code). Par conséquent, il peut être judicieux de les exécuter chaque nuit (et d'automatiser ce processus) de sorte que si des erreurs sont introduites que seuls les tests de système peuvent détecter le programmeur sera informé d'eux relativement rapidement.
