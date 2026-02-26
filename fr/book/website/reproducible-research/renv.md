(rr-renv)=

# Environnements reproductibles

(rr-renv-conditions préalables)=

## Prerequisites

| Prerequisite                                                               | Importance | Notes                                                                                           |
| -------------------------------------------------------------------------- | ---------- | ----------------------------------------------------------------------------------------------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Nécessaire | L'expérience du téléchargement de logiciels via la ligne de commande est particulièrement utile |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | Expérience en utilisant git et GitHub sont utiles                                               |

**Recommended Skill Level**: _Intermediate-Advanced_

(rr-renv-summary)=

## Summary

Every computer has its unique computational environment [{term}`def<Computational Environment>`] consisting of its operating system, installed software, versions of installed software packages, and other features that we will describe later.
Supposons qu'un projet de recherche soit réalisé sur un ordinateur mais transféré sur un autre ordinateur.
Il n'y a aucune garantie que l'analyse pourra être exécutée ou générer les mêmes résultats si l'analyse dépend de l'une des considérations énumérées ci-dessus.

Pour que la recherche soit reproductible, l'environnement de calcul dans lequel il a été effectué doit être capturé de manière à ce que d'autres puissent le reproduire.
Ce chapitre décrit une variété de méthodes pour capturer des environnements de calcul et donne des conseils sur leurs forces et leurs faiblesses.

### Qu'est-ce qu'un environnement informatique ?

En termes généraux, un environnement de calcul est le système où un programme est exécuté.
Cela inclut les fonctionnalités du matériel (comme le nombre de cœurs dans n'importe quel processeur) et les fonctionnalités des logiciels (comme le système d'exploitation, langages de programmation, paquets supportés, autres logiciels installés, ainsi que leurs versions et configurations).

Software versions are often defined via [semantic versioning](https://semver.org).
Dans ce système, trois nombres - par exemple, 2.12.4 - sont utilisés pour définir chaque version d'un logiciel.
Lorsqu'une modification est apportée au logiciel, sa version est incrémentée.
These three numbers follow the pattern _MAJOR.MINOR.PATCH_, and are incremented as follows:

- _MAJOR_: significant changes
- _MINOR_: to add functionality
- _PATCH_: for bug fixes

(rr-renv-utiles)=

## Motivation and Background

Examinons un exemple de l'importance des environnements informatiques.
Disons que j'ai un script Python très simple :

```
a = 1
b = 5
print(a/b)
```

One divided by five is `0.2`, and this is what is printed if the script is run using Python 3.
However, if a slightly older version of Python, such as Python 2, is used, the result printed is `0`.
Ceci est dû au fait que la division entière est appliquée à entiers dans Python 2, mais la division (normale) est appliquée à tous les types, y compris les entiers, en Python 3.

Therefore this simple script returns _different_ answers depending on the computational environment in which it is run.
Utiliser la mauvaise version de Python est facile à faire, et montre comment un morceau de code parfaitement valide peut donner des résultats différents en fonction de son environnement.
Si de tels problèmes peuvent avoir un impact sur un simple script comme celui-ci, imaginez combien pourraient apparaître dans une procédure d'analyse complexe qui peut impliquer des milliers de lignes de code et des dizaines de paquets dépendants.

Les chercheurs doivent comprendre et saisir les environnements informatiques dans lesquels ils effectuent leur travail, car il peut avoir un impact sur trois parties :

### Chercheurs

Les environnements de travail des chercheurs évoluent au fur et à mesure qu'ils mettent à jour les logiciels, installent de nouveaux logiciels et se déplacent vers différents ordinateurs.
Si l'environnement du projet n'est pas capturé et que les chercheurs doivent revenir à leur projet après des mois ou des années (comme c'est le cas dans la recherche), ils ne seront pas en mesure de le faire avec confiance.
Ils n'auront aucun moyen de savoir quels changements ont eu lieu dans un environnement de recherche spécifique et quel impact ces changements pourraient avoir sur leur capacité à exécuter le code, et sur les résultats.

### Collaborateurs

Beaucoup de recherches sont maintenant collaboratives, et la recherche de plusieurs environnements informatiques différents ouvre un champ de mines de bogues potentiels.
Essayer de résoudre ce genre de problèmes prend souvent du temps et est frustrant car les chercheurs doivent comprendre quelles sont les différences entre les environnements de calcul et leurs effets.
Pire encore, certains bogues peuvent rester indétectés, ce qui pourrait avoir un impact sur les résultats.

### La science

La recherche scientifique a considérablement évolué au cours de la dernière décennie, mais on ne peut pas dire la même chose pour les méthodes par lesquelles les processus de recherche sont capturés et diffusés.
La méthode principale de dissémination - la publication savante - est largement inchangée depuis l'avènement de la revue scientifique dans les années 1660.
Cela ne suffit plus pour vérifier, reproduire et étendre les résultats scientifiques.
Malgré la reconnaissance croissante de la nécessité de partager tous les aspects du processus de recherche, les publications scientifiques d'aujourd'hui sont souvent déconnectées de l'analyse sous-jacente et, surtout, de l'environnement informatique qui a produit les résultats.
Pour que la recherche soit reproductible, les chercheurs doivent publier et distribuer l'ensemble de l'analyse contenue, et pas seulement ses résultats.
The analysis should be _mobile_.
La mobilité du calcul est définie comme la capacité de définir, créer, et maintenir un workflow localement tout en restant confiant que le workflow peut être exécuté ailleurs.
En essence, la mobilité des calculs signifie être en mesure de contenir toute la pile logicielle, à partir de fichiers de données à travers la pile de la bibliothèque, et de manière fiable le déplacer du système vers le système.
Toute recherche limitée à l'endroit où elle peut être déployée est instantanément limitée dans la mesure où elle peut être reproduite.

Ce chapitre décrira comment saisir, préserver et partager des environnements informatiques et du code pour s'assurer que la recherche est reproductible.
