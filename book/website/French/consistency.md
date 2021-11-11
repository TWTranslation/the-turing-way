(ch-cohérence)=
# Maintenir la cohérence

_The Turing Way_ est un projet open-source qui permet aux contributeurs du monde entier de tirer parti de leurs compétences, la connaissance et l'expertise nécessaires pour développer et élargir son contenu. _Les guides de Turing Way_ sont en constante évolution, avec de multiples chapitres co-développés par des individus issus de milieux variés - qui sont tous passionnés par le partage des connaissances autour de la science des données et de la recherche. Pour soutenir et soutenir cette communauté dynamique, le livre _The Turing Way_ doit rester cohérent et accessible au fur et à mesure qu'il évolue. Le chapitre {ref}de style`` fournit déjà des directives pour maintenir un style cohérent dans le livre. Cependant, tous les chapitres ne suivent pas ces suggestions car ils sont souvent écrits de manière asynchrone par différents auteurs. L'examen de la cohérence à travers _La voie de Turing_ seule est raisonnablement difficile. Ceci pointe vers un besoin d'encourager et de soutenir nos contributeurs à maintenir la cohérence tout au long des chapitres dans les guides de _The Turing Way_. Par conséquent, ce chapitre décrira une liste de vérification étape par étape qui guidera nos contributeurs. Chaque étape mettra l'accent sur une vérification de cohérence pour rechercher dans la conception et le développement de chapitres dans _The Turing Way_ ou apporter de la cohérence aux chapitres existants.

(ch-consistance-exigences)=
## Difficile vs exigences

Les éléments de la liste de contrôle de cohérence sont classés dans les exigences dures et douces. Les exigences dures sont des vérifications de cohérence essentielles qu'un chapitre doit passer pour que _The Turing Way_ se construit sans erreurs. De plus, ils rendent le chapitre lisible et accessible à tous.

Par contre, les exigences douces sont de bonnes vérifications de cohérence qu'un chapitre devrait passer. Ces contrôles améliorent considérablement l'apparence et le sentiment du livre, mais peuvent être ignorés en toute sécurité s'ils ne peuvent pas être intégrés à votre contribution. Vous pouvez toujours revenir pour examiner vos contributions passées et améliorer leur contenu.

Un aperçu de ces exigences est défini {ref}`en dessous de <ch-consistency-requirements-checklist>`. Pour une description plus facile, ces vérifications de cohérence sont classées par format, structure et langue. Les sous-chapitres les expliquent plus en détail et décrivent comment ils peuvent être réalisés.

```{important} Please note that these requirements are not exhaustive or definitive, and neither are their classifications rigid.
En outre, aucun élément n'est par nature plus important que l'autre.

Si vous identifiez des problèmes de plus grande cohérence qui doivent être résolus, rejoignez la conversation [here](https://github.com/alan-turing-institute/the-turing-way/issues/1174).

```

```{figure} ../figures/theturingway-consistency.jpg
---
hauteur : 400px
: theturingway-consistance
alt: Cette illustration montre un escalier indiquant le chemin pour maintenir la cohérence qui a trois piliers - formatage, structure et langage. Une personne guide deux nouveaux contributeurs dans les étages.
---
Pathway pour maintenir la cohérence. Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(liste de vérification des exigences de cohérence)=
### Liste de contrôle de cohérence

#### Formatage en cours

| Requis    | VÉRIFICATION                                                                                                                                                                                                       |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Difficile | Utilisez Markdown pour créer votre contenu (voir cette [feuille de triche WordPress](https://wordpress.com/support/markdown-quick-reference/)).                                                                    |
| Difficile | Utiliser les en-têtes dans l'ordre séquentiel. Par exemple, démarrer le niveau supérieur avec la balise h1 `#`, en-tête de second niveau avec la balise h2 `##` et ainsi de suite.                                 |
| Difficile | Ajouter des étiquettes aux chapitres, sous-chapitres et images pour activer le renvoi croisé comme décrit dans le guide de style de {ref}`<ch-style-crossref>`                                               |
| Difficile | Utilisez `MyST` pour le formatage d'image tel que décrit dans le guide de style {ref}`<ch-style-figures>` | Utilisez des images de domaine public de moins de 1 Mo en taille et citez de manière appropriée. |
| Douce     | Assurez-vous que les noms des chapitres/sous-chapitres sont courts et correspondent exactement à la façon dont ils sont intitulés dans le `_toc.yml`                                                               |
| Douce     | Veillez à ce que la casse de titre soit appropriée pour les en-têtes | Capitalisez les premiers mots, derniers et "importants" de chaque titre; par exemple, "Blanche de neige et les Sept nains".                 |


#### Structure

| Requis    | VÉRIFICATION                                                                                                                                                                                                    |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Difficile | Assurez-vous que les chapitres suivent une structure telle que décrite dans le nouveau modèle de chapitre [](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) |
| Difficile | Ne pas ajouter une 'table des matières' dans les chapitres ou sous-chapitres car elle est générée automatiquement par le livre Jupyter                                                                          |
| Difficile | Assurez-vous que les sources externes sont correctement référencées et incluses dans le fichier BibTeX centralisé tel que recommandé dans le guide de style de {ref}`<ch-style-citing>`                   |
| Difficile | N'ajoutez pas de fichiers vides dans le `_toc.yml`, à la place créez une anomalie pour de nouveaux chapitres                                                                                                    |
| Douce     | Assurez-vous que chaque chapitre a un bon résumé sur sa page d'accueil ainsi que des liens vers ses sous-chapitres.                                                                                             |
| Douce     | Diviser les longs chapitres en sous-chapitres plus petits pour qu'ils soient modulaires.                                                                                                                        |


#### Langue

| Requis    | VÉRIFICATION                                                                                                                                                   |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Difficile | Assurez-vous que les chapitres n'utilisent aucune abréviation latine telle que décrite dans le guide de style de {ref}`<ch-style>`                       |
| Difficile | Assurer une grammaire correcte et un ton cohérent dans le livre avec l'aide de 1-2 réviseurs                                                                   |
| Difficile | Assurez-vous que les chapitres utilisent une langue cohérente, par exemple, si vous choisissez d'écrire en anglais britannique, maintenez cela tout au long de |

Ces vérifications sont expliquées plus en détail dans le {ref}`Formatage<ch-consistency-formatting>`, {ref}`Structure<ch-consistency-structure>`, et {ref}`Langue<ch-consistency-language>` sous-chapitres.
