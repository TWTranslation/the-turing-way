(pd-code-styling-tools)=
# コードスタイルツール

前述のように、コードを既存のガイドラインにリンクさせるために使用できる自動ツールがいくつかあります。 これらは、スタイルを「スペルチェック」するIDEパッケージのプラグインや、自動的にリンクさせるスクリプトの範囲です。

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) は、さまざまなスタイルガイドラインを使用してコードをスペルチェックするRパッケージです。  CRANからインストールできます。 関数 `lint` は引数としてファイル名を取り、コードをチェックするための 'linters' のリストをとります。 空白の規約から中括弧には行がないことを確認するまでの範囲。 出力には、コード行ごとの書式設定を変更するための推奨事項が記載されたマーカーのリストが表示されます。 早い時期から頻繁に使われていることを意味します

```{figure} ../../figures/lintr-output.png
---
height: 500px
name: lintr_output
alt: lintr output, showing recommendations to add space. コメントされたコードを削除し、トレーニング空白を削除し、入力コードで必要とされる行あたり80未満の文字サイズを持っています。
---
Rコードを持つ入力ファイルでは、lintr出力がどのように見えるかの例です。
```

詳細については、 [GitHub リポジトリ](https://github.com/jimhester/lintr) をご覧ください。

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) is a Python module that can be run from the terminal and automatically formats a file to [pycodestyle](https://github.com/PyCQA/pycodestyle) (formerly called pep8) guidelines.  
It is available on [pypy](https://pypi.org) and can be installed using pip.

```
# Install autopep8
$ pip install --upgrade autopep8
```

次のコマンドを実行することで、ファイルを変更できます。

```
$ autopep8 --in-place --アグレッシブ <filename>
```

モジュールは R スクリプト上でもある程度使用できます。

## ブラックによる自動書式設定

[Black](https://black.readthedocs.io/en/stable/) は Python 用の自動フォーマットパッケージです。 これは、オペレータの周りのスペースや不要な空白を削除するなど、特定のガイドラインに準拠するようにコードを自動的に変更することを意味します。 また、一貫性がありますので、あなたとコラボレーターが作業するコードは、ブラックフォーマットになれば同じように見えるようにします。 コードの動作は変更されません。 これにより、上記のコードの変更にかかる時間が短縮されます。
