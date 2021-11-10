(rr-make-resultados)=
# Incluindo resultados numéricos e tabelas

Neste momento você pode estar pensando "Isso é tão legal que agora posso incluir números nos meus manuscritos! Mas como é que isto funciona exactamente com base em resultados numéricos?"

O papel reprodutível ligado acima mostra uma maneira de fazê-lo: Depois que os resultados são calculados, eles são escritos na forma de uma mesa LaTeX . Aqui está como uma dessas tabelas se parece logo após ser calculada:

```latex
\start{tabular}{lrrr|rrrr}
Propriedade & HypoParsr & Sniffer & Suite & Padrão & Tipo & Sem Tie & Full\\
\hline
Delimitador & 87. 8 & 86,82 & 65.41 & 92,61 & 88,33 & 91. 8 & \textbf{94.92}\\
Quotechar & 82. 0 & 92,36 & 44,60 & 95. 3 & 90.10 & 93,80 & \textbf{97.36}\\
Escapechar & 87. 6 & 94,37 & 74,85 & 97,95 & 96,26 & 95. 4 & \textbf{99.25}\\
Geral & 80. 0 & 85,45 & 38,19 & 90. 9 & 83.61 & 90.61 & \textbf{93.75}\\
\hline
\end{tabular}
```

Para incluir esta tabela no seu manuscrito, você pode usar a função `do LaTeX \input{}` . Se o arquivo com a tabela é chamado `mytable.tex`, este comando pode inseri-lo no seu manuscrito:

```latex
\start{table}
\input{mytable}
\end{table}
```

Uma alternativa é fazer uso de variáveis. Em vez de criar uma tabela em um arquivo separado, você pode escrever uma estrutura de tabela e preenchê-la com variáveis. Os resultados que você computa são associados com as variáveis, e uma vez que seu manuscrito é compilado, as variáveis são trocadas por resultados numéricos reais. Aqui está como a tabela fica em seu manuscrito:

```latex
\start{table}
    \begin{tabular*}{ccc}
        \textbf{Variable} & \textbf{Mean}   & \textbf{Std. deviation} \
        \hline
        Variável 1        & \var1mean       & \var1std \
        Variável 2        & \var2mean       & \var2std \
    \end{tabular*}
\end{table}
```

Y➲ ou pode notar que `\var1mean` não é um comando LaTeX padrão: É uma variável que você pode definir você mesmo! Como isso é feito? Tenha seu script imprima os resultados que você calcula dentro de um `\newcommand{}{}` definição em um arquivo, por exemplo, como este (exemplo simplificado de Python):

```python
# Laços para vetores de dados de duas variáveis (data1, data2), calcula a
# média e desvio-padrão, e imprimir os resultados junto com o nome da variável
# ('var1', 'var2')
para nome, dados em (['var1', data1], ['var2', data2]):
    média = np. ean(dados)
    std = np. ean(dados)
    print('\\ncomando{\\%s }{ %f }' % (nome + 'médio', mean))
    print('\\newcommand{\\%s }{ %f }' % (nome + 'std', std))
```

Digamos que a média do primeiro dataset é de 9.2, a definição ficaria como a: `\newcommand{\var1mean}{9.2}`. Note que este exemplo usa Python, mas você pode usar qualquer idioma ou método que você estiver familiarizado para imprimir definições como esta. Com esta definição, LaTeX troca a célula da tabela com `\var1mean` com o resultado numérico do cálculo. Você pode capturar as definições e escrevê-las em um arquivo usando o redirecionamento com `>`. Neste exemplo, escrevemos a um arquivo chamado `results_def.tex`

```makefile
results_def.tex: código/make_summary_stats.py
    python code/make_summary_stats.py > results_def.tex
```

Como uma alternativa para `>`, , você também pode redirecionar os resultados usando o separador Unix [](https://en.wikipedia.org/wiki/Pipeline_(Unix)) e o comando [tee](https://en.wikipedia.org/wiki/Tee_(command)) (`python code/make_summary_stats. y ➲ tee results_def.tex`). Isto não só irá redirecionar a saída do script para um arquivo, mas também irá imprimir no seu terminal. Este truque útil pode ajudá-lo a observar se tudo funciona conforme o esperado durante a execução do seu script.

Finalmente, use o comando `input{}` para incluir as novas variáveis em seu manuscrito e as variáveis nas tabelas:

```latex
\start{document}
\input{results_def.tex}
```

Os exemplos aqui apresentados são simplistas, mas com um pouco de pensamento. você pode ter certeza de incluir resultados em seu manuscrito, assim como eles são calculados. Isso ajuda você (não há erros em copiar resultados para tabelas, sim!) e torna sua pesquisa mais acessível e reprodutível.
