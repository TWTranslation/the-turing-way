(pd-code-styling)=
# Style et linting de code

Avez-vous déjà ouvert un fichier de syntaxe ou de script deux ans après avoir exécuté une analyse seulement pour trouver que vous n'avez pas de mémoire immédiate du code? Avez-vous reçu des fichiers d'analyse d'un collaborateur, ou les avez-vous téléchargés depuis un référentiel en ligne que vous n'avez jamais utilisé auparavant ? Imaginez maintenant que ces fichiers sont très difficiles à lire, ou qu'il y a beaucoup de variables qui sont passées à des fonctions arcanes, ou pire, vous ne pouvez pas trouver de code utile car ils sont sauvegardés avec des noms de fichiers insignifiants tels que `analyis_1final_FINAL.`, ou `uniquement usethisoneforanalysis_onamonday2a.py`.

Si vous n'en avez pas - alors vous êtes l'un des chanceux! Mais si vous en avez fait l'expérience, vous savez peut-être à quel point il est frustrant de travailler avec ces fichiers.

Ce chapitre mettra en évidence des moyens d'éviter de tels défis dans vos projets en introduisant quelques principes d''hygiène du code', autrement connu sous le nom de *linting*.

```{figure} ../figures/zen-of-python.png
---
hauteur : 500px
nom : zen-of-python
alt: Le zen de Python, par Tim Peters. Bel c'est mieux que laid. Il vaut mieux être explicite que implicite. La simplicité vaut mieux que la complexité. Il vaut mieux que compliquer le complexe. L'appartement est mieux que imbriqué. L'épargne est meilleure que la dense. La lisibilité compte. Les cas spéciaux ne sont pas assez spéciaux pour enfreindre les règles. Même si la praticité bat la pureté. Les erreurs ne doivent jamais passer silencieusement. Sauf si explicitement réduit au silence. Face à l'ambiguïté, refuse la tentation de deviner. Il devrait y avoir une façon - et de préférence une seule - évidente de le faire. Bien que cette façon de faire ne soit pas évidente au début sauf si vous êtes Néerlandais. Il vaut mieux maintenant que jamais. Bien que jamais mieux que *droit* maintenant. Si l'implémentation est difficile à expliquer, c'est une mauvaise idée. Si la mise en œuvre est facile à expliquer, cela peut être une bonne idée. Les espaces de noms sont une excellente idée -- faisons-en plus !
---
*Le point 7 du [Zen de Python](https://www.python.org/dev/peps/pep-0020/) est "Readability Counts". (Cela peut être imprimé avec la commande python `>>> importer ceci`)*
```

## Aperçu

Linting inclut les directives {ref}`pour le style<pd-code-styling-guidelines>` comme pour le nommage, et en veillant à ce que le code {ref}`soit lisible par l'être humain<pd-code-styling-readability>` par exemple en utilisant un formatage utile, et en écrivant des commentaires.  
Certains environnements de développement intégrés (IDEs) incluent le découpage automatique, mais il y a {ref}gratuit`paquets et outils pour linting<pd-code-styling-tools>` qui vont linter du code pour vous (par exemple, [autopep8](https://pypi.org/project/autopep8/)).

En gardant les conseils suivants à l'esprit pendant le codage, votre code sera plus réutilisable, adaptable et clair.
