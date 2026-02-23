(pd-overview-version)=

# Contrôle de version et documentation

Once the project is designed, it is important to keep track of all the changes.
Cela vous fera gagner beaucoup de temps et peut aider les autres à comprendre et à réutiliser votre recherche - vous avez une trace de ce qui a fonctionné le mieux et des informations pour comprendre pourquoi.

(pd-overview-version-experiments)=

## Travail expérimental

Il est nécessaire d'écrire tous les détails de votre travail expérimental.
This allows future readers, a colleague and your future self to understand and reproduce all the experimental work related to your project.

A useful tool to do this is {ref}`Electronic Lab Notebooks<rr-open-notebooks>` (ELNs).
ELNs are digital versions of paper notebooks, with the added advantage of searchability, secure storage and remote access.
Ils sont également faciles à partager entre les membres de l’équipe et les collaborateurs.

Il est important de documenter et de partager la méthodologie, l'analyse et les procédures utilisées, ainsi que les informations spécifiques aux données.

(pd-overview-version-comp)=

## Travail informatique

In the active phase of a project it is important to keep consistency in your code (read this chapter on {ref}`code quality<rr-code-quality>`), as well as documenting and creating tests for it.

Documenter ton code aidera les autres à comprendre ton travail.
Certains outils qui peuvent être utilisés pour documenter votre code plus facilement sont:

- "Docstring" en R ou Python
- Format "Javadoc" en Java
- Le développement intégré de logiciels (RStudio, Eclipse, VS Code) facilite le processus d'écriture de commentaires et la génération de documentation.

La création de tests permet de gagner du temps et de l'argent.
En fournissant un moyen de savoir si votre code fonctionne, les erreurs peuvent être facilement corrigées par vous et les autres.

To read more about code testing go to the {ref}`Code Testing chapter<rr-testing>`.

(pd-overview-version-vcs)=

## Contrôle de version

L'enregistrement de toutes les modifications apportées lors de la recherche est un élément essentiel de la recherche reproductible.
Cela vous aide ainsi que d'autres à comprendre les décisions prises et à reproduire le travail - vous aurez toutes les informations sur les mesures prises.

Si vous travaillez sur un projet collaboratif, cela aidera également à garder une trace des personnes qui ont effectué chaque changement.

L'avantage supplémentaire est que tout sera bien organisé, avec un accès facile à la version actuelle de votre projet et des façons de rechercher les changements effectués dans le passé.

Certains systèmes pour contrôler les versions sont :

- Git
- Mercurial
- Subversion

There is an extensive chapter about {ref}`Version Control System<rr-vcs>` in the Guide for Reproducible Research that can be helpful at this stage.
