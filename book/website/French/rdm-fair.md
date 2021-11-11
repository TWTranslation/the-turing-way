(rr-rdm-fair)=
# Les principes de la FAIR

Les principes directeurs FAIR pour la gestion des données scientifiques et la gérance {cite:ps}`Wilkinson2016fair` ont été développés comme lignes directrices pour améliorer l'indability **F** **A**ccessibilité, **I**nteroperability and **R**eusability of digital assets ; qui soutiennent la reproductibilité de la recherche. Les principes FAIR jouent un rôle important dans la mise à disposition de vos données à des fins de réutilisation.

Il est beaucoup plus facile de faire des FAIR de données si vous prévoyez de le faire dès le début de votre projet de recherche. Vous pouvez planifier cela dans votre plan de gestion des données (DMP) (voir points 4 et 5 du {ref}`Plan de gestion des données<rr-rdm-dmp>` chapitre).

Même si les principes FAIR ont été définis pour permettre aux machines de trouver et d'utiliser des objets numériques automatiquement, ils améliorent également la réutilisation des données par les humains. La capacité des systèmes informatiques à trouver, accéder, interopérer et réutiliser des données, sans aucune intervention humaine ou minimale, est essentielle dans l'ère actuelle fondée sur les données. où les humains dépendent de plus en plus du support informatique pour traiter les données en raison de l'augmentation du volume [, vitesse et variété](https://www.zdnet.com/article/volume-velocity-and-variety-understanding-the-three-vs-of-big-data/).

Ce chapitre donne une vue abstraite et large de ce que sont les principes FAIR. Comment mettre les principes FAIR en pratique est discuté dans d'autres sous-chapitres ( {ref}`Organisation des données dans les feuilles de calcul<rr-rdm-fair>`, {ref}`Documentation et métadonnées<rr-rdm-metadata>` et {ref}`Données de partage et d'archivage<rr-rdm-sharing>`). Vous pouvez également utiliser le [Wellcome Getting Started Guide](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) ou le site web [How To FAIR](https://howtofair.dk/) pour en savoir plus sur les principes FAIR et comment commencer.

```{figure} ../../figures/fair-principles.jpg
---
nom: principes justes
alt : Illustration des principes FAIR pour montrer la définition de Findable, Accessible, Interopérable et Réutilisable.
---
_The Turing Way_ project illustration by Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-rdm-fair-theory)=
## Théorie

En bref, les données FAIR doivent être :

**Introuvable :** La première étape en (re)utilisant les données est de les trouver ! Les métadonnées descriptives (informations sur les données telles que les mots clés) sont essentielles.

**Accessible :** Une fois que l'utilisateur a trouvé les données et le logiciel il a besoin de savoir comment y accéder. Les données pourraient être ouvertement disponibles, mais il est également possible que des procédures d'authentification et d'autorisation soient nécessaires.

**Interopérable :** Les données doivent être intégrées à d'autres données et interagissent avec des applications ou des flux de travail.

**Réutilisable :** Les données doivent être bien décrites pour qu'elles puissent être utilisées, combinées et étendues dans différents paramètres.

Vous pouvez trouver un [aperçu plus détaillé des principes FAIR par GO FAIR](https://www.go-fair.org/fair-principles) de ce que recommandent les principes FAIR. Vous pouvez également lire [un conte féroce](https://doi.org/10.5281/zenodo.2248200) pour une explication compréhensible de chaque principe.

Rendre les données "FAIR" n'est pas la même chose que le rendre "ouvert". Accessible signifie qu'il y a une procédure en place pour accéder aux données. Les données doivent être aussi ouvertes que possible et aussi fermées que nécessaire.

Il est également important de dire que les principes FAIR sont ambitieux: ils ne définissent pas strictement comment atteindre un état de FAIR, mais décrivez plutôt un continuum de fonctionnalités, d'attributs et de comportements qui rapprocheront une ressource numérique de cet objectif.

Les principes FAIR sont également appliqués aux logiciels (voir {cite:ps}`Lamprecht2020FAIRsoftware`et {cite:ps}`Hasselbring2020FAIRsoftware`).


(rr-rdm-fair-community)=
## Participation de la communauté

Bien que débutée par une communauté active dans les sciences de la vie, les principes FAIR ont été adoptés rapidement par les éditeurs, bailleurs de fonds, programmes et sociétés d’infrastructure pluridisciplinaires. De nombreux groupes et organisations travaillent à définir des orientations et des outils pour aider les chercheurs et les autres parties prenantes (comme les bibliothécaires, les bailleurs de fonds, les éditeurs et les formateurs) rendent les données plus FAIRE. Si vous êtes intéressé par la participation à ces communautés, il y a deux initiatives mondiales qui agissent en tant qu'organisations globales et points de référence pour de nombreux efforts spécifiques à la discipline: [GOFAIR](https://www.go-fair.org) et la [Research Data Alliance (RDA)](https://www.rd-alliance.org).
* Sous GOFAIR, il y a de nombreux [Réseaux d'implémentation (INs)](https://www.go-fair.org/implementation-networks) engagés à mettre en œuvre les principes FAIR.
* En vertu de l'ADR, plusieurs groupes s'attaquent à différents aspects pertinents pour le cycle de vie du RDM. Parmi ceux-ci, un [groupe](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) examine les efforts existants, en s'appuyant sur eux pour définir un ensemble standard de critères d'évaluation communs pour l'évaluation de la FAIRness.
