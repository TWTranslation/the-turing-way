(rr-rdm-metadata)=
# Documentation et métadonnées

Le fait de disposer de données ne sert à rien si elles ne peuvent être comprises. Par exemple, une table de nombres est inutile s'il n'y a pas d'en-têtes qui décrivent ce que contiennent les colonnes/lignes. Par conséquent, vous devez vous assurer que les jeux de données ouverts incluent la documentation.

## Documentation

La documentation fournit un contexte pour votre travail. Il permet à vos collaborateurs, collègues et futurs de comprendre ce qui a été fait et pourquoi. La documentation des données peut être effectuée à différents niveaux. Toute la documentation accompagnant les données doit être rédigée en langage clair et clair. La documentation permet aux utilisateurs de données d'avoir suffisamment d'informations pour comprendre la source, les forces, , et les limitations analytiques des données pour qu'elles puissent prendre des décisions éclairées lors de leur utilisation.

## Métadonnées

Les métadonnées sont des informations sur les données, des descripteurs qui facilitent le catalogage des données et la découverte des données. Souvent, les métadonnées sont destinées à la lecture automatique. Lorsque des données sont envoyées à un référentiel de données de confiance, les métadonnées lisibles par la machine sont générées par le référentiel. Si les données ne sont pas dans un référentiel, un fichier texte avec des métadonnées lisibles par machine peut être ajouté dans la documentation.

- Le type de recherche et la nature des données influent également sur le type de documentation nécessaire.
- Le niveau de documentation et de métadonnées [{term}`def<Metadata>`] variera selon le projet, et la gamme des personnes dont les données ont besoin d'être comprises.
- Des exemples de documentation peuvent inclure des éléments tels que [des dictionnaires de données](https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary) ou des codebooks, des protocoles, livres de bord ou revues de laboratoire, fichiers README, journaux de recherche, syntaxe d'analyse, algorithmes et commentaires de code.
- Les variables doivent être définies et expliquées à l'aide de dictionnaires de données ou de codebooks.
- Les données doivent être stockées dans des structures de dossiers logiques et hiérarchiques, avec un fichier README utilisé pour décrire la structure. Le fichier README est utile pour les autres et vous aidera également à trouver vos données dans le futur {cite:ps}`documentation Fuchs2018`. Voir le modèle [README de Cornell](https://cornell.app.box.com/v/ReadmeTemplate) pour un exemple.
- Il est préférable d'utiliser des normes reconnues de métadonnées communautaires pour faciliter la combinaison des jeux de données.

(rr-rdm-metadata-standards)=
### Normes communautaires - Métadonnées

L'utilisation de normes définies par la communauté pour les métadonnées est vitale pour la recherche reproductible et permet la comparaison de données hétérogènes à partir de sources multiples. domaines et disciplines. Les normes de métadonnées sont spécifiques à la discipline. Par exemple, pour les données cérébrales, la [Structure de données d'imagerie cérébrale](https://doi.org/10.25504/FAIRsharing.rd1j6t) est la norme à utiliser. Toutes les disciplines ne peuvent cependant pas utiliser des normes de métadonnées. Vous pouvez voir si votre discipline utilise les normes de métadonnées via [FAIRsharing](https://fairsharing.org/), une ressource pour identifier et citer les métadonnées ou schémas d'identification, bases de données ou référentiels qui existent pour vos données et votre discipline. Il y a aussi des situations où les chercheurs utilisent des normes de métadonnées plus générales, par exemple, lorsqu'ils utilisent une archive générique pour stocker leurs données, ils doivent adhérer aux normes de métadonnées de l'archive. Dans ce cas, un fichier texte avec des métadonnées spécifiques à la discipline peut être ajouté dans la documentation.
