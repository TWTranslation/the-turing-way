(rr-renv-options)=

# Capture des environnements de calcul

Il y a plusieurs façons de capturer des environnements informatiques.
Les principaux sujets abordés dans ce chapitre seront les systèmes de gestion des paquets, les lieurs, les machines virtuelles et les conteneurs.
Chacun a ses avantages et ses inconvénients, et l'option la plus appropriée pour vous dépendra de la nature de votre projet.

Ils peuvent être largement divisés en deux catégories : celles qui ne capturent que le logiciel et ses versions utilisées dans un environnement (Package Management Systems), et ceux qui reproduisent un environnement informatique entier - y compris le système d'exploitation et les paramètres personnalisés (machines virtuelles et conteneurs).

Une autre façon de les diviser est la façon dont la recherche reproduite est présentée au lecteur.
L'utilisation de Binder ou d'une Machine Virtuelle crée un résultat de type GUI beaucoup plus graphique.
Par contre, les sorties des conteneurs et des systèmes de gestion des paquets sont plus facilement interagées via la ligne de commande.

```{figure} ../../../figures/computational-environments.*
---
name: computational-environments
alt: A depiction of the various tools used to capture computational environments
---
Ways of capturing computational environments
```

Une brève description de chacun de ces outils est donnée ci-dessous

(rr-renv-options-pms)=

## Systèmes de gestion des paquets

Package Management Systems [{term}`def<Package Management System>`] are tools used to install and keep track of the software (and critically versions of software) used on a system and can export files specifying these required software packages/versions.
Les fichiers peuvent être partagés avec d'autres personnes qui peuvent les utiliser pour reproduire l'environnement, soit manuellement soit via leurs systèmes de gestion des paquets.

(rr-renv-options-binder)=

## Binder

Binder [{term}`def<Binder>`] is a service which generates fully-functioning versions of projects from a git repository and serves them on the cloud.
Ces projets « liés » sont accessibles et interagissent avec d'autres via un navigateur Web.
Pour ce faire, Binder exige que le logiciel (et éventuellement les versions) requis pour exécuter le projet soit spécifié.
Users can make use of Package Management Systems or Dockerfiles (discussed in the {ref}`rr-renv-options-containers` sections) to do this if they so desire.

(rr-renv-options-vm)=

## Machines virtuelles

Virtual Machines [{term}`def<Virtual machine>`] are simulated computers.
Un utilisateur peut faire un ordinateur "virtuel" très facilement, en spécifiant le système d'exploitation qu'il veut avoir, entre autres fonctionnalités, et l'exécutez comme n'importe quelle autre application.
Dans l'application sera le bureau, le système de fichiers, les bibliothèques logicielles par défaut et d'autres fonctionnalités de la machine spécifiée.
Ils peuvent être interagis comme s'il s'agissait d'un véritable ordinateur.
Les machines virtuelles peuvent être facilement répliquées et partagées.
Cela permet aux chercheurs de créer des machines virtuelles, d'effectuer leurs recherches sur elles, puis d'enregistrer leur état avec leurs fichiers, leurs paramètres et leurs sorties.
Ils peuvent ensuite les distribuer en tant que projet fonctionnant pleinement.

(rr-renv-options-containers)=

## Containers

Containers [{term}`def<Container>`] offer many of the same benefits as Virtual Machines.
Ils agissent essentiellement comme des machines entièrement séparées qui peuvent contenir leurs propres fichiers, logiciels et paramètres.

La différence est que les Machines Virtuelles incluent un système d'exploitation entier ainsi que tous les logiciels associés qui sont généralement empaquetés avec lui - indépendamment du fait que le projet utilise ou non le logiciel associé.
Les conteneurs ne contiennent que le logiciel et les fichiers explicitement définis à l'intérieur de ceux-ci afin d'exécuter le projet qu'ils contiennent.
Cela les rend beaucoup plus légers que les machines virtuelles.

Les conteneurs sont particulièrement utiles si les projets doivent être exécutés sur des environnements informatiques hautement performants.
Since they already _contain_ all the necessary software, they save having to install anything on an unfamiliar system where the researcher may not have the required permissions to do so.
