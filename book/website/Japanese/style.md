(ch-style)=
# Style Guide

スクリーンリーダーや英語を母国語としないスピーカーなど、誰でも簡単に本を読むことができるようにします。 我々は本のすべての章で一貫したスタイルを維持するためのガイドラインのセットをまとめました

[GOV.UK のガイダンス](https://www.gov.uk/guidance/content-design/writing-for-gov-uk) に従い、 _The Teuring Way_ のリソースのアクセシビリティを向上させます。

## 各文章を新しい行に書く (改行)

すべての文章をマークダウンファイルに別行に書き込んでください。 新しい行にそれぞれの文を持つことで、テキストの表示方法に違いはありません。 段落は残りますが、プルリクエストをチェックする方が簡単になることを意味します。 変更は段落内のどこかではなく1行になります。 以下の例を考えてみましょう。

 ```
今日、あなたはあなたです。それは真実よりも真実です。 あなたほど若くて生きている人はいない。 - Dr Seuss
```

段落全体の変更として、Drの後に「.」が表示されるように修正するプルリクエスト。 これとまったく同じ方法でオンラインで表示される次の例と対照的に、1行に変更が表示されます。

 ```
今日、あなたはあなたです。それは真実よりも真実です。
あなたほど若くて生きている人はいない。
- Dr Seuss
```

## ご意見は大歓迎ですが...

_The Turing Way_ の本は、軽く ** 意見のみであることを意図している。 より多くの意見の内容が許可されている間、そのような内容は明確にマークされるべきである。 これを行う最良の方法は、見積もりボックスに表示することです。 これは、シンボル `>` より大きい行を前置することによって行うことができます。 書式設定は保持されるので、以前のように各文を新しい行に分割することができます。

```
> I will not eat them in a house,
> i will not eat them with a mouse,
> i will not eat them in a box i will not eat them with a fox,
> i will not eat them here of there i will not eat them anywhere,
> I do not like green eggs and ham i do not like them sam i am
```

## ラテン語の短縮を回避する

ラテン語の略語は使用しないでください。 詳細については、 [Gov.ukの推奨事項](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style) を参照してください。

これらの略語のいくつかは次のとおりです:

```{figure} ../figures/latin-abbreviation.png
---
height: 400px
name: latin-abbreviation
alt: 3 つのラテン語の省略形を持つ画像
---
*exempli gratia* のラテン語の省略形のリスト (例えば) *et-cetera* (so on), *id est* (that is).
[Common Latin Abbreviations for APA Style](https://blog.apastyle.org/files/apa-latin-shapations-table-2.pdf)の一部のスクリーンショット。
```

*exempli gratia*のテーブルの最初の略語の代わりに、 画面を読むソフトウェアによっては、声を出して「卵」と読むことができます 「例えば」、「such as」、「like」、「including」のいずれかを特定のコンテキストで最も効果的に使用してください。

*et-cetera* のテーブルの2番目の略語の代わりに、開いている終了したリストを示すようにします。 「例えば」や「such as」、「like」、「including」のような単語でリストを始めてください。

文章を明確にするためによく使われる *id est* の表の3番目の略語の代わりに。 使う必要がないように文章を書き直してみてください。 それができない場合は、「meaning」や「that」などの代替品を使用してください。

Any chapter containing a Latin abbreviation will fail the continuous integration (CI) workflow of the _The Turing Way_ GitHub repository from passing successfully, which is tested by this [Python script](https://github.com/alan-turing-institute/the-turing-way/blob/main/tests/no-bad-latin.py).

*CI が失敗するのを避けるため この章でさえ、略語を書くのは避けて、上の例を示すためにイメージを使用しました。*

## ヒント

### インデックス

番号付けリストの各項目の後にあるコンテンツをインデントします。 コンテンツがインデントされていない場合、リストの番号付けがリセットされます。

例えば、避けてください:
1. 最初のリスト項目
```
このコンテンツは最初のリスト項目に属しています。
```
2. 2番目のリスト項目

代わりに、以下をお勧めします:
1. 最初のリスト項目
   ```
   このコンテンツは最初のリスト項目に属しています。
   ```

2. 2番目のリスト項目


### 外部リンク

"www" の代わりに "http://" を使用して外部リンクを書き込みます。 これにより、ハイパーリンクとして正しく認識されます。
