(rr-testing-challenges)=
# Défis et cas exceptionnels en test

(rr-testing-challenges-stochastic-code)=
## Prueba del código stochasede

Parfois, le code contient un élément d'aléatoire, un exemple commun étant le code qui utilise les méthodes [Monte Carlo](https://en.wikipedia.org/wiki/Monte_Carlo_method). Tester ce type de code peut être très difficile car s'il est exécuté plusieurs fois, il générera des réponses différentes, qui peuvent tous être "corrects", même s'il ne contient aucun bogue. Il y a deux moyens principaux de s'attaquer au test du code stochastique :

### Utiliser des graines de nombre aléatoire

Les graines de nombres aléatoires sont un peu difficiles à expliquer, voici donc un exemple. Voici un petit script Python qui affiche trois nombres aléatoires.

```python
import aléatoire

# Affiche trois nombres aléatoires
print(random.random())
print(random.random())
print(random.random())
```

Ce script n'a pas de bogue mais si vous l'exécutez à plusieurs reprises, vous obtiendrez des réponses différentes à chaque fois. Maintenant, nous allons définir une graine de nombres aléatoires.

```python
import aléatoire

# Définit une graine de nombres aléatoires
random.seed(1)

# Affiche trois nombres aléatoires
print(random.random())
print(random.random())
print(random.random())
```

Maintenant, si vous exécutez ce script, il affiche

```python
0.134364244112
0.847433736937
0.763774618977
```

et chaque fois que vous exécutez ce script, vous obtiendrez la même sortie ** , il affichera le *même* trois nombres aléatoires. Si la graine de nombres aléatoires est modifiée, vous obtiendrez trois nombres aléatoires différents:

```python
0.956034271889
0.947827487059
0.0565513677268
```
mais de nouveau vous obtiendrez ces mêmes chiffres chaque fois que le script sera exécuté dans le futur.

Les graines de nombres aléatoires sont un moyen de rendre les choses de manière fiable et aléatoire. Cependant, un risque avec des tests qui dépendent de graines de nombre aléatoire est qu'ils peuvent être cassés. Disons que vous avez une fonction structurée quelque chose comme ceci:

```python
def my_function() :
  a = cálculo_that_uses_two_random_numbers()
  b = cálculo_that_uses_five_random_numbers()
  c = a + b
```

Si vous définissez la graine de nombre aléatoire, vous obtiendrez toujours la même valeur de `c`, donc elle peut être testée. Mais, disons que le modèle est changé et que la fonction qui calcule `un` utilise un nombre différent de nombres aléatoires qu'il a fait auparavant. Maintenant, non seulement `un` sera différent mais `b` le sera, parce que comme indiqué au-dessus des nombres aléatoires affichés sur une graine de nombres aléatoires sont dans un ordre fixe. En conséquence, les nombres aléatoires produits pour calculer `b` auront changé. Cela peut conduire à un échec des tests quand il n'y a pas de bug.

#### Mesurer la distribution des résultats

Une autre façon de tester du code avec une sortie aléatoire est de l'exécuter plusieurs fois et de tester la distribution des résultats. Peut-être que le résultat peut fluctuer un peu, mais on s'attend toujours à environ 10 dans le cadre d'une certaine tolérance. Cela peut être testé. Plus le code est exécuté, plus la moyenne est fiable, et donc le résultat. Cependant plus vous exécutez un morceau de code plus longtemps il faudra que vos tests soient exécutés, qui peuvent faire que les tests prennent un temps prohibitif pour se conduire si un résultat fiable doit être obtenu. De plus, il y aura toujours un élément d'incertitude et si les nombres aléatoires tombent d'une certaine manière vous pouvez obtenir un résultat en dehors de la tolérance attendue, même si le code est correct.

Ces deux approches pour tester le code stochastique peuvent encore être très utiles, mais il est important d'être également conscient de leurs inconvénients potentiels.

(rr-testting-challenges-difícil-quatify)=
## Pruebas cuantificadoras de difficiles

Parfois (particulièrement dans la recherche) les résultats du code sont testés selon qu'ils "regardent" à droite. Par exemple, disons que nous avons un code de modélisation des niveaux d'eau dans un réservoir au fil du temps.

Le résultat peut ressembler à ceci :

```{figure} ../../figures/eyeball-test1.jpg
---
nom : eyeball-test1
alt :
---
```

Sur une journée avec la pluie, cela pourrait ressembler à ceci:

```{figure} ../../figures/eyeball-test2.jpg
---
nom : eyeball-test2
alt :
---
```

et pendant une journée sèche, cela pourrait ressembler à ceci:

```{figure} ../../figures/eyeball-test3.jpg
---
nom : eyeball-test3
alt :
---
```

Toutes ces sorties semblent très différentes mais sont valides. Cependant, si un chercheur voit un résultat comme celui-ci :

```{figure} ../../figures/eyeball-test-error.jpg
---
nom : eyeball-test-error
alt:
---
```

Ils pourraient facilement conclure qu'il y a un bug car un lac est peu susceptible de tripler son volume et de le perdre à nouveau en quelques heures. De tels tests sont des tests qui prennent du temps car ils doivent être effectués par un humain. Cependant, le processus peut être partiellement ou entièrement automatisé en créant des « vérifications de santé » de base. Par exemple, le niveau d'eau à un moment donné devrait être à l'intérieur, disons, de 10 % du niveau d'eau lors de l'étape précédente. Une autre vérification pourrait être qu'il n'y a pas de valeurs négatives, car un lac ne peut pas être plein -30%. Ce type de tests ne peut pas couvrir toutes les façons dont quelque chose peut être visiblement erroné, mais ils sont beaucoup plus faciles à automatiser et suffisent pour la plupart des cas.

(rr-testing-challenges-non-integer)=
## Tester si les nombres non entiers sont égaux

### Lorsque 0,1 + 0,2 ne correspond pas à 0,3

Il y a une complication avec le test si la réponse que donne un morceau de code est égale à la réponse attendue quand les nombres ne sont pas des entiers. Examinons cet exemple de Python, mais notons que ce problème n'est pas unique à Python.

Si nous assignons 0.1 à `a` et 0.2 à `b` et affichons leur somme, nous obtenons 0.3, comme prévu.

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

Cependant, si nous comparons le résultat de `a` plus `b` à 0.3, nous obtenons False.

```python
>>> print(a + b == 0.3)
Faux
```

Si nous montrons directement la valeur de `un` plus `b` , nous pouvons voir qu'il y a une marge d'erreur subtile.

```python
>>> a + b
0.300000000000004
```

Ceci est dû au fait que les nombres à virgule flottante sont des approximations de nombres réels. Le résultat de calculs à virgule flottante peut dépendre du compilateur ou de l'interpréteur, de l'architecture du processeur ou du système et du nombre de processeurs ou de processus utilisés. Cela peut représenter un obstacle majeur pour la rédaction de tests.

### Égalité dans un monde à virgule flottante

Lorsque nous comparons des nombres à virgule flottante pour l'égalité, nous devons nous comparer à une tolérance donnée, autrement appelée seuil ou delta. Par exemple, nous pourrions considérer que les valeurs calculées et attendues d'un certain nombre sont égales si la valeur absolue de leur différence est dans la valeur absolue de notre tolérance.

De nombreux frameworks de test fournissent des fonctions permettant de comparer l'égalité des nombres à virgule flottante à une tolérance donnée. Un ejemplo para la prueba del marco:

```python
import pytest

a = 0.1
b = 0.2
c = a + b
assert c == pytest.approx(0.3)
```

cela passe, mais si la 0.3 a été changée à 0.4, cela échouera.

Les frameworks de test unitaire pour les autres langages fournissent aussi souvent des fonctions similaires:

- Cunit pour C : CU_ASSERT_DOUBLE_EQUAL(réelle, attendue, granularité)
- CPPUnit pour C++ : CPPUNIT_ASSERT_DOUBLES_EQUAL(attendu, réel, delta)
- googletest pour C++ : ASSERT_NEAR(val1, val2, error)
- FRUIT para Fortran: subroutine assert_eq_double_in_range_(var1, var2, delta, mensaje)
- JUnit pour Java : org.junit.Assert.assertEquals(double attendu, double réel, double delta)
- testthat pour R:
  - expect_equal(réel, attendu, tolérance=DELTA) - erreur absolue dans DELTA
  - expect_equal(réel, attendu, scale=attendu, tolérance=DELTA) - erreur relative dans DE L T A
