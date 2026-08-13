(rr-rdm-dmp)=

# Data Management Plan

Un plan de gestion des données (DMP) ou un plan de gestion des extrants, est un document qui décrit comment vos résultats de recherche seront générés, stockés, utilisés et partagés dans votre projet.
Un DMP est un document vivant, qui peut être mis à jour tout au long du projet de recherche au besoin.

Un plan de gestion des données est une feuille de route qui vous permet de gérer vos données de façon efficace et sécurisée.
Cela peut empêcher la perte ou la violation de données.
Planifier à l'avance sur la façon de gérer vos données de façon cohérente peut vous faire gagner du temps plus tard ! It can also make it easier to {ref}`share<rr-rdm-sharing>` your data with others and therefore make the data more {ref}`FAIR<rr-rdm-fair>`

```{figure} ../../../figures/data-management-plan.*
---
name: data-management-plan
alt: There are two women in the illustration. The left one is looking distressed and says 'Oh no, my computer crashed! I lost all the data!' The right woman is holding a map which says DMP (Data Management Plan) and is looking happy. She is saying 'Good thing I had a plan! The data is all backed up! 

---
Data Management Plan. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

## A Data Management Plan should provide information on six main topics:

### 1. Rôles et responsabilités

- Il est important de discuter de qui est responsable de différentes tâches durant le cycle de vie d'un projet de recherche.
  Définir qui est responsable de la gestion des données et du code peut éviter la confusion/mauvaise communication ultérieure dans le projet.
- Vous devriez consulter les recommandations et les exigences du DMP de votre institut et de votre bailleur de fonds.
  L’équipe de soutien à la recherche de la bibliothèque de votre institut et le site Web de votre bailleur sont généralement de bons endroits pour trouver de l’information et de l’aide.
  Certains bailleurs de fonds exigent que vous utilisiez leur modèle DMP.
  You can check if your funder or institute has a DMP using [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. Type et taille des données collectées et documentation/métadonnées générées

- Ici, vous pouvez lister les formats de fichier que vous utiliserez pour collecter, traiter et présenter vos données.
  Si vous voulez partager vos résultats de recherche plus tard, Les formats de fichiers standard qui peuvent être utilisés ouvertement sans licence particulière pour un logiciel sont préférables.
  Pour vous assurer cela, vous devez adapter vos fichiers ou commencer à travailler dans ces formats plus tôt.
- Une distinction peut être faite entre les différents types de données qui peuvent être décrits séparément dans le plan :
  - Données brutes/primaires : données collectées à partir de la source (gardez toujours une version en lecture seule des données brutes pour que vous puissiez y revenir plus tard!)
  - Données traitées : une version des données qui ont été modifiées pour analyse ou visualisation
  - Finalised data: data that is ready to be shared in a publication or data repository (see {ref}`Sharing and archiving data section <rr-rdm-sharing>` for more information).
    Some data repositories, such as [Zenodo](https://zenodo.org/), allow versioning of datasets so that you can update your finalised dataset if you want to release another version.
- All of these types of data will have to be described to be placed into context by using metadata (see the {ref}`Documentation and metadata section<rr-rdm-metadata>`) and adequate documentation which will allow future you, and anyone in your team, to interpret the data.
- Il est utile de connaître la taille approximative (dans la plage de MB, GB, TB ou PB) des données dans ces différentes étapes, car cela affectera les solutions de stockage disponibles pour vous (discutées au point suivant).

### 3. Type de stockage des données utilisées et les procédures de sauvegarde qui sont en place

- Check the {ref}`data storage and organisation section<rr-rdm-storage>` for storage and back-up solutions and ways to organise your files
- Garder une trace des personnes qui ont apporté des modifications spécifiques à vos données/code sera important, en particulier pour le code.
  See the {ref}`Version Control chapter<rr-vcs>` for more information.
- Déterminer qui a accès aux données et qui accorde l'accès.
  Au moins une autre personne devrait avoir accès à vos données, comme votre superviseur/PI/responsable du département.
  Si vous gérez des données personnelles ou commerciales sensibles, l'accès ne devrait être donné qu'aux personnes qui doivent travailler avec ces données.

### 4. Préserver les résultats de la recherche après le projet

- Examinez si vos résultats de recherche peuvent être rendus publics.
  Personal data or research outputs needed to apply for patents cannot be publicly shared, see the {ref}`Open data section<rr-open-data>`
  If data cannot be made publicly available you will still have to preserve it for several years, depending on the policies of your country, institute and funder.
- Vous pouvez externaliser la conservation à long terme de vos données vers un référentiel de données.
  You can find more information on how to select an appropriate repository in {ref}`sharing and archiving data<rr-rdm-sharing>` section
  - Select repositories using, for example, [FAIRsharing](https://fairsharing.org/) or [Nature's recommended repository list](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), that provide a persistent identifier such as a DOI for your research output.

Un référentiel devrait avoir une politique de préservation qui spécifie combien de temps vos sorties seront conservées.
En cas de doute, contactez l'équipe de support de la recherche de votre bibliothèque pour plus d'informations sur les référentiels de données.

- For digital preservation, ensure that the research data can be discovered, accessed, used and understood now and in future.
  This requires that you address the technological changes, changing user behavior and new requirements on the computer-aided processing of research data as well as evolving organisational.

### 5. Réutiliser vos résultats de recherche par d'autres

- Select a license when you make your output available on a repository (see the Licensing subchapters on {ref}`data<rr-licensing-data>` and {ref}`software<rr-licensing-floss>` for more information).
  En sélectionnant une licence, vous indiquez aux autres comment ils peuvent réutiliser vos données.
  Si vous ne sélectionnez pas une licence d'autres personnes ne seront pas en mesure de réutiliser vos données sans vous demander l'autorisation.
- Vous pouvez mettre vos résultats de recherche dans le contexte en utilisant un texte d'introduction, comme un fichier README.txt
  - See the {ref}`documentation and metadata section<rr-rdm-metadata>`

### 6. Costs

- Check if there are any costs associated with your project
  - Preferred storage solution (during and after the project, see #3-4)
  - Coûts du personnel (si vous avez besoin d'un gestionnaire de données pour gérer des quantités plus sensibles ou plus importantes de données)
  - Software licenses (such as Electronic Lab Notebooks, see the {ref}`Open notebooks section<rr-open-notebooks>`)
  - Or [indirect costs](https://labrigger.com/blog/2025/02/12/indirect-costs-are-research-costs/) that need to be covered.
  - You can use this [checklist for costs](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) as a guidance, or the [Framework for Costing Research Data Management](https://doi.org/10.5281/zenodo.15465412).

You can use this [checklist](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) to see if you have everything covered in your Data Management Plan.

(rr-rdm-dmp-citable)=

## DMPs as Citable Research Objects

Many funders now encourage or require DMP as part of their open science policies.
Publishing your DMP also allows you to create a living document - you can update it during the project and deposit new versions with new DOIs while maintaining all previous versions.
This creates a traceable record of how your data management evolved throughout the research lifecycle.
See [](#cm-citable-steps-object) for more information on how to make your DMP citable.

(rr-rdm-dmp-tools)=

## DMP tools

There are several platforms or tools that you can use to set up your Data Management Plan:

- [ARGOS](https://argos.openaire.eu/home)
- [DMPonline](https://dmponline.dcc.ac.uk)
- [DMPtool](https://dmptool.org)

See [activeDMPs](https://activedmps.org/) for a full overview.

## Additional Resources

- [UK Data Services data management information](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft Research Data Management portal](https://www.tudelft.nl/en/library/research-data-management)
- [Research Data Management](https://www.scienceeurope.org/our-priorities/research-data/research-data-management/) by Science Europe
- Books
  - {cite:ps}`Briney2015dmp`
- Articles
  - {cite:ps}`Briney2020dmp`
  - {cite:ps}`Hart2016dmp`
  - {cite:ps}`Michener2015dmp`
- Videos
  - [Videos (3-7 min) on data management by Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
  - Video on [elements of a DMP](https://commons.esipfed.org/node/1442).
  - [3 min video on Roles and Responsibilities](https://www.youtube.com/watch?v=Ry0OA9mDTCc)
  - [DMPs by DTU Bibliotek](https://www.youtube.com/watch?v=tvs5_X5rn8w) (20 minutes)
  - [Areas of a Data Management Plan](https://www.youtube.com/watch?v=L3LPv2sB-IE) (7 minute video by Moore Library)
- Definition of [Long Term Preservation](https://www.gesis.org/en/research/research-data-management/long-time-preservation) from the Leibniz Institute of Social Science.
- Planning by [DataOne](https://dataoneorg.github.io/Education/bp_step/plan/) & [USGS](https://www.usgs.gov/data-management/planning)


