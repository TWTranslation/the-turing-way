(r-test-Overview)=
# Aperc<unk> u des types de test

Il existe plusieurs types de tests différents qui seront discutés ici.

Premièrement, il y a des tests positifs et des tests négatifs. Les tests positifs vérifient que quelque chose fonctionne, par exemple en testant qu'une fonction qui multiplie certains nombres ensemble donne la bonne réponse. Les tests négatifs vérifient que quelque chose génère une erreur quand il le devrait. Par exemple, rien ne peut aller plus vite que la vitesse de la lumière, afin qu'un code de simulation de la physique plasma puisse contenir un test indiquant qu'une erreur est générée s'il y a des particules plus rapides que cela, comme il indique qu'il y a un problème plus profond dans le code.

En plus de ces deux types de tests, il y a aussi différents niveaux de tests qui testent différents aspects d'un projet. Ces niveaux sont décrits ci-dessous et des tests positifs et négatifs peuvent être présents à l'un de ces niveaux. Une suite de tests approfondis contiendra des tests à tous ces niveaux (même si certains niveaux auront besoin de très peu de choses).

(r-test-Types) =
## أنواع الاختبارات

[Essais de fumée](#Smoke_testing): Très brèves vérifications initiales qui garantissent les exigences de base requises pour exécuter le projet en attente. En cas d'échec, il ne sert à rien de passer à des niveaux de test supplémentaires jusqu'à ce qu'ils soient corrigés.

[Tests unitaires](#Unit_tests): Un niveau du processus de test logiciel où des unités individuelles d'un logiciel sont testées. Le but est de valider que chaque unité du logiciel effectue comme prévu.

[Essais d'intégration](#Integration_testing): Un niveau de test logiciel où les unités individuelles sont combinées et testées en groupe. Le but de ce niveau de test est de révéler les défauts dans l'interaction entre les unités intégrées.

[Tests système](#System_tests): Un niveau du processus de test logiciel où un système complet et intégré est testé. Le but de ce test est d'évaluer si le système dans son ensemble donne les bons résultats pour les entrées données.

[Test d'acceptation](#Acceptance_testing): Un niveau du processus de test logiciel où un système est testé pour être acceptable. Le but de ce test est d'évaluer la conformité du système avec les exigences du projet et d'évaluer s'il est acceptable à cette fin.

Voici une analogie : pendant le processus de fabrication d'un stylo à bille, le capuchon, le corps, la queue, la cartouche d'encre et la bille sont produites séparément et testées séparément. Quand deux ou plusieurs unités sont prêtes, elles sont assemblées et les tests d'intégration sont effectués, par exemple un test pour vérifier que le capuchon s'adapte sur le corps. Lorsque le stylo complet est intégré, des tests système sont effectués pour vérifier qu'il peut être utilisé pour écrire comme n'importe quel stylo. Le test d'acceptation peut être un contrôle pour s'assurer que le stylo est la couleur que le client a commandée.

Il y a aussi un autre type de tests appelés tests de régression. Le test de régression est un type de test qui peut être effectué à l'un des quatre niveaux principaux et compare les résultats des tests avant et après une modification du code, et donne une erreur si elles sont différentes.

Ces différents types de tests sont discutés plus en détail dans les sous-chapitres suivants.
