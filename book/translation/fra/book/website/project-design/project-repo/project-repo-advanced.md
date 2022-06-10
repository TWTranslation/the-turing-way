# Structure avancée pour l'analyse des données

## Prérequis / Niveau de compétence recommandé

| Pré-requis                                          | Importance | Notes                                                            |
| --------------------------------------------------- | ---------- | ---------------------------------------------------------------- |
| {ref}`Contrôle de version<rr-vcs>`            | Utile      | Connaissance de l'utilisation de git pour le contrôle de version |
| {ref}`Recherche Ouverte<rr-open>`             | Utile      | Les composants font partie du compendium                         |
| {ref}`Environnements reproductibles<rr-renv>` | Utile      | Peut être utilisé pour reproduire le compendium                  |

## Summary

Lors de la planification d'une étude de recherche, un élément crucial et souvent oublié est la mise en place d'un dépôt. Dans cette section, les avantages et les considérations de la conception d'un référentiel seront expliqués, avec un exemple de structure et d'autres ressources pour guider votre workflow.

Les conditions préalables à ce chapitre peuvent varier selon les besoins organisationnels d'un projet. Créer un référentiel avec une simple disposition de projet de recherche peut nécessiter des connaissances techniques minimales (comme la gestion des données d'entrée et des résultats de sortie). Pendant ce temps, des mises en page avancées des dépôts peuvent être requises pour des projets plus compliqués (comme des projets avec des dépendances sur d'autres projets).

## Arrière-plan

Un référentiel (ou un « dépôt ») est un emplacement de stockage pour votre projet de recherche. Un dépôt peut contenir une gamme d'objets numériques et peut être utilisé pour stocker votre projet en utilisant des plateformes en ligne telles que GitHub. L'objectif d'un référentiel est d'organiser votre projet de telle manière qu'il soit à la fois accessible aux autres et efficace à utiliser.

Jusqu'à présent, nous avons vu les documents clés qu'il faut ajouter au démarrage ou à la mise en place d'un référentiel de projet. Si vous suivez, votre projet devrait contenir les fichiers suivants :

```
Dossier de projet/
── CODE_OF_CONDUCT          <- Code de conduite pour les projets communautaires
── CONTRIBUTING             <- Guide de contribution pour les collaborateurs
── LICENSE                  <- licence de logiciel
─ . .                      <- tout autre fichier que vous pourriez avoir ajouté pour votre projet
<unk> ─ README. d                <- informations sur le dépôt
```

Dans ce sous-chapitre, nous décrivons les avantages et les considérations de la conception d'un référentiel, ainsi qu'un exemple de structure et de ressources supplémentaires pour guider votre flux de travail.

```{note}
L'avantage principal de la conception de votre dépôt en ajoutant intentionnellement de la documentation, et les informations pertinentes permettent de créer une infrastructure pour la recherche éthique, ouverte et de grande qualité dès le départ.
```

## Considérations Principales

Lorsque vous partagez vos ressources via votre référentiel, considérez les aspects suivants de la reproductibilité dans votre recherche :

- Transparence et ouverture
- Système de contrôle de version (plus de fichiers comme final_v1_FINAL.R, final_v2_FINAL.R, ...)
- Facilitez la navigation pour gagner du temps pour toutes les personnes concernées
- Considérer {ref}aspects`pd-overview-repro`
- Assurez-vous que vous fournissez suffisamment de détails pour que d'autres puissent s'appuyer sur votre travail

## Recommandations Principales

Pensez toujours à concevoir votre projet pour la collaboration en ajoutant des documents clés décrivant les objectifs du projet, la vision, la feuille de route, la contribution et le processus de communication (comme décrit dans les sous-chapitres précédents).
- Inclure des détails dans {ref}`fichier README<pd-project-repo-readme>`décrivant _à quoi sert_ le dépôt et _comment_ le naviguer
- Fournir la vision, les objectifs et la feuille de route dans la mesure du possible (voir la feuille de route des développeurs [de Kamran Ahmed](https://github.com/kamranahmedse/developer-roadmap) par exemple)
- La structure générale doit séparer l'entrée (données), les méthodes (scripts) et la sortie (résultats, chiffres, manuscrit)
- Spécifiez ce qui ne devrait pas être suivi dans le fichier `.gitignore` , comme les fichiers sensibles/privés, les gros jeux de données ou les notes personnelles
- Inclure des informations sur votre environnement de calcul {ref}`Environnements reproductibles<rr-renv>` pour assurer la reproductibilité (cela peut également être spécifié dans le README)

## Exemple de structure de dépôt

### Exemple pour un projet de recherche

Voici une suggestion de fichiers et de dossiers qu'un projet de recherche doit avoir.

```
Dossier de Projet/
── docs                     <- documentation
文<unk> ─ codelist.txt 
文<unk> ─ project_plan.txt
文<unk> ─ ...
文<unk> ─ deliverables.txt
── données
<unk> ─ raw/
<unk> ─ <unk> ─ <unk> ─ ma_data. sv
Ω<unk> ── clean/
Ω<unk> ─ data_clean. sv
── analyse                 <- scripts
文<unk> ─ mon_script.
── resultats                  <- sortie d'analyse     
Ω<unk> ─ chiffres
── . itignore               <- fichiers exclus du contrôle de version de git 
── install.                <- installation d'environnement
── CODE_OF_CONDUCT          <- Code de conduite pour les projets communautaires
── CONTRIBUTING             <- Guide de contribution pour les collaborateurs
── LICENSE                  <- licence de logiciel
── README. d                <- informations sur le dépôt
<unk> ─ rapport. d                <- rapport du projet
```

### Exemple avec chaque dossier possible

Cet exemple montre différents fichiers et répertoires qu'un projet peut contenir lors de la construction d'une application logicielle ou d'outils d'ingénierie de recherche.

```
Dossier de Projet/                        
── analyse                 <- scripts
Ω<unk> ─ mon_script.
── build                    <- fichiers construits, Makefile
| ── debug
| <unk> ── release
── data
文<unk> ─ raw/
文<unk> ─ mon_data. sv
Ω<unk> ── clean/
文<unk> ─ data_clean. sv
── docs                     <- documentation
Ω<unk> ─ codelist. xt 
── gestion de projet       <- documents relatifs à la gestion de projet
Ω<unk> ─ communication. d
Ω<unk> ── people.md
文<unk> ─ project-report.md
Ω<unk> ─ tools. d
── res                      <- ressources statiques (images et fichiers audio)
Ω<unk> ─ figures
── ─ . itignore               <- fichiers exclus du contrôle de version git 
── CODE_OF_CONDUCT          <- Code de Conduite pour les projets de la communauté
── CONTRIBUTING             <- Guide de contribution pour les collaborateurs
─ lib                      <- dépendances (composants partagés qui peuvent être utilisés sur une application ou sur plusieurs projets, qui prend en charge l'application core)
── logs. xt                 <- historique de toutes les mises à jour majeures comme la version de fonctionnalité, correction de bugs, mises à jour
── exemple                  <- exemple d'application de code
── LICENSE                  <- licence de logiciel
── environnement. ml          <- installation d'environnement anaconda   
── install.                <- installation d'environnement R
── exigences. xt         <- installation d'environnement python
── runtime. xt              <- R dans la configuration du lieur
── rapport. d                <- rapport d'analyse
─ ─ README. d                <- informations sur le repo
─ src                      <- fichiers source
<unk> ─ test                     <- tests unitaires  
```

## Ressource

### Paquets R et Python

| R                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [gabarit](https://github.com/Pakillo/template)                    | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [refaire](https://github.com/richfitz/remake)                     |                                                              |

### Exemples de dépôts GitHub organisés

- [_Le dépôt du projet Turing Way_](https://github.com/alan-turing-institute/the-turing-way)
- [Dépôt de projet Jupyter Book](https://github.com/executablebooks/jupyter-book)
- [Dépôt de paquets Pandas](https://github.com/pandas-dev/pandas)
- [Dépôt de l'éditeur de texte Atom](https://github.com/atom/atom)

Pour plus de détails, veuillez suivre {ref}`project-repo-recommendations-advanced`.
