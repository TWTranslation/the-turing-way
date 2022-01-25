(cm-citable-cffinit)=
# `cffinit` を使用して `CITATION.cff` を作成します

`cffinit` は、ユーザーが `CITATION.cff` ファイルを作成するのに役立つウェブアプリケーションです。 アプリケーションは [CFF スキーマ](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) の各フィールドのガイダンスを提供し、自動的に検証を行います。 問題が発生した場合、 `cffinit` は関連するフィールドに対して視覚的なフィードバックを提供します。

次のセクションでは、プロセスの各ステップの詳細を確認できます。

始めるには、 [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) にアクセスし、"作成" ボタンをクリックして **開始** 画面に進みます。

```{figure} ../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: cffinit の Landing page
---
cffinitのランディングページ。 [^cffinitversion]
```

## 開始

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: アプリケーションの最初のページ、タイトル、メッセージ、タイプ。 フィールドは空です。
---
アプリケーションの最初のページ、タイトル、メッセージ、タイプ。 [^cffinitversion]
```

右側に生成された `CITATION.cff` ファイルのプレビューが表示されます。

いずれかのフィールドに問題がある場合、それらはハイライトされ、エラーメッセージは赤で表示されます。 生成された `CITATION.cff` ファイルが有効でない場合、プレビューウィジェットは赤い枠線になります。

```{note}
タイトル、メッセージ、作成者はスキーマにより必須フィールドとして、これらのフィールドは提供されるまでハイライトされます。
```

**作成者** の画面に進むには、format@@2をクリックします。

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: フォームの最初のページ、タイトル、メッセージ、タイプ。 フィールドが入力されました。
---
タイトル、メッセージ、タイプのフォームの最初のページ。 フィールドが入力されました。 [^cffinitversion]
```

## 著者

CFF スキーマには、 `CITATION.cff` ファイル内に少なくとも1つの著者が必要です。 「作成者を追加」ボタンをクリックしてフォームを開きます。 著者のために関連する項目を記入します。 著者にORCIDを追加することを強くお勧めします。 ORCID についての詳細は {ref}`cm-citable-orcid` を参照してください。

```{figure} ../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: 作成者向けのフォームの2番目のページ。
---
作成者のためのフォームの第二ページ。 [^cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: 作成者向けのフォームの2番目のページ。 進行中の著者の追加。
---
作成者のためのフォームの第二ページ。 進行中の著者の追加。 [^cffinitversion]
```

1人の作者を追加した後、有効な `CITATION.cff` ファイルに必要最小限の情報があります。 必要に応じてさらに著者を追加します。 続行するには、次をクリックしてください。

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: 作成者向けのフォームの2番目のページ。 1人の著者が入力されました。
---
作成者のためのフォームの第二ページ。 1人の著者が入力されました。 [^cffinitversion]
```

## 最小 `CITATION.cff` ファイル

よくできました！ これで、 `CITATION.cff` ファイルが最小要件を満たしています。 この画面では、生成されたファイルをダウンロードしたり、プレビューウィジェットからコピーしたりできます。 さらに情報を追加することを強くお勧めします。 「さらに追加」ボタンをクリックすると、文献ファイルにさらに項目を追加することができます。

```{figure} ../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: 最小限のフォームの最後のページ。
---
最小形式の最後のページ。 [^cffinitversion]
```

## 追加フィールド

すべての追加項目は任意ですが、最も関連性の高い項目を入力することをお勧めします。

```{note}
これ以上続けないと決めた場合は、「完了」ボタンを押して、残りのすべてのステップをスキップし、最後の画面に移動します。
```

この画面では、ステッパーに新しい手順が表示されます。 追加画面の簡単な説明は次のとおりです。
- 識別子: DOI、URL、およびソフトウェア遺産識別子を追加します。
- 関連リソース: 仕事とそのウェブサイトに関連するリポジトリの URL
- 概要: 作品の短い概要;
- キーワード: 作品を説明するキーワード;
- ライセンス: 作業が利用可能なライセンス
- バージョン固有のバージョン: リリースの日付を含む特定のリリースまたはコミットに関する情報。

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: フォームの 3 ページ目。 左側にその他のオプションが表示されます。
---
フォームの 3 ページ目。 左側にその他のオプションが表示されます。 [^cffinitversion]
```

追加フィールドの追加を開始するには、format@@0をクリックします。

## 最終画面

あなたが最後の画面にそれを作ったことは素晴らしい! すべての関連情報を追加すると、検証済みの `CITATION.cff` ファイルが表示されます。 ダウンロードまたはコピーしてパブリックリポジトリに追加すると、あなたにふさわしいクレジットが手に入ります！

```{figure} ../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: 完全なフォームの最後のページ。
---
フォームの最後のページ。 [^cffinitversion]
```
