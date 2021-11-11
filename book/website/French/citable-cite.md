(cm-citable-cité)=
# Objets de recherche de citations

Vous devriez citer des objets de recherche directement dans le papier là où ils sont pertinents. Il s'agit d'une façon couramment pratiquée de citer des publications et est valable pour citer d'autres éléments de recherche tels que les données et les logiciels. Une citation inclut les informations suivantes :
- Auteur
- Titre de la page
- Année de publication
- Éditeur (pour les données, c'est souvent le référentiel de données où il est logé),
- Version (si indiquée)
- Informations d'accès (une URL ou DOI)

Un style de citation est un arrangement spécifique, l'ordre et la mise en forme des informations nécessaires à une citation. Par exemple, Le style du MLA a été développé par l'Association des Langues Modernes (utilisée à l'origine dans les humanités) et le style APA a été développé par American Psychological Association (utilisée à l'origine en psychologie et en sciences sociales).
- Le style de citation de MLA utilise le format suivant : `Auteur. "Titre de la source." Titre du Conteneur, Autres contributeurs, Version, Numéro, Éditeur, Date de Publication, Emplacement.`
- Le style de citation APA utilise le format suivant : `Auteur. (Année). Titre du jeu de données (numéro de version). [Récupéré] ***OU*** [DOI]`

Voir [le guide des styles de référence Scribbr](https://www.scribbr.com/citing-sources/citation-styles/). Voir aussi [la ressource FORCE11](https://www.force11.org/node/4771).

(cm-citable-données)=
## Données de citation

Lors du partage d'un jeu de données, utilisez des DOI dédiés et ajoutez un **énoncé de disponibilité de données** à la fin du document ou dans les détails du dépôt en ligne (similaire à la section de reconnaissance).

Vous pouvez trouver des exemples de ces déclarations dans les politiques d'auteur des éditeurs (données de recherche).

### Exemples d'énoncé de disponibilité des données :

**Utilisation du Digital Object Identifier (DOI) :** « Les données qui supportent les résultats de cette étude sont ouvertement disponibles dans [le nom du référentiel] sur http://doi. rg/[doi]».

**Si aucun DOI n'est délivré :**
- « Les données qui soutiennent les conclusions de cette étude sont ouvertement disponibles dans [nom du référentiel] à [URL], numéro de référence [numéro de référence]. »

**Lorsqu'il y a une période d'embargo, vous pouvez réserver votre DOI et tout de même inclure une référence au jeu de données dans votre document :**
- « Les données qui soutiennent les conclusions seront disponibles dans [nom du référentiel] à [URL / DOI] après un embargo [6 mois] à compter de la date de publication afin de permettre la commercialisation des résultats de la recherche ».

**Quand les données ne peuvent pas être rendues disponibles :**
- « Les restrictions s'appliquent aux données qui appuient les conclusions de cette étude. [Expliquer la nature des restrictions, par exemple, si les données contiennent des informations qui pourraient compromettre la vie privée des participants à la recherche. Les données sont disponibles sur demande raisonnable en contactant [nom et coordonnée] et avec la permission de [nom de tierce] . »
-  « Les données qui appuient les résultats de cette étude sont disponibles sur demande. Les conditions d'accès et les procédures peuvent être trouvées à [URL du dépôt d'accès restreint tel que [ESSAIRE](https://easy.dans.knaw.nl/ui/home) .] »

**Plus d'exemples d'énoncé de disponibilité de données:**

Vous pouvez trouver plus d'exemples sur la [page des relevés d'accès aux données de Manchester](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/), les [exemples de déclaration de disponibilité de données Cambridge](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), les [exemples d'énoncé de disponibilité de données AMS](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/), ou [Conseils de la nature pour écrire une éblouissante Déclaration de disponibilité de données](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-citable-logiciel)=
## Logiciel de citation

Une citation logicielle a beaucoup des mêmes éléments qu'une référence de données, décrite ci-dessus, et sont décrits plus en détail dans les [Principes de référence du logiciel](https://www.force11.org/software-citation-principles). Lorsque vous utilisez d'autres logiciels, il est vital de le citer et de l'attribuer correctement.

Pour rendre votre code citable, vous pouvez utiliser l'intégration entre [Zenodo](https://zenodo.org/) et GitHub.

- Créez un fichier pour indiquer aux gens comment citer votre logiciel. Utilisez ce [guide pratique](https://citation-file-format.github.io/cff-initializer-javascript/) pour formater le fichier.
- Lier votre compte GitHub à un compte Zenodo. Ce guide explique [comment](https://guides.github.com/activities/citable-code/).
- Vous pouvez dire à Zenodo quelles informations ou métadonnées vous voulez inclure dans votre logiciel en ajoutant un zenodo `. son` fichier, décrit [ici](https://guide.esciencecenter.nl/citable_software/making_software_citable.html).
- Sur Zenodo, retournez le commutateur à la position 'on' pour le dépôt GitHub que vous voulez libérer.
- Sur GitHub, cliquez sur le bouton *Créer une nouvelle version*. Zenodo devrait être automatiquement notifié et devrait faire une copie instantanée de l'état actuel de votre dépôt (une seule branche, sans aucun historique), et devrait également assigner un identifiant persistant (DOI) à cette capture instantanée.
- Utilisez le DOI dans n'importe quelle citation de votre logiciel et dites à tous les collaborateurs et utilisateurs de faire de même !
