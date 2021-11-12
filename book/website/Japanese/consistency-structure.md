(ch-consistency-structure)=
# 構成

構造とは、 _チューリングウェイ_ がどのように組織されているかを指します。 優れた構造的なフレームワークは、 _チューリングウェイの_ コンテンツが整然とした形で提示されることを保証します。

(ch-consistency-structure-hr)=
## 困難な要件

_チューリングウェイの_ 構造を扱うハードチェックには以下が含まれます。

(ch-consistency-structure-hr-emptyfiles)=
### チェック 1: 空のファイルを `_toc.yml` に追加しない

`_toc.yml` ファイルは、 _チューリングウェイの_ 目次(ToC)がある場所です。 ToCで参照されているいくつかのファイルは空です そしてその包含は、読者が _The Teuring Way_ を読んでいる間に空の(サブ)章にナビゲートできることを意味する。 これは読者が本を通過する間の経験に悪影響を与える。

```{figure} ../../figures/empty-toc-file.png
---
name: empty-toc-file
alt: チューリングウェイの目次に含まれる空のファイル。 読者は、目次に含まれている場合でも空のファイルに移動することができます。
---
空のファイルに含まれるチューリングウェイの目次はまだ読者がアクセスできます。
```

一般的な提案としては、ToCからそのようなファイルへの参照を削除し、それらのファイル用に記述されるコンテンツを _The Turing Way_ Github [リポジトリ](https://github.com/alan-turing-institute/the-turing-way) で問題を提起することです。 コンテンツが書き込まれると、ファイルを ToC に追加できます。

For example, [this issue](https://github.com/alan-turing-institute/the-turing-way/issues/1391) curates a list of empty and incomplete files currently in _The Turing Way_, and [this PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) writes content for the `Data Licences` subchapter shown in the {ref}`image <empty-toc-file>`.

(ch-consistency-structure-hr-structure)=
### チェック 2: チャプターが一貫した構造に従っていることを確認する

_The Turing Way_ は、いくつかのチャプターとサブチャプターを含む5つのガイドで構成されている。 しかし、これらの章は読者の経験から離れて均一な構造に従っていない。

```{figure} ../../figures/recommended-chapter-structure.png
---
name: recommended-chapter-structure
alt: チューリングウェイのチャプターに推奨される構造。 チャプターには、前提条件、要約、およびそのチャプターが役に立つ理由があるランディングページが必要です。 チャプターは、チャプターの内容の残りの部分に加えて、チェックリストとリソースサブチャプターを持つ必要があります。
---
The Turing Wayのチャプターに推奨される構造。
```

- **ランディングページ:**
    - チャプターのランディングページには、チャプターを理解するために必要な前提条件に関する情報が含まれている必要があります。 章の内容の概要とその章がなぜ役に立つのかの説明です
- **サブチャプター:**
    - チャプターには、サブチャプターの数を含めることも、まったく含めないこともできます。 ただし、チェックリストとリソースのサブチャプターについては、次の要件に注意してください。
- **Checklist subchapter:**
    - チェックリストのサブチャプターは、この章で紹介された概念に基づいて読者のアクションポイントを表示します。
- **リソースサブチャプター:**
    - リソースサブチャプターは、読者が章で説明されている概念の詳細を学ぶことができる他のソースを指します。 関連するトピックを探索することができます


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
これらのファイルへの参照は、 `_toc.yml` ファイルの目次で更新する必要があります。
```

Refer to the [chapter template](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) to structure new chapter contributions, and use it to assess current chapters in _The Turing Way_. この構造に合致しないチャプターでは、プルリクエストを発生させてください。


(ch-consistency-structure-hr-toc)=
### チェック 3: 章やサブチャプターに「目次」を追加しないでください。

_The Turing Way_ のいくつかの章は、手作りの目次で書かれています。 ただし、 Jupyter Book は、 _The Turing Way_ 本の左側にある恒久的な目次を自動生成します。 そして、各ページの右上にある動的なページ固有の表。 これにより、手動で書かれた目次が不要になり、 _The Teuring Way_ で読者の経験に悪影響を与える可能性があります。

```{figure} ../../figures/many-table-of-contents.png
---
name: many-table-of-contents
alt: The Turing Way のサブチャプターで、3つの目次を持つ。 Jupyter Book によって生成された2つと、章作者によって生成された1つの2つ。
---
Jupyter Book は別々の2つの目次を自動生成するため、手動で書かれた目次は不要です。
```
#### デモ

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistency-structure-hr-citing)=
### 外部ソースが適切に引用され参照されていることを確認します。

As described in the {ref}`style guide<ch-style-citing>`, _The Turing Way_'s book-wide references are stored in a BibTeX file called `references.bib`. When writing new content, ensure that information culled from external sources are cited using the BibTeX format and added to the `references.bib` file as appropriate.

{ref}`スタイルガイド<ch-style-citing>` では、中央集権化された BibTeX ファイルに新しい参照を追加する方法を示しています。 参考文献を書き込む方法を示しています


(ch-consistency-structure-soft-req)=
## ソフト要件

_チューリングウェイの_ 構造を扱うソフト要件には以下が含まれます。

(ch-consistency-structure-sr-summary)=
### チェック 1: 各章のランディングページに良い概要があることを確認します。

良い概要が記載された章では、次の内容の概要を読者に説明します。 理想的には、要約は章の主要なアイデアを伝え、サポートの詳細を特定する必要がありますが、簡潔かつ正確でなければなりません。 概要はまた適切に章のサブ章を相互参照する必要があります, 迅速に概要が導入トピックを探索したい読者の利益のために. _の章 これらの基準に合致しない要約を含むチューリング方法_ は、書き換えまたは書き換える必要があるかもしれない。


(ch-consistency-structure-sr-modular)=
### チェック 2: 長いチャプターを小さいサブチャプターに分割してモジュラー化する

長い章は、読者の中には難しいかもしれません。 さらに、非常に長い内容は章が述べる主要な考えにのみ興味があるかもしれない他の読者のために威圧することができる。 したがって、  _The Turing Way_ を読みやすくするには、長い章を適切にモジュール化する必要があります。

章をモジュール化したままにする場合、その章は全体的なトピックの1つの側面についてしか話さないようにしてください。 例えば、機械学習に関する章が _The Turing Way_のために書かれる場合。 そのような章には、それぞれのフォーカスが学習、教師なし学習、強化学習を監督した少なくとも3つのサブ章が含まれている必要があります。
