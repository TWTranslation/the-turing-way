(rr-reviewing-motivation)=
# Importance et avantages personnels

*Comment cela vous aidera / pourquoi cela est utile*

Comme pour le [test](#Testing), un objectif clé de la revue de code est de supprimer les erreurs et les mauvaises pratiques des modifications apportées à un projet logiciel avant que ces modifications n'entrent dans la base de code principale. Cependant, il présente également un certain nombre d'autres avantages directs et indirects pour les projets. Celles-ci sont discutées ci-dessous.

Les revues de code sont une méthode efficace pour améliorer la qualité des logiciels. McConnell (2004) suggère que le test unitaire trouve environ 25% des défauts, la fonction testant 35%, le test d'intégration 45%, et la revue de code 55-60%. Tandis que signifie qu'aucune de ces méthodes n'est suffisamment bonne par elles-mêmes, et qu'ils doivent être combinés , la revue de code est clairement un outil essentiel dans ce domaine.

## Table des matières

- [Attrape les bugs et les erreurs élémentaires](#catching-bugs-and-elementary-errors)
- [Améliorations aux tests](#improvements-to-testing)
- [Documentation](#documentation)
- [Lisibilité](#readability)
- [Style de mise en application](#style-enforcement)
- [Connaissance et cohésion du groupe](#group-knowledge-and-cohesion)

(rr-reviewing-motivation-bugs)=
## Attrape les bugs et les erreurs élémentaires

Un simple objectif du processus de révision est de détecter les bogues et les erreurs élémentaires dans les changements proposés avant de les intégrer dans le code du tronc. De cette façon, l'examen du code partage les aspects avec les tests. Cependant, un programme de test solide devrait réduire l'importance de l'examen du code pour identifier ce type d'erreurs simples, car les tests devraient les attraper avant que le code ne le fasse pour examiner l'état. Donc, en principe, cette fonction de révision du code devrait être limitée aux changements triviaux comme les fautes de documentation. Dans la pratique, cependant, l'examen du code agit comme une seconde ligne importante de défense contre toutes sortes de bogues et d'erreurs.

(rr-reviewing-motivation-améliorations)=
## Améliorations aux tests

Comme il a été mentionné ci-dessus, un examen devrait, et le fait souvent, attraper des bogues réels dans les changements de code proposés. Cela montre bien sûr que les changements proposés n'ont pas été suffisamment testés en premier lieu. Un des principaux objectifs de l'examen du code est de mettre en évidence les endroits dans le code où les processus de test existants ou nouvellement développés sont inadéquats. De cette façon, la revue de code aide à assurer la santé future de la base de code en fournissant une seconde perspective sur les types de tests nécessaires - pas seulement maintenant, mais aussi dans les scénarios hypothétiques qui pourraient survenir dans le futur à mesure que le code évolue.

(rr-reviewing-motivation-documentation)=
## Documentation

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
Une documentation détaillée<!--reference va ici une fois que la section existe-->est un composant clé de la reproductibilité et des logiciels durables plus généralement. L'examen du code offre une autre paire d'yeux pour déterminer si la documentation fournie avec les modifications proposées au code est adaptée à l'objectif. Cela est doublement précieux, comme l'examinateur regardant en dehors du processus de développement peut avoir une perspective plus claire que le codeur pour savoir si la nouvelle documentation offre suffisamment d'informations pour qu'un utilisateur arrive au code pour la première fois.

Ce type de rétroaction sur la documentation s'applique également à la documentation destinée aux utilisateurs et aux commentaires en ligne.

(rr-reviewing-motivation-readability)=
## Lisibilité

En ce qui concerne la documentation, l'examen du code peut également vous aider à vous assurer que le code est lisible et facile à comprendre. Avoir une deuxième paire d'yeux peut aider à repérer les zones où le code peut être difficile à suivre. Plus votre code est lisible, plus il sera facile pour les autres développeurs de reproduire votre code à leurs propres fins.

(rr-reviewing-motivation-enforcement)=
## Style de mise en application

De nombreux projets appliquent certaines directives de style de code de {ref}`<rr-code-quality>`, soient les normes largement adoptées (par exemple, [PEP8](https://www.python.org/dev/peps/pep-0008/), le [guide de style Google C++](https://google.github.io/styleguide/cppguide.html)) ou d'autres conventions spécifiques au projet. [Les services automatisés](../../code_quality/code_quality#online-services-providing-software-quality-checks) fournissent un moyen pratique de mettre en œuvre un style de codage et de commencer la discussion sur la qualité du code. L’examen du code permet de s’assurer que tous les changements proposés répondent aux normes minimales requises pour le projet.

(rr-reviewing-motivation-knowledge)=
## Connaissance et cohésion du groupe

## Application du style

De nombreux projets appliquent certaines [directives de style de code](../../code_quality/code_quality#coding-style), qu'elles soient des normes largement adoptées (par exemple, [PEP8](https://www.python.org/dev/peps/pep-0008/), le guide de style [Google C++](https://google.github.io/styleguide/cppguide.html)) ou plus de conventions spécifiques au projet. [Les services automatisés](../../code_quality/code_quality#online-services-providing-software-quality-checks) fournissent un moyen pratique de mettre en œuvre un style de codage et de commencer la discussion sur la qualité du code. L’examen du code permet de s’assurer que tous les changements proposés répondent aux normes minimales requises pour le projet.


## Connaissance et cohésion du groupe

Les pratiques d'examen du code offrent des avantages significatifs qui vont au-delà de la simple défense de la santé du code tronc d'un projet lorsque des changements sont proposés. L'examen par les pairs crée un échange bidirectionnel d'informations à travers un réseau entre tous les membres d'une équipe. Ceci assure un transfert efficace et organique des meilleures pratiques.

Les revues menées dans le bon esprit (voir en particulier [ici](#Be_nice)) ont également un objectif important en réunissant les membres de l'équipe et en créant une cohésion de groupe. En particulier, de bons examens par les membres de l'équipe de base du travail des nouveaux arrivants à un projet peuvent aider à faire en sorte que ces nouveaux arrivants se sentent accueillis et valorisés, et encourager leur participation continue.
