(rr-make-debugging)=

# Makefileのデバッグ

Makefile を書くとき。 変数の
の値を見ることで、Makefileの間違いやバグを捕まえることができます。 To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. 例えば、上のMakefile
では、以下を追加できます。

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. これは
変数の値を出力して実行しない場合に便利です。

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. これにより、すべてのルール(ビルトインを含む)がターゲットごとに
試行されるようになります。 ルールを実行する必要があるかどうかです

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
