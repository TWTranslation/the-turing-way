(rr-compendia)=
# Compendiaの研究

## 前提条件

| 前提条件                                  | 重要度    | メモ                      |
| ------------------------------------- | ------ | ----------------------- |
| {ref}`バージョン管理<rr-vcs>`          | 役に立つもの | 概要のバージョンに使用できます。        |
| {ref}`研究を開く<rr-open>`           | 役に立つもの | コンポーネントは大要の一部です         |
| {ref}`再現可能な環境<rr-renv>`         | 役に立つもの | 大要素を再現できるようにするために使用できます |
| {ref}`Binder Hub<rr-binderhub>` | 役に立つもの | 概要を公開するために使用できます。       |
| {ref}`<rr-make>を作る`             | 役に立つもの | 概要のオートメーションに使用できます。     |

## Summary

研究概要は、データ、コード、テキスト(プロトコル、レポート、アンケート、メタデータ)を含む研究プロジェクトのすべてのデジタル部分のコレクションです。 コレクションは、すべての結果を簡単に再現する方法で作成されます {cite:ps}`Nuest2017compendia,Gentleman2007statistory`.

この章には、プロジェクトのすべてのデジタルコンポーネントを再現可能な研究パッケージにまとめるため、多くの前提条件があります。 それは言った: 研究の概要は最小限の技術的な知識で構成することができる。 主な目的は、プロジェクトのすべての要素をまとめて公開することであり、すべてのコンポーネントを組み合わせた基本的なフォルダ構造で十分です。

```{figure} ../figures/research-compendium.jpg
---
height: 500px
name: research-compendium
alt: 複数の論文から科学的情報を取り出し、1つの読み取り可能なファイルの出力を与える大きな機械を撹拌している人を示す図。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```

## モチビーション

[{term}`def<Research Compendia>`] はプロジェクトのすべての要素を統合します。 他の人があなたの仕事を再現できるようにし、あなたの研究プロジェクトの最終的な成果であるべきです。 研究概要と一緒にあなたの研究論文を公開することは、他の人があなたの入力にアクセスすることができます, 解析結果を見直すんだ これはあなたの研究に信頼を与えるだけでなく、より多くの可視性を与えることができます。 他の人は予期せぬ方法であなたの研究を使用するかもしれません そのうちのいくつかは以下で議論されています(セクションを参照してください: {ref}`研究の概要を使用する<rr-compendia-using>`)。

## 背景

最も基本的な研究項目は、プロジェクトのすべてのコンポーネントを組み合わせた包括的なファイルのセットです。 この大要は、ダウンロードし、行った作業を再作成するためにローカルで実行することができます。 リモートサーバ上で実行できる要素を含めることもできます 実行可能な研究compendiaは、利用可能なすべての構成要素を提供することによって、科学的な出版物の計算の部分を再現可能にすることを目指しており、ユーザーが含まれるコードをどのように実行できるかについて説明します。


### 研究概要の構造

研究概要 {cite:ps}`Marwick2018compendia` を構築する際には、3つの原則を念頭に置いておく必要があります。

- ファイルは従来のフォルダ構造で整理する必要があります。
- データ、メソッド、および出力は明確に分離される必要があります。
- 計算環境を指定します。

これらの原則により、多種多様なコンペンディアが可能となります。 最も基本的なバージョンから始めましょう。


#### 基本的な概要

基本的な大要は、これらの三つの原則に従います。 データとメソッドを従来のフォルダ構造に分離し、指定されたファイル内の計算環境を記述します。 さらに、任意の大要はREADME文書の形でランディングページを持っている必要があります。

```text
compendium/
├── data
web+graphie://ka-perseus-graphie.s3.amazonaws.com/my_data.csv
├── analyze
web+graphie://ka-perseus-graphie.s3.amazonaws.com/my_script.R
├── DESCRIPTION
├── README.md
```

#### 実行可能な概要

以下のフォルダは、実行可能な調査コンパチウムとみなすことができます。 これは、研究プロジェクトのすべてのデジタル部品(コード、データ、テキスト、図)と結果を得る方法に関するすべての情報が含まれています。 The computing environment is described in the `Dockerfile`, the dependencies of files and how to automatically generate the results are described in the `Makefile`. さらに、我々は持っています `README. d <code>` 大要項と、それがどのように使われるかについての情報を含む `LICENSE` ファイルを記述する。

```text
compendium/
├── CITATION
├── code
│   ├── analyse_data.R
│   └── clean_data.R
├── data_clean
│   └── data_clean.csv
├── data_raw
│   ├── datapackage.json
│   └── data_raw.csv
├── Dockerfile
├── figures
│   └── flow_chart.jpeg
├── LICENSE
├── Makefile
├── paper.Rmd
└── README.md
```

#### メソッド、データ、出力

研究成果の原理は、方法、データ、出力を明確に区別する必要があると述べています。 異なる段階で、これは3種類のファイルとフォルダを区別する必要があります:

- **読み取り専用**: raw data (``data_raw\`), メタデータ (``datapackage.json`,`CITATION`)
- **Human-generated**: code (`clean_data.R`, `analyse_data.R`), paper (`paper.Rmd`), documentation (`README.md`)
- **Project-generated**: clean data (``data_clean\`, 図(``figures\`), other output

The examples mentioned here are not exhaustive and some may first be "human-generated" and at some point become "read-only" (for example a human may generate the data metadata `datapackage.json`, but once that is done it may become something not to be touched). 言い換えれば、フォルダにこれらのカテゴリのいずれかにファイルが含まれているかどうかは、プロジェクトのライフサイクルによって異なります。


### 概要の作成

すでにこの本の中でいくつかのツールを使用している場合 - 例えばバージョンコントロール、Makefileなど。 および/または再現性のある環境 - 研究成果物を作成するために自然にあなたに来ることがあります。 これは、バージョン管理リポジトリが研究コンパチウムである可能性があるためです。Makefile は実行可能にします。再現可能な環境で再現可能にします。 研究成果物を作成するには 最初に *プロジェクトのコンポーネントは* であり、それに応じてフォルダ構造を作成することをお勧めします。 ファイルやフォルダの名前を使用すると、他の人が何を含んでいるかを理解しやすくなります。 それは研究プロセスの早い段階でこのことを考え、最終的に出力が単なる研究論文ではなく研究の概要であるという考え方であなたのプロジェクトを開始することは良いアイデアです。


### 概要の公開

研究成果物を公開するにはいくつかのオプションがあります:

- GitHubやGitLabなどのバージョン管理プラットフォーム(Binderへのリンクを持つ可能性があります)で。
- ZenodoやOpen Science Framework(OSF)などの研究アーカイブについて。
- 論文出版物の補足資料として。

例については、label/tag/community "research-compendium" (GitLabで使用される) を参照してください。 詳細については、 [Research Compendium](https://research-compendium.science) も参照してください。

将来的には、研究プロジェクト全体のピアレビューを可能にする出版物そのものでもあるかもしれません。

(rr-compendia-using)=
### 概要の使用

以下のように、研究成果をいくつかの方法で使用できます(これらに限定されません)。

- ピアレビュー ピアがあなたが行ったことを確認できる場合、ピアはそれをもっと徹底的に見直すことができます。
- 研究を理解する: 誰かが自分の研究プロジェクトで何をしたかを本当に理解したい場合。 研究の概要はあなたが見る必要があるものです
- 教える: 研究compendiaは教えるのに使用されるよい例である場合もある。
- 再現性の研究/再現ハック: 研究の概要は、他の研究者があなたの計算をやり直すことを試みる(うまくいけば成功する)ことを可能にします。


## Checklist

研究成果物を作成するには、以下の手順に従ってください:

- 良いフォルダ構造について考えてみてください（上記の例を参照してください）
- フォルダ構造（メインディレクトリとサブディレクトリ）を作成
- 必要に応じて、gitリポジトリに大括弧を作成
- プロジェクトの結果を再現するために必要なすべてのファイルを追加
- あなたが他の人が使用するためにそれを宣伝するときに、可能な限りきれいで使いやすい大要を持っているようにしてください
- オプション: ピアをチェックして、それが正しく動作するかどうかを確認してください
- 大括弧を公開

## さらに読む

- ウェブサイト [Research Compendium](https://research-compendium.science) には、研究成果に関するさらなるリソースや出版物、例へのリンクが含まれています。


<!---
> top 3/5 resources to read on this topic (if they weren't licensed so we could include them above already) at the top, maybe in their own box/in bold.
> less relevant/favourite resources in case someone wants to dig into this in detail
-->
