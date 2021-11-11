(rr-vcs-data)=
# Contrôle de version pour les données

Nous avons discuté du fait que le contrôle des composants des projets en évolution pourrait contribuer à rendre le travail plus organisé, plus efficace, plus collaboratif et plus reproductible. Cependant, de nombreux projets scientifiques ne contiennent pas seulement du code, des manuscrits ou d'autres fichiers de petite taille. De nombreux projets contiennent des fichiers plus volumineux tels que les données (entrées) ou les résultats d'analyse. qui peuvent changer ou être mis à jour dans un projet comme d'autres composants comme le code et les manuscrits. L'aspect reproductibilité d'un projet scientifique peut améliorer beaucoup si nous pouvons suivre le sous-ensemble ou la version des données sur lesquelles repose une certaine analyse ou un certain résultat.

(rr-vcs-data-importance)=
## Importance des données de contrôle de version

Nous ne devrions pas accepter l'idée que les données utilisées pour l'analyse sont statiques; une fois acquis, il ne change pas et sert d'élément pour une analyse donnée et l'épine dorsale de nos résultats scientifiques. La réalité est que les données ne sont que rarement invariantes. Par exemple, tout au long d'un projet scientifique, les jeux de données peuvent être étendus avec de nouvelles données, adaptées aux nouveaux schémas de nommage, réorganisé en différentes hiérarchies de fichiers, mis à jour avec de nouveaux points de données ou modifié pour corriger des erreurs.

De tels processus dynamiques sont excellents et bénéfiques pour la science, car ils garantissent que les données sont utilisables et à jour, mais ils peuvent être confus s'ils ne sont pas correctement documentés. Si un jeu de données est la base du calcul d'un résultat scientifique change sans contrôle de version, la reproductibilité peut être menacée : les résultats peuvent devenir invalides, ou les scripts qui sont basés sur des noms de fichiers qui changent entre les versions peuvent se casser. Surtout si les données originales sont remplacées par de nouvelles données sans contrôle de version en place, les résultats originaux de l'analyse ne peuvent pas être reproduits. Par conséquent, le contrôle des données et d'autres fichiers de grande taille de la même manière que le code de contrôle de version ou les manuscrits peuvent aider à assurer la reproductibilité d'un projet et à capturer la provenance des résultats ; hat est « le sous-ensemble précis et la version des données dont provient un jeu de résultats ». Avec tous les autres éléments d'un projet de recherche, les données identifiées dans des versions précises font partie du résultat de la recherche.

```{figure} ../../figures/provenance.jpg
---
hauteur : 500px
nom : provenance
alt: Provenance sur laquelle les données dans lesquelles la version était sous-jacente quel calcul est crucial pour la reproductibilité.
---
Provenance sur laquelle les données dans lesquelles la version était sous-jacente quel calcul est crucial pour la reproductibilité.
Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data-challenges)=
## Défis dans le contrôle de version des données

Selon la taille des données et les modifications qui y sont apportées, des outils de contrôle de version tels que Git peuvent ne pas être adaptés aux données. Tant que les fichiers de contrôle de version sont de petite taille et peuvent être stockés dans quelques fichiers `csv` ou séparés par des caractères, des outils tels que [Git](https://git-scm.com/) sont appropriés.

Lorsque vous travaillez, partagez et collaborez sur de grands fichiers [binaires](https://en.wikipedia.org/wiki/Binary_file) (tels que de nombreux formats de données scientifiques), vous devez réfléchir aux moyens de contrôler ces données avec des outils spécialisés. Cela est dû au fait que la plupart des outils de contrôle de version - comme Git - ne sont pas bien adaptés pour gérer les données binaires de grande taille. En tant que dépôt Git stocke chaque version de chaque fichier qui lui est ajouté, les grands fichiers qui subissent des modifications régulières peuvent gonfler considérablement la taille d'un projet. Si d'autres tentent de cloner votre dépôt ou de récupérer/tirer pour le mettre à jour localement, il faudra plus de temps pour le faire s'il contient des fichiers plus volumineux qui ont été versionnés et modifiés.

Ce qui est particulièrement gênant est que les services d'hébergement de référentiels tels que GitHub imposent des tailles de fichiers maximales aux utilisateurs (au moins dans leurs versions gratuites). Par exemple, si un seul fichier dans votre dépôt dépasse 100 Mo, vous ne pourrez pas envoyer ce fichier dans un dépôt GitHub. De plus, si un fichier volumineux a été ajouté accidentellement à un dépôt, supprimer le fichier du dépôt peut être fastidieux, car ce fichier doit être [purgé](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository). Ces défauts peuvent rendre le contrôle de versions fastidieux et lent, entraver les collaborations sur les dépôts avec de grandes données, et empêcher que des données ou des projets avec des données ne soient partagées sur des plates-formes comme GitHub.

(rr-vcs-data-tools)=
## Outils pour contrôler les données de version

Plusieurs outils sont disponibles pour gérer le contrôle de versions et le partage de gros fichiers . La plupart d'entre eux s'intègrent très bien à Git et étendent les capacités d'un référentiel pour contrôler les gros fichiers. Avec ces outils, de grandes données peuvent être ajoutées à un référentiel, la version contrôlée, retournées aux états précédents, ou mis à jour et modifié en collaboration, et même partagé via GitHub sous forme de petits fichiers. Certains de ces outils incluent :

(rr-vcs-data--tools-lfs)=
### Git LFS

[Git LFS](https://git-lfs.github.com/) est fourni avec une extension en ligne de commande pour Git et vous permet de traiter des fichiers de toute taille en utilisant des commandes Git standard. Un défaut majeur, cependant, est que Git LFS est une solution _centralisée_. Les fichiers volumineux ne sont pas distribués mais stockés sur un serveur distant. Cela nécessite généralement de configurer votre serveur ou de payer pour un service - ce qui peut le rendre très inaccessible.

(rr-vcs-data-tools-gitannex)=
### `git-annex`

L'outil [`git-annex`](https://git-annex.branchable.com/) est un système distribué qui peut gérer et partager des fichiers volumineux indépendants d'un service central ou d'un serveur. `git-annex` manages all file _content_ in a separate directory in the repository (`.git/annex/objects`, the so-called _annex_) and only places file _names_ with some metadata into version control by Git. Lorsqu'un dépôt Git avec une annexe est poussé à un service d'hébergement web tel que GitHub, le contenu stocké dans l'annexe n'est pas téléchargé. Au lieu de cela, ils peuvent être poussés vers un système de stockage (comme un serveur web, mais aussi des services tiers tels que Dropbox, Google Drive, Amazon S3, box. om, et [bien plus](https://git-annex.branchable.com/special_remotes/)). Si un dépôt avec une annexe est cloné, le clone ne contiendra pas le _contenu_ de tous les fichiers annexes par défaut, mais n'affichera que les noms de fichiers. Cela rend le dépôt petit, même s'il suit des centaines de gigaoctets de données, et clonage rapide, alors que le contenu des fichiers est stocké dans une ou plusieurs solutions de stockage externe gratuite ou commerciale. À la demande, tout contenu de fichier peut alors être obtenu avec une commande `git-annex get` du stockage de fichiers externe.

(rr-vcs-data-tools-datalad)=
### Chargeur de données

[DataLad](https://www.datalad.org/), construit sur Git et git-annex. Comme `git-annex`, il vous permet de télécharger des données de contrôle et de les partager via des fournisseurs tiers, mais simplifie et étend cette fonctionnalité. En plus de partager et de contrôler les gros fichiers ; il permet d'enregistrer, de partager et d'utiliser des environnements logiciels, d'enregistrer et de réexécuter des commandes ou des analyses de données, et d'opérer de manière transparente dans une hiérarchie de référentiels.
