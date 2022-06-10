(rr-testing-unittest)=
# Tests unitaires

Les tests unitaires sont chargés de tester les différents éléments de code de manière isolée et hautement ciblée. Les fonctionnalités des fonctions et des classes individuelles sont testées par elles-mêmes. Le but est de valider que chaque unité du logiciel effectue comme prévu. Une unité est la plus petite partie testable de n'importe quel logiciel. Dans la programmation procédurale, une unité peut être un programme, une fonction ou une procédure individuelle. Dans la programmation orientée objet, la plus petite unité est généralement une méthode. Il a généralement une ou quelques entrées et généralement une seule sortie. Toutes les dépendances externes devraient être remplacées par des implémentations de stub ou de mock pour concentrer complètement le test sur le code en question.

Les tests unitaires sont essentiels pour vérifier la justesse des composants de code individuels pour la cohérence et la justesse internes avant de les placer dans des contextes plus complexes. L'étendue limitée des tests et la suppression des dépendances facilitent la recherche de la cause de tout défaut. C'est aussi le meilleur moment pour tester une variété d'entrées et de branches de code qui pourraient être difficiles à frapper plus tard. Par exemple, les tests système prennent souvent du temps à s'exécuter et il sera probablement impratique d'avoir des tests système pour chaque chemin possible à travers un code qui a plus de quelques instructions conditionnelles. Les tests unitaires sont plus petits, plus rapides et il est donc plus pratique de couvrir tous les cas possibles.

Souvent, après tout test de fumée, les tests unitaires sont les premiers tests qui sont exécutés lorsque des changements sont apportés.

## Avantages des tests unitaires

Si un chercheur apporte une modification à un morceau de code ou comment il est exécuté, comment peuvent-ils être sûrs que cela n'a pas cassé quelque chose? Ils peuvent exécuter quelques tests, mais sans tester chaque petit morceau de code individuellement, comment peuvent-ils être sûrs ? Les tests unitaires donnent aux chercheurs cette certitude et leur permettent d'être confiants lorsqu'ils modifient et maintiennent leur code.

Voici un petit exemple. Dire qu'un chercheur a une petite fonction qui fait une chose simple (ici seulement une seule ligne pour brevity). Dans cet exemple, cela augmentera un nombre à la 5ème puissance :

```
def take_fifth_power(x):
  résultat = x * x * x * x * x x
  résultat retour
```

Le test unitaire pour cette fonction pourrait ressembler à ceci :
```
def test_take_fifth_power():
  assert take_fifth_power(1.5) == 7.59375
```

Il vérifie donc que le résultat correct est affiché pour une entrée donnée. Sinon, le test échouera. Le chercheur poursuit son travail. Au milieu de cela, ils décident de ranger cette fonction, multipliant le nombre cinq fois comme celui-ci est un peu brut. Ils changent le résultat `= x * * x * * x x` à `résultat = x * 5`. La prochaine fois qu'ils exécuteront leurs tests unitaires, ce test échouera, parce qu'ils ont juste fait une erreur. Peut-être ont-ils besoin d'un café, peut-être que leur doigt a glissé, peut-être leur collègue les a projetés dans l'oreille avec une fléchette nerveuse et les ont distraits, mais quand ils étaient en train de ranger cette fonction, ils devraient avoir écrit `résultat = x ** 5` *non* `résultat = x * 5`. Le test raté marquera l'erreur et pourra rapidement être corrigé. Si une telle erreur se produisait sans observation, cela pourrait entraîner de graves erreurs dans le travail du chercheur.

Ainsi, les tests unitaires mènent à un code plus fiable, mais il y a aussi d'autres avantages. Tout d'abord, cela accélère le développement en facilitant la recherche de bogues. Les tests à plus grande échelle qui testent de gros tronçons de code (tout en étant utiles) ont l'inconvénient que s'ils échouent, il est difficile de repérer la source du bogue. Parce que les tests unitaires par leur propre définition testent de petits morceaux de code, ils aident les développeurs à trouver la cause d'un bogue beaucoup plus rapidement que des tests de haut niveau ou du code sans aucun test. Les tests unitaires rendent également la correction des bogues plus rapide et plus facile car ils attrapent des bogues tôt alors que l'impact est limité à de petites unités individuelles. Si les bogues ne sont pas détectés tôt via des tests unitaires, alors il peut être long avant d'être découverts, impactant les travaux ultérieurs qui ont construit sur le code défectueux. Cela signifie que beaucoup plus de code est en danger et que la correction du bogue prend plus de temps.

L'autre avantage majeur des tests unitaires est qu'il incite fortement les chercheurs à écrire du code modulaire parce que le code modulaire est beaucoup plus facile à écrire pour les tests unitaires. Le code modulaire est un code qui est divisé en chunks gérables que chacun accomplit des tâches simples. Ceci est généralement réalisé en divisant le code en fonctions et en groupes de fonctions. Par contraste, un script qui n'est qu'une longue série continue de lignes qui produit un résultat est hautement non modulaire.

Le code modulaire est également beaucoup plus facile à réutiliser. Par exemple, si un chercheur a une fonction individuelle qui fait quelque chose de utile et dans un projet futur, il doit recommencer à le faire. il est trivial de copier ou d'importer la fonction. En revanche, si le code qui fait cette chose utile est entassé avec beaucoup d'autres codes dans un script long, il est beaucoup plus difficile de le séparer pour une réutilisation.

## Astuces de test unitaires

- De nombreux frameworks de test ont des outils spécialement conçus pour écrire et exécuter des tests unitaires.
- Isoler l'environnement de développement de l'environnement de test.
- Écrivez des scénarios de tests indépendants les uns des autres. Par exemple, si une unité A utilise le résultat fourni par une autre unité B, vous devriez tester l'unité A avec un [double de test](#Use_test_doubles_stubs_mocking_where_appropriate), plutôt que d'appeler l'unité B. Si vous ne le faites pas, votre échec de test peut être dû à un défaut de l'unité A *ou* unité B, rendant le bogue plus difficile à tracer.
- Visez à couvrir tous les chemins à travers une unité. Faites particulièrement attention aux conditions de boucle.
- En plus d'écrire des cas pour vérifier le comportement, écrivez des cas pour assurer la performance du code. Par exemple, si une fonction qui est censée ajouter deux nombres prend plusieurs minutes pour s'exécuter, il y a probablement un problème.
- Si tu trouves un défaut dans ton code écrire un test qui l'expose. Pourquoi? Tout d'abord, vous pourrez plus tard attraper le défaut si vous ne le corrigez pas correctement. Deuxièmement, votre suite de tests est maintenant plus complète. Troisièmement, vous serez probablement trop paresseux pour écrire le test après avoir déjà corrigé le défaut. Dites qu'un code a une fonction simple pour classer les gens comme adultes ou enfants :

```
def adult_or_child(age):

  # Si l'âge est supérieur ou égal à 18 ans, classez-les comme un adulte
  si l'âge >= 18 ans :
    person_status = 'Adult'

  # Si la personne n'est pas un adulte les classifie comme un enfant
  Sinon :
    person_status = 'Enfant'

  retourner person_status
```

Et dites que ce code a un test unitaire comme ceci :

```
def test_adult_or_child():

  # Tester qu'un adulte est correctement classé comme un adulte
  assert adult_or_child(22) == 'Adult'

  # Tester qu'un enfant est correctement classé comme un enfant
  assert adult_or_child(5) == 'Enfant

  retour
```

Il y a un problème avec ce code qui n'est pas testé : si un âge négatif est fourni, il sera heureux de classer la personne comme un enfant alors que les âges négatifs ne sont pas possibles. Le code devrait lancer une erreur dans ce cas.

Donc une fois que le bogue a été corrigé :
```
def adult_or_child(age):

# Vérifier l'âge est valide
si l'âge < 0:
  raise ValueError, 'Pas possible d'avoir un âge négatif'

# Si l'âge est supérieur ou égal à 18 ans, classez-les comme un adulte
si l'âge >= 18 ans :
  person_status = 'Adult'

# Si la personne n'est pas un adulte les classer comme un enfant
sinon:
  person_status = 'Enfant'

retour person_status
```

Allez-y et écrivez un test pour vous assurer que les changements futurs dans le code ne peuvent pas le faire se reproduire:
```
def test_adult_or_child():

#Teste qu'un adulte est correctement classé comme un adulte
assert adult_or_child(22) == 'Adult'

# Teste que l'enfant est correctement classé comme un enfant
assert adult_or_child(5) == 'Enfant'

# Teste que fournir un âge invalide entraîne une erreur
avec pytest. aises(ValueError):
    adult_or_child(-10)
```
