(rr-make-debugging)=

# Depuração de Makefiles

Ao escrever um arquivo Makefile às vezes pode ser útil para poder ver os valores de variáveis para pegar erros ou bugs no Makefile. To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. Por exemplo, no Makefile acima você poderia adicionar:

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. Isso é útil quando você deseja imprimir o valor de uma variável de e não executar ainda mais:

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. Isto irá imprimir todas as regras (incluindo as embutidas) que Fazer tentar para cada um dos alvos, e se uma regra precisa ser executada ou não.

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
