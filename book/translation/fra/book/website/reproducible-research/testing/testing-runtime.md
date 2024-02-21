(rr-testing-runtime)=
# Test d'exécution

Les tests d'exécution sont des tests qui s'exécutent dans le cadre du programme lui-même. Ils peuvent prendre la forme de contrôles dans le code, comme indiqué ci-dessous:
```
population = population + people_born - people_died

// teste que la population est positive
if (population < 0):
error( 'Le nombre de personnes ne peut jamais être négatif')
```

Un autre exemple d'utilisation de tests d'exécution est les vérifications internes dans les fonctions qui vérifient que leurs entrées et sorties sont valides, comme indiqué ci-dessous:
```
function add_arrays( array1, tableau2 ):

// teste que les tableaux ont la même taille
if (tableau1. ize() != table2.size()):
  erreur ( 'Les tableaux ont des tailles différentes !' )

sortie = table1+ table2

if (output.size() != table1.size()):
  error( 'La table de sortie a la mauvaise taille!'' )

retourne la sortie
```

Avantages du test d'exécution :
- Exécuter dans le programme, donc peut attraper des problèmes causés par des erreurs de logique ou des cas de périphériques.
- Permet de trouver plus facilement la cause du bug en attrapant les problèmes plus tôt.
- La prise de problèmes à un stade précoce aide également à les empêcher de devenir des échecs catastrophiques. Il minimise le rayon de projection.

Inconvénients du test d'exécution :

- Les tests peuvent ralentir le programme.
- Quelle est la bonne chose à faire si une erreur est détectée ? Comment cette erreur doit-elle être signalée ? Les exceptions sont une route recommandée pour y parvenir.
