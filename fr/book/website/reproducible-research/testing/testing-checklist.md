(testing-checklist)=

# Liste de contrôle des tests de code

Cette liste de contrôle contient beaucoup d'éléments.
As [mentioned before](#rr-testing-write-tests), it is far better to do some of the items than none of them.
Ne soyez pas découragé si cette liste de tâches semble insurmontable.

(testing-checklist:writing-tests)=

## Tests d'écriture

- Écrivez quelques tests de fumée.
- Écrivez des tests unitaires pour toutes vos unités de code.
- Écrire des tests d'intégration pour vérifier l'intégration entre unités.
- Écrire quelques tests système. Prioriser les chemins communs et importants dans le cadre du programme.
- Écrire les tests de régression. Les tests de régression peuvent exister à n'importe quel niveau de test.
- Le cas échéant pour votre projet écrire des tests d'acceptation.
- Ajouter des tests d'exécution à votre projet.

(testing-checklist:good-practice-checks)=

## Bonnes vérifications de pratique

- Document the tests and how to run them.
  - Write scripts to set up and configure any resources that are needed to run the tests.
- Pick and make use of a testing framework.
- Run the tests regularly.
  - Automate the process of running tests. Consider making use of continuous integration (see continuous integration chapter) to do this.
- Check the code coverage of your tests and try to improve it.
- Engage in code review with a partner.
