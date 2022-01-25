<a name="General_guidance_and_good_practice_for_testing"></a>

# Orientations générales et bonnes pratiques pour les tests

Il y a plusieurs {ref}`types différents`<rr-testing-types-of-testing> de tests qui ont chacun les meilleures pratiques spécifiques à eux. Néanmoins, il existe des orientations générales qui s'appliquent à toutes ces questions, qui seront exposées ici.

(rr-testing-write-tests)=
## Ecrire des tests - N'importe quel test !

Lancer le processus d'écriture des tests peut être accablant, surtout si vous avez une grande base de code. De plus, comme on l’a mentionné, il existe de nombreux types de tests et la mise en œuvre de tous ces tests peut sembler une montagne impossible à escalader. C'est pourquoi le seul élément d'orientation le plus important de ce chapitre est le suivant : **écrire des tests**. Tester une petite chose dans un code de plusieurs milliers de lignes est infiniment mieux que de tester rien dans un code de plusieurs milliers de lignes. Vous ne pourrez peut-être pas tout faire, mais faire *quelque chose* est précieux.

Faites des améliorations là où vous le pouvez, et faites de votre mieux pour inclure les tests avec le nouveau code que vous écrivez même s'il n'est pas possible d'écrire des tests pour tout le code déjà écrit.

## Exécuter les tests

Le deuxième conseil le plus important dans ce chapitre : exécuter les tests. Avoir une belle et parfaite suite de tests n'est pas utile si vous l'exécutez rarement. Laisser de longs écarts entre les épreuves de test rend plus difficile le suivi de ce qui s'est mal passé lorsqu'un test échoue parce que, une grande partie du code aura changé. En outre, si cela a été des semaines ou des mois depuis que les tests ont été exécutés et qu'ils ont échoué, il est difficile ou impossible de savoir quels résultats ont été obtenus entre-temps sont toujours valables, et qui doivent être jetés car ils auraient pu être touchés par le bug.

Il est préférable d'automatiser vos tests autant que possible. Si chaque test doit être exécuté individuellement, alors ce processus ennuyeux et pénible sera probablement négligé. Cela peut être fait en utilisant un framework de test ([discuté plus tard](#use-a-testing-framework)). [Jenkins](https://jenkins.io) est un autre bon outil pour cela. Idéalement, réglez vos tests pour qu'ils fonctionnent à intervalles réguliers, peut-être tous les soirs.

Envisagez de mettre en place une intégration continue (discutée dans le chapitre d'intégration continue) de votre projet. Cela exécutera automatiquement vos tests chaque fois que vous apportez une modification à votre code et, Selon le logiciel d'intégration continue que vous utilisez, vous avertirez si l'un des tests échoue.

## Considérez combien de temps vos tests doivent être exécutés

Certains tests, comme {ref}`rr-testing-unittest` ne testent qu'un petit bout de code et sont donc généralement très rapides. Cependant d'autres types de tests, tels que {ref}`rr-testing-systemtest` qui testent tout le code de bout en bout peut prendre beaucoup de temps à exécuter selon le code. En tant que tel, il peut être obstructif d'exécuter toute la suite de tests après chaque petit peu de travail. Dans ce cas, il vaut mieux faire des tests de poids plus légers tels que des tests unitaires fréquemment, et des tests plus longs seulement une fois par jour du jour au lendemain. Il est également bon de mettre à l'échelle le nombre de chaque type de tests que vous avez en rapport avec le temps qu'ils prennent à exécuter. Vous devriez avoir beaucoup de tests unitaires (ou d'autres types de tests qui sont rapides) mais beaucoup moins de tests qui prennent beaucoup de temps à exécuter.

## Documentez les tests et comment les exécuter

Il est important de fournir une documentation qui décrit comment exécuter les tests, les deux pour vous-même si vous revenez à un projet dans le futur, et pour toute autre personne désireuse de construire ou de reproduire votre travail. Cette documentation devrait également couvrir des sujets tels que

- Toutes les ressources, telles que les fichiers du jeu de données de test qui sont nécessaires
- Tous les réglages de configuration nécessaires pour exécuter les tests
- Quels logiciels (tels que [les frameworks de test](#use-a-testing-framework)) doivent être installés

Idéalement, vous devriez fournir des scripts pour configurer et configurer toutes les ressources nécessaires.

## Tester les cas réalistes

Rendre les cas que vous testez aussi réalistes que possible. Si par exemple, vous avez des données factices pour exécuter des tests sur vous devez vous assurer que les données sont aussi similaires que possible aux données actuelles. Si vos données réelles sont salissantes avec beaucoup de valeurs nulles, il en va de même pour votre jeu de données de test.

## Utiliser un framework de test

Il y a des outils disponibles pour faciliter l'écriture et l'exécution des tests, connus sous le nom de frameworks de test. Trouvez-en un que vous aimez, apprenez-en plus sur les fonctionnalités qu'il propose, et faites-en usage. Les frameworks de test communs (et les langages auxquels ils s'appliquent) incluent :

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
Bien que les C++ et C modernes soient encore pour la plupart compatibles, ils ne sont pas complètement et utilisent des framework de test de façon interchangeable peut ne pas toujours fonctionner.
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

## Visez à avoir une bonne couverture de code

La couverture du code est une mesure de la quantité de votre code "couvert" par les tests. Plus précisément, c'est une mesure de la part de votre code qui est exécutée lorsque des tests sont effectués. Ainsi, par exemple, si vous avez une instruction `if` mais seulement tester des choses où l'instruction if évalue à "Faux" alors aucun du code dans le bloc if ne sera exécuté. En conséquence, votre couverture de code serait < 100%. La couverture de code n'inclut pas de documentation comme des commentaires, donc ajouter plus de documentation n'affecte pas vos pourcentages.

Comme on l'a dit, tous les tests sont une amélioration par rapport à aucun test. Néanmoins, il est bon d'aspirer au moins à ce que votre couverture de code soit aussi élevée que possible.

La plupart des langages de programmation ont des outils soit intégrés, soit importés, soit dans le cadre des frameworks de test, qui mesurent automatiquement la couverture de code. Il y a un joli petit bot [](https://codecov.io/) pour mesurer la couverture de code également disponible.

**Pitfall : L'illusion de bonne couverture.** Dans certains cas, le même code peut et doit probablement être testé de plusieurs manières. Par exemple, la couverture peut rapidement augmenter sur le code qui applique des tests de « vérification de santé » à sa sortie (voir aussi {ref}<rr-testing-challenges-difficult-quatify>), mais cela n'exclut pas le risque que le code produise la réponse largement correcte pour les mauvaises raisons. En général, les meilleurs tests sont ceux qui isolent les plus petits plutôt que les plus gros morceaux de code cohérent, et ainsi choisir les étapes individuelles de la logique. Essaie d'être guidée en pensant aux choses possibles qui pourraient arriver à un morceau de code particulier dans l'exécution de l'ensemble et de tester ces cas individuels. Souvent, cela se traduira par le même code testé plusieurs fois - c'est une bonne chose !

## Utiliser les doubles/moquettes/doublures de test le cas échéant

Si un test échoue, il devrait être construit de telle sorte qu'il soit aussi facile de tracer la source de l'échec que possible. Cela devient problématique si un morceau de code que vous voulez tester dépend inévitablement d'autres choses. Par exemple, si un test pour un morceau de code qui interagit avec le web échoue, qui peut être parce que le code a un bogue *ou* parce qu'il y a un problème avec la connexion Internet. De même, si un test pour un morceau de code qui utilise un objet échoue, c'est peut-être parce qu'il y a un bogue dans le code à tester, ou un problème avec l'objet (qui devrait être testé par ses propres tests). Ces dépendances devraient être éliminées des tests, si possible. Cela peut être fait en utilisant des remplacements de test (tests doubles) à la place des dépendances réelles. Les doubles de test peuvent être classés comme suit :

- Un objet factice est passé mais jamais utilisé, ce qui signifie que ses méthodes ne sont jamais appelées. Un tel objet peut par exemple être utilisé pour remplir la liste de paramètres d'une méthode.
- Les faux objets ont des implémentations fonctionnelles, mais sont généralement simplifiés. Par exemple, ils utilisent une base de données en mémoire et non une base de données réelle.
- Un conteneur est une implémentation partielle d'une interface ou d'une classe dans le but d'utiliser une instance de ce conteneur pendant le test. Les ébauches ne répondent généralement à rien en dehors de ce qui est programmé pour le test. Les ébauches peuvent également enregistrer des informations sur les appels.
- Un objet bouchon est une implémentation factice pour une interface ou une classe dans laquelle vous définissez la sortie de certains appels de méthodes. Les objets fictifs sont configurés pour effectuer un certain comportement lors d'un test. Ils enregistrent généralement l'interaction avec le système et les tests peuvent valider cela.

Les doublons de test peuvent être passés à d'autres objets qui sont testés.

Vous pouvez créer des objets fantaisie manuellement (via code) ou utiliser un framework fictif pour simuler ces classes. Les frameworks fictifs vous permettent de créer des objets fictifs à l'exécution, et de définir leur comportement. L'exemple classique d'un objet fantaisie est un fournisseur de données. En production on utilise une implémentation pour se connecter à la source de données réelle. Mais pour tester un objet fantaisie la source de données et s'assure que les conditions de test sont toujours les mêmes.
