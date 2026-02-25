(rr-testing-unittest)=

# Tests unitaires

Les tests unitaires sont chargés de tester les différents éléments de code de manière isolée et hautement ciblée.
Les fonctionnalités des fonctions et des classes individuelles sont testées par elles-mêmes.
The purpose is to validate that each unit of the software performs as designed.
Une unité est la plus petite partie testable de n'importe quel logiciel.
Dans la programmation procédurale, une unité peut être un programme, une fonction ou une procédure individuelle.
Dans la programmation orientée objet, la plus petite unité est généralement une méthode.
It usually has one or a few inputs and usually a single output.
Toutes les dépendances externes devraient être remplacées par des implémentations de stub ou de mock pour concentrer complètement le test sur le code en question.

Les tests unitaires sont essentiels pour vérifier la justesse des composants de code individuels pour la cohérence et la justesse internes avant de les placer dans des contextes plus complexes.
L'étendue limitée des tests et la suppression des dépendances facilitent la recherche de la cause de tout défaut.
C'est aussi le meilleur moment pour tester une variété d'entrées et de branches de code qui pourraient être difficiles à frapper plus tard.
Par exemple, les tests système prennent souvent du temps à s'exécuter et il sera probablement impratique d'avoir des tests système pour chaque chemin possible à travers un code qui a plus de quelques instructions conditionnelles.
Les tests unitaires sont plus petits, plus rapides et il est donc plus pratique de couvrir tous les cas possibles.

Souvent, après tout test de fumée, les tests unitaires sont les premiers tests qui sont exécutés lorsque des changements sont apportés.

## Avantages des tests unitaires

Si un chercheur apporte une modification à un morceau de code ou comment il est exécuté, comment peuvent-ils être sûrs que cela n'a pas cassé quelque chose?
Ils peuvent exécuter quelques tests, mais sans tester chaque petit morceau de code individuellement, comment peuvent-ils être sûrs ?
Les tests unitaires donnent aux chercheurs cette certitude et leur permettent d'être confiants lorsqu'ils modifient et maintiennent leur code.

Voici un petit exemple.
Dire qu'un chercheur a une petite fonction qui fait une chose simple (ici seulement une seule ligne pour brevity).
Dans cet exemple, cela augmentera un nombre à la 5ème puissance :

```
def take_fifth_power(x):
  result = x * x * x * x * x
  return result
```

Le test unitaire pour cette fonction pourrait ressembler à ceci :

```
def test_take_fifth_power():
  assert take_fifth_power(1.5) == 7.59375
```

Il vérifie donc que le résultat correct est affiché pour une entrée donnée.
Sinon, le test échouera.
Le chercheur poursuit son travail.
Au milieu de cela, ils décident de ranger cette fonction, multipliant le nombre cinq fois comme celui-ci est un peu brut.
They change the `result = x * x * x * x * x` line to `result = x * 5`.
La prochaine fois qu'ils exécuteront leurs tests unitaires, ce test échouera, parce qu'ils ont juste fait une erreur.
Maybe they needed a coffee, maybe their finger slipped, maybe their coworker shot them in the ear with a nerf dart and distracted them, but when they were tidying up this function they should have written `result = x ** 5` _not_ `result = x * 5`.
Le test raté marquera l'erreur et pourra rapidement être corrigé.
Si une telle erreur se produisait sans observation, cela pourrait entraîner de graves erreurs dans le travail du chercheur.

Ainsi, les tests unitaires mènent à un code plus fiable, mais il y a aussi d'autres avantages.
Tout d'abord, cela accélère le développement en facilitant la recherche de bogues.
Les tests à plus grande échelle qui testent de gros tronçons de code (tout en étant utiles) ont l'inconvénient que s'ils échouent, il est difficile de repérer la source du bogue.
Parce que les tests unitaires par leur propre définition testent de petits morceaux de code, ils aident les développeurs à trouver la cause d'un bogue beaucoup plus rapidement que des tests de haut niveau ou du code sans aucun test.
Les tests unitaires rendent également la correction des bogues plus rapide et plus facile car ils attrapent des bogues tôt alors que l'impact est limité à de petites unités individuelles.
Si les bogues ne sont pas détectés tôt via des tests unitaires, alors il peut être long avant d'être découverts, impactant les travaux ultérieurs qui ont construit sur le code défectueux.
Cela signifie que beaucoup plus de code est en danger et que la correction du bogue prend plus de temps.

L'autre avantage majeur des tests unitaires est qu'il incite fortement les chercheurs à écrire du code modulaire parce que le code modulaire est beaucoup plus facile à écrire pour les tests unitaires.
Le code modulaire est un code qui est divisé en chunks gérables que chacun accomplit des tâches simples.
Ceci est généralement réalisé en divisant le code en fonctions et en groupes de fonctions.
Par contraste, un script qui n'est qu'une longue série continue de lignes qui produit un résultat est hautement non modulaire.

Le code modulaire est également beaucoup plus facile à réutiliser.
Par exemple, si un chercheur a une fonction individuelle qui fait quelque chose de utile et dans un projet futur, il doit recommencer à le faire. il est trivial de copier ou d'importer la fonction.
In contrast, if the code that does this Useful Thing is entwined with a great deal of other code in a long script it is much harder to separate it out for reuse.

## Astuces de test unitaires

- De nombreux frameworks de test ont des outils spécialement conçus pour écrire et exécuter des tests unitaires.
- Isoler l'environnement de développement de l'environnement de test.
- Écrivez des scénarios de tests indépendants les uns des autres. For example, if a unit A utilises the result supplied by another unit B, you should test unit A with a [test double][rr-testing-guidance-mocking], rather than actually calling the unit B. If you don't do this your test failing may be due to a fault in either unit A _or_ unit B, making the bug harder to trace.
- Visez à couvrir tous les chemins à travers une unité. Faites particulièrement attention aux conditions de boucle.
- En plus d'écrire des cas pour vérifier le comportement, écrivez des cas pour assurer la performance du code. Par exemple, si une fonction qui est censée ajouter deux nombres prend plusieurs minutes pour s'exécuter, il y a probablement un problème.
- Si tu trouves un défaut dans ton code écrire un test qui l'expose. Pourquoi? Tout d'abord, vous pourrez plus tard attraper le défaut si vous ne le corrigez pas correctement. Deuxièmement, votre suite de tests est maintenant plus complète. Troisièmement, vous serez probablement trop paresseux pour écrire le test après avoir déjà corrigé le défaut. Dites qu'un code a une fonction simple pour classer les gens comme adultes ou enfants :

```
def adult_or_child(age):

  # If the age is greater or equal to 18 classify them as an adult
  if age >= 18:
    person_status = 'Adult'

  # If the person is not an adult classify them as a child
  else:
    person_status = 'Child'

  return person_status
```

Et dites que ce code a un test unitaire comme ceci :

```
def test_adult_or_child():

  # Test that an adult is correctly classified as an adult
  assert adult_or_child(22) == 'Adult'

  # Test that an child is correctly classified as a child
  assert adult_or_child(5) == 'Child'

  return
```

Il y a un problème avec ce code qui n'est pas testé : si un âge négatif est fourni, il sera heureux de classer la personne comme un enfant alors que les âges négatifs ne sont pas possibles.
Le code devrait lancer une erreur dans ce cas.

Donc une fois que le bogue a été corrigé :

```
def adult_or_child(age):

  # Check age is valid
  if age < 0:
    raise ValueError, 'Not possible to have a negative age'

  # If the age is greater or equal to 18 classify them as an adult
  if age >= 18:
    person_status = 'Adult'

  # If the person is not an adult classify them as a child
  else:
    person_status = 'Child'

  return person_status
```

Allez-y et écrivez un test pour vous assurer que les changements futurs dans le code ne peuvent pas le faire se reproduire:

```
def test_adult_or_child():

  # Test that an adult is correctly classified as an adult
  assert adult_or_child(22) == 'Adult'

  # Test that an child is correctly classified as a child
  assert adult_or_child(5) == 'Child'

  # Test that supplying an invalid age results in an error
  with pytest.raises(ValueError):
    adult_or_child(-10)
```
