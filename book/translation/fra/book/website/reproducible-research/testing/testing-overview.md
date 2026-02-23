(rr-testing-overview)=

# Aperçu des types de test

Il existe plusieurs types de tests différents qui seront discutés ici.

Premièrement, il y a des tests positifs et des tests négatifs.
Les tests positifs vérifient que quelque chose fonctionne, par exemple en testant qu'une fonction qui multiplie certains nombres ensemble donne la bonne réponse.
Les tests négatifs vérifient que quelque chose génère une erreur quand il le devrait.
Par exemple, rien ne peut aller plus vite que la vitesse de la lumière, afin qu'un code de simulation de la physique plasma puisse contenir un test indiquant qu'une erreur est générée s'il y a des particules plus rapides que cela, comme il indique qu'il y a un problème plus profond dans le code.

En plus de ces deux types de tests, il y a aussi différents niveaux de tests qui testent différents aspects d'un projet.
Ces niveaux sont décrits ci-dessous et des tests positifs et négatifs peuvent être présents à l'un de ces niveaux.
Une suite de tests approfondis contiendra des tests à tous ces niveaux (même si certains niveaux auront besoin de très peu de choses).

(rr-testing-types-of-testing)=

## Types de tests

[](#rr-testing-smoketest): Very brief initial checks that ensures the basic requirements required to run the project hold.
If these fail there is no point proceeding to additional levels of testing until they are fixed.

[](#rr-testing-unittest): A level of the software testing process where individual units of a software are tested. The purpose is to validate that each unit of the software performs as designed.

[](#rr-testing-types-integrationtest): A level of software testing where individual units are combined and tested as a group.
The purpose of this level of testing is to expose faults in the interaction between integrated units.

[](#rr-testing-systemtest): A level of the software testing process where a complete, integrated system is tested.
The purpose of this test is to evaluate whether the system as a whole gives the correct outputs for given inputs.

[](#rr-testing-acceptance-regression): A level of the software testing process where a system is tested for acceptability.
The purpose of this test is to evaluate the system's compliance with the project requirements and assess whether it is acceptable for the purpose.

Here's an analogy: during the process of manufacturing a ballpoint pen, the cap, the body, the tail, the ink cartridge and the ballpoint are produced separately and unit tested separately.
When two or more units are ready, they are assembled and integration testing is performed, for example a test to check the cap fits on the body.
When the complete pen is integrated, system testing is performed to check it can be used to write like any pen should.
Acceptance testing could be a check to ensure the pen is the colour the customer ordered.

There is also another kind of testing called regression testing.
Regression testing is a type of testing that can be performed at any of the four main levels and compares the results of tests before and after a change is made to the code, and gives an error if these are different.

These different types of tests are discussed in more detail in the next subchapters.
