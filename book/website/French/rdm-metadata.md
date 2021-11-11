(rr-rdm-metadata)=
# Documentation et métadonnées

Le fait de disposer de données ne sert à rien si elles ne peuvent être comprises. Par exemple, une table de nombres est inutile s'il n'y a pas d'en-têtes qui décrivent ce que contiennent les colonnes/lignes. Par conséquent, vous devez vous assurer que les jeux de données ouverts incluent des métadonnées cohérentes, c'est-à-dire des informations sur les données, afin que les données soient pleinement décrites. Ceci exige que toutes les documents accompagnant les données soient rédigés en langage clair et clair, et que les utilisateurs de données aient suffisamment d'informations pour comprendre la source, les forces, les faiblesses et les limites analytiques des données afin qu'elles puissent prendre des décisions éclairées lors de leur utilisation.

- Le niveau de documentation et de métadonnées [{term}`def<Metadata>`] variera selon le projet, et la gamme des personnes dont les données ont besoin d'être comprises.
- Les variables doivent être définies et expliquées en utilisant [les dictionnaires de données](https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary).
- Les données doivent être stockées dans des structures de dossiers logiques et hiérarchiques, avec un fichier README utilisé pour décrire la structure. Le fichier README est utile pour les autres et vous aidera également à trouver vos données dans le futur {cite:ps}`documentation Fuchs2018`. Voir le modèle [README de Cornell](https://cornell.app.box.com/v/ReadmeTemplate) pour un exemple.
- Il est préférable d'utiliser des normes reconnues de métadonnées communautaires pour faciliter la combinaison des jeux de données.

(rr-rdm-metadata-standards)=
## Normes communautaires - Métadonnées

L'utilisation de normes définies par la communauté pour les métadonnées est vitale pour la recherche reproductible et permet de comparer des données hétérogènes provenant de sources multiples, de domaines et de disciplines. Les normes de métadonnées sont spécifiques à la discipline. Par exemple, pour les données cérébrales, la [Structure de données d'imagerie cérébrale](https://doi.org/10.25504/FAIRsharing.rd1j6t) est la norme à utiliser. Toutes les disciplines ne peuvent cependant pas utiliser des normes de métadonnées. Vous pouvez voir si votre discipline utilise les normes de métadonnées via [FAIRsharing](https://fairsharing.org/), une ressource pour identifier et citer les métadonnées ou schémas d'identification, bases de données ou référentiels qui existent pour vos données et votre discipline.
