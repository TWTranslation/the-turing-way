(rr-renv)=
# Environnements reproductibles

(rr-renv-conditions préalables)=
## Pré-requis

| Pré-requis                                                                                        | Importance | Notes                                                                                           |
| ------------------------------------------------------------------------------------------------- | ---------- | ----------------------------------------------------------------------------------------------- |
| [Expérience avec la ligne de commande](https://programminghistorian.org/en/lessons/intro-to-bash) | Nécessaire | L'expérience du téléchargement de logiciels via la ligne de commande est particulièrement utile |
| {ref}`rr-vcs`                                                                                     | Utile      | Expérience en utilisant git et GitHub sont utiles                                               |

**Niveau de compétence recommandé**: _Avancé intermédiaire_

(rr-renv-summary)=
## Summary

Chaque ordinateur a son environnement informatique unique [{term}`def<Computational Environment>`] constitué de son système d'exploitation, les logiciels installés, les versions des paquets installés et d'autres fonctionnalités que nous décrirons plus tard. Supposons qu'un projet de recherche soit réalisé sur un ordinateur mais transféré sur un autre ordinateur. Il n'y a aucune garantie que l'analyse pourra être exécutée ou générer les mêmes résultats si l'analyse dépend de l'une des considérations énumérées ci-dessus.

Pour que la recherche soit reproductible, l'environnement de calcul dans lequel il a été effectué doit être capturé de manière à ce que d'autres puissent le reproduire. Ce chapitre décrit une variété de méthodes pour capturer des environnements de calcul et donne des conseils sur leurs forces et leurs faiblesses.

### Qu'est-ce qu'un environnement informatique ?

En termes généraux, un environnement de calcul est le système où un programme est exécuté. Cela inclut les fonctionnalités du matériel (comme le nombre de cœurs dans n'importe quel processeur) et les fonctionnalités des logiciels (comme le système d'exploitation, langages de programmation, paquets supportés, autres logiciels installés, ainsi que leurs versions et configurations).

Les versions logicielles sont souvent définies via [le versionnage sémantique](https://semver.org). Dans ce système, trois nombres - par exemple, 2.12.4 - sont utilisés pour définir chaque version d'un logiciel. Lorsqu'une modification est apportée au logiciel, sa version est incrémentée. Ces trois nombres suivent le modèle _MAJOR.MINOR.PATCH_, et sont incrémentés comme suit :

- *MAJOR*: changements importants
- *MINEUR*: ajouter des fonctionnalités
- *PATCH*: pour les corrections de bugs

(rr-renv-utiles)=
## Pourquoi cela est utile

Examinons un exemple de l'importance des environnements informatiques. Disons que j'ai un script Python très simple :

```
a = 1
b = 5
print(a/b)
```

Un divisé par cinq est `0.2`, et c'est ce qui est affiché si le script est exécuté en utilisant Python 3. Cependant, si une version légèrement plus ancienne de Python, comme Python 2, est utilisée, le résultat affiché est `0`. Ceci est dû au fait que la division entière est appliquée à entiers dans Python 2, mais la division (normale) est appliquée à tous les types, y compris les entiers, en Python 3.

Par conséquent, ce script simple retourne _réponses_ différentes selon l'environnement de calcul dans lequel il est exécuté. Utiliser la mauvaise version de Python est facile à faire, et montre comment un morceau de code parfaitement valide peut donner des résultats différents en fonction de son environnement. Si de tels problèmes peuvent avoir un impact sur un simple script comme celui-ci, imaginez combien pourraient apparaître dans une procédure d'analyse complexe qui peut impliquer des milliers de lignes de code et des dizaines de paquets dépendants.

Les chercheurs doivent comprendre et saisir les environnements informatiques dans lesquels ils effectuent leur travail, car il peut avoir un impact sur trois parties :

### Chercheurs

Les environnements de travail des chercheurs évoluent au fur et à mesure qu'ils mettent à jour les logiciels, installent de nouveaux logiciels et se déplacent vers différents ordinateurs. Si l'environnement du projet n'est pas capturé et que les chercheurs doivent revenir à leur projet après des mois ou des années (comme c'est le cas dans la recherche), ils ne seront pas en mesure de le faire avec confiance. Ils n'auront aucun moyen de savoir quels changements ont eu lieu dans un environnement de recherche spécifique et quel impact ces changements pourraient avoir sur leur capacité à exécuter le code, et sur les résultats.

### Collaborateurs

Beaucoup de recherches sont maintenant collaboratives, et la recherche de plusieurs environnements informatiques différents ouvre un champ de mines de bogues potentiels. Essayer de résoudre ce genre de problèmes prend souvent du temps et est frustrant car les chercheurs doivent comprendre quelles sont les différences entre les environnements de calcul et leurs effets. Pire encore, certains bogues peuvent rester indétectés, ce qui pourrait avoir un impact sur les résultats.

### La science

La recherche scientifique a considérablement évolué au cours de la dernière décennie, mais on ne peut pas dire la même chose pour les méthodes par lesquelles les processus de recherche sont capturés et diffusés. La méthode principale de dissémination - la publication savante - est largement inchangée depuis l'avènement de la revue scientifique dans les années 1660. Cela ne suffit plus pour vérifier, reproduire et étendre les résultats scientifiques. Malgré la reconnaissance croissante de la nécessité de partager tous les aspects du processus de recherche, les publications scientifiques d'aujourd'hui sont souvent déconnectées de l'analyse sous-jacente et, surtout, de l'environnement informatique qui a produit les résultats. Pour que la recherche soit reproductible, les chercheurs doivent publier et distribuer l'ensemble de l'analyse contenue, et pas seulement ses résultats. L'analyse doit être _mobile_. La mobilité du calcul est définie comme la capacité de définir, créer, et maintenir un workflow localement tout en restant confiant que le workflow peut être exécuté ailleurs. En essence, la mobilité des calculs signifie être en mesure de contenir toute la pile logicielle, à partir de fichiers de données à travers la pile de la bibliothèque, et de manière fiable le déplacer du système vers le système. Toute recherche limitée à l'endroit où elle peut être déployée est instantanément limitée dans la mesure où elle peut être reproduite.

Ce chapitre décrira comment saisir, préserver et partager des environnements informatiques et du code pour s'assurer que la recherche est reproductible.
