(rr-make-debugging)=
# Makefileのデバッグ

Makefile を書くとき。 変数の の値を見ることで、Makefileの間違いやバグを捕まえることができます。 を容易にするために、Make には `info` と `error`という 2 つのコマンドが含まれています。そして、make にはデバッグ モードがあります。

`info` コマンドを使用すると、変数の現在の値を stdout に表示し、Makeはファイルを処理しています。 例えば、上のMakefile では、以下を追加できます。

```makefile
$(info $$DATA = $(DATA))
```

`DATA = data/action.csv ... data/western.csv` が出力されます。

`error` コマンドを使用すると、Makefile 中の特定の ポイントでMakefile の実行を停止することができます。 これは 変数の値を出力して実行しない場合に便利です。

```makefile
$(error $$DATA = $(DATA))
```

最後に、Makefile をデバッグするには、Makefile のデバッグフラグを実行します: `make -d`. これにより、すべてのルール(ビルトインを含む)がターゲットごとに 試行されるようになります。 ルールを実行する必要があるかどうかです

If you only want to print the rules that Make will run and not actually run them, you can use `make -n`. これらの最後の2つのオプションを組み合わせることもできます。 デバッグ出力が表示され、Makeは何も実行されません: `make -dn`.
