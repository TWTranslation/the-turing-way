(ch-style-more-features)=
# Glossaire, blocs spéciaux et plus de style

Jupyter Book offre plus d'options pour styliser ses chapitres et créer un livre plus complet. Dans ce sous-chapitre, nous discutons de quelques fonctionnalités supplémentaires que nous recommandons d'utiliser dans _The Turing Way_.

(ch-style-more-features-glossaire)=
## Glossary

_Le Turing Way_ a un fichier de {ref}`glossaire` situé dans l'après mot du livre, qui comprend des définitions de termes différents par ordre alphabétique. Ce fichier peut être mis à jour avec les définitions de nouveaux termes, qui peuvent ensuite être liés à n'importe quel chapitre du livre où ce terme se produit.

Ajouter une entrée pour un nouveau terme veuillez aller à la section alphabétique droite du fichier {ref}`glossaire` et utiliser la syntaxe suivante :

```
Nouveau Term-1
  Une courte phrase définissant le terme. Cette phrase est tirée en dessous du terme.
```

Par exemple, les [termes commençant par 'A'](https://the-turing-way.netlify.app/afterword/afterword.html#a) sont écrits dans le même bloc de texte comme montré ci-dessous :
```

## A

```{glossary}

Acceptance Testing
 Un niveau du processus de test logiciel où un système est testé pour être accepté. Le but de ce test est d'évaluer la conformité du système avec les exigences du projet et d'évaluer s'il est acceptable à cette fin.

Ajouter la commande
 utilisée pour ajouter des fichiers à la zone de stockage. Permet à l'utilisateur de spécifier quels fichiers ou répertoires inclure dans la prochaine livraison.

Auteurs
  Les auteurs dans ce contexte sont les contributeurs du projet _The Turing Way_ qui ont apporté une contribution substantielle au projet comme la rédaction d'un sous-chapitre, faciliter les interactions entre les communautés, maintenir l’infrastructure du projet et soutenir la participation des autres par le biais de contributions encadrées. Tous les auteurs sont nommés coauteurs du livre dans son ensemble.

```

Pour référencer les termes dans votre glossaire, utilisez la syntaxe ``[{term}`def<Term>`]``.

Par exemple, pour lier le terme "Auteurs" à sa définition dans le fichier de glossaire, veuillez utiliser la syntaxe ``[{term}`def<Authors>`]`` à côté de l'endroit où ce terme apparaît, qui devrait rendre en ligne comme ceci : "*Auteurs [{term}`def<Authors>`] a été référencé ici.*"

(ch-style-more-features-blocks)=
## Blocs de contenu spéciaux

Lors de l'écriture d'un nouveau chapitre ou de la révision d'un chapitre existant, vous pouvez ajouter des notes qui ne correspondent pas au reste de la narration du chapitre, mais peuvent être utiles pour les lecteurs et les aider à mieux comprendre le chapitre.

Jupyter Book permet d'utiliser des blocs de contenu spéciaux pour mettre en évidence un morceau de texte qui doit se démarquer du reste du contenu d'une page. Ceci sépare visuellement le bloc de texte du reste de la page et assure qu'il capte facilement l'attention du lecteur.

Pour ajouter un bloc de contenu spécial (note, avertissement ou admonition) à votre page, utilisez la directive suivante :

````
```{note}
Ceci est un exemple de note !
```
````
qui s'affiche comme suit:

```{note}
Ceci est un exemple de note !
```

Vous pouvez donner aux blocs de contenu des titres et des styles personnalisés pour renforcer le message souhaité. Par exemple, si vous voulez avertir le lecteur de quelque chose, vous pouvez faire un bloc d'avertissement en utilisant la directive suivante :

````
```{warning}
Ceci est un avertissement sévère !
```
````
Notez le nouveau titre, icône et couleurs.

```{warning}
C'est un avertissement sévère!
```

Il y a beaucoup plus de façons de personnaliser les blocs de contenu selon vos besoins d'écriture. Reportez-vous à la [documentation du livre Jupyter](https://jupyterbook.org/content/content-blocks.html#notes-warnings-and-other-admonitions) et à la [page de démonstration Admonition](https://sphinx-book-theme.readthedocs.io/en/latest/reference/demo.html#admonitions) pour plus de recommandations.
