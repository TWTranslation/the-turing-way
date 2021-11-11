(rr-rdm-storage)=
# Stockage et organisation des données

La perte de données peut être catastrophique pour votre projet de recherche et peut se produire souvent. Vous pouvez éviter la perte de données en choisissant des solutions de stockage appropriées et en soutenant vos données fréquemment.

```{figure} ../../figures/version-control.jpg
---
hauteur : 500px
nom : version-control
alt : Deux images sont montrées pour représenter les avantages de l'utilisation du pilotage de version. Sur la gauche, il y a une image de deux personnes qui fouillent à travers une boîte bleue sur une table. La boîte est remplie de documents jonglés et les gens ont l'air confus et frustrés. Les documents sont nommés "final 2" et "let this be the final". À droite, les mêmes deux personnes sont heureuses et recherchent à travers des dossiers organisés clairement dans un classeur bleu. Il y a des séparations "V1, V2, V3 et V4" qui organisent les fichiers.
---
_The Turing Way_ project illustration by Scriberia. Version originale sur Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-stockage-où)=
## Où stocker les données

- La plupart des institutions fourniront un _lecteur réseau_ que vous pouvez utiliser pour stocker des données.
- _Les supports de stockage portables_ tels que les clés de mémoire (clés USB) sont plus risqués et vulnérables aux pertes et aux dégâts.
- _Stockage Cloud_ fournit un moyen pratique de stocker, de sauvegarder et de récupérer des données. Vous devriez vérifier les conditions d'utilisation avant de les utiliser pour vos données de recherche.

Surtout si vous gérez des données personnelles ou sensibles, vous devez vous assurer que l'option cloud est conforme à toutes les règles de protection des données auxquelles les données sont liées. Pour ajouter une couche de sécurité supplémentaire, vous devez chiffrer les périphériques et les fichiers lorsque nécessaire.

Votre institution pourrait fournir des solutions et des politiques de stockage locales ou des directives limitant ce que vous pouvez utiliser. Nous vous recommandons donc de vous familiariser avec vos politiques et recommandations locales.

Lorsque vous êtes prêt à diffuser les données dans la communauté en général, vous pouvez également rechercher les bases de données et les dépôts appropriés dans [FAIRsharing](https://fairsharing.org/databases), selon votre type de données et le type d'accès aux données. En savoir plus à ce sujet dans le sous-chapitre de {ref}`rr-rdm-sharing`.

(rr-rdm-stockage-organisation)=
## Organisation des données

Pour organiser vos données, vous pouvez créer une structure de dossiers, ou réutilisez une structure antérieure (voir un exemple ci-dessous), pour vous assurer que vous pouvez trouver vos fichiers.

-   Assurez-vous d'avoir suffisamment de (sous-)dossiers pour que les fichiers puissent être stockés dans le dossier de droite et ne soient pas dispersés dans des dossiers où ils n'appartiennent pas, ou stocké en grandes quantités dans un seul dossier.
-   Utiliser une structure de dossier claire. Vous pouvez structurer des dossiers en fonction de la personne qui a généré les données/dossiers, chronologiquement (mois, année, année sessions), par projet (comme dans l'exemple ci-dessous), ou en fonction des méthodes/équipements d'analyse ou du type de données.

(rr-rdm-stockage-exemples d'organisation-exemples)=
### Exemples d'organisation de données

- Télécharger [cette structure de dossier](http://nikola.me/folder_structure.html) par Nikola Vukovic
- Vous pouvez pull/télécharger les structures de dossiers en utilisant GitHub : [Ce modèle](https://github.com/bvreede/good-enough-project) par Barbara Vreede, basé sur [cookiecutter](https://github.com/cookiecutter/cookiecutter), suit les pratiques recommandées pour l'informatique scientifique par [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- Voir [ce modèle](https://osf.io/4sdn3/) par Chris Hartgerink pour l'organisation de fichiers sur l' [Open Science Framework](https://osf.io/).

(rr-rdm-stockage-conventions)=
## Conventions de nommage des fichiers

Structurez vos noms de fichiers et configurez un modèle pour cela. Par exemple, il peut être avantageux de commencer à nommer vos fichiers avec la date à laquelle chaque fichier a été généré (comme `AAAA-MMDD`). Cela triera vos fichiers de façon chronologique et créera un identifiant unique pour chaque fichier. L'utilitaire de ce processus est visible lorsque vous générez plusieurs fichiers le même jour qui peuvent avoir besoin d'être versionnés pour éviter de l'écraser.


Quelques autres conseils pour nommer des fichiers sont :
- Utilisez la date ou la plage de dates de l'expérience : `AAAJJJ`
- Utiliser le type de fichier
- Utiliser le nom du chercheur/les initiales
- Utilisez le numéro de version du fichier (v001, v002) ou la langue utilisée dans le document (ENG)
- Ne pas faire de noms de fichiers trop longs (cela peut compliquer les transferts de fichiers)
- Évitez les caractères spéciaux (?\!@\*%<unk> <>) et les espaces

Vous pouvez expliquer la convention de nommage des fichiers dans un fichier README.txt afin qu'il devienne également visible pour les autres ce que les noms de fichiers signifient.

(rr-rdm-stockage-backups)=
## Sauvegardes

Pour éviter de perdre vos données, vous devriez suivre de bonnes pratiques de sauvegarde.

- Vous devriez avoir 2 ou 3 copies de vos fichiers, stockées sur
- au moins 2 supports de stockage différents,
- dans différents endroits.

Plus les données sont importantes et plus souvent les jeux de données changent, plus vous devriez les sauvegarder. Si vos fichiers prennent beaucoup d'espace et que la sauvegarde de tous les fichiers s'avère difficile ou coûteuse, vous pouvez créer un ensemble de critères pour la sauvegarde des données. Cela peut faire partie de votre plan de gestion des données (DMP).
