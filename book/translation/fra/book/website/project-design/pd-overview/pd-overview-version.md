(pd-overview-version)=
# Contrôle de version et documentation

Une fois le projet conçu, il est important de garder une trace de tous les changements. Cela vous fera gagner beaucoup de temps et peut aider les autres à comprendre et à réutiliser votre recherche - vous avez une trace de ce qui a fonctionné le mieux et des informations pour comprendre pourquoi.

(pd-overview-version-experiments)=
## Travail expérimental

Il est nécessaire d'écrire tous les détails de votre travail expérimental. Cela permet au futur lecteur, à un collègue et à votre futur de comprendre et de reproduire tout le travail expérimental lié à votre projet.

Un outil utile pour faire ceci est {ref}`Carnets électroniques de laboratoire<rr-open-notebooks>` (ELN). Les ELN sont une version numérique du bloc-notes en papier, avec l'avantage supplémentaire de la possibilité de recherche, du stockage sécurisé et de l'accès à distance. Ils sont également faciles à partager entre les membres de l’équipe et les collaborateurs.

Il est important de documenter et de partager la méthodologie, l'analyse et les procédures utilisées, ainsi que les informations spécifiques aux données.

(pd-overview-version-comp)=
## Travail informatique

Dans la phase active d'un projet est important pour garder une cohérence dans votre code (lisez ce chapitre sur la qualité du code de {ref}`<rr-code-quality>`), ainsi que la documentation et la création de tests pour cela.

Documenter ton code aidera les autres à comprendre ton travail. Certains outils qui peuvent être utilisés pour documenter votre code plus facilement sont:
- "Docstring" en R ou Python
- Format "Javadoc" en Java
- Le développement intégré de logiciels (RStudio, Eclipse, VS Code) facilite le processus d'écriture de commentaires et la génération de documentation.

La création de tests permet de gagner du temps et de l'argent. En fournissant un moyen de savoir si votre code fonctionne, les erreurs peuvent être facilement corrigées par vous et les autres.

Pour en savoir plus sur les tests de code, allez au chapitre {ref}`de Code Testing<rr-testing>`.

(pd-overview-version-vcs)=
## Contrôle de version

L'enregistrement de toutes les modifications apportées lors de la recherche est un élément essentiel de la recherche reproductible. Cela vous aide ainsi que d'autres à comprendre les décisions prises et à reproduire le travail - vous aurez toutes les informations sur les mesures prises.

Si vous travaillez sur un projet collaboratif, cela aidera également à garder une trace des personnes qui ont effectué chaque changement.

L'avantage supplémentaire est que tout sera bien organisé, avec un accès facile à la version actuelle de votre projet et des façons de rechercher les changements effectués dans le passé.

Certains systèmes pour contrôler les versions sont :
- Git
- Mercurial
- Subversion

Il y a un chapitre complet à propos de {ref}`Système de contrôle des versions<rr-vcs>` dans le Guide pour la recherche reproductible qui peut être utile à ce stade.
