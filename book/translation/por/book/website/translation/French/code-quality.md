(qualificar código-de-rr)=
# Código qualificado

| Pré-requis                                                                                        | Importância |
| -------------------------------------------------------------------------------------------------- | ----------- |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Utilitário  |

## Summary

Il y a plusieurs façons d'améliorer la qualité des logiciels qui nécessitent relativement peu d'efforts. En suivant un style de codage, le code sera plus facile pour vous et les autres à comprendre et il contiendra donc moins de bogues. Des outils pour l'analyse statique de code peuvent rapporter des bogues ainsi que des problèmes de style sans même exécuter le code.

## Analise a estatica de código

L'analyse de code statique est une méthode qui examine le code et détecte les vulnérabilités logicielles avant l'exécution de votre code ou que le projet soit construit et déployé. Cette analyse est capable d'identifier les problèmes de qualité, y compris les faiblesses de sécurité et les erreurs. En plus de trouver des bogues, beaucoup de ces outils peuvent également aider à maintenir un style de codage cohérent.

(rr-code-qualite├-avantages)=
### Vantagens de l'Análise de código estatica

- Écrire du code de haute qualité : La détection précoce d'éventuelles erreurs de programmation aide les développeurs à savoir où ils se sont mal passés.

- Atteindre la conformité réglementaire : La mise en conformité des logiciels est cruciale pour la stabilité et la sécurité des produits. Grâce à cela, les développeurs peuvent tester complètement leur code dans un environnement non exécuté, en veillant à ce que toutes les normes de code soient respectées et à ce que la sécurité de l'entreprise soit atteinte.

- Accélérer les cycles de vie du développement logiciel : L'analyse de code statique garantit un code de haute qualité atteignant les testeurs en moins de temps. Cela signifie que même les testeurs prennent beaucoup moins de temps pour tester le produit, ce qui accélère le cycle de vie du développement logiciel.

Certains des linters `les plus utilisés` sont mentionnés dans le tableau ci-dessous :

| Língua        | Outil d'analise de código estatique                                                                                                |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| C/C++         | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                                         |
| Python        | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                                        |
| Javascript    | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                                        |
| Java          | [Checkstyle](https://checkstyle.sourceforge.io/), [Encontrar Bugs](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl          | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                                      |
| R             | [lintr](https://github.com/jimhester/lintr)                                                                                        |
| Obus / Frappe | [Controlar sua carapaça](https://www.shellcheck.net)                                                                               |
