(rr-rdm-dmp)=
# Plan de gestion des données

Un plan de gestion des données (DMP) ou un plan de gestion des extrants, est un document qui décrit comment vos résultats de recherche seront générés, stockés, utilisés et partagés dans votre projet. Un DMP est un document vivant, qui peut être mis à jour tout au long du projet de recherche au besoin.

Un plan de gestion des données est une feuille de route qui vous permet de gérer vos données de façon efficace et sécurisée. Cela peut empêcher la perte ou la violation de données. Planifier à l'avance sur la façon de gérer vos données de façon cohérente peut vous faire gagner du temps plus tard ! Il peut également faciliter le partage de {ref}`<rr-rdm-sharing>` vos données avec d'autres et donc augmenter les données de {ref}`FAIR<rr-rdm-fair>`

## Un plan de gestion des données devrait fournir des informations sur cinq sujets principaux :

### 1. Rôles et responsabilités
* Il est important de discuter de qui est responsable de différentes tâches durant le cycle de vie d'un projet de recherche. Définir qui est responsable de la gestion des données et du code peut éviter la confusion/mauvaise communication ultérieure dans le projet.
* Vous devriez consulter les recommandations et les exigences du DMP de votre institut et de votre bailleur de fonds. L’équipe de soutien à la recherche de la bibliothèque de votre institut et le site Web de votre bailleur sont généralement de bons endroits pour trouver de l’information et de l’aide. Certains bailleurs de fonds exigent que vous utilisiez leur modèle DMP. Vous pouvez vérifier si votre bailleur ou votre institut a un DMP en utilisant [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. Type et taille des données collectées et documentation/métadonnées générées
* Ici, vous pouvez lister les formats de fichier que vous utiliserez pour collecter, traiter et présenter vos données. Si vous voulez partager vos résultats de recherche plus tard, Les formats de fichiers standard qui peuvent être utilisés ouvertement sans licence particulière pour un logiciel sont préférables. Pour vous assurer cela, vous devez adapter vos fichiers ou commencer à travailler dans ces formats plus tôt.
* Une distinction peut être faite entre les différents types de données qui peuvent être décrits séparément dans le plan :
    * Données brutes/primaires : données collectées à partir de la source (gardez toujours une version en lecture seule des données brutes pour que vous puissiez y revenir plus tard!)
    * Données traitées : une version des données qui ont été modifiées pour analyse ou visualisation
    * Données finalisées : données prêtes à être partagées dans une publication ou un dépôt de données (voir {ref}`section de partage et d'archivage des données <rr-rdm-sharing>` pour plus d'informations). Certains dépôts de données, tels que [Zenodo](https://zenodo.org/), permettre le versionnage des jeux de données afin que vous puissiez mettre à jour votre jeu de données finalisé si vous voulez publier une autre version.
* Tous ces types de données devront être décrits pour être placés dans un contexte en utilisant des métadonnées (voir la section {ref}`Documentation et métadonnées<rr-rdm-metadata>`) et la documentation adéquate qui vous permettra de vous présenter à l'avenir. et toute personne de votre équipe, pour interpréter les données.
* Il est utile de connaître la taille approximative (dans la plage de MB, GB, TB ou PB) des données dans ces différentes étapes, car cela affectera les solutions de stockage disponibles pour vous (discutées au point suivant).

### 3. Type de stockage des données utilisées et les procédures de sauvegarde qui sont en place
* Consultez la section {ref}`du stockage des données et de l'organisation<rr-rdm-storage>` pour trouver des solutions de stockage et de sauvegarde et des moyens d'organiser vos fichiers
* Vérifiez s'il y a des **coûts** associés à votre projet
    * Solution de stockage préférée (pendant et après le projet, voir ci-dessous)
    * Coûts du personnel (si vous avez besoin d'un gestionnaire de données pour gérer des quantités plus sensibles ou plus importantes de données)
    * Licences de logiciels (comme les Carnets de laboratoire électronique, voir la section {ref}`Ouvrir les carnets<rr-open-notebooks>`
    * Vous pouvez utiliser cette [liste de contrôle des coûts](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) comme guide
* Garder une trace des personnes qui ont apporté des modifications spécifiques à vos données/code sera important, en particulier pour le code. Voir le chapitre {ref}`du contrôle de version<rr-vcs>` pour plus d'informations.
* Déterminer qui a accès aux données et qui accorde l'accès. Au moins une autre personne devrait avoir accès à vos données, comme votre superviseur/PI/responsable du département. Si vous gérez des données personnelles ou commerciales sensibles, l'accès ne devrait être donné qu'aux personnes qui doivent travailler avec ces données.

### 4. Préserver les résultats de la recherche après le projet
* Examinez si vos résultats de recherche peuvent être rendus publics. Les données personnelles ou les résultats de recherche nécessaires pour demander des brevets ne peuvent pas être partagés publiquement, voir la section {ref}`Données ouvertes<rr-open-data>` Si les données ne peuvent pas être rendues publiques vous devrez toujours le conserver pendant plusieurs années, selon les politiques de votre pays, institut et bailleur de fonds.
* Vous pouvez externaliser la conservation à long terme de vos données vers un référentiel de données. Vous pouvez trouver plus d'informations sur la façon de sélectionner un dépôt approprié dans la section {ref}`de partage et d'archivage des données<rr-rdm-sharing>`
    * Sélectionnez les dépôts utilisant, par exemple, [FAIRsharing](https://fairsharing.org/) ou [la liste recommandée par la Nature](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), qui fournissent un identifiant persistant comme un DOI pour la sortie de votre recherche. Un référentiel devrait avoir une politique de préservation qui spécifie combien de temps vos sorties seront conservées. En cas de doute, contactez l'équipe de support de la recherche de votre bibliothèque pour plus d'informations sur les référentiels de données.

### 5. Réutiliser vos résultats de recherche par d'autres
* Sélectionnez une licence lorsque vous rendez votre sortie disponible sur un référentiel (voir les sous-chapitres de licence sur les données {ref}`<rr-licensing-data>` et {ref}`logiciel<rr-licensing-software>` pour plus d'informations). En sélectionnant une licence, vous indiquez aux autres comment ils peuvent réutiliser vos données. Si vous ne sélectionnez pas une licence d'autres personnes ne seront pas en mesure de réutiliser vos données sans vous demander l'autorisation.
* Vous pouvez mettre vos résultats de recherche dans le contexte en utilisant un texte d'introduction, comme un fichier README.txt
    * Voir la documentation {ref}`et la section métadonnées<rr-rdm-metadata>`

Vous pouvez utiliser cette [liste de contrôle](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) pour voir si vous avez tout ce qui est couvert dans votre plan de gestion des données.

## Recommandations de lecture supplémentaires

- [Modules éducatifs DataOne](https://www.dataone.org/education-modules)
- [Informations sur la gestion des données du UK Data Services](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [Portail de gestion de données TU Delft Research](https://www.tudelft.nl/en/library/research-data-management)
- [Vidéos (3-7 min) sur la gestion des données par Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
- La saumure de Kristin. Gestion des données pour les chercheurs : Organisez, maintenez et partagez vos données pour la réussite de la recherche, Pelagic Édition, 2015.
- Briney, K.A., Coates, H. and Goben, A., 2020 Foundational Practices of Research Data Management. Idées et résultats de recherche 6 : e56508. [https://doi.org/10.3897/rio.6.e56508](https://doi.org/10.3897/rio.6.e56508)
- Hart EM, Barmby P, LeBauer D, Michonneau F, Mount S, Mulrooney P, et coll. (2016) Ten Simple Rules for Digital Data Storage. PLoS Comput Biol 12(10): e1005097. [https://doi.org/10.1371/journal.pcbi.1005097](https://doi.org/10.1371/journal.pcbi.1005097)
