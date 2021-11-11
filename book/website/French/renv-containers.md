(rr-renv-containers)=
# Conteneurs

(rr-renv-conteneurs-pourquoi)=
## Pourquoi les conteneurs?

Même pour les projets modérément complexes, la taille de la pile de dépendances du logiciel peut être énorme. Prenez un pipeline simple pour construire un rapport pdf pour une analyse scriptée en R en utilisant `Rmarkdown`, par exemple. Pour rendre ce reproductible, non seulement (i) les paquets R respectifs doivent être installés et (ii) la version R doit être la même, mais aussi (iii) les versions de `pandoc` et `LaTeX` doivent être les mêmes que lors de l'exécution.

Au lieu d'essayer de résoudre ces dépendances par le biais d'un gestionnaire de paquets (comme conda) - qui dépend également de la disponibilité de tous les logiciels requis dans un seul gestionnaire de paquets -, il pourrait être plus facile de créer un instantané de tout l'environnement informatique incluant toutes les dépendances. Ces environnements informatiques sont ensuite autonomes, d'où le nom de "conteneurs".

(rr-renv-conteneurs-quoi)=
## Que sont les Conteneurs ?

Les conteneurs permettent à un chercheur d'empaqueter un projet avec toutes les pièces dont il a besoin - telles que les bibliothèques, dépendances et paramètres du système - et envoyez-les tous en un seul paquet. N'importe qui peut alors ouvrir un conteneur et travailler dedans, visualiser et interagir avec le projet comme si la machine à partir de laquelle ils y accèdent est identique à la machine spécifiée dans le conteneur - quel que soit l'environnement de calcul _réellement_. Ils sont conçus pour faciliter le transfert de projets entre des environnements très différents.

En quelque sorte, les conteneurs se comportent comme une machine virtuelle. Pour le monde extérieur, ils ressemblent à leur propre système complet. Cependant, contrairement à une machine virtuelle, plutôt que de créer un système d'exploitation virtuel entier plus tous les logiciels et tous les outils généralement empaquetés avec un, Les conteneurs ne contiennent que les composants dont ils ont besoin pour gérer le projet qu'ils contiennent. Cela donne un boost significatif des performances et réduit la taille de l'application.

Les conteneurs sont un moyen particulièrement utile de reproduire des recherches qui s'appuient sur des logiciels pour être configurés d'une certaine manière, ou qui utilise des bibliothèques qui varient d'un système à l'autre (ou qui n'existent pas) à l'autre. En résumé, les conteneurs sont un moyen plus robuste de partager la recherche reproductible que les systèmes de gestion des paquets ou le Binder parce qu'ils reproduisent l'ensemble du système utilisé pour la recherche, pas seulement les paquets explicitement utilisés par lui. Leur inconvénient majeur est dû à leur plus grande profondeur, ils sont conceptuellement plus difficiles à saisir et à produire que beaucoup d'autres méthodes de reproduction d'environnements informatiques.

Ben Corrie donne une vue d'ensemble raisonnablement accessible des concepts de base dans ['Qu'est-ce qu'un conteneur ?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-containers-images)=
## Que sont les Images?

Les images sont les fichiers utilisés pour générer des conteneurs. Les humains ne font pas d'images, ils écrivent des recettes pour générer des images. Les conteneurs sont ensuite des copies identiques instanciées à partir d'images.

Pensez-y comme ceci:

- Un fichier de recette qu'un humain écrit contient toutes les étapes pour générer une version fonctionnelle du projet et son environnement informatique. mais pas de matériel réel. Pensez à cela comme un plan.
- Construire une image prend cette recette et l'utilise, assemble tous les paquets, bibliothèques de logiciels, et les configurations nécessaires pour faire du projet et de l'environnement à part entière, et les regroupera dans un volume condensé. Pensez aux images comme un meuble à plat fabriqué en utilisant le plan.
- Les conteneurs prennent cette image et assemblent une version entièrement fonctionnelle du projet et de l'environnement nécessaire à son exécution. Considérez cela comme l'assemblage du mobilier à plat.

Donc, si un chercheur veut permettre aux autres de reproduire leur travail, ils devraient écrire un fichier de recettes, et l'utiliser pour construire une image de leur projet. Ils peuvent ensuite partager ce fichier image avec tous ceux qui veulent reproduire leur travail. Cette personne peut alors utiliser l'image pour générer un conteneur contenant une version fonctionnelle du projet.

(rr-renv-containers-docker)=
## Qu'est-ce que Docker?

Il y a de nombreux outils disponibles pour créer et travailler avec des conteneurs. Nous nous concentrerons sur Docker, qui est largement utilisé, mais sachez que d'autres comme la singularité existent également. La singularité est parfois préférée pour une utilisation sur des systèmes informatiques hautes performances, car elle n'a pas besoin de permissions `sudo` pour être exécutée, tandis que Docker le fait.

Dans Docker, les fichiers de recettes utilisés pour générer des images sont connus sous le nom de fichiers Dockerfiles et doivent être nommés `Dockerfile`.

[Docker Hub](https://hub.docker.com/) héberge un grand nombre d'images préfabriquées, comme les images [](https://hub.docker.com/_/ubuntu) des machines Ubuntu, qui peuvent être téléchargées et construites. Cela rend le processus d'écriture de fichiers Dockerfiles relativement facile puisque les utilisateurs ont très rarement besoin de partir de zéro, ils peuvent simplement personnaliser les images existantes. Cependant, cela laisse un utilisateur vulnérable à des problèmes de sécurité similaires à ceux décrits dans le sous-chapitre {ref}`rr-renv-yaml-security` du {ref}`rr-renv-yaml`:

- Il est possible d'inclure du code malveillant dans les images Docker
- Il est possible pour les personnes produisant des images d'inclure sans le savoir des logiciels avec des vulnérabilités de sécurité

[Cet article](https://opensource.com/business/14/7/docker-security-selinux) va plus loin dans les vulnérabilités de sécurité potentielles des conteneurs et voici une [ventilation détaillée](https://opensource.com/business/14/9/security-for-docker) des fonctionnalités de sécurité actuellement dans Docker, et comment ils fonctionnent. Le meilleur conseil pour utiliser les images construites par d'autres est, comme d'habitude, ne téléchargez et exécutez quelque chose sur votre ordinateur que s'il provient d'une source fiable. Docker Hub a des badges "image officielle" pour les images couramment utilisées, vérifiées comme illustré ici :

```{figure} ../../figures/docker-official-image.png
---
name : docker-official-image
alt: Une capture d'écran de badges d'image officielle
---
```

(rr-renv-containers-installdocker)=
## Installation de Docker

Des installateurs pour Docker sur une variété de systèmes différents sont disponibles [ici](https://docs.docker.com/install/). Des instructions d'installation détaillées sont également disponibles pour une variété de systèmes d'exploitation tels que [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/), et [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=
## Commandes clés

Voici quelques commandes clés pour créer et travailler avec des conteneurs :

- Pour construire une image à partir d'un fichier Dockerfile, allez dans le répertoire où est le fichier Dockerfile et exécutez :
  ```
  sudo docker build --tag image_name .
  ```
- Pour lister les images sur votre système, utilisez :
  ```
  images de sudo docker ls
  ```
- Pour supprimer une image, exécutez :
  ```
  sudo docker rmi image_name
  ```
- Pour ouvrir un conteneur à partir d'une image, exécutez :
  ```
  sudo docker run -i -t image_name
  ```
  Les drapeaux `-i -t` ouvrent automatiquement un terminal interactif dans le conteneur pour que vous puissiez visualiser et interagir avec les fichiers du projet.
- Pour quitter un terminal interactif, utilisez :
  ```
  Sortir
  ```
- Pour obtenir une liste de conteneurs actifs avec IDs, exécutez :
  ```
  conteneur sudo docker ls
  ```
- Il y a aussi trois commandes principales utilisées pour changer le statut des conteneurs :
  - La suspension interrompt le processus en cours d'exécution du conteneur.
    ```
    sudo docker pause container_ID
    ```
    Les conteneurs peuvent être désuspendus en remplaçant `pause` par `reprendre`.
  - Arrêt d'un conteneur termine le processus en cours d'exécution. Un conteneur doit être arrêté avant de pouvoir être supprimé.
    ```
    sudo docker stop container_ID
    ```
    Un conteneur arrêté peut être redémarré en remplaçant `stop` par `restart`.
  - Si `stop` ne fonctionne pas les conteneurs peuvent être tués en utilisant
    ```
    sudo docker tuer container_ID
    ```
- Pour retirer un conteneur, exécutez :
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## Écriture des fichiers Dockerfiles

Parlons de l'anatomie d'un très simple fichier Docker:

```
# Étape 1 : Configurer l'environnement computationnel

# Définir l'image de base
FROM ubuntu:18. 4

# Installer les paquets nécessaires pour exécuter le projet
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3. python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#-----------------------

# Étape 2: Inclure les fichiers du projet dans l'image

# Copier les fichiers du répertoire `project_files` sur la machine en construisant l'image
# dans le dossier `project` du conteneur. Ce dossier et tous les répertoires
# manquants dans son chemin sont créés automatiquement.
COPY project_files/ projet/
```

Cela semble compliqué, mais la plupart des lignes dans cet exemple sont des commentaires (qui sont précédés de `#`'). Il n'y a que six lignes de code réel. Le premier est une instruction `FROM` spécifiant une image de base. Tous les fichiers Dockerfiles nécessitent un FROM, même si ce n'est que `DE SCRATCH`. Toutes les commandes suivantes dans un Dockerfile construit sur l'image de base pour faire une version fonctionnelle du projet du chercheur. Spécifier une version pour l'image (`18.04` dans ce cas) est optionnel. Cependant, c'est la meilleure pratique car elle garantit que notre fichier Dockerfile reste valide après les nouvelles versions d'Ubuntu, qui ne peuvent pas inclure de paquets (ou de versions spécifiques de ceux-ci) dont nous avons besoin plus tard (par exemple `python3.`).

Il vaut la peine de passer du temps à choisir une image de base appropriée, peut ainsi réduire considérablement la quantité de travail impliquée dans la rédaction d'un fichier Dockerfile. Par exemple, une collection d'images avec le langage de programmation R inclus dans ces images peut être trouvée [ici](https://github.com/rocker-org/rocker-versioned). Si un projet utilise R, il est pratique d'utiliser l'une de ces images comme une image de base plutôt que de passer du temps à écrire des commandes dans votre fichier Dockerfile pour installer R.

Le plus grand bloc de lignes vient ensuite. C'est une série d'instructions `RUN` , qui exécutent des commandes shell lors de la construction de l'image. Dans ce bloc, ils sont utilisés pour installer le logiciel nécessaire à l'exécution du projet. Le premier bloc `Exécuter` est une chaîne de commandes de cette forme :

```
Exécuter la commande_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_4
```

Il est bon de regrouper les commandes liées en un seul bloc `Exécuter` pour réduire la taille finale de votre image de [en évitant la création de couches inutiles](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers). Nous suivons également les meilleures pratiques en utilisant `--no-install-recommends` pour [éviter d'installer des paquets inutiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) et [nettoyer le `cache apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run), qui réduisent encore plus la taille des images de Debian ou d'Ubuntu.

Après avoir installé Python, nous utilisons une autre instruction RUN pour installer une bibliothèque requise par notre code.

Enfin la commande `COPY` est utilisée pour copier les fichiers du projet depuis la machine en construisant l'image dans l'image elle-même. La syntaxe de cette commande est `COPY file_to_copy location_in_container_to_copy_to`. Dans cet exemple, tous les fichiers du répertoire `project_files` sont inclus dans le fichier `projet` dans le conteneur. Notez que vous ne pouvez copier que les fichiers depuis le répertoire où se trouve le fichier Dockerfile, ou sous-répertoires qui s'y trouvent (dans l'exemple du sous-répertoire `project_files`).

La commande `ADD` a les mêmes capacités que `COPY`, mais il peut aussi être utilisé pour ajouter des fichiers qui ne sont pas sur la machine à construire l'image. Par exemple, il peut être utilisé pour inclure des fichiers hébergés en ligne en suivant `ADD` avec une URL vers le fichier. Il est bon d'utiliser `COPY`, sauf lorsque `ADD` est spécifiquement requise. car le terme `COPY` est plus explicite sur ce qui est fait.

Voici ce qui se passe si un conteneur est ouvert à partir d'une image appelée `book_example`, construit à partir de l'exemple ci-dessus :

```{figure} ../../figures/container-example.png
---
name : exemple de conteneur
alt : Une capture d'écran de ce qui se passe lorsqu'un conteneur est ouvert à partir d'une image
---
```

Comme vous pouvez le voir, le répertoire `du projet` a été créé, et dans les fichiers du projet, `l'analyse. y` et `data.csv` y ont été copiées. Parce que le fichier Dockerfile inclut déjà le logiciel requis pour le projet, dans l'image, le script `analyis.py` s'exécute sans installer plus de logiciels.

(rr-renv-containers-dockerfiles-workdir)=
### `WORKDIR`

Cette commande peut être utilisée dans Dockerfiles pour changer le répertoire de travail courant. Les commandes qui suivent cela dans le fichier Dockerfile seront appliquées dans le nouveau répertoire de travail sauf si un autre `WORKDIR` modifie le répertoire de travail. Lorsqu'un conteneur est ouvert avec un terminal interactif, le terminal s'ouvre dans le répertoire de travail final. Voici un exemple simple d'un Dockerfile qui utilise `WORKDIR`, et le conteneur qu'il génère.

```
# Configuration de base
FROM ubuntu
RUN apt-get update

# Créer un répertoire appelé A
RUN mkdir A

# Rendre le répertoire de travail A
WORKDIR A

# Créer deux répertoires, un appelé B_1 et un appelé B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
name : workdir-example
alt: Screenshot of container generated using WORKDIR command
---
```

Les répertoires `B_1` et `B_2` ont été créés dans le répertoire `A`.

`WORKDIR` doit être utilisé lors du changement de répertoires est nécessaire lors de la construction d'une image. Il peut être tentant d'utiliser `RUN cd directory_name` à la place, car cette syntaxe sera plus familière à ceux qui fonctionnent généralement via la ligne de commande, mais cela peut conduire à des erreurs. Après chaque instruction `Exécuter` dans un fichier Dockerfile, l'image est sauvegardée et toutes les commandes suivantes sont appliquées à l'image à nouveau. À titre d'exemple, voici ce qui se passe dans l'exemple ci-dessus si la ligne `WORKDIR A` est échangée pour `RUN cd A`.

```{figure} ../../figures/cd-example.png
---
name : cd-example
alt: Une capture d'écran de ce qui se passe lorsque la commande WORKDIR est échangée avec RUN cd
---
```

Tous les répertoires ont dans le premier niveau dans ce cas, au lieu de `B_1` et `B_2` étant à l'intérieur de `A`. C'est parce que l'image a été redémarrée après la commande `RUN cd A` et ouverte au niveau supérieur (racine) par défaut, donc c'est là que les commandes `mkdir B_1` et `mkdir B_2` ont pris effet.

(rr-renv-containers-dockerfiles-commands)=
### Autres commandes

Les autres commandes qui sont parfois utilisées dans les fichiers Dockerfiles incluent :

- `CMD`: Ceci est utilisé pour exécuter des commandes dès que le conteneur est ouvert. Ceci est différent des commandes RUN qui sont des commandes exécutées dans le cadre de la mise en place _d'un conteneur_. Par exemple, pour avoir un message de bienvenue lorsqu'un conteneur est ouvert à partir de l'image, `CMD` pourrait être utilisé comme suit :
  ```
  CMD ["echo","Bienvenue! Vous venez d'ouvrir ce conteneur !"]
  ```
  Il est bon d'utiliser le CMD pour toutes les commandes qui doivent être exécutées avant que quelqu'un ne commence à travailler dans le conteneur au lieu de forcer les utilisateurs à les exécuter eux-mêmes (et en faisant confiance à ce qu'ils sauront même qu'ils ont besoin).
- `VOLUMES`: Celles-ci seront discutées {ref}`plus tard <rr-renv-containers-volumes>`.
- `MAINTAINER`: Ceci contient des informations concernant la personne qui a écrit le fichier Dockerfile. Il est généralement inclus en haut d'un fichier Dockerfile.
- `EXPOSE`: Cela inclut les ports qui doivent être exposés. Il est plus pertinent pour les personnes qui utilisent Docker pour partager des applications web.
- `UTILISATEUR`: Change l'utilisateur qu'une commande est exécutée (utile pour supprimer les privilèges).

(rr-renv-containers-dockerignore)=
## Construire des images et `.dockerignore` fichiers

Comme mentionné dans la section {ref}des commandes clés` <rr-renv-containers-commands>` , pour construire une image ouvrir un terminal dans le même répertoire que le fichier Dockerfile à utiliser et à exécuter :

```
sudo docker build --tag name_to_give_image .
```

Quand une image est construite tout ce qui se trouve dans le répertoire DockerFile et plus bas (c'est ce qu'on appelle le « contexte ») est envoyé au démon Docker pour construire l'image. Le démon utilise le fichier Dockerfile et son contexte pour construire l'image. Si le contexte contient beaucoup de gros fichiers, qui ne sont pas nécessaires à la construction de l'image, (anciennes datafiles, par exemple) alors c'est une perte de temps pour les envoyer au démon. Le fait de le faire peut ralentir le processus de construction d'une image. Les fichiers peuvent être exclus du contexte en les listant dans un fichier texte appelé `.dockerignore`. C'est une bonne pratique.

Les fichiers n'ont pas besoin d'être listés individuellement dans le fichier `.dockerignore`. Voici un exemple du contenu d'un fichier `.dockerignore`:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

Cela exclut du contexte :

- Tous les fichiers `.jpg` dans le même répertoire que le fichier Dockerfile
- Tous les fichiers `.png` dans le même répertoire que le fichier Dockerfile _ou tous les sous-répertoires qu'il contient_
- Tous les fichiers dans le répertoire `data_files`
- Le fichier nommé `file_to_exclude.txt`

(rr-renv-containers-sharing)=
## Partage d'images

Les images Docker peuvent être partagées plus facilement via [Docker Hub](https://hub.docker.com/), qui nécessite un compte. Dire deux chercheurs, Alice et Bob, collaborent à un projet et Alice souhaite partager une image de son travail avec Bob.

Pour cela, Alice doit:

- Écrivez un fichier Dockerfile pour produire une image de son travail.
- Construire l'image. Elle (être inventive) l'appelle image_name
- Allez sur DockerHub et créez un compte. Dire Alice (encore une fois, être inventif) choisit le nom d'utilisateur `username_Alice`
- Connectez-vous à DockerHub via le terminal de sa machine en utilisant :
  ```
  connexion sudo docker
  ```
- Étiquetez l'image de son projet sur sa machine via la ligne de commande en fournissant le nom de l'image et en utilisant le modèle `username/image_name:version`. Alice exécute donc la commande :
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- Poussez l'image vers son compte Docker Hub en utilisant :
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- L'image d'Alice est maintenant en ligne et peut être téléchargée. Passé à Bob...

Bob (en supposant qu'il ait déjà installé Docker) peut ouvrir un conteneur à partir de l'image d'Alice simplement en s'exécutant

```
sudo docker run -i -t username_Alice/image_name:version_1
```

Au départ, Docker recherche cette image sur la machine de Bob. Quand il ne le trouve pas, il va _automatiquement_ rechercher DockerHub, Téléchargez l'image d'Alice, et ouvrez le conteneur avec le travail et l'environnement d'Alice sur la machine de Bob.

(rr-renv-containers-copie)=
## Copie des fichiers vers et depuis les conteneurs

Les conteneurs agissent comme des machines virtuelles ; Par conséquent, la copie de fichiers dans et à partir d'eux n'est pas aussi triviale que la copie de fichiers à différents endroits à l'intérieur du même ordinateur.

Un fichier peut être copié depuis la machine qui exécute un conteneur dans le conteneur en utilisant :

```
sudo docker cp file_name container_ID:path_to_where_to_put_file/file_name
```

Rappelez-vous que les identifiants de conteneur peuvent être obtenus en utilisant `sudo docker container ls`.

Un fichier peut être copié à partir d'un conteneur vers la machine qui exécute le conteneur en exécutant la commande suivante sur la machine exécutant le conteneur :

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_to_put_file/file_name
```

Si la seconde partie (le `path_to_where_to_to_put_file/file_name`) est remplacée par un `.`, alors le fichier sera copié dans quel répertoire se trouve le terminal exécutant la commande.

(volumes-conteneurs-rrr-renv) =
## Volumes

Chaque fois qu'un conteneur est ouvert à partir d'une image, ce conteneur est entièrement nouveau. Disons qu'un conteneur est ouvert, et le travail est fait à l'intérieur de celui-ci. Disons qu'un conteneur est ouvert, et le travail est fait à l'intérieur de celui-ci. Si ce conteneur est fermé, et que l'image dont il est issu est de nouveau utilisée pour démarrer un autre conteneur, Aucun de ces travaux ne sera dans le nouveau. Il aura simplement l'état de départ décrit dans l'image.

Cela peut être un problème si un chercheur veut travailler dans un conteneur au fil du temps. Heureusement, il y a un moyen de contourner ce problème en utilisant des volumes. Les volumes stockent le travail effectué dans un conteneur même après sa fermeture, et peuvent être utilisés pour charger ce travail dans de futurs conteneurs.

Pour créer/utiliser un volume, exécutez :

```
sudo docker run -i -t --mount source=volume_name,target=/target_directory image_name
```

Vous devriez donner à votre volume un nom plus descriptif que `volume_name`. Un répertoire `cible` est requis ; seul le fonctionnement dans ce répertoire sera sauvegardé dans le volume. Une fois le chercheur terminé, il peut fermer le conteneur comme d'habitude. Quand ils reviennent au projet et veulent continuer leur travail, ils n'ont besoin d'utiliser que la même commande que ci-dessus, et il chargera le travail contenu dans `volume_name` dans le nouveau conteneur. Cela permettra également de sauver de nouveaux travaux.

Ci-dessous une liste des commandes liées au volume :

- Pour lister les volumes : `sudo docker volume ls`
- Pour supprimer un volume : `sudo docker volume rm volume_name`
- Pour supprimer tous les volumes non attachés : `sudo docker volume pruner`

Si, lors de la suppression d'un conteneur, un `-v` est inclus après `rm` dans `sudo docker rm container_ID`, tous les volumes associés au conteneur seront également supprimés.

(rr-renv-conteneurs-singularité)=
## Singularité


> **Prérequis**: Actuellement, la singularité ne fonctionne que sur les systèmes Linux (par exemple Ubuntu). Si vous utilisez macOS, [Singularity Desktop pour macOS](https://www.sylabs.io/singularity-desktop-macos/) est en phase de publication "Bêta".

Un inconvénient significatif de l'utilisation de Docker pour la recherche reproductible est qu'il n'est pas conçu comme une application de l'espace utilisateur, mais comme un outil pour les administrateurs de serveurs. En tant que tel, il nécessite un accès root pour fonctionner. Il n'y a cependant aucune raison pour que l'exécution d'une analyse nécessite un accès root pour l'utilisateur. Ceci est particulièrement important lorsque des calculs sont effectués sur une ressource partagée comme les systèmes HPC où les utilisateurs n'auront jamais accès root.

Le logiciel conteneur [singularité](https://www.sylabs.io/) a été introduit pour résoudre ce problème. La singularité a été créée avec des systèmes HPC et des recherches reproductibles en tête (voir \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNM vidéo). Il ne nécessite pas l'accès root pour s'exécuter (uniquement pour construire le conteneur _images_! , et permet ainsi aux utilisateurs de HPC de construire localement des images de conteneurs avant d'exécuter des analyses sur un cluster de hautes performances, par exemple. En tant qu'avantage supplémentaire, Cela permet d'utiliser presque n'importe quel logiciel sur un système HPC sans avoir à déranger le personnel d'administration de l'installer.

De plus, comme Docker est _l'approche de conteneur_ la plus connue, la singularité vise à maintenir la compatibilité avec les conteneurs docker. Cela signifie que la singularité peut être utilisée pour exécuter des conteneurs docker normaux (sans avoir besoin d'un accès root!).

La singularité peut être utilisée pour exécuter des images Docker ou les étendre en construisant de nouvelles images basées sur des conteneurs docker comme couche de base. Par exemple, nous pourrions utiliser la singularité pour créer un conteneur ubuntu vanilla avec un shell en utilisant l'image docker ubuntu:

```
docker://ubuntu de shell de singularité
```

> (tapez `exit` pour quitter à nouveau le shell interactif).

Tout comme les images docker sont construites à l'aide de fichiers `Dockerfile` , les conteneurs de singularité sont construits à partir de fichiers de définition de singularité. Le processus et la syntaxe sont similaires aux fichiers docker, mais il y a des différences subtiles. Comme exemple minimal, nous pouvons construire un conteneur `lolcow` basé sur l'image officielle du docker ubuntu. Mettre ce qui suit dans un fichier `lolcow.def` (basé sur la [documentation de singularité](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html) ) :
```
Bootstrap : docker
De: ubuntu

%post
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%environment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    fortune | cowsay | lolcat
```

Cette 'recette' utilise une image docker comme base (`ubuntu`), installe quelques paquets `apt` , modifie quelques variables d'environnement, et spécifie le `runscript` (qui est exécuté en utilisant la commande `de singularité` de la commande). Les détails sur le format de fichier de définition de singularité peuvent être trouvés dans la documentation officielle [](https://www.sylabs.io/docs/).

Une image de conteneur peut ensuite être construite (nécessitant la racine!) via :

```
sudo singularity build lolcow.simg lolcow.def
```

Cela va tirer l'image ubuntu de DockerHub, exécute les étapes de la recette dans le fichier de définition et produit un fichier image de sortie unique (`lolcow. img`). Enfin le `runscript` est exécuté comme

```
exécution de la singularité lolcow.simg
```

Idéalement, vous devriez voir une belle vache ASCII et quelques mots de sagesse:

```
___________________________________
/ Vous serez appelé pour aider un \
ami en difficulté.                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

Compatible avec HPC, les conteneurs de singularité sont également supportés par un large éventail d'outils de gestion de flux de travail. Par exemple, [snakemake](https://snakemake.readthedocs.io/en/stable/) et [nextflow](https://www.nextflow.io/docs/latest/singularity.html) prennent en charge les conteneurs de singularité spécifiques à la tâche. Cela rend les conteneurs de singularité particulièrement adaptés pour la mise en parallèle des flux de travail sur les systèmes HPC en utilisant le gestionnaire de charge de travail [slurm](https://slurm.schedmd.com/documentation.html) largement utilisé. Utiliser la singularité, les conteneurs et le snakemake/nextflow est un moyen de redimensionner la reproductibilité à une échelle massive. De plus, en tant qu'avantage supplémentaire, le transfert des flux de travail d'une machine de bureau vers un système HPC ne nécessite plus d'écrire des scripts de soumission de tâches personnalisés.

(rr-renv-containers-singularity-storage)=
### Stockage à long terme des images de conteneur

Il est important de noter qu'un simple fichier de recette de conteneur n'est pas reproductible en soi, puisque le processus de compilation dépend de diverses sources (en ligne). Ainsi, le même fichier de recette peut conduire à des images différentes si les sources sous-jacentes étaient mises à jour.

Pour obtenir une vraie reproductibilité, il est important de stocker les images _du conteneur_. Pour les images de singularité, c'est particulièrement facile car une image est simplement un fichier volumineux. Celles-ci peuvent varier en taille, de quelques dizaines de mégaoctets (micro-conteneurs) à plusieurs gigaoctets, et ne sont donc pas adaptés pour être stockés dans un dépôt git eux-mêmes A libre, citable, et la solution à long terme pour stocker des images de conteneur est [zenodo. rg](https://zenodo.org/) qui autorise jusqu'à 50 Go par dépôt. Depuis que zenodo menthe DOI pour tout le contenu téléchargé, les images sont immédiatement citables. Contrairement à [Docker Hub](https://hub.docker.com/) (qui n'accepte également que les images docker), zenodo est également clairement orienté vers le stockage et la découverte à long terme via un système de métadonnées sophistiqué. Il est donc idéal pour stocker des conteneurs scientifiques associés à des analyses particulières, car ceux-ci ont tendance à ne pas changer au fil du temps.

(rr-renv-conteneurs-avertissement)=
## Mots d'avertissement

Même si la singularité et le docker peuvent sembler similaires, ils sont conceptuellement très différents. Outre le fait évident que la singularité ne nécessite pas l'accès root pour exécuter des conteneurs, il gère également différemment la distinction entre le système de fichiers hôte et le système de conteneur. Par exemple, par défaut, la singularité inclut quelques points de liaison dans le conteneur, à savoir :

- `$HOME`
- `/sys:/sys`
- `/fr/proc:/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

Note, `$PWD` est pratique car cela implique que tous les fichiers du répertoire de travail sont visibles dans le conteneur. Lier `$HOME` par défaut, cependant, implique également que les logiciels utilisant des fichiers de configuration de `$HOME` pourraient se comporter de manière inattendue puisque les fichiers de configuration spécifiques à l'image sont remplacés par les paramètres des utilisateurs actuels dans `$HOME`. Bien que ce comportement soit pratique dans les scénarios HPC, il est potentiellement dangereux pour la recherche reproductible. Pour éviter des problèmes éventuels, tout logiciel installé dans un conteneur de singularité doit être pointé vers un fichier de configuration global indépendant des utilisateurs.
