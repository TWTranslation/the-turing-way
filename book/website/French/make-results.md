(rr-make-results)=
# Inclure les résultats numériques et les tables

À ce stade, vous pouvez penser « C'est tellement cool que je peux maintenant inclure des chiffres dans mes manuscrits ! Mais comment cela fonctionne-t-il pour les résultats numériques ?

Le papier reproductible lié ci-dessus montre une façon de le faire: Une fois les résultats calculés, elles sont écrites sous la forme d'une table LaTeX . Voici à quoi ressemble l'une de ces tables juste après son calcul:

```latex
\begin{tabular}{lrrr|rrrr}
Propriété & HypoParsr & Sniffer & Compatibilité & Pattern & Type & No Tie & Full\\
\hline
Delimiteur & 87. 8 & 86.82 & 65.41 & 92.61 & 88.33 & 91. 8 & \textbf{94.92}\\
Quotechar & 82. 0 & 92.36 & 44.60 & 95. 3 & 90.10 & 93.80 & \textbf{97.36}\\
Escapechar & 87. 6 & 94.37 & 74.85 & 97.95 & 96.26 & 95. 4 & \textbf{99.25}\\
Globale & 80. 0 & 85,45 & 38.19 & 90. 9 & 83.61 & 90.61 & \textbf{93.75}\\
\hline
\end{tabular}
```

Pour inclure ce tableau dans votre manuscrit, vous pouvez utiliser la fonction `\input{}` de LaTeX. Si le fichier avec la table est appelé `mytable.tex`, cette commande peut l'insérer dans votre manuscrit :

```latex
\begin{table}
\input{mytable}
\end{table}
```

Une alternative est d'utiliser des variables. Au lieu de créer une table dans un fichier séparé, vous pouvez écrire un squelette de table et le remplir avec des variables. Les résultats que vous calculez sont associés aux variables, et une fois que votre manuscrit est compilé, les variables sont échangées contre des résultats numériques réels. Voici à quoi ressemble une telle table dans votre manuscrit :

```latex
\begin{table}
    \begin{tabular*}{ccc}
        \textbf{Variable} & \textbf{Mean}   & \textbf{Std. deviation} \
        \hline
        Variable 1        & \var1mean       & \var1std \
        Variable 2        & \var2mean       & \var2std \
    \end{tabular*}
\end{table}
```

Vous remarquerez peut-être que `\var1mean` n'est pas une commande LaTeX standard : c'est une variable que vous pouvez définir vous-même ! Comment cela fait-il? Demandez à votre script d'imprimer les résultats que vous calculez dans une définition de `\newcommand{}{}` dans un fichier, par exemple comme ceci (exemple simplifié pour Python) :

```python
# cette boucle aux vecteurs de données de deux variables (data1, data2), calculer la
# moyenne et écart-type et affiche les résultats avec le nom de la variable
# ('var1', 'var2')
pour le nom, les données dans (['var1', data1], ['var2', data2]):
    moyenne = np. ean(données)
    std = np. ean(données)
    print('\\newcommand{\\%s }{ %f }' % (nom + 'moyen', mean))
    print('\\newcommand{\\%s }{ %f }' % (nom + 'std', std))
```

Disons que la moyenne du premier jeu de données est de 9.2, la définition ressemblerait à ceci : `\newcommand{\var1mean}{9.2}`. Notez que cet exemple utilise Python, mais vous pouvez utiliser n'importe quelle langue ou méthode que vous connaissez pour imprimer des définitions de ce genre. Avec cette définition, LaTeX échange la cellule du tableau avec `\var1mean` avec le résultat numérique du calcul. Vous pouvez capturer les définitions et les écrire dans un fichier en utilisant la redirection avec `>`. Dans cet exemple, nous l'écrivons dans un fichier appelé `results_def.tex`

```makefile
results_def.tex: code/make_summary_stats.py
    code python /make_summary_stats.py > results_def.tex
```

As an alternative to `>`, you could also redirect the results using the Unix [pipe](https://en.wikipedia.org/wiki/Pipeline_(Unix)) and the [tee](https://en.wikipedia.org/wiki/Tee_(command)) command (`python code/make_summary_stats.py | tee results_def.tex`). Cela va non seulement rediriger la sortie du script vers un fichier, mais aussi les imprimer dans votre terminal. Cette astuce utile peut vous aider à observer si tout fonctionne comme prévu pendant l'exécution de votre script.

Enfin, utilisez la commande `input{}` pour inclure les nouvelles variables dans votre manuscrit et les variables dans les tables :

```latex
\begin{document}
\input{results_def.tex}
```

Les exemples présentés ici sont simplistes, mais avec un peu de réflexion, vous pouvez inclure des résultats dans votre manuscrit comme ils sont calculés. Cela vous aide (aucune erreur lors de la copie des résultats sur les tableaux, yay!) et rend vos recherches plus accessibles et reproductibles.
