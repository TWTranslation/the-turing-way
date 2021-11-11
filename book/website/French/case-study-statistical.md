(rr-cs-statistique-méthode-manuscrite)=
# Manuscrit des méthodes statistiques

## À propos de cette étude de cas

Le but de cette étude de cas est de discuter des différentes composantes de la reproduccibilité de la recherche mise en œuvre dans la conception et la conduite d'une étude statistique . Avec l'aide de leur manuscrit, les auteurs fournissent un catalogue de méthodes utilisées dans leur recherche et les renvoient croisés aux sections respectives discutées dans cette {ref}`rr`.

## À propos du manuscrit

- **Title:** A review of Bayesian perspectives on sample size derivation for confirmatory trials{cite:ps}`Kunzmann2020CS`.
- **Auteurs :** Kevin Kunzmann, Michael J. Grayling, Kim May Lee, David S. Robertson, Kaspar Rufibach, James M. S. Lapin
- **Mois de publication & année**: Juin 2020

### Aperçu

Le manuscrit {cite:ps}`Kunzmann2020CS` est lui-même préoccupé par le problème de produire une taille d'échantillon appropriée pour un essai clinique. Il s'agit d'un problème classique dans les statistiques et particulièrement important dans les statistiques médicales où la collecte de données d'essai est extrêmement coûteuse et les considérations éthiques doivent être traitées. Le manuscrit passe en revue et étend les méthodes pour intégrer systématiquement l'incertitude de planification dans la dérivation de la taille de l'échantillon.

### Résumé de la citation

Le manuscrit peut être cité au format APA en texte brut :

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). A review of Bayesian perspectives on sample size derivation for confirmatory trials. arXiv preprint arXiv:2006.15715.

Format BibTeX :

```
@article{
    kunzmann2020,
      titre = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     auteur = {Kunzmann, Kevin et Grayling, Michael J et Lee, Kim May et Robertson, David S et Rufibach, Kaspar et Wason, James},
    journal = {arXiv preprint arXiv:2006.15715},
       année = {2020}
}
```

## Catalogue des différentes méthodes de recherche reproductible

### Contrôle de version

Le dépôt git [https://github.com/kkmann/sample-size-calculation-under-incertitude](https://github.com/kkmann/sample-size-calculation-under-uncertainty) contient tout le code nécessaire pour produire le manuscrit [arXiv:2006.15715](https://arxiv.org/abs/2006.15715) à partir de zéro. Pour une explication approfondie de l'importance du contrôle de version pour la recherche reproductible, voir {ref}`Systèmes de contrôle de version<rr-vcs>`.


### Gestion des données de recherche

Dans ce cas particulier,
{ref}`la gestion des données <rr-rdm>` aspects ne sont pas un problème puisque le manuscrit est exclusivement basé sur des exemples hypothétiques et pas externes, des données protégées sont requises.


#### Programmation litérale

Le manuscrit {cite:ps}`Kunzmann2020CS` est lui-même écrit et construit avec [LaTeX](https://www.latex-project.org/). Les fichiers sources sont contenus dans le sous-dossier `latex/`. Les fichiers TeX bruts ont été préférés aux solutions de programmation littéraires telles que [knitr](https://github.com/rstudio/rmarkdown) pour [R](https://www.r-project.org/) pour faciliter l'utilisation d'éditeurs LaTeX dédiés comme [Overleaf](https://www.overleaf.com/project). Cela signifie toutefois que tous les chiffres utilisés dans le manuscrit doivent être créés séparément. Un cahier dédié [Jupyter](https://jupyter.org/) `notebooks/figures-for-manuscript.ipynb` combinant code et descriptions rudimentaires sont fournis à cette fin.


### Environnement logiciel reproductible

Bien que cela signifie que tout le code requis pour compiler le manuscrit à partir de zéro est disponible dans un environnement autonome, il n'est pas encore suffisant pour assurer la reproductibilité. Installer LaTeX, Jupyter et R avec la même spécification nécessaire pour exécuter tout le code peut toujours être difficile pour les utilisateurs moins expérimentés. Pour éviter cela, il faut empêcher les lecteurs intéressés d'expérimenter avec le code, une combinaison du paquet Python [repo2docker](https://github.com/jupyter/repo2docker) et d'un service d'hébergement libre [BinderHub](https://mybinder.org/) est utilisée. Pour plus de détails sur ces techniques, voir le chapitre sur {ref}`BinderHub<rr-binderhub>`. Cela permet aux personnes intéressées de démarrer une version interactive du dépôt avec tous les logiciels requis préinstallés - dans exactement les bonnes versions ! Notez qu'il est possible de fournir des liens de liaison *version stable*

[![insigne](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![insigne](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

Ce badge pointe vers l'état du dépôt à un moment précis (via la fonction de marquage git). Cela signifie que les liens resteront valides et inchangés même s'il y a corrections ultérieures au contenu du référentiel ! Binder prend en charge plusieurs interfaces utilisateur. Ceci est utilisé pour fournir et la vue du laboratoire Jupyter environnement de développement intégré sur le référentiel pour explorer le fichier, le bloc-notes Jupyter, ou pour ouvrir un shell pour commandes supplémentaires. Le second badge ouvre directement une application interactive Shiny qui illustre certains des points abordés dans le manuscrit et ne nécessite aucune familiarité avec la programmation du tout. Toutes les configurations pertinentes pour Binder sont situées dans le sous-dossier `.binder`.


### Gestion du flux de travail en utilisant Snakemake

Puisque JupyterLab permet également d'ouvrir un shell dans l'instance de dépôt ouverte en utilisant un lien Binder, une autre fonctionnalité du dépôt peut être utilisée pour reproduire le *manuscrit entier à partir de zéro*. Le gestionnaire de workflow Python [Snakemake](https://snakemake.readthedocs.io/en/stable/) a été utilisé pour définir toutes les étapes requises dans un `Snakefile`. Pour exécuter ce workflow, vous pouvez ouvrir un shell dans la version [en ligne de JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/). Une fois le chargement de l'interface utilisateur terminé, ouvrez un nouveau terminal et tapez
```
snakemake -F --coes 1 manuscrit
```
Ceci exécutera toutes les étapes requises à tour de rôle :

1. créer tous les plots en exécutant le fichier du notebook Jupyter
2. compilation du fichier `latex/main.pdf` réel à partir des sources LaTeX

Vous devriez alors voir un fichier `main.pdf` dans le sous-dossier `latex`.


### Prise en charge de l'instanciation locale de l'environnement logiciel

Le paquet Python repo2docker peut également être utilisé localement pour reproduire le même environnement informatique . Pour cela, vous devrez avoir Python et Docker installés. Pour plus de détails sur les technologies Docker et conteneur en général, veuillez consulter le chapitre sur les environnements et conteneurs reproductibles de {ref}`<rr-renv-containers>`. Ensuite, il suffit de cloner le dépôt sur votre machine locale en utilisant les commandes
```
git clone git@github.com:kkmann/sample-size-calculation-under-uncertainty.git
cd sample-size-calculation-under-incertitude
```
Après clonage du dépôt, vous pouvez construire et exécuter un conteneur Docker localement en utilisant les fichiers de configuration fournis dans le `. inder/` dossier en utilisant la commande suivante
```
jupyter-repo2docker -E .
```
Le conteneur est démarré automatiquement une fois la compilation terminée et vous pouvez utiliser l'interface habituelle de Jupyter dans votre navigateur en suivant le lien imprimé par repo2docker pour explorer le dépôt localement.


### Utilisation de l'intégration continue

Bien que pas nécessaire pour la reproductibilité de ce manuscrit, le référentiel utilise également l'intégration continue ({ref}`CI <rr-ci>`) en utilisant [des actions GitHub](https://github.com/features/actions). Les exécuteurs d'actions GitHub sont fournis directement depuis GitHub (voir `rr-ci-github-actions`).

Le dépôt définit deux workflows dans le répertoire `.github/workflows`. Le premier, [`.github/workflows/build_and_run. ml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml), est activé chaque fois que la branche maîtresse du référentiel est mise à jour et les spécifications dans `. inder` sont changés. Cela construit le conteneur, le pousse dans un référentiel de conteneurs public [docker hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty), puis vérifie que le workflow Snakemake est exécuté sans problème. Le deuxième, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), s'exécute lorsque le dossier `. inder` n'a pas été modifié et utilise le conteneur Docker pré-compilé pour exécuter le flux de travail Snakemake. Ce dernier économise beaucoup de temps de calcul puisque l'environnement informatique va changer beaucoup moins souvent que le contenu du dépôt. L'utilisation de CI facilite ainsi la vérification des contributions par les pull requests pour l'intégrité technique et rend disponible pour le téléchargement direct la dernière version respective du conteneur requis . Cela signifie qu'au lieu de construire le conteneur localement en utilisant repo2docker, vous pouvez donc juste le télécharger directement et exécuter le workflow en utilisant les commandes suivantes
```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-incertitude
docker exec --name mycontainer /
    snakemake -F --coes 1 manuscrit
```

### Archivage à long terme et citabilité

Le dépôt GitHub est également lié à [zenodo.org](https://zenodo.org/) pour assurer l'archivage à long terme de , voir {ref}`cm-citable-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Notez qu'un DOI fourni par Zenodo peut également être utilisé avec BinderHub pour tourner un instantané de dépôt sauvegardé sur Zenodo dans un environnement interactif ([voir ce billet de blog](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
