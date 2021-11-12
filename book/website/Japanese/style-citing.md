(ch-style-citing)=
# 引用と参照

すべての参照を含む一元化された [BibTeX](http://www.bibtex.org/) ファイルを保持しています。 ファイルは、ファイル [`./book/website/_bibliography/references.bib`][turingbib] 内のこのリポジトリ内にあります。

## BibTeXファイルの基本

BibTeXファイルは、構造化された方法で参照のリストをフォーマットする方法です。 エントリの基本要素には参照型、一意の引用キーが含まれます。 そして、参照を記述する一連のキーと値のペア(例えば、著者やタイトル)があります。

BibTeXには、さまざまな参照タイプのキーワードが数多くあります。 幸いなことに、参照をBibTeX構文にフォーマットするのに役立つツールがあります。 参照用のDOIを知っている場合は、 [doi2bib](https://doi2bib.org/) を使用して、十分なBibTeXエントリを追加することができます。 例えば、 [ここで](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) は、 The Turing Way ハンドブック自体にとって十分な BibTeX エントリです。 Another good tool is [Google Scholar](https://scholar.google.com/), where you search for a reference, click on the large double quotes `"`, and then click on "BibTeX" near the bottom.

BibTeX形式の参照をリストする例を以下に示します。

## `references.bib` に新しい参照を追加する

次の方法を使用して、参照ファイルをローカルで編集できます。

- テキストエディタを使用して、 [`references.bib`][turingbib] を直接編集する
- [`references.bib`][turingbib] を、 [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) や [BibDesk](https://bibdesk.sourceforge.io/) (macOS) などの管理プログラムを使用して直接編集する

新しいエントリを追加するために標準のビブテックスフォーマットを使用します。 例えば、 [`references.bib`][turingbib] ファイルに次のようなエントリがあります:

```
@article{baker2016reproducibility,
    author={Baker, Monya},
    title={Reproducibility crisis?},
    journal={Nature},
    volume={533},
    number={26},
    pages={353--66},
    year={2016}
}
```

**ファイルの末尾に新しい項目を追加して編集を終了します。**

## 文献キーのスタイルガイド

文献キーには以下の構造を使用することを推奨します:

```
AuthorYYYYword
```

場所:

1. `Author` is the surname of the first author (`Baker` above)
2. `YYYY` は上記の年 (`2016` ) です。
3. `単語` はタイトルの最初の意味のある単語です(上記の`再現性`)。 これは主観的で、引用キーを見たときに参照を覚えやすくする名前を選択します。

## テキストに新しい参照を追加する

あなたのコンテンツに引用を含めるには、 [Jupyter Book](https://jupyterbook.org/content/citations.html) [`sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/) 拡張を使用する推奨に従います。

重要な概念は次のとおりです。

- 使用して参照を含めます。
```
{cite:ps}`CITEKEY`

```
ここで `CITEKEY` は [`references.bib`][turingbib] の対応する文献キーです。
- CITEKEYをカンマで区切ることで、複数の引用を一度に含めることもできます。
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

[`reference.bib`][turingbib] ファイルを使用して以前に編集した記事を引用します:

```
{cite:ps}`Kuula2010archiving`
```

これはあなたのチャプターに {cite:ps}`baker2016re複製度` として表示されます。

完全な参考文献項目は、この本の最後( {ref}`リソース <bibliography>`を参照)でディレクティブを使用して入手できます。

    ```{bibliography} ../_bibliography/references.bib

    ```

For the advanced usage, see the [documentation by sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), which is a Sphinx extension for BibTeX style citations.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
