(ch-consistency-formatting)=
# 書式設定

書式設定とは、 _The Turing Way_ の本がどのように書かれており、本の外観やプレゼンテーションに直接影響を与えるかを指します。

_チューリングウェイ_ は Jupyter Book としてオンラインでホストされており、 [ドキュメント](https://jupyterbook.org/intro.html) に記述されているように、書式設定の推奨事項を使用しています。 適切なフォーマットにより、 _The Turing Way_ が読みやすく、アクセスしやすく、モジュール化された作業に似ていることが保証されます。


(ch-consistency-formatting-hr)=
## 困難な要件

一貫性チェックリストの難しい要件は、 _The Turing Way_ がアクセシビリティ、コラボレーション、読みやすさ、使いやすさを優先していることを保証します。 _チューリングウェイの_ フォーマットを扱うチェックには以下が含まれます:

(ch-consistency-formatting-hr-markdown)=
### チェック1:Markdownを使ってコンテンツを作成する

_チューリング方法_ は可能な場合は [Markdown](https://en.wikipedia.org/wiki/Markdown) に記述し、Jupyter Book が意図したとおりにレンダリングされるようにすべきです。


#### Markdown x HTML

_チューリング方法_ の以前の章の一部は、 `HTML`で書かれており、コンテンツの一部は読みづらくなっています。

例えば、 {ref}`html-to-markdown` は `HTML` で書かれたテーブルを示しています。

```{figure} ../../figures/html-to-markdown.png
---
name: html-to-markdown
alt: HTML で書かれた書式の悪いテーブルのスクリーンショット。 表は、列または行の境界線を持たない一緒にスクイッドされます。 これは読者がその意味を解読することを困難にする。
---
HTML で書かれたコンテンツが正しくレンダリングされない場合があります。
```

Markdownに再フォーマットすると、テーブルがよりクリーンで読みやすくなりました。

```{figure} ../../figures/html-to-markdown2.png
---
name: html-to-markdown2
alt: HTML から Markdown に変換されたテーブルのスクリーンショット。 Markdownに変換すると、テーブルが読みやすくなり、理解しやすくなります。
---
HTML を Markdown に変換することで、The Turing Way book が読みやすくなります。
```
```{note} このチェックに対応するPRは、 [こちら](https://github.com/alan-turing-institute/the-turing-way/pull/1460) にあります。
```

`HTML`で書かれた章の内容は通常、角括弧`<> `で始まりと終わりのタグで囲まれています。
[W3Schools](https://www.w3schools.com/html/html_elements.asp) は、これらのタグが何を意味するのかを理解するための優れたリソースです。format@@1(https://www) markdownguide.org/cheat-sheet/) は `HTML` フォーマットを Markdown に翻訳するのに役立ちます。
また、 [Turndown](https://domchristie.github.io/turndown/) や [CloudConvert](https://cloudconvert.com/html-to-md) などの便利なツールがウェブ上にあり、1回のクリックでHTMLをMarkdownに変換します。

テキストの書式設定を行うには、`HTML`が唯一のオプションである場合に注意してください。 オンラインブック内のコンテンツがまだ読まれ、理解されている場合にのみ使用できます(PRでNetlifyプレビューを使用してテストしてください)。
例えば、format@@0(https://support.squarrespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-superscript-and-subscript) は `HTML` で書くことができます。
さらに、複数の列や行にまたがるヘッダーを持つYouTubeの動画やテーブルのようなコンテンツは、 `HTML` で記述することができます。


```{attention} A Note about Styling
:class: tip

_The Turing Way_ has a [bookwide stylesheet](https://github. om/alan-turing-institution/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) は `HTML` で書かれたコンテンツの外観を制御します。
コントリビューションに `HTML` を含める場合は、スタイルシートの関連するクラスと ID を書式に含めるようにしてください。

For example, if you want to add a YouTube video to your content using the `<iframe>` tag, wrap the `<iframe>` in a `<div>` tag, and give the `div` a `video-container` class as shown below.

<div class="video-container">
    <iframe>....</iframe>
</div>

```

これは、 {ref}`スタイルガイド<ch-style-custom-styling-videos>` にも記載されています。

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### チェックリストの作成

_The Turing Way_の新しい章を書くとき 章の内容に基づいて読者に取ってほしい主要な行動ポイントを項目化するChecklistサブチャプターを含めることができます。 _The Turing Way_の以前の章では、このサブ章は Markdown にチェックボックス付きのタスクリストとして書かれています。

```
# Checklist
- [ ] Item One
- [ ] Item Two
- [ ] Item Three

```

ただし、このチェックボックスは、オンライン版の本では意図したように表示されません。例えば:

```{figure} ../../figures/checklist-formatting.png
---
name: checklist-
alt: 任意のチャプターのチェックリストサブチャプターが Markdown にチェックボックス付きのタスクリストとして書かれている場合。 この本のウェブ版ではチェックボックスではなく角括弧が表示されます。
---
チェックボックスは、本のウェブ版では角括弧として表示されます。
```

したがって、今後のコントリビューションでは、Checklistサブチャプターを順に並ばないリストとしてフォーマットし、他の規則に従う以前のチャプターを編集することをお勧めします:

```
# Checklist
- Item One
- Item Two
- Item Three

```
#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-hr-headers)=
### チェック 2: シーケンシャルオーダーでヘッダーを使用します。

連続していないヘッダーは、複数のヘッダーレベルの増加を示します。 例:

```
# Heading
### Another Heading
```
このような2つのヘッダレベルの増加は、ローカルに _The Turing Way_ を構築するときに警告になります。 理想的には、すべてのMarkdownファイルはレベル1の見出しで始まり、必要に応じて順番に増やす必要があります。

```
# 見出し
## 別の見出し
```

_The Turing Way_ のいくつかのファイルはこの規約に従っていません。 A list of such files can be found in [this issue](https://github.com/alan-turing-institute/the-turing-way/issues/1321), and [this PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) is a great example of how to fix a file with non-consecutive headers.

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-hr-labels)=
### チェック 3: チャプター、サブチャプター、セクション、画像にラベルを追加して、相互参照を有効にします。

多くの場合、章は概念を説明したり、ポイントを拡大したりするために別の章の内容を参照することがあります。 相互参照は、参照されるコンテンツが簡単にクリックするだけで見つけやすいようにすることで、これを容易にします。 これにより、 _The Turing Way_ がよりナビゲーションしやすく、アクセスしやすくなります。

{ref}`相互参照する <ch-style-crossref>` は {ref}`chstyle` で詳細に説明されています。 サブチャプターは、ラベルが何であるかを説明し、 _The Turing Way_のラベルに命名規則を提供します。 そして、相互参照がどのように行われるべきかについていくつかの有用な例を示します。

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-hr-images)=
### チェック 4: 画像フォーマットに `MyST` を使用する

_The Turing Way_ の一部の図や画像は、Markdown 構文を使って埋め込まれています。 これは動作しますが、本が読み込まれるデバイスの画面サイズに画像を適応させることはできません。

著しく構造化されたテキスト (`MyST`) は、これに対処し、 _The Turing Way_ でレスポンシブな画像を有効にするマークダウンのフレーバーです。

また、キャプションと代替テキスト(ALTテキスト)の使用を許可します。 これは、スクリーンリーダーを使用する _The Turing Way_ の読者に読み上げられる、目に見えないイメージ記述です。 ALTのテキストに画像が含まれていない場合、ユーザーは画像の目的を理解することができません。

ALTテキストを書くときは、次のことを覚えておいてください：
- **説明的である** - その内容とガイダンスのためのコンテキストを使用して画像を適切に記述する。 その場合、画像を説明に「アナウンス」する必要はありません(例えば、 スクリーンリーダーはすでにこれを行いますので、「のイラスト」または「の画像」を使用してください。
- **できるだけ短くしておきましょう** - 画像によっては長い説明が必要かもしれませんが。 なるべく短くしておいたほうがいい。 これは説明がわかりやすいことを保証します。

_The Turing Way_ の本に含まれる画像は 1MB 未満であることに注意してください。 これにより、特にインターネット接続が遅い読者にとって、本の読み込みが速くなります。

Please refer to the {ref}`style guide <ch-style-figures>` for examples on formatting images using `MyST` and adding ALT text to them. 投稿に画像を含める場合 高さパラメータを避けた方が良いかもしれませんが、間違った値は、モバイルデバイスで画像が歪んで見える可能性があります。 PRを行うときには、Netlifyのプレビューで画像がどのように見えるかを常に確認する必要があります。

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-sr)=
## ソフト要件

ソフトな要件は、 _The Teuring Way_ の全体的なルックアンドフィールを改善するのに役立ちます。 効果がある場合、これらのチェックは気付かれずに済むかもしれませんが、 _The Turing Way_ を洗練された作業にも貢献しています。 _チューリングウェイの_ フォーマットを扱うソフトな要件には以下が含まれます:

(ch-consistency-formatting-sr-one)=
### チェック 1: チャプター/サブチャプターの名前が短く、 `_toc.yml` 内でどのようにタイトルされているかを正確にマップすることを確認します。

_の一部の章とサブ章 チューリングウェイ_ は、ウェブページの左側に表示される本全体の目次の対応する参照と一致しません。 これは、特に目次内のチャプター/サブチャプターの参照が、チャプター/サブチャプターの名前と大きく異なる場合に、ユーザにとっては混乱する可能性があります。

```{figure} ../../figures/mismatched-title-toc.png
---
name: mismatched-title-toc
alt: 目次の参照とタイトルが異なるサブ章。 サブチャプターのタイトルは「研究データにスプレッドシートを使用する」ですが、目次では「スプレッドシートにおけるデータ組織」と呼ばれています。
---
このサブチャプターのタイトルは「研究データにスプレッドシートを使用する」です。 しかし、コンテンツのテーブルは「スプレッドシートのデータ組織」と同じファイルを参照します。
```

_チューリングウェイの_ コンテンツがこのチェックを通過することを確実にするために、タイトルを短く保つことをお勧めします。 新しい章を書くときは、タイトルが短く、目次に同じ名前があることを確認してください。 Similarly, when reviewing existing chapters, if its title and reference in the table of contents differ, make the shorter of the two the chapter's title, and update the `_toc.yml` if necessary.

```{note}
`_toc.yml`は、_The Turing Way_のブックワイドな目次があるファイルです。
```

それにもかかわらず、最後のタイトルは十分に章やサブ章から何を期待するかを読者に伝えるべきであることを覚えておいてください。

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-formatting-sr-two)=
### チェック 2: ヘッダーの適切なタイトルケーシングを確認してください

_The Turing Way_ のいくつかの章のタイトルはタイトルケーシングを使用しません。 [タイトルケーシング](https://en.wikipedia.org/wiki/Title_case) は、出版された作品のタイトルと見出しをフォーマットするために使用される大文字化スタイルです。 _The Turing Way_ で再現可能なデータサイエンス、タイトル、見出しを実行しようとする個人にとっては、引用可能な参照であるべきである。

_The Turing Way_ は特定のタイトル大文字に準拠していないが、一部の一般的な、非網羅的なルールは次のとおりである。
- 英単語を大文字にする
- 小文字の記事、結合、および前置位置 (ストレスが発生しない限り)
- 最初と最後の単語を大文字にする

[CapitalizeMyTitle](https://capitalizemytitle.com/) や [Title Case Converter](https://titlecaseconverter.com/)のような有用なツールがあります。 これは、コンテンツを書くときにタイトルケースのヘッダーに使用できます。 さらに、 _のヘッダー_ は、タイトルケーシングの規則に従うように、これらのツールを通して実行できます。 これらはチャプター内と `_toc.yml` 内で適切に置き換えることができます。

For example, In {ref}`mismatched-title-toc` above, **Using spreadsheets for research data** should be title-cased to **Using Spreadsheets for Research Data**.

特定のヘッダーは、使用されているコンテキストに応じてタイトルを使用する必要はありません。 例えば、この章のヘッダのいくつかはチェックリストを構成しているので、 タイトルを大文字にする必要はありません。

#### デモ

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
