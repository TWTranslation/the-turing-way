(rr-make-resultados)=
# Incluye resultados numéricos y tablas

En este punto puedes estar pensando "¡Es tan genial que ahora puedo incluir figuras en mis manuscritos! Pero, ¿cómo funciona exactamente esto para resultados numéricos?"

El papel reproducible enlazado arriba muestra una forma de hacerlo: Después de calcular los resultados, están escritos en forma de tabla LaTeX . Así es como una de estas tablas se ve justo después de haber sido calculada:

```latex
\begin{tabular}{lrrr|rrrr}
Propiedad & HypoParsr & Sniffer & Suitabilidad & Patrón & Tipo & No Tie & Full\\
\hline
Delimiter & 87. 8 & 86.82 & 65.41 & 92.61 & 88.33 & 91. 8 & \textbf{94.92}\\
Quotechar & 82. 0 & 92.36 & 44.60 & 95. 3 & 90.10 & 93.80 & \textbf{97.36}\\
Escapar & 87. 6 & 94.37 & 74.85 & 97.95 & 96.26 & 95. 4 & \textbf{99.25}\\
total & 80. 0 & 85.45 & 38.19 & 90. 9 & 83.61 & 90.61 & \textbf{93.75}\\
\hline
\end{tabular}
```

Para incluir esta tabla en tu manuscrito, puedes usar la función `\input{}` de LaTeX. Si el archivo con la tabla se llama `mytable.tex`, este comando puede insertarlo en tu manuscrito:

```latex
\begin{table}
\input{mytable}
\end{table}
```

Una alternativa es hacer uso de variables. En lugar de crear una tabla en un archivo separado, puede escribir un esqueleto de tabla y poblarlo con variables. Los resultados que calculas están asociados con las variables y, una vez que tu manuscrito está compilado, las variables se intercambian por resultados numéricos reales. Así es como se ve una tabla de este tipo en tu manuscrito:

```latex
\begin{table}
    \begin{tabular*}{ccc}
        \textbf{Variable} & \textbf{Mean}   & \textbf{Std. desviación} \
        \hline
        Variable 1        & \var1mean       & \var1std \
        Variable 2        & \var2mean       & \var2std \
    \end{tabular*}
\end{table}
```

Puede notar que `\var1mean` no es un comando LaTeX estándar: ¡Es una variable que puedes definir tú mismo! ¿Cómo se hace esto? Haz que tu script imprima los resultados que calculas dentro de una definición de `\newcommand{}{}` en un archivo, por ejemplo como este (ejemplo simplificado de Python):

```python
# este bucle para vectores de datos de dos variables (data1, data2), calcula la
# media y desviación estándar, e imprimir los resultados junto con el nombre de variable
# ('var1', 'var2')
for name, data in (['var1', data1], ['var2', data2]):
    mean = np. ean(data)
    std = np. ean(data)
    print('\\newcommand{\\%s }{ %f }' % (nombre + 'mean', mean))
    print('\\newcommand{\\%s }{ %f }' % (nombre + 'std', std))
```

Digamos que la media del primer conjunto de datos es 9.2, la definición se vería este: `\newcommand{\var1mean}{9.2}`. Ten en cuenta que este ejemplo utiliza Python, pero puedes usar cualquier idioma o método con el que estés familiarizado para imprimir definiciones como esta. Con esta definición, LaTeX intercambia la celda de la tabla con `\var1mean` con el resultado numérico del cálculo. Puede capturar las definiciones y escribirlas en un archivo usando la redirección con `>`. En este ejemplo, lo escribimos en un archivo llamado `results_def.tex`

```makefile
results_def.tex: code/make_Budgety_stats.py
    python code/make_Budgety_stats.py > results_def.tex
```

Como alternativa a `>`, también podría redireccionar los resultados usando el Unix [pipe](https://en.wikipedia.org/wiki/Pipeline_(Unix)) y el comando [tee](https://en.wikipedia.org/wiki/Tee_(command)) (`python code/make_Texty_stats. y | tee results_def.tex`). Esto no solo redirigirá la salida del script a un archivo, sino que también imprimirá en tu terminal. Este útil truco puede ayudarte a observar si todo funciona como se esperaba durante la ejecución de tu script.

Finalmente, usa el comando `input{}` para incluir las nuevas variables en tu manuscrito y las variables en las tablas:

```latex
\begin{document}
\input{results_def.tex}
```

Los ejemplos mostrados aquí son simplistas, pero con un poco de pensamiento, puedes asegurarte de incluir resultados en tu manuscrito del mismo modo que se calculan. Esto te ayuda (no hay errores copiando resultados a las tablas, ¡aún!) y hace que tu investigación sea más accesible y reproducible.
