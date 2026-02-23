(rr-testing-challenges)=

# Défis et cas exceptionnels en test

(rr-testing-challenges-stochastic-code)=

## Test du code stochastique

Sometimes code contains an element of randomness, a common example being code that makes use of [Monte Carlo methods](https://en.wikipedia.org/wiki/Monte_Carlo_method).
Tester ce type de code peut être très difficile car s'il est exécuté plusieurs fois, il générera des réponses différentes, qui peuvent tous être "corrects", même s'il ne contient aucun bogue. Il y a deux moyens principaux de s'attaquer au test du code stochastique :

### Utiliser des graines de nombre aléatoire

Random number seeds are a little difficult to explain so here's an example.
Here's a little Python script that prints three random numbers.

```python
import random

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

This script has no bugs but if you run it repeatedly you will get different answers each time.
Now let's set a random number seed.

```python
import random

# Set a random number seed
random.seed(1)

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

Now if you run this script it outputs

```python
0.134364244112
0.847433736937
0.763774618977
```

and every time you run this script you will get the _same_ output, it will print the _same_ three random numbers.
If the random number seed is changed you will get a different three random numbers:

```python
0.956034271889
0.947827487059
0.0565513677268
```

mais de nouveau vous obtiendrez ces mêmes chiffres chaque fois que le script sera exécuté dans le futur.

Random number seeds are a way of making things reliably random. However a risk with tests that depend on random number seeds is they can be brittle.
Say you have a function structured something like this:

```python
def my_function():
  a = calculation_that_uses_two_random_numbers()
  b = calculation_that_uses_five_random_numbers()
  c = a + b
```

If you set the random number seed you will always get the same value of `c`, so it can be tested.
But, say the model is changed and the function that calculates `a` uses a different number of random numbers that it did previously.
Now not only will `a` be different but `b` will be too, because as shown above the random numbers outputted given a random number seed are in a fixed order.
As a result the random numbers produced to calculate `b` will have changed.
Cela peut conduire à un échec des tests quand il n'y a pas de bug.

#### Mesurer la distribution des résultats

Une autre façon de tester du code avec une sortie aléatoire est de l'exécuter plusieurs fois et de tester la distribution des résultats.
Peut-être que le résultat peut fluctuer un peu, mais on s'attend toujours à environ 10 dans le cadre d'une certaine tolérance. Cela peut être testé.
Plus le code est exécuté, plus la moyenne est fiable, et donc le résultat.
Cependant plus vous exécutez un morceau de code plus longtemps il faudra que vos tests soient exécutés, qui peuvent faire que les tests prennent un temps prohibitif pour se conduire si un résultat fiable doit être obtenu.
De plus, il y aura toujours un élément d'incertitude et si les nombres aléatoires tombent d'une certaine manière vous pouvez obtenir un résultat en dehors de la tolérance attendue, même si le code est correct.

Ces deux approches pour tester le code stochastique peuvent encore être très utiles, mais il est important d'être également conscient de leurs inconvénients potentiels.

(rr-testting-challenges-difficult-quatify)=

## Tests difficiles à quantifier

Parfois (particulièrement dans la recherche) les résultats du code sont testés selon qu'ils "regardent" à droite.
Par exemple, disons que nous avons un code de modélisation des niveaux d'eau dans un réservoir au fil du temps.

Le résultat peut ressembler à ceci :

```{figure} ../../../figures/eyeball-test1.*
---
name: eyeball-test1
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level remains fairly constant.
---
```

Sur une journée avec la pluie, cela pourrait ressembler à ceci:

```{figure} ../../../figures/eyeball-test2.*
---
name: eyeball-test2
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level increases steadily between 6am and 9pm before dropping slightly in the last 3-hour period.
---
```

et pendant une journée sèche, cela pourrait ressembler à ceci:

```{figure} ../../../figures/eyeball-test3.*
---
name: eyeball-test3
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level decreases steadily.
---
```

Toutes ces sorties semblent très différentes mais sont valides. Cependant, si un chercheur voit un résultat comme celui-ci :

```{figure} ../../../figures/eyeball-test-error.*
---
name: eyeball-test-error
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where fairly constant levels flank one very high measurement taken at midday.
---
```

Ils pourraient facilement conclure qu'il y a un bug car un lac est peu susceptible de tripler son volume et de le perdre à nouveau en quelques heures. "Eyeballing" tests like these are time-consuming as they must be done by a human. However, the process can be partially or fully automated by creating basic "sanity checks". For example, the water level at one time should be within, say, 10% of the water level at the previous time step. Une autre vérification pourrait être qu'il n'y a pas de valeurs négatives, car un lac ne peut pas être plein -30%. Ce type de tests ne peut pas couvrir toutes les façons dont quelque chose peut être visiblement erroné, mais ils sont beaucoup plus faciles à automatiser et suffisent pour la plupart des cas.

(rr-testing-challenges-non-integer)=

## Tester si les nombres non entiers sont égaux

### Lorsque 0,1 + 0,2 ne correspond pas à 0,3

Il y a une complication avec le test si la réponse que donne un morceau de code est égale à la réponse attendue quand les nombres ne sont pas des entiers. Examinons cet exemple de Python, mais notons que ce problème n'est pas unique à Python.

If we assign 0.1 to `a` and 0.2 to `b` and print their sum, we get 0.3, as expected.

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

If, however, we compare the result of `a` plus `b` to 0.3 we get False.

```python
>>> print(a + b == 0.3)
False
```

If we show the value of `a` plus `b` directly, we can see there is a subtle margin of error.

```python
>>> a + b
0.30000000000000004
```

This is because floating-point numbers are approximations of real numbers. The result of floating-point calculations can depend upon the compiler or interpreter, processor or system architecture and number of CPUs or processes being used. This can present a major obstacle for writing tests.

### Égalité dans un monde à virgule flottante

When comparing floating-point numbers for equality, we have to compare to within a given tolerance, alternatively termed a threshold or delta. Par exemple, nous pourrions considérer que les valeurs calculées et attendues d'un certain nombre sont égales si la valeur absolue de leur différence est dans la valeur absolue de notre tolérance.

Many testing frameworks provide functions for comparing equality of floating-point numbers to within a given tolerance. For example for the framework pytest:

```python
import pytest

a = 0.1
b = 0.2
c = a + b
assert c == pytest.approx(0.3)
```

cela passe, mais si la 0.3 a été changée à 0.4, cela échouera.

Les frameworks de test unitaire pour les autres langages fournissent aussi souvent des fonctions similaires:

- Cunit pour C : CU_ASSERT_DOUBLE_EQUAL(réelle, attendue, granularité)
- CPPUnit pour C++ : CPPUNIT_ASSERT_DOUBLES_EQUAL(attendu, réel, delta)
- googletest pour C++ : ASSERT_NEAR(val1, val2, abs_error)
- FRUIT pour Fortran: subroutine assert_eq_double_in_range_(var1, var2, delta, message)
- JUnit pour Java : org.junit.Assert.assertEquals(double attendu, double réel, double delta)
- testthat pour R:
  - expect_equal(réel, attendu, tolérance=DELTA) - erreur absolue dans DELTA
  - expect_equal(actual, expected, scale=expected, tolerance=DELTA) - relative error within DELTA
- julia:
  - `val1 ≈ val2`
  - `isapprox(val1, val2, atol=abs_delta, rtol=rel_delta)`
  - `Test.jl` with `≈`: `@test val1 ≈ val2 atol=abs_delta rtol=rel_delta`
