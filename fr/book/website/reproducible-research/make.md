(rr-make)=

# Reproduccibilité avec Make

(rr-make-prerequisites)=

## Prerequisites

| Prerequisite                                                               | Importance | Notes                                                              |
| -------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Nécessaire |                                                                    |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | L'expérience en utilisant git est utile à suivre avec des exemples |

Niveau de compétence recommandé : intermédiaire

(rr-make-summary)=

## Summary

Une science des données ou un projet de recherche peut être considéré comme un arbre de dépendances : le rapport
dépend des chiffres et des tableaux, et celles-ci dépendent à leur tour des données
et des scripts d'analyse utilisés pour traiter ces données (illustrées dans la figure
ci-dessous).  Make est un outil pour créer des fichiers de sortie à partir de leurs dépendances
via des règles pré-spécifiées.  Il est possible de combiner ces deux idées pour
créer un projet reproductible avec Make.  Dans ce chapitre, nous donnons une
introduction à Make et fournissons un tutoriel sur la façon dont Make peut être utilisé pour un pipeline d'analyse de données
.  Nous décrivons également un projet de recherche reproductible dans le monde réel
qui utilise Make pour passer des données d'entrée brutes aux expériences toutes les
voies vers le fichier pdf du papier !

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## Une introduction à faire

Make est un outil d'automatisation de construction. It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  Les pré-requis
peuvent être des fichiers sur votre ordinateur ou d'autres cibles. Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-pourquoi)=

### Pourquoi utiliser la marque pour la reproductibilité ?

Il y a plusieurs raisons pour lesquelles Make est un bon outil à utiliser pour la reproductibilité :

1. Faire est facile à apprendre
2. Rendre disponible sur de nombreuses plateformes
3. Faire est flexible
4. Beaucoup de gens sont déjà familiers avec Make
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Les makefiles sont des fichiers texte lisibles par des machines et lisibles. So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

Avec un Makefile intelligent, vous pouvez partager une analyse complète (code, données, code, etc.) et
flux de travail de calcul) et laissez les collaborateurs ou les lecteurs de votre papier
recalculer vos résultats.
En utilisant des outils tels que LaTeX, vous pouvez même générer un manuscrit complet qui
inclut des figures et des résultats fraîchement calculés !
Cela peut augmenter la confiance dans les résultats de recherche que vous générez, elle peut
rendre votre recherche plus accessible, et elle peut faciliter la collaboration.
Ce chapitre peut vous montrer comment commencer.
