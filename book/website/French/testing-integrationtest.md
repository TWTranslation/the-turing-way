(rr-testing-types-integrationtest)=
# Tests d'intégration

Les tests d’intégration sont un niveau de tests logiciels où des unités individuelles sont combinées et testées en groupe. Pendant que les tests unitaires valident la fonctionnalité du code isolément, les tests d'intégration garantissent que les composants coopèrent lorsqu'ils s'interfacent entre eux. Le but de ce niveau de test est de révéler les défauts dans l'interaction entre les unités intégrées.

Par exemple, peut-être une unité qui lit dans certaines données fonctionne et passe ses tests unitaires, et l'unité suivante qui nettoie les données une fois qu'elles ont été lues fonctionne également et passe ses tests. Cependant, disons que la première unité donne les données comme (time_data, temperature_data) mais que la fonction qui nettoie les données attend l'entrée de la forme (temperature_data, time_data). Cela peut évidemment conduire à des bogues. Alors que les unités sont correctes dans une erreur dans leur intégration.

Un exemple de test d'intégration pour ce cas pourrait être de fournir un fichier de données de test, utiliser ces fonctions pour le lire et le nettoyer, et vérifier les données nettoyées résultantes par rapport à ce qui serait attendu. Si un bogue comme celui-ci est présent alors les données nettoyées en sortie ne correspondent pas au résultat attendu. et une erreur serait levée.

Les tests d'intégration sont particulièrement importants dans les projets collaboratifs où différentes personnes travaillent sur différentes parties du code. Si deux personnes différentes complètent des unités distinctes et doivent ensuite s'intégrer, alors les questions d'intégration sont plus susceptibles que ne le comprend ni l'un ni l'autre de l'autre. Un exemple célèbre de ceci est un satellite de plusieurs millions de dollars qui [a planté](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter) car une partie de code a produit des données de distance en pieds, tandis qu'une autre donnée est supposée en mètres. C'est un autre exemple de question d'intégration.

Un sous-type de test d'intégration est le test de l'intégration du système. Ceci teste l'intégration des systèmes, des paquets et des interfaces vers des organisations externes (comme l'échange de données électroniques, Internet). Selon la nature des tests d'intégration d'un système de projet peut être ou non applicable.

## Approches de test d'intégration

Il existe plusieurs approches différentes pour les tests d'intégration. Big Bang est une approche des tests d'intégration où tous ou la plupart des appareils sont combinés et testés en une seule fois. Cette approche est prise lorsque l'équipe de test reçoit l'ensemble du logiciel dans un paquet. Alors, quelle est la différence entre les tests d'intégration Big Bang et les tests de système? Eh bien, le premier teste seulement les interactions entre les unités tandis que le second teste l'ensemble du système.

Top Down est une approche pour les tests d'intégration où les sections de haut niveau du code (qui contiennent elles-mêmes beaucoup d'unités plus petites) sont testées d'abord et les unités de niveau inférieur sont testées étape par étape. Un code peut donc être divisé en les étapes principales A, B et C, et chacune de ces étapes contient des étapes pour les compléter, et ces étapes peuvent avoir des sous-étapes comme :

- A
- A1
  - A.1.1
  - A1.2
- A2
- Os
- B.1
- B.2
  - B.2.1
  - B.2.2
  - B.2.3
- B.3

- C
- C1
  - C.1.1
  - C.1.2
- C2
  - C.2.1
  - C.2.2

Donc, dans l'approche en haut en bas, l'intégration entre les sections au niveau supérieur (A, B et C) sont testés, puis l'intégration entre les sections au niveau suivant (par exemple, A. -> A.2) et ainsi de suite. Tester les unités de niveau supérieur en exécutant tout le code qu'ils contiennent, y compris ceux de niveau inférieur, peut conduire à des tests de niveau supérieur cassés en raison de bugs dans les unités de bas niveau. Ce n'est pas souhaitable, donc pour éviter cela, les sections de niveau inférieur ne devraient pas être exécutées, mais [les souches de test](#Use_test_doubles_stubs_mocking_where_appropriate) doivent être utilisées pour simuler les sorties d'eux.

Bas vers le haut est une approche de test d'intégration où l'intégration entre les sections de niveau inférieur sont testées en premier et en haut de section pas à pas après cela. Une fois de plus, des souches de test devraient être utilisées, dans ce cas, pour simuler les entrées des sections de niveau supérieur.

Sandwich/Hybrid est une approche des tests d'intégration qui est une combinaison d'approches Top Down et Bottom Up.

L'approche que vous devez utiliser dépendra de la nature ou de la structure de votre projet.

## Astuces de test d'intégration

- Assurez-vous que vous avez un document de conception des détails approprié où les interactions entre chaque unité sont clairement définies. Il est difficile ou impossible d'effectuer des tests d'intégration sans ces informations.
- Assurez-vous que chaque unité est testée et corrigez tout bug avant de commencer à tester l'intégration. S'il y a un bogue dans les différentes unités, les tests d'intégration échoueront presque certainement, même s'il n'y a pas d'erreur dans la façon dont ils sont intégrés.
- Utilisez des moquettes/moignons, le cas échéant.
