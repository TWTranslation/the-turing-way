(rr-renv-options)=
# Capture des environnements de calcul

Il y a plusieurs façons de capturer des environnements informatiques. Les principaux sujets abordés dans ce chapitre seront les systèmes de gestion des paquets, les lieurs, les machines virtuelles et les conteneurs. Chacun a ses avantages et ses inconvénients, et l'option la plus appropriée pour vous dépendra de la nature de votre projet.

Ils peuvent être largement divisés en deux catégories : celles qui ne capturent que le logiciel et ses versions utilisées dans un environnement (Package Management Systems), et ceux qui reproduisent un environnement informatique entier - y compris le système d'exploitation et les paramètres personnalisés (machines virtuelles et conteneurs).

Une autre façon de les diviser est la façon dont la recherche reproduite est présentée au lecteur. L'utilisation de Binder ou d'une Machine Virtuelle crée un résultat de type GUI beaucoup plus graphique. Par contre, les sorties des conteneurs et des systèmes de gestion des paquets sont plus facilement interagées via la ligne de commande.

```{figure} ../../figures/computational-environments.jpg
---
nom : environnements computationnels
alt : Une représentation des divers outils utilisés pour capturer des environnements de calcul
---
Des façons de capturer des environnements de calcul
```

Une brève description de chacun de ces outils est donnée ci-dessous


(rr-renv-options-pms)=
## Systèmes de gestion des paquets

Les systèmes de gestion de paquets [{term}`def<Package Management System>`] sont des outils utilisés pour installer et garder une trace du logiciel (et des versions critiques des logiciels) utilisé sur un système et peuvent exporter les fichiers spécifiant ces paquets/versions logicielles requises. Les fichiers peuvent être partagés avec d'autres personnes qui peuvent les utiliser pour reproduire l'environnement, soit manuellement soit via leurs systèmes de gestion des paquets.


(rr-renv-options-binder)=
## Binder

Le lieur [{term}`def<Binder>`] est un service qui génère des versions pleinement fonctionnelles de projets depuis un dépôt git et les dessert sur le cloud. Ces projets « liés » sont accessibles et interagissent avec d'autres via un navigateur Web. Pour ce faire, Binder exige que le logiciel (et éventuellement les versions) requis pour exécuter le projet soit spécifié. Les utilisateurs peuvent utiliser des systèmes de gestion des paquets ou des fichiers Dockerfiles (discuté dans les sections {ref}`rr-renv-options-containers` ) pour le faire s'ils le désirent.


(rr-renv-options-vm)=
## Machines virtuelles

Les machines virtuelles [{term}`def<Virtual machine>`] sont des ordinateurs simulés. Un utilisateur peut faire un ordinateur "virtuel" très facilement, en spécifiant le système d'exploitation qu'il veut avoir, entre autres fonctionnalités, et l'exécutez comme n'importe quelle autre application. Dans l'application sera le bureau, le système de fichiers, les bibliothèques logicielles par défaut et d'autres fonctionnalités de la machine spécifiée. Ils peuvent être interagis comme s'il s'agissait d'un véritable ordinateur. Les machines virtuelles peuvent être facilement répliquées et partagées. Cela permet aux chercheurs de créer des machines virtuelles, d'effectuer leurs recherches sur elles, puis d'enregistrer leur état avec leurs fichiers, leurs paramètres et leurs sorties. Ils peuvent ensuite les distribuer en tant que projet fonctionnant pleinement.


(rr-renv-options-containers)=
## Conteneurs

Les conteneurs [{term}`def<Container>`] offrent les mêmes avantages que les machines virtuelles. Ils agissent essentiellement comme des machines entièrement séparées qui peuvent contenir leurs propres fichiers, logiciels et paramètres.

La différence est que les Machines Virtuelles incluent un système d'exploitation entier ainsi que tous les logiciels associés qui sont généralement empaquetés avec lui - indépendamment du fait que le projet utilise ou non le logiciel associé. Les conteneurs ne contiennent que le logiciel et les fichiers explicitement définis à l'intérieur de ceux-ci afin d'exécuter le projet qu'ils contiennent. Cela les rend beaucoup plus légers que les machines virtuelles.

Les conteneurs sont particulièrement utiles si les projets doivent être exécutés sur des environnements informatiques hautement performants. Puisqu'ils contiennent déjà __ tous les logiciels nécessaires, ils épargnent d'avoir à installer quoi que ce soit sur un système inhabituel où le chercheur pourrait ne pas avoir les permissions requises pour le faire.
