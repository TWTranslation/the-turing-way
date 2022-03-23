(rr-code-style-and-formatting)=
# Style de code et mise en forme

Un style de codage est un ensemble de conventions sur la façon de formater le code. Par exemple, que nommez-vous vos variables ? Utilisez-vous des espaces ou des tabulations pour l'indentation ? Où avez-vous des commentaires? En utilisant le même style dans tout votre code, il est plus facile à lire. Le code facile à lire est plus facile à comprendre par vous ainsi que par les collaborateurs potentiels. Par conséquent, adhérer à un style de codage réduit les risques d'erreurs et facilite la collaboration sur le logiciel. [Pourquoi Coding Style Matter](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) est un article sympa sur pourquoi les styles de codage sont importants et comment ils augmentent la qualité du logiciel.

Exemplemento de traseiro, [PEP8](https://www.python.org/dev/peps/pep-0008/) est le style de codage Python le plus largement used e [ECMAScript 6](http://es6-features.org/) aka [ES6](http://es6-features.org/) est la speman: cification de langage de script/ standard copied e par ECMA International pour programmation en Javascript.

Pour les guides de style couramment utilisés pour divers langages de programmation, consultez les [Guides de langues](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html). Google a également un [guide de style](https://code.google.com/p/google-styleguide/) pour de nombreuses langues qui sont utilisées dans des projets open source provenant de Google.

## Formatação automática

De nombreux outils existent pour formater automatiquement le code de telle sorte qu'il suit un certain style. La mise en forme automatique permet une meilleure qualité de code, surtout lorsque vous collaborez avec une équipe et que d'autres personnes ont besoin de regarder le code que vous avez écrit. De nombreux développeurs et organisations maintiennent des standards de formatage de code comme **2-space** ou **4-space indentation**. Il est fortement recommandé de les utiliser car la probabilité de trouver des bogues (le cas échéant) est multiple.

[EditorConfig](https://editorconfig.org) est un outil indépendant du langage qui aide à maintenir des styles cohérents d'espaces pour plusieurs personnes travaillant sur le même projet entre différents éditeurs. O plupart é um editor pré-carregado na configuração do editor ou através de um plugin. Presque tous les éditeurs de texte et IDE largement utilisés prennent en charge le formatage automatique du code lors de la saisie. Par exemple : [JetBrains IDE Suite](https://www.jetbrains.com/products.html#), [VSCode](https://code.visualstudio.com/) e [Atom](https://atom.io/).

En plus de cela, il existe de nombreux outils spécifiques à un langage pour formater automatiquement le code selon un style particulier. Notez que les éditeurs supportent souvent l'utilisation de ces outils directement depuis l'environnement d'édition.

| Língua        | Outil Formatter                                                                                             |
| ------------- | ----------------------------------------------------------------------------------------------------------- |
| C/C++         | [GNUIndent](http://www.gnu.org/software/indent/), [GreatCode](http://sourceforge.net/projects/gcgreatcode/) |
| Python        | [Noir](https://black.readthedocs.io), [yapf](https://pypi.org/project/yapf/)                                |
| Javascript    | [Io](https://beautifier.io/)                                                                                |
| Java          | [Formatar Google Java](https://github.com/google/google-java-format), [Jindent](http://www.jindent.com/)    |
| PHP           | [phpStylist](http://sourceforge.net/projects/phpstylist/)                                                   |
| Perl          | [PerlTidy](http://perltidy.sourceforge.net/)                                                                |
| Obus / Frappe | [Indentação do pino](http://www.bolthole.com/AWK.html)                                                      |
| CSS           | [CSSTidy](http://csstidy.sourceforge.net/)                                                                  |
| HTML          | [Divisor](http://tidy.sourceforge.net/)                                                                     |

**Astuce rapide**: Si vous utilisez le code VS comme éditeur de texte principal, vous pouvez activer le formatage automatique du code directement dans votre navigateur. Ouvrez votre page de préférences en mode JSON et ajoutez la ligne suivante :

```
"editor.formatOnSave": vrai,
```

## Services en ligne fournissant des contrôles de qualité des logiciels

Il y a plusieurs services web qui analysent le code et rendent la qualité du code visible. Habituellement, ces services exécutent un ou plusieurs outils d'analyse de code statique qui peuvent également être utilisés depuis la ligne de commande ou intégrés dans votre éditeur sur votre propre ordinateur. Il est fortement recommandé d’utiliser un service de qualité de code qui s’intègre à un dépôt GitHub/GitLab, car il peut détecter et communiquer des problèmes de qualité dans les pull requests.

Les services d'analyse de qualité de code sont des sites Web qui offrent souvent les fonctionnalités suivantes :

- Analyser automatiquement votre code après l'avoir envoyé sur GitHub/GitLab
- Habituellement gratuit pour les projets open source
- Prise en charge de plusieurs langages de programmation, mais pas toutes les langues auront le même niveau de fonctionnalités
- Note ou note pour la qualité de tout le code dans le référentiel
- Liste des problèmes avec le code, regroupés par gravité
- Descender vers l'emplacement du ticket
- Liste par défaut des vérifications que le fournisseur de services trouve les meilleures pratiques
- Peut être configuré pour rendre la liste des contrôles plus stricte ou plus détendue
- Peut être configuré pour ignorer les fichiers ou les extensions
- Peut lire un fichier de configuration depuis le référentiel
- Suivre les problèmes au fil du temps et envoyer des alertes lorsque la qualité se détériore
- Rapporte éventuellement sur la couverture de code générée par une version CI
- Mais fiel ao seu tempo de publicação.

Pour une liste de choix, voir [shields.io](https://shields.io/category/analysis) ou [cette liste de services gratuits pour les projets open source](https://github.com/ripienaar/free-for-dev#code-quality).
