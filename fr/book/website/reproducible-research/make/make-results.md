(rr-make-results)=

# Inclure les résultats numériques et les tables

À ce stade, vous pouvez penser « C'est tellement cool que je peux maintenant inclure des chiffres
dans mes manuscrits ! Mais comment cela fonctionne-t-il pour les résultats numériques ?

Le papier reproductible lié ci-dessus montre une façon de le faire:
Une fois les résultats calculés, elles sont écrites sous la forme d'une table LaTeX
.
Voici à quoi ressemble l'une de ces tables juste après son calcul:

```latex
\begin{tabular}{lrrr|rrrr}
Property & HypoParsr & Sniffer & Suitability & Pattern & Type & No Tie & Full\\
\hline
Delimiter & 87.48 & 86.82 & 65.41 & 92.61 & 88.33 & 91.38 & \textbf{94.92}\\
Quotechar & 82.90 & 92.36 & 44.60 & 95.23 & 90.10 & 93.80 & \textbf{97.36}\\
Escapechar & 87.96 & 94.37 & 74.85 & 97.95 & 96.26 & 95.44 & \textbf{99.25}\\
Overall & 80.60 & 85.45 & 38.19 & 90.99 & 83.61 & 90.61 & \textbf{93.75}\\
\hline
\end{tabular}
```

To include this table into your manuscript, you can use LaTeX's `\input{}`
function. If the file with the table is called `mytable.tex`, this command
can insert it into your manuscript:

```latex
\begin{table}
\input{mytable}
\end{table}
```

Une alternative est d'utiliser des variables.
Au lieu de créer une table dans un fichier séparé, vous pouvez écrire un squelette de table
et le remplir avec des variables.
Les résultats que vous calculez sont associés aux variables, et une fois que votre manuscrit
est compilé, les variables sont échangées contre des résultats numériques réels.
Voici à quoi ressemble une telle table dans votre manuscrit :

```latex
\begin{table}
    \begin{tabular*}{ccc}
        \textbf{Variable} & \textbf{Mean}   & \textbf{Std. deviation} \
        \hline
        Variable 1        & \var1mean       & \var1std                \
        Variable 2        & \var2mean       & \var2std                \
    \end{tabular*}
\end{table}
```

Ỳou may notice that `\var1mean` is no standard LaTeX command: It is a variable
that you can define yourself!
Comment cela fait-il?
Have your script print the results you compute within a `\newcommand{}{}`
definition into a file, for example like this (simplified Python example):

```python
# this loops to data vectors of two variables (data1, data2), compute the
# mean and standard deviation, and print the results together with the
# variable name ('var1', 'var2')
for name, data in (['var1', data1], ['var2', data2]):
    mean = np.mean(data)
    std = np.mean(data)
    print('\\newcommand{\\%s }{ %f }' % (name + 'mean', mean))
    print('\\newcommand{\\%s }{ %f }' % (name + 'std', std))
```

Let's say the mean of the first dataset is 9.2, the definition would look like
this: `\newcommand{\var1mean}{9.2}`.
Notez que cet exemple utilise Python, mais vous pouvez utiliser n'importe quelle langue ou méthode que vous
connaissez pour imprimer des définitions de ce genre.
With this definition, LaTeX exchanges the table cell with `\var1mean` with the
numeric result from the computation.
You can capture the definitions and write them to a file using redirection with
`>`.
In this example, we write it to a file called `results_def.tex`

```makefile
results_def.tex: code/make_summary_stats.py
	python code/make_summary_stats.py > results_def.tex
```

As an alternative to `>`, you could also redirect the results using the Unix
[pipe](https://en.wikipedia.org/wiki/Pipeline_\(Unix\)) and the
[tee](https://en.wikipedia.org/wiki/Tee_\(command\)) command
(`python code/make_summary_stats.py | tee results_def.tex`).
Cela va non seulement rediriger la sortie du script vers un fichier, mais aussi les imprimer
dans votre terminal.
Cette astuce utile peut vous aider à observer si tout fonctionne comme prévu
pendant l'exécution de votre script.

Finally, use the `input{}` command to include the new variables in your
manuscript and the variables in the tables:

```latex
\begin{document}
\input{results_def.tex}
```

Les exemples présentés ici sont simplistes, mais avec un peu de réflexion, vous pouvez
inclure des résultats dans votre manuscrit comme ils sont calculés.
This helps you (no mistakes copying results to tables, yay!) and makes your
research more accessible and reproducible.
