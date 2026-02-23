(rr-rdm-storage)=

# Stockage et organisation des données

La perte de données peut être catastrophique pour votre projet de recherche et peut se produire souvent.
Vous pouvez éviter la perte de données en choisissant des solutions de stockage appropriées et en soutenant vos données fréquemment.

```{figure} ../../../figures/version-control.*
---
height: 500px
name: version-control
alt: Two images are shown to represent the benefits of using version control. On the left, there is an image of two people rummaging through a blue box on top of a table. The box is full of jumbled documents and the people look confused and frustrated. The documents are named "final 2" and "let this be the final". On the right, the same two people look happy and are searching through files organised clearly in a blue filing cabinet. There are "V1, V2, V3 and V4" separations organising the files.
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-stockage-où)=

## Où stocker les données

- Most institutions will provide a _network drive_ that you can use to store data.
- _Portable storage media_ such as memory sticks (USB sticks) are more risky and vulnerable to loss and damage.
- _Cloud storage_ provides a convenient way to store, backup and retrieve data.
  Vous devriez vérifier les conditions d'utilisation avant de les utiliser pour vos données de recherche.

Surtout si vous gérez des données personnelles ou sensibles, vous devez vous assurer que l'option cloud est conforme à toutes les règles de protection des données auxquelles les données sont liées.
Pour ajouter une couche de sécurité supplémentaire, vous devez chiffrer les périphériques et les fichiers lorsque nécessaire.

Votre institution pourrait fournir des solutions et des politiques de stockage locales ou des directives limitant ce que vous pouvez utiliser.
Nous vous recommandons donc de vous familiariser avec vos politiques et recommandations locales.

When you are ready to release the data to the wider community, you can also search for the appropriate databases and repositories in [FAIRsharing](https://fairsharing.org/databases), according to your data type, and type of access to the data.
Learn more about this in the {ref}`rr-rdm-sharing` subchapter.

(rr-rdm-stockage-organisation)=

## Organisation des données

To organise your data, you should use a clear folder structure to ensure that you can find your files.
We encourage you to use an existing template.
An open source project created a quite complete one at https://github.com/tonic-team/Tonic-Research-Project-Template

```{figure} ../../../figures/file-management-manual.jpg
---
name: Folder structure for research data

alt: A protagonist has a file with "readme" written on it and brings it to another person standing in front of a filing cabinet. The cabinet has three drawers labelled "data", "code", and "results".
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

- Assurez-vous d'avoir suffisamment de (sous-)dossiers pour que les fichiers puissent être stockés dans le dossier de droite et ne soient pas dispersés dans des dossiers où ils n'appartiennent pas, ou stocké en grandes quantités dans un seul dossier.
- Utiliser une structure de dossier claire.
  Vous pouvez structurer des dossiers en fonction de la personne qui a généré les données/dossiers, chronologiquement (mois, année, année sessions), par projet (comme dans l'exemple ci-dessous), ou en fonction des méthodes/équipements d'analyse ou du type de données.
- Avoid overlapping or vague folder names, and do not use personal data in folder/file names.

(rr-rdm-stockage-exemples d'organisation-exemples)=

### Exemples d'organisation de données

- Download [this](http://nikola.me/folder_structure.html) folder structure by Nikola Vukovic
- You can pull/download folder structures using GitHub:
  [This template](https://github.com/bvreede/good-enough-project) by Barbara Vreede, based on [cookiecutter](https://github.com/cookiecutter/cookiecutter), follows recommended practices for scientific computing by [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- See [this template](https://osf.io/4sdn3/) by Chris Hartgerink for file organisation on the [Open Science Framework](https://osf.io/).
- [How to Organize Your Digital Files](https://www.nytimes.com/wirecutter/guides/how-to-organize-your-digital-files/) by Melanie Pinola.
- [Project structure videos by Danielle Navarro](https://www.youtube.com/watch?v=u6MiDFvAs9w&list=PLRPB0ZzEYegPiBteC2dRn95TX9YefYFyy&index=1) (with [slides](https://slides.djnavarro.net/project-structure/#1)).

### More Information on Data Organisation

- [How to organise your data and code](https://renebekkers.wordpress.com/2021/04/02/how-to-organize-your-data-and-code) by Rene Bekkers.

(rr-rdm-stockage-conventions)=

## Conventions de nommage des fichiers

Structurez vos noms de fichiers et configurez un modèle pour cela.
For example, it may be advantageous to start naming your files with the date each file was generated (such as `YYYYMMDD`).
Cela triera vos fichiers de façon chronologique et créera un identifiant unique pour chaque fichier.
L'utilitaire de ce processus est visible lorsque vous générez plusieurs fichiers le même jour qui peuvent avoir besoin d'être versionnés pour éviter de l'écraser.
File names should be friendly to both machines and humans.

Quelques autres conseils pour nommer des fichiers sont :

- Use the date or date range of the experiment: `YYYYMMDD`
- Utiliser le type de fichier
- Utiliser le nom du chercheur/les initiales
- Utilisez le numéro de version du fichier (v001, v002) ou la langue utilisée dans le document (ENG)
- Ne pas faire de noms de fichiers trop longs (cela peut compliquer les transferts de fichiers)
- Avoid special characters `()?\!@\*%{[<>` and spaces
- Hyphens `-` and underscores `_` can be used to separate related and unrelated chunks, respectively
- Keep in mind that some operating systems are case-sensitive, some are not
- Avoid personal data in file names

Vous pouvez expliquer la convention de nommage des fichiers dans un fichier README.txt afin qu'il devienne également visible pour les autres ce que les noms de fichiers signifient.

For further guidance on file naming:

- [Jenny Bryan’s ‘naming things’ presentation](https://speakerdeck.com/jennybc/how-to-name-files) (or watch the [5 minute summary](https://youtu.be/ES1LTlnpLMk))
- [MIT's recommendations on File naming and folder hierarchy](https://libraries.mit.edu/data-management/store/organize/)
- [8 step guide on how to set up your file naming convention](https://resolver.caltech.edu/CaltechAUTHORS:20200601-161923247)
- [Project structure slides by Danielle Navarro](https://djnavarro.net/slides-project-structure/#9)

(rr-rdm-storage-renaming)=

### File renaming tools

If you want to change your file names you have the option to use bulk renaming tools.
Be careful with these tools, because changes made with bulk renaming tools may be too rigorous if not carefully checked!

Some bulk file renaming tools include:

- [Bulk Rename Utility](http://www.bulkrenameutility.co.uk/Main_Intro.php), [WildRename](http://www.cylog.org/utilities/wildrename.jsp), and [Ant Renamer](http://www.antp.be/software/renamer) (for Windows)
- [Renamer](https://renamer.com/) (for MacOS)
- [PSRenamer](http://www.cylog.org/utilities/wildrename.jsp) (for MacOS, Windows, Unix, Linux)

(rr-rdm-stockage-backups)=

## Sauvegardes

Pour éviter de perdre vos données, vous devriez suivre de bonnes pratiques de sauvegarde.

- Vous devriez avoir 2 ou 3 copies de vos fichiers, stockées sur
- au moins 2 supports de stockage différents,
- dans différents endroits.

Backups are ideally done automatically and should take into consideration your institute's guidelines.
Plus les données sont importantes et plus souvent les jeux de données changent, plus vous devriez les sauvegarder.
Si vos fichiers prennent beaucoup d'espace et que la sauvegarde de tous les fichiers s'avère difficile ou coûteuse, vous pouvez créer un ensemble de critères pour la sauvegarde des données.
This can be part of your {ref}`Data Management Plan<rr-rdm-dmp>`.

Watch this video on [Safe data storage and backup](https://www.youtube.com/watch?v=bgbbToXHgW0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).



