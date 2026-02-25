(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

次のセクションでは、プロセスの各ステップの詳細を確認できます。

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## 開始

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

いずれかのフィールドに問題がある場合、それらはハイライトされ、エラーメッセージは赤で表示されます。
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## 著者

The CFF schema requires at least one author in the `CITATION.cff` file.
「作成者を追加」ボタンをクリックしてフォームを開きます。
著者のために関連する項目を記入します。
著者にORCIDを追加することを強くお勧めします。
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
必要に応じてさらに著者を追加します。
続行するには、次をクリックしてください。

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

よくできました！
Now your `CITATION.cff` file meets the minimum requirements.
この画面では、生成されたファイルをダウンロードしたり、プレビューウィジェットからコピーしたりできます。
さらに情報を追加することを強くお勧めします。
「さらに追加」ボタンをクリックすると、文献ファイルにさらに項目を追加することができます。

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## 追加フィールド

すべての追加項目は任意ですが、最も関連性の高い項目を入力することをお勧めします。

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

この画面では、ステッパーに新しい手順が表示されます。
追加画面の簡単な説明は次のとおりです。

- 識別子: DOI、URL、およびソフトウェア遺産識別子を追加します。
- 関連リソース: 仕事とそのウェブサイトに関連するリポジトリの URL
- 概要: 作品の短い概要;
- キーワード: 作品を説明するキーワード;
- ライセンス: 作業が利用可能なライセンス
- バージョン固有のバージョン: リリースの日付を含む特定のリリースまたはコミットに関する情報。

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

追加フィールドの追加を開始するには、format@@0をクリックします。

## 最終画面

あなたが最後の画面にそれを作ったことは素晴らしい!
After adding all the relevant information, you will have a validated `CITATION.cff` file.
ダウンロードまたはコピーしてパブリックリポジトリに追加すると、あなたにふさわしいクレジットが手に入ります！

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
