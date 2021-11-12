(ch-style-more-features)=
# 用語集、特別なブロック、その他のスタイル

Jupyter Bookには、チャプターのスタイリングや、より包括的な本を作成するためのより多くのオプションがあります。 この章では、 _The Turing Way_ で使用することをお勧めするいくつかの機能について説明します。

(ch-style-more-features-glossary)=
## Glossary

_The Turing Way_ には、本のアフターワードにある {ref}`用語集` ファイルがあります。 異なる用語の定義をアルファベット順にまとめています このファイルは、新しい用語の定義で更新することができます。 本のどの章にもリンクすることができます

新しい用語のエントリを追加するには {ref}`用語集` ファイルの右側のアルファベット順にジャンプし、以下の構文を使用してください:

```
New Term-1
  用語を定義する短い文。 この文は用語の下にインデントされている。
```

例えば、「A」で始まる [用語](https://the-turing-way.netlify.app/afterword/afterword.html#a) は、以下のように同じテキストブロックに書かれています。
```

## A

```{glossary}

Acceptance Testing
 システムが許容性をテストするソフトウェアテストプロセスのレベル。 このテストの目的は、システムがプロジェクト要件に適合しているかどうかを評価し、それが目的に適合しているかどうかを評価することです。


 ステージング領域にファイルを追加するコマンドを使用します。 ユーザが次のコミットに含めるファイルまたはディレクトリを指定できます。

著者
  この文脈における著者は、サブチャプターの作成など、プロジェクトに実質的な貢献をした_The Turing Way_ プロジェクトの貢献者です。 コミュニティとの相互作用、プロジェクトのインフラの維持、そしてメンターによる貢献を通じて他の人々の参加を支援することを促進します。 全ての著者は、本全体について共著者として名付けられている。

```

用語集の用語を参照するには、構文 ``[{term}`def<Term>`]`` を使用します。

For example, to link the term 'Authors' to its definition in the glossary file, please use the syntax ``[{term}`def<Authors>`]`` next to where this term appears, which should render online like this: "*Authors [{term}`def<Authors>`] has been referenced here.*"

(ch-style-more-features-blocks)=
## 特別コンテンツブロック

新しい章を書いたり、既存の章を修正したりするとき あなたは章の残りの物語に合わないメモを追加したいと思うかもしれませんが、読者にとって役に立つかもしれませんし、彼らが章をよりよく理解するのに役立つかもしれません。

Jupyter Book では、特別な content ブロックを使用して、ページの残りの部分から目立つ必要のあるテキストをハイライトすることができます。 これは、テキストのブロックをページの残りの部分から視覚的に分離し、読者の注意を簡単に引き出すことを保証します。

特別なコンテンツブロック (注意、警告または訓戒) をページに追加するには、次のディレクティブを使用します。

````
```{note}
これはサンプルノートです！
```
````
これは次のようになります:

```{note}
これはサンプルノートです!
```

コンテンツブロックにカスタムタイトルやスタイルを付与することで、意図したメッセージを補強できます。 たとえば、何かについて読者に警告したい場合は、次のディレクティブを使って警告ブロックを作ることができます。

````
```{warning}
これは厳密な警告です！
```
````
新しいタイトル、アイコン、配色に注意してください。

```{warning}
これは厳密な警告です!
```

ライティングのニーズに合わせてコンテンツブロックをカスタマイズする方法は他にもたくさんあります。 更なる推奨事項については、 [Jupyter Book ドキュメント](https://jupyterbook.org/content/content-blocks.html#notes-warnings-and-other-admonitions) と [Admonition Demo ページ](https://sphinx-book-theme.readthedocs.io/en/latest/reference/demo.html#admonitions) を参照してください。
