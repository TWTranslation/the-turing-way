(rr-testing-guidance)=

# Orientations générales et bonnes pratiques pour les tests

There are several different kinds of testing which each have best practice specific to them (see {ref}`rr-testing-types-of-testing`).
Nevertheless, there is some general guidance that applies to all of them, which will be outlined here.

(rr-testing-write-tests)=

## Ecrire des tests - N'importe quel test !

Starting the process of writing tests can be overwhelming, especially if you have a large code base. Further to that, as mentioned, there are many kinds of tests, and implementing all of them can seem like an impossible mountain to climb.
That is why the single most important piece of guidance in this chapter is as follows: **write some tests**.
Testing one tiny thing in a code that's thousands of lines long is infinitely better than testing nothing in a code that's thousands of lines long.
You may not be able to do everything, but doing _something_ is valuable.

Make improvements where you can, and do your best to include tests with new code you write even if it's not feasible to write tests for all the code that's already written.

## Exécuter les tests

The second most important piece of advice in this chapter: run the tests.
Having a beautiful, perfect test suite is no use if you rarely run it.
Leaving long gaps between test runs makes it more difficult to track down what has gone wrong when a test fails because, a lot of the code will have changed.
Also, if it has been weeks or months since tests have been run and they fail, it is difficult or impossible to know which results that have been obtained in the mean time are still valid, and which have to be thrown away as they could have been impacted by the bug.

It is best to automate your testing as far as possible.
If each test needs to be run individually then that boring painstaking process is likely to get neglected.
This can be done by making use of a testing framework ([discussed later](#rr-testing-use-a-testing-framework)).
[Jenkins](https://jenkins.io) is another good tool for this. Ideally set your tests up to run at regular intervals, possibly every night.

Consider setting up continuous integration (discussed in the continuous integration chapter) on your project. This will automatically run your tests each time you make a change to your code and, depending on the continuous integration software you use, will notify you if any of the tests fail.

## Considérez combien de temps vos tests doivent être exécutés

Some tests, like {ref}`rr-testing-unittest` only test a small piece of code and so typically are very fast.
However other kinds of tests, such as {ref}`rr-testing-systemtest` which test the entire code from end to end, may take a long time to run depending on the code.
As such it can be obstructive to run the entire test suite after each little bit of work.
In that case it is better to run lighter weight tests such as unit tests frequently, and longer tests only once per day overnight. It is also good to scale the number of each kind of tests you have in relation to how long they take to run.
You should have a lot of unit tests (or other types of tests that are fast) but much fewer tests which take a long time to run.

## Documentez les tests et comment les exécuter

It is important to provide documentation that describes how to run the tests, both for yourself in case you come back to a project in the future, and for anyone else that may wish to build upon or reproduce your work.
This documentation should also cover subjects such as

- Toutes les ressources, telles que les fichiers du jeu de données de test qui sont nécessaires
- Tous les réglages de configuration nécessaires pour exécuter les tests
- What software (such as [testing frameworks](#rr-testing-use-a-testing-framework)) need to be installed

Ideally, you would provide scripts to set up and configure any resources that are needed.

## Tester les cas réalistes

Make the cases you test as realistic as possible.
If for example, you have dummy data to run tests on you should make sure that data is as similar as possible to the actual data.
If your actual data is messy with a lot of null values, so should your test dataset be.

(rr-testing-use-a-testing-framework)=

## Utiliser un framework de test

There are tools available to make writing and running tests easier, these are known as testing frameworks.
Find one you like, learn about the features it offers, and make use of them. Common testing frameworks (and the languages they apply to) include:

- agnostic de la langue
  - CTest, test runner pour les exécutables, bash scripts, et plus encore. Idéal pour le durcissement du code
- C++
  - Attraper
  - Test Cppp
  - Boost::Test
  - test google
- C
  - tous les frameworks C++
  - Contrôler
  - CUnit

```{note}
While modern C++ and C are still mostly compatible, they're not completely and using test framework interchangeably may not always work.
```

- Python
  - pytest (recommandé)
  - le test unitaire est fourni avec la bibliothèque Python standard
- R tests unitaires
  - testque
  - tinytest
  - svUnit (fonctionne avec l'interface graphique SciViews)
- Fortran unit-tests:
  - funit
  - pfunit (fonctionne avec MPI)
- julia
  - Test.jl (stdlib)
  - ReTest.jl

## Visez à avoir une bonne couverture de code

Code coverage is a measure of how much of your code is "covered" by tests.
More precisely it a measure of how much of your code is run when tests are conducted.
So for example, if you have an `if` statement but only test things where that if statement evaluates to "False" then none of the code in the if block will be run.
As a result your code coverage would be < 100%.
Code coverage doesn't include documentation like comments, so adding more documentation doesn't affect your percentages.

As discussed any tests are an improvement over no tests.
Nevertheless it is good to at least aspire to having your code coverage as high as feasible.

Most programming languages have tools either built into them, or that can be imported, or as part of testing frameworks, which automatically measure code coverage.
There's a nice little [bot](https://codecov.io/) for measuring code coverage available too.

**Pitfall: The illusion of good coverage.** In some instances, the same code can and probably should be tested in multiple ways.
For example, coverage can quickly increase on code that applies "sanity check" tests to its output (see also {ref}<rr-testing-challenges-difficult-quatify>), but this doesn't preclude the risk that the code is producing the broadly right answer for the wrong reasons.
In general, the best tests are those that isolate the smaller rather than larger chunks of coherent code, and so pick out individual steps of logic.
Try to be guided by thinking about the possible things that might happen to a particular chunk of code in the execution of the whole, and test these individual cases.
Often, this will result in the same code being tested multiple times - this is a good thing!

(rr-testing-guidance-mocking)=

## Utiliser les doubles/moquettes/doublures de test le cas échéant

If a test fails it should be constructed such that it is as easy to trace the source of the failure as possible.
This becomes problematic if a piece of code you want to test unavoidably depends on other things.
For example if a test for a piece of code that interacts with the web fails, that could be because the code has a bug _or_ because there is a problem with the internet connection.
Similarly if a test for a piece of code that uses an object fails it could be because there is a bug in the code being tested, or a problem with the object (which should be tested by its own, separate tests).
These dependencies should be eliminated from tests, if possible.
This can be done by using test replacements (test doubles) in the place of the real dependencies.
Test doubles can be classified as follows:

- Un objet factice est passé mais jamais utilisé, ce qui signifie que ses méthodes ne sont jamais appelées.
  Un tel objet peut par exemple être utilisé pour remplir la liste de paramètres d'une méthode.
- Les faux objets ont des implémentations fonctionnelles, mais sont généralement simplifiés.
  Par exemple, ils utilisent une base de données en mémoire et non une base de données réelle.
- Un conteneur est une implémentation partielle d'une interface ou d'une classe dans le but d'utiliser une instance de ce conteneur pendant le test.
  Les ébauches ne répondent généralement à rien en dehors de ce qui est programmé pour le test.
  Les ébauches peuvent également enregistrer des informations sur les appels.
- Un objet bouchon est une implémentation factice pour une interface ou une classe dans laquelle vous définissez la sortie de certains appels de méthodes.
  Les objets fictifs sont configurés pour effectuer un certain comportement lors d'un test.
  Ils enregistrent généralement l'interaction avec le système et les tests peuvent valider cela.

Test doubles can be passed to other objects which are tested.

You can create mock objects manually (via code) or use a mock framework to simulate these classes. Mock frameworks allow you to create mock objects at runtime and define their behaviour. The classical example for a mock object is a data provider.
In production an implementation to connect to the real data source is used.
But for testing a mock object simulates the data source and ensures that the test conditions are always the same.
