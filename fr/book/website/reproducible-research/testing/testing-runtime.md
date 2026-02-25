(rr-testing-runtime)=

# Test d'exécution

Les tests d'exécution sont des tests qui s'exécutent dans le cadre du programme lui-même.
Ils peuvent prendre la forme de contrôles dans le code, comme indiqué ci-dessous:

```
population = population + people_born - people_died

// test that the population is positive
if (population < 0):
  error( 'The number of people can never be negative' )
```

Un autre exemple d'utilisation de tests d'exécution est les vérifications internes dans les fonctions qui vérifient que leurs entrées et sorties sont valides, comme indiqué ci-dessous:

```
function add_arrays( array1, array2 ):

// test that the arrays have the same size
if (array1.size() != array2.size()):
  error( 'The arrays have different sizes!' )

output = array1 + array2

if (output.size() != array1.size()):
  error( 'The output array has the wrong size!'' )

return output
```

Avantages du test d'exécution :

- Exécuter dans le programme, donc peut attraper des problèmes causés par des erreurs de logique ou des cas de périphériques.
- Permet de trouver plus facilement la cause du bug en attrapant les problèmes plus tôt.
- La prise de problèmes à un stade précoce aide également à les empêcher de devenir des échecs catastrophiques. Il minimise le rayon de projection.

Inconvénients du test d'exécution :

- Les tests peuvent ralentir le programme.
- Quelle est la bonne chose à faire si une erreur est détectée ? Comment cette erreur doit-elle être signalée ? Les exceptions sont une route recommandée pour y parvenir.
