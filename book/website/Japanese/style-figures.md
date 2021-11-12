(ch-style-figures)=
# 図を _チューリング方法_で使う

_The Turing Way_ の本の章に画像を追加することをお勧めします。 This section of the style guide will explain how to use [Markedly Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) format to add them to the book with appropriate {ref}`alt text<ch-style-figures-alttext>` and {ref}`captions<ch-style-figures-caption>`.

元の画像ファイル(あなたを含む!)の作成者が {ref}`適切に認められていること<ch-style-figures-licence>`を保証することに私たちは非常に情熱を持っています。 ライセンスされていない画像を再利用しないでください。

このサブチャプターでは、 **図** という用語を使って、 _The Turing Way_ の章の文脈で情報を伝える図を示しました。 **image** という用語は、ファイルオブジェクト自体を参照するために使われます。

(ch-style-figures-license)=
## ライセンスを開く

画像ファイルを公正に帰属させ、再利用または再利用の権限がないように制限されているファイルを避けるようにしてください。

以下の推奨事項は、ライセンス権限に従って画像を使用しているかどうかを確認するのに役立ちます。

* 自分の画像を使用している場合は、 `図` フォルダに追加してください。 それらはその後、

Creative Commons Attribution 4に基づいて利用可能になります。 国際(CC BY 4.0) [](https://creativecommons.org/licenses/by/4.0/deed.ast) 本の残りの部分と同様のライセンス。</p></li> 
  
  * あるいは、パブリックドメイン([CC0 ライセンス](https://creativecommons.org/share-your-work/public-domain/cc0))または適切なクリエイティブ・コモンズの用語を通じてライセンスされた画像をソースすることもできます。 CC-BY 4の下で利用可能な画像。 パーミッションは、 _The Turing Way_ と非常に簡単に相互運用できます。これは本の他のコンテンツと同じライセンスであるためです。

* 画像（例えばインターネット上で見つけた画像）の場合 はオープンライセンスでは利用できません。画像の原著者に連絡し、画像を再現する許可を求めてください。 図のキャプションに **どのように入金するか** を確認してください。</ul> 

一般的には、画像の所有者が指示するように、常に画像を適切に引用するようにしてください。 「インターネットからの画像」だけでは不十分です。

(ch-style-figures-image)=


## 画像の種類、ファイル名、サイズ、場所

オンライン本の読み込み速度を向上させるために、 `.jpg` または `.png` のファイルをアップロードしてください。 ファイルが1MBを超える場合は、ローカルの画像編集ツールか、 [IMG2GO](https://www.img2go.com/compress-image) のようなオンラインツールを使用してファイルを圧縮してください。

画像ファイルに名前を付けるには、すべて小文字とハイフンで別々の単語を使用してください。 Every image file used in this book should be located in the file `_figure-list.md` in the directory `book/website/figures` of our [GitHub Repository](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). If you use a new image file, please add the file in the `figures` directory, and add details in the `_figure-list.md`.

(ch-style-figures-syntax)=


## 図を _チューリングウェイ_ の章に追加するMyST 構文

私たちのすべての章はMarkdownファイルで書かれています。 Therefore, using Markdown syntax to include a figure in a Markdown file will work fine, for example, `![](../../figures/file-collection.jpg)`, where the relative path of the image file is provided inside the round brackets '()'.

**しかし**、このフォーマットでは画像が画面サイズに反応することはできません。 小さな画面やスマートフォンで読むことができなくなります さらに、これは著者が章の図形のサイズを変更したり、本のどこか別の場所にそれらを参照することを許可しない。

そこで、Jupyter Books で利用できる [Markedly Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) フォーマットを使うことをお勧めします。

You can resize figures to adjust how they appear in our chapters using the parameters: `width` and `height` (takes value in px, for example, 400px) or `scale` (takes value in percentage, for example, 50%), especially if your original figure is large. Using the parameter: `name`, you can reference figures in other chapters in a similar manner as defined in {ref}`ch-style-crossref`.

図のすべてのコンポーネント(図の位置、サイズ、名前)は、次のディレクティブを使用して、markdownファイル内のセクションにカプセル化することができます。



````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
---
```
````


この図は {ref} のようなロールを使用して他のファイルで参照できます。



```
{ref}`file-collection`
```


500pxの高さは _The Turing Way_ の本で非常にうまく動作しますが、これは提案に過ぎません。

(ch-style-figures-alttext)=


## 代替テキスト

代替テキストまたは代替テキストは、HTML ページ上の画像の外観と機能を記述するために使用されます。 私たちの例はこの文章で説明できます: *文書の引き出しで喜んでファイルを閲覧している2人の人。*

図に代替テキストを追加することは、ウェブアクセシビリティの最初の原則の一つです。 スクリーンリーダーソフトウェアは、図の内容をよりよくユーザーに説明するために代替テキストを読むことができます。

図のすべてのコンポーネント（画像ファイルの場所、サイズ、名前） Altテキストとタイトルは、次のディレクティブを使用してmarkdownファイル内のセクションにカプセル化することができます。



````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
alt: ドキュメントの引き出しで喜んでファイルを閲覧している2人。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```
````


代替テキストを使用するもう一つの利点は、画像をブラウザで読み込めない場合です。 または、画像へのリンクは、以下のような図の代わりに表示されます。



```{figure} ../../figures/alt-text-demo.png
---
name: alt-text-デモ
alt: ドキュメントの引き出しで喜んでファイルを閲覧している2人。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```


これらすべてのコンポーネントが正しく使用されると、このページのように、ファイルに含まれる図がオンライン本に表示されます。



```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
alt: ドキュメントの引き出しで喜んでファイルを閲覧する2人の人。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```


(ch-style-figures-caption)=


## 図表番号

図の下にキャプションが表示されます。 それらは短く簡潔で、ソースへの参照を含める必要があります。 特に、画像が再利用されるライセンスを記述することが重要です。

たとえば、キャプションには次のようなものがあります。



> GitHub で最初のプルリクエストを作成します。 _The Turing Way_ プロジェクトイラストはScriberia。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

この画像の構文は以下の通りで、本に表示される方法はコードスニペットの下にあります。



````
```{figure} ../../figures/first-pull-request.png
---
height: 400px
name: first-pull-request
alt: A person helping out another person making their first pull request on GitHub
---
Making your first pull request on GitHub.
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```
````




```{figure} ../../figures/first-pull-request.png
---
height: 400px
name: first-pull-request
alt: GitHub 上で最初のプルリクエストを行う他の人を助けている人
---
GitHub上で最初のプルリクエストを行う。
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```


ソースへのリンクが、Zenodo レコードではない {term}`デジタルオブジェクト識別子 <Digital Object Identifier>` であることを確認してください。 また、マークダウンリンクフォーマットを使用してソースへのリンクを作成していることを確認してください: `[text](url)`.

(ch-style-figures-advanced)=


## 高度な機能と "gotchas"

より高度なパラメータについては、 [Jupyter Book Documentation](https://jupyterbook.org/content/figures.html) を参照してください。 That page includes information on how to [scale and align](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) the figures, and how to add the figures or their captions to the [margins](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) of the book.

コントリビューターから _The Turing Way_ まで、いくつかの「gotchas」に気づきました。図のための MyST 構文を学ぶ他の誰でも、ガイドのこのセクションを最新の状態に保つようにしていきます。

* `:` と `"` の両方ともスフィンクスの構文的な意味を持っています。 つまり、代替テキストにこれらの文字を使用しないことが重要です。
