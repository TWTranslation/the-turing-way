(pd-code-styling-tools)=
# Outils de style de code

Comme mentionné précédemment, il y a quelques outils automatiques que vous pouvez utiliser pour linter votre code aux lignes directrices existantes. Cela va des plugins pour les paquets IDE qui 'spell-check' votre style, et les scripts qui se lintent automatiquement pour vous.

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) est un paquet R qui vérifie votre code en utilisant une variété de directives de style.  Il peut être installé à partir de CRAN. La fonction `lint` prend un nom de fichier comme argument et une liste de 'linters' qu'il devrait vérifier votre code. Cela va des conventions d'espacement à la vérification que les accolades n'ont pas leurs lignes. La sortie fournit une liste de marqueurs avec des recommandations pour changer le formatage de votre code ligne par ligne, ce qui signifie qu'il est mieux utilisé tôt et souvent dans votre projet.

```{figure} ../../figures/lintr-output.png
---
hauteur: 500px
nom: lintr_output
alt: lintr sortie montrant des recommandations pour ajouter de l'espace, supprimer le code commenté, supprimer les espaces d'entraînement, avoir une taille de caractère par ligne inférieure à 80 lorsque nécessaire dans le code d'entrée.
---
Un exemple de comment la sortie lintr peut ressembler à un fichier d'entrée avec du code R.
```

Pour plus de détails, veuillez visiter le [dépôt GitHub](https://github.com/jimhester/lintr).

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) est un module Python qui peut être exécuté à partir du terminal et formater automatiquement un fichier en [pycodestyle](https://github.com/PyCQA/pycodestyle) (anciennement appelé pep8) des lignes directrices.  
Il est disponible sur [pavé](https://pypi.org) et peut être installé à l'aide de pip.

```
# Install autopep8
$ pip install --upgrade autopep8
```

Vous pouvez modifier un fichier en exécutant la commande suivante :

```
$ autopep8 --in place --aggressive --aggressive <filename>
```

Dans une certaine mesure, le module peut également être utilisé sur les scripts R!

## Formation automatique par Noir

[Black](https://black.readthedocs.io/en/stable/) est un paquet auto-formateur pour Python. Cela signifie qu'il changera automatiquement votre code pour qu'il adhère à certaines lignes directrices, comme les espaces autour des opérateurs et supprimera les espaces inutiles. Il est également cohérent, de sorte que le code sur lequel vous et vos collaborateurs travaillez, aura la même apparence une fois le formatage noir. Il ne modifie pas ce que fait le code. Cela peut réduire le temps passé à faire les modifications ci-dessus au code.
