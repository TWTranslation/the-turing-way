(rr-make)=
# Reproduccibilité avec Make

(rr-make-prerequisites)=
## Pré-requis

| Pré-requis                                                                                        | Importance | Notes                                                              |
| ------------------------------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------ |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Nécessaire |                                                                    |
| {ref}`Contrôle de version<rr-vcs>`                                                          | Utile      | L'expérience en utilisant git est utile à suivre avec des exemples |

Niveau de compétence recommandé : intermédiaire

(rr-make-summary)=
## Summary

Une science des données ou un projet de recherche peut être considéré comme un arbre de dépendances : le rapport dépend des chiffres et des tableaux, et celles-ci dépendent à leur tour des données et des scripts d'analyse utilisés pour traiter ces données (illustrées dans la figure ci-dessous).  Make est un outil pour créer des fichiers de sortie à partir de leurs dépendances via des règles pré-spécifiées.  Il est possible de combiner ces deux idées pour créer un projet reproductible avec Make.  Dans ce chapitre, nous donnons une introduction à Make et fournissons un tutoriel sur la façon dont Make peut être utilisé pour un pipeline d'analyse de données .  Nous décrivons également un projet de recherche reproductible dans le monde réel qui utilise Make pour passer des données d'entrée brutes aux expériences toutes les voies vers le fichier pdf du papier !

```{figure} ../figures/make-research-dag.png
---
nom : make-research-dag
alt : Schéma d'un projet de recherche.
---
Schématique d'un projet de recherche.
```

(rr-make-intro)=
## Une introduction à faire

Make est un outil d'automatisation de construction. Il utilise un fichier de configuration appelé un Makefile qui contient les règles ** pour ce qu'il faut construire. Faire des constructions *cibles* en utilisant *recettes*.  Les cibles peuvent éventuellement avoir *prérequis*.  Les pré-requis peuvent être des fichiers sur votre ordinateur ou d'autres cibles. Make determines what to build based on the dependency tree of the target and prerequisites (technically c'est un {ref}`rr-make-resources-tool`). Il utilise le *temps de modification* de prérequis pour mettre à jour les cibles uniquement lorsque nécessaire.

(rr-make-pourquoi)=
### Pourquoi utiliser la marque pour la reproductibilité ?

Il y a plusieurs raisons pour lesquelles Make est un bon outil à utiliser pour la reproductibilité :

1. Faire est facile à apprendre
1. Rendre disponible sur de nombreuses plateformes
1. Faire est flexible
1. Beaucoup de gens sont déjà familiers avec Make
1. Les fichiers Makefiles réduisent la charge cognitive parce que tant que les cibles communes Make targets `tous` et `clean` sont présents (expliqué ci-dessous), vous pouvez être opérationnel et fonctionner sans avoir à lire de longues instructions. Ceci est particulièrement utile lorsque vous travaillez sur le projet de quelqu'un d'autre ou sur un projet que vous n'avez pas utilisé depuis longtemps.
1. Les makefiles sont des fichiers texte lisibles par des machines et lisibles. Donc, au lieu de écrire des instructions à un humain pour construire un rapport ou une sortie, vous pouvez fournir un Makefile avec des instructions qui peuvent être lues par un humain *et* exécuté par un ordinateur.
1. Parce que les fichiers Makefiles sont des fichiers texte, ils sont faciles à partager et à garder dans le contrôle de la version .
1. L'utilisation de Make n'exclut pas l'utilisation d'autres outils tels que Travis et Docker.

Avec un Makefile intelligent, vous pouvez partager une analyse complète (code, données, code, etc.) et flux de travail de calcul) et laissez les collaborateurs ou les lecteurs de votre papier recalculer vos résultats. En utilisant des outils tels que LaTeX, vous pouvez même générer un manuscrit complet qui inclut des figures et des résultats fraîchement calculés ! Cela peut augmenter la confiance dans les résultats de recherche que vous générez, elle peut rendre votre recherche plus accessible, et elle peut faciliter la collaboration. Ce chapitre peut vous montrer comment commencer.
