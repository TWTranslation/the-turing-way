(rr-renv-binder)=
# Binder

(rr-renv-vue d'ensemble du lien)=
## Aperçu

Maintenant que nous avons vu comment utiliser et capturer l'environnement informatique utilisé dans un projet Python, il est temps de réfléchir à la façon de partager cet environnement.

Avec un fichier `environment.yml` (ou similaire, à partir de systèmes alternatifs de gestion de paquets),d'autres peuvent recréer l'environnement spécifié par ce fichier. Cependant, cela dépend du fait que le nouvel utilisateur ait le même système de gestion des paquets mis en place, et qu'il sache comment l'utiliser. Il serait beaucoup plus facile de trouver une solution automatisée pour recréer l'environnement informatique - et c'est là qu'intervient Binder.

Binder utilise un outil appelé `repo2docker` pour créer une image Docker d'un projet basée sur les fichiers de configuration qui sont inclus. L'image qui en résulte contient le projet et l'environnement de calcul spécifié par l'utilisateur d'origine. D'autres utilisateurs peuvent accéder à l'image via un nuage basé sur BinderHub, qui leur permet de visualiser, éditer et exécuter le code à partir de leur navigateur Web.

L'excellent dessin animé de Juliette Taka ci-dessous illustre les étapes de la création et du partage d'un projet "lié".

**Étape 1 :** Nous commençons avec un chercheur qui a terminé un projet et veut partager son travail avec quiconque, indépendamment de leur environnement informatique. Notez que le Binder ne doit pas seulement être appliqué aux projets finis ; il peut être utilisé de la même manière pour partager des projets en cours.

**Étape 2 :** Le projet du chercheur contient de nombreux fichiers de différents types. Dans ce cas, le chercheur a travaillé dans les blocs-notes Jupyter. Cependant, Binder peut être utilisé aussi efficacement avec de nombreux autres formats de fichiers et langues que nous aborderons plus en détail sous peu.

**Étape 3 :** Le chercheur télécharge son code vers un service d'hébergement de dépôts publiquement disponible, tel que GitHub, où d'autres peuvent y accéder. Elle comprend un fichier décrivant l'environnement informatique requis pour exécuter le projet.

**Étape 4 :** Elle génère un lien sur le [mybinder.org](https://mybinder.org) BinderHub. En cliquant sur ce lien, tout le monde peut accéder à une version « bindée » de son projet. Le clic déclenche `repo2docker` pour construire une image Docker basée sur le contenu du dépôt et ses fichiers de configuration. Cette image est ensuite hébergée sur le cloud. La personne qui a cliqué sur le lien sera transférée à une copie de son projet dans son navigateur Web où elle pourra interagir avec lui. Cette copie du projet est hébergée dans l'environnement spécifié par le chercheur à l'étape 3, quel que soit l'environnement informatique auquel il est accédé.

```{figure} ../../figures/binder-comic.png
---
nom: lider-comique
alt : Une illustration des pas qu'une personne peut prendre pour créer un projet bindérivé.
---
Crédit de figure - [Juliette Taka, Logilab et le projet OpenDreamKit](https://opendreamkit.org/2017/11/02/use-case-publishing-reproducible-notebooks/)
```

Pour avoir une idée de ce à quoi cela ressemble, ci-dessous est un lieur d'un projet d'exemple simple. Les fichiers sont répertoriés et peuvent être cliqués et modifiés par la personne qui accède au lieur.

```{figure} ../../figures/binder-home.png
---
name : binder-home
alt: Une capture d'écran d'un lieur d'un projet d'échantillon
---
Un lieur d'un projet d'échantillon.
```

Les utilisateurs peuvent également ouvrir des terminaux pour exécuter ou autrement interagir avec les fichiers en cliquant sur "Nouveau" puis sur "Terminal" en haut à droite de l'écran de la liaison d'accueil affiché ci-dessus. Ici, ceci est utilisé pour exécuter le script d'analyse dans l'exemple Binder qui effectue une régression linéaire sur certaines données:

```{figure} ../../figures/binder-terminal.png
---
nom: lider-terminal
alt: Une capture d'écran d'un terminal où les utilisateurs peuvent s'exécuter ou interagir avec les fichiers du projet
---
Une capture d'écran d'un terminal où les utilisateurs peuvent s'exécuter ou interagir avec les fichiers du projet
```

Comme mentionné, Binder est bien intégré avec les blocs-notes Jupyter. Les ordinateurs portables peuvent être ouverts en cliquant sur "Nouveau" puis "Carnet" de la même manière que les terminaux peuvent être ouverts. Celles-ci peuvent être plus pratiques pour ceux qui travaillent avec des sorties graphiques, comme indiqué ici où on est utilisé pour exécuter `make_plot. y` dans l'exemple Binder :

```{figure} ../../figures/binder-notebook.png
---
name : lider-notebook
alt: Une capture d'écran d'un Notebook Jupyter intégré avec Binder
---
Une capture d'écran d'un Notebook Jupyter intégré avec Binder
```

Si R est installé dans une Binder, le menu déroulant affichera les options pour ouvrir les cahiers R Jupyter et les sessions RStudio dans la Binder.

(rr-renv-lien-désambiguïté)=
## Désambiguïté

Dans cette section, il y a des termes connexes qui seront décrits ici pour plus de clarté:

- **Binder**: Une version partageable d'un projet qui peut être visualisée et interagir dans un environnement informatique reproductible via un navigateur Web.
- **BinderHub**: Un service qui génère des lieurs. Le plus largement utilisé est [mybinder.org](https://mybinder.org), qui est maintenu par l'équipe de Binder. Il est possible de créer d'autres BinderHubs qui peuvent supporter des configurations plus spécialisées. Une telle configuration pourrait inclure l'authentification pour permettre le partage de dépôts privés entre des collaborateurs proches.
- **[mybinder.org](https://mybinder.org)**: Un BinderHub public et libre. Parce qu'il est public, vous ne devriez pas l'utiliser si votre projet nécessite des informations personnelles ou sensibles (comme des mots de passe).
- **Binderize**: Faire un Binder d'un projet.

(rr-renv-binder-creating)=
## Créer une liaison pour un projet

La création d'une version bindée d'un projet implique trois étapes clés qui seront expliquées dans cette section :

1. Spécifiez l'environnement de calcul
2. Mettre les fichiers du projet quelque part publiquement disponible (nous décrirons comment le faire avec GitHub)
3. Générer un lien vers une liaison du projet

Pour une liste d'exemples de dépôts à utiliser avec Binder, voir la page [Exemple de dépôts Binder](https://mybinder.readthedocs.io/en/latest/sample_repos.html).

(rr-renv-binder-creating-stepone)=
### Étape 1 : Spécifiez votre environnement informatique

Supposons que le projet ne contient aucun fichier spécifiant l'environnement de calcul. Lorsqu'un Binder est généré, l'environnement sera l'environnement par défaut du Binder (contenant Python 3. ) qui peuvent ou ne peuvent pas convenir au projet. Cependant, si elle contient un fichier de configuration pour l'environnement, alors le Binder sera généré avec l'environnement spécifié. Une liste complète de ces fichiers que Binder accepte, avec des exemples, peut être trouvée [ici](https://mybinder.readthedocs.io/en/latest/config_files.html). Les clés sont discutées ci-dessous, dont certaines sont spécifiques à la langue:

- `yml`
  - Rappelez-vous que les fichiers `environment.yml` ont été discutés dans la section {ref}`rr-renv-package`.
- Fichier Docker
  - Les fichiers Dockerfiles seront discutés dans la section {ref}`rr-renv-containers` , donc ne seront pas discutés plus loin ici.
- `format@@0 apt.txt`
  - Les dépendances qui seraient généralement installées via des commandes telles que `sudo apt-get install package_name` devraient être listées dans un apt `. xt` , et sera automatiquement installé dans le lieur.
  - Par exemple, si un projet utilise Latex, le fichier `apt.txt` devrait être lu
    ```
    texlive-latex-base
    ```
    pour installer le paquet de base Latex.
- `default.nix`
  - Pour ceux qui utilisent le paquet {ref}`rr-renv-package` Nix un fichier `default.nix` peut être un moyen pratique de capturer leur environnement.
- `requirements.txt` (Python)
  - Pour les utilisateurs de Python, un fichier `requirements.txt` peut être utilisé pour lister les paquets dépendants.
  - Par exemple pour que Binder installe `numpy` ce fichier aurait simplement besoin de lire :
    ```
    numpy
    ```
  - Une version spécifique du paquet peut également être spécifiée en utilisant un `==`. Par exemple, pour que Binder installe la version `1.14.5` de `numpy` alors le fichier serait
    ```
    numpy==1.14.5
    ```
  - Le fichier `requirement.txt` n'a pas besoin d'être écrit à la main. L'exécution de la commande `pip gèle > requirements.txt` affichera un fichier `requirements.txt` qui définit pleinement l'environnement Python.
- `runtime.txt`
  - Il est utilisé pour spécifier une version particulière de Python ou R que le Binder peut utiliser.
  - Spécifier quelle version de R utiliser, trouver la date à laquelle elle a été capturée sur [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) et l'inclure dans le runtime `. xt` fichier en tant que
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - Pour spécifier une version de Python, indiquez la version dans le fichier `runtime.txt`. Par exemple, pour utiliser Python 2.7, le fichier devrait être lu
    ```
    python-2.7
    ```
- `install.R` ou `DESCRIPTION` (R/RStudio)
  - Un fichier `install.R` répertorie les paquets à installer. Par exemple, pour installer le paquet `tibble` dans le binder:
    ```
    install.packages("tibble")
    ```
  - [Les fichiers DESCRIPTION](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) sont plus généralement utilisés dans la communauté R pour la gestion des dépendances.

(rr-renv-binder-creating-steptwo)=
### Étape 2 : Mettez votre code sur GitHub

GitHub est longuement discuté dans le chapitre sur {ref}`rr-vcs`, à laquelle vous devez faire référence si vous voulez en savoir plus sur cette étape. Dans ce chapitre, nous donnerons une brève explication. GitHub est une plateforme très largement utilisée où vous pouvez créer des "dépôts", et télécharger du code, de la documentation, ou tout autre fichier dedans. Pour compléter cette étape:

1. Créez un compte sur [GitHub](https://github.com/).
2. Créez un dépôt pour le projet dont vous souhaitez créer un lien.
3. Téléchargez les fichiers de votre projet (y compris le fichier que vous avez créé pour spécifier votre environnement de calcul) dans le référentiel et enregistrez les ("commit" dans le vocabulaire de GitHub) là-bas.

Si vous ne pouvez pas compléter ces étapes, reportez-vous au chapitre sur le contrôle de version de {ref}` <rr-vcs>` pour une explication plus complète.

(rr-renv-binder-creating-stepthree)=
### Étape 3 : Générer un lien vers un lien de votre projet

Rendez-vous sur [https://mybinder.org](https://mybinder.org). Vous verrez un formulaire qui vous demandera de spécifier un dépôt pour [mybinder.org](https://mybinder.org) à construire. Dans le premier champ, collez l'URL du dépôt GitHub du projet. Cela ressemblera à ceci : `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
---
nom: mybinder-gen-link
alt: Une capture d'écran de la page Web utilisée pour générer un lien de liaison pour votre projet
---
Interface de génération de liens binaires pour les projets
```

Comme vous pouvez le constater, il y a des champs supplémentaires dans ce formulaire, mais ils sont facultatifs et ne seront pas abordés ici.

Une fois que l'URL du projet à relier est fournie, deux champs seront automatiquement remplis à l'écran décrit ci-dessus:

- Le `Copiez l'URL ci-dessous et partagez votre Binder avec d'autres champs` , fournit un lien vers le lieur qui peut être copié et partagé.
- Le `Copiez le texte ci-dessous, puis collez dans votre README pour afficher un badge de liaison` champ, peut être inclus dans GitHub pour créer un bouton qui permet à tous ceux qui accèdent à votre projet de lancer le lien.

Enfin, cliquez sur le bouton de lancement. Cela demandera à [mybinder.org](https://mybinder.org) de construire l'environnement nécessaire à l'exécution du projet. Cela peut prendre plusieurs minutes. Vous pouvez cliquer sur le bouton `Log de construction` pour voir les logs générés par le processus de construction. Ces logs aident à résoudre tous les problèmes qui causent l'échec de la compilation, comme les erreurs dans le fichier définissant l'environnement de calcul à générer.

Une fois construit, le Binder sera automatiquement lancé; encore une fois, cela peut prendre un certain temps.

(rr-renv-binder-data)=
## Inclure les données dans un attacheur

Il y a plusieurs façons de rendre les données disponibles dans votre associé. Le meilleur dépend de la taille de vos données et de vos préférences pour le partage de données. Notez que plus de données sont incluses, plus il faudra de temps pour qu'un Binder puisse être lancé. Les données occupent également de l'espace de stockage qui doit être payé, il est donc bon d'être pris en considération et de minimiser les données que vous incluez, surtout sur le mylificateur [fourni publiquement. rg](https://mybinder.org).

(rr-renv-binder-data-small)=
### Petits fichiers publics

La méthode la plus simple pour les petits fichiers de données qui sont publics est de les ajouter directement à votre dépôt GitHub ou de les inclure avec le reste de vos fichiers de projet dans le binder. Cela fonctionne bien et est raisonnable pour les fichiers avec des tailles allant jusqu'à 10 Mo.

(rr-renv-binder-data-medium)=
### Fichiers publics moyens

Pour les fichiers de taille moyenne - de quelques 10 méga-octets à quelques centaines de méga-octets - trouver un autre endroit en ligne pour les stocker et s'assurer qu'ils sont accessibles au public. Ajoute un fichier nommé `postBuild` (qui est un script shell donc la première ligne doit être `#! bin/bash`) à vos fichiers de projet. Dans le fichier `postBuild` , ajoutez une ligne de lecture :
```
wget -q -O nom_de_votre_fichier_lien_à_votre_fichier
```

Le fichier `postBuild` est utilisé pour exécuter des commandes lorsque les fichiers pour produire le Binder sont générés. Dans ce cas, il peut être utilisé pour télécharger vos données dans les fichiers utilisés pour lancer le lieur.

(rr-renv-binder-data-large)=
### Fichiers publics volumineux

La meilleure option pour les fichiers volumineux est d'utiliser une bibliothèque spécifique au format de données pour diffuser les données en cours d'utilisation. Il y a quelques restrictions sur le trafic sortant de votre Binder qui sont imposées par l'équipe opérant [mybinder.org](https://mybinder.org). Actuellement, seules les connexions vers HTTP et Git sont autorisées. Cela arrive lorsque les gens veulent utiliser des sites FTP pour récupérer des données. Pour des raisons de sécurité, FTP n'est pas autorisé sur [mybinder.org](https://mybinder.org).
