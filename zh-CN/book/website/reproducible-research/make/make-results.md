(rr-make-results)=

# Including numerical results and tables

此时你可能会想到“太酷了，我现在可以将数字 添加到我的手稿中！ But how exactly does this work for numerical results?"

上面链接的可重现纸显示了这样做的一种方法： 在计算结果后， 它们是以 LaTeX 表格的形式写出来的。
Here is how one of these tables looks like right after it was computed:

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

An alternative is to make use of variables.
不要在单独的文件中创建一个表，而是可以写一个表骨架 并使用变量。
您计算的结果与变量相关，一旦您的 手稿被编译，变量将被交换为实际数字结果。
Here is how such a table looks like in your manuscript:

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
How is this done?
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
请注意这个示例使用 Python ，但您可以使用您 熟悉的任何语言或方法来打印类似的定义。
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
这不仅将脚本的输出重定向到文件，而且还将 打印到您的终端。
This helpful trick can help you observe whether everything works as expected during the execution of your script.

Finally, use the `input{}` command to include the new variables in your
manuscript and the variables in the tables:

```latex
\begin{document}
\input{results_def.tex}
```

此处所列举的例子过于简单，但有点想法， 你可以 确保将结果包含在你的手稿中，只要它们是计算出来的。
This helps you (no mistakes copying results to tables, yay!) and makes your
research more accessible and reproducible.
