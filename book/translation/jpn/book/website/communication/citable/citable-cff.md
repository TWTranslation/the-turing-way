(cm-citable-cff)=
# CITATION.cffによるソフトウェア文献の参照

[文献ファイル形式](https://citation-file-format.github.io) では、文献メタデータを提供できます。 ソフトウェアやデータセットでは人間と機械の両方で読みやすい平文ファイルがあります

```{figure} ../../figures/recognition.jpg
---
name: recognition
width: 500px
alt: リサーチソフトウェア開発者はソフトウェアを信頼できるものにすることで認識を得る。
---
研究用ソフトウェアの開発者は、ソフトウェアを有効にすることで認識されます。 _Scriberiaによるチューリング方法_プロジェクトのイラスト。 Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

このメタデータを提供するには、まず `CITATION.cff` ファイルを作成し、ソフトウェアまたはデータセットに含めます。 A `CITATION.cff` file aggregates the information in a key-value format that can be easily interpreted and updated by humans, and easily parsed and converted with existing tools.

(cm-citable-cff-why)=
## `CITATION.cff` を使用する理由

ソフトウェアの文献情報に `CITATION.cff` ファイルを使用すると大きな利点があります。

It's easier for you: When you host your software source code on GitHub and have a `CITATION.cff` in your repository, you can use the Zenodo-GitHub integration to automatically publish new releases of the software. ゼノドは、 `CITATION.cff` の情報を利用し、出版物と共に表示します。 Zenodo でこの情報を手動で編集する必要はありません。

```{figure} ../../figures/software-credit.jpg
---
name: software-credit
width: 500px
alt: ソフトウェアクリエイターのクレジットを増やす。
---
ソフトウェアクリエイターのクレジットを増やす。 _Scriberiaによるチューリング方法_プロジェクトのイラスト。 Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

ソフトウェアのユーザーは以下の方が簡単です。
1. `CITATION.cff` の文献情報を直接使用してソフトウェアを引用することができます。
2. ソースコードが GitHub の場合。 サイドバー内の引用情報をフォーマットされた引用として表示し、BibTeX形式で表示します。 ユーザーはコピーして原稿に貼り付けて、ソフトウェアを正しく引用することができます。
3. If they use the Zotero reference manager, they can import the citation metadata directly from the `CITATION.cff` file in the GitHub repository to their reference manager.

(cm-citable-cff-how-to-create)=
## `CITATION.cff` ファイルを作成する方法

`CITATION.cff` は独自のスキーマ定義を持つ `YAML` ファイルです。 スキーマは各フィールドのルールを定義し、どのフィールドが必要で、どのフィールドが任意であるかを定義します。 有効な `CITATION.cff` ファイルを作成するには、ユーザーはこれらのルールに従う必要があります。

必要なキーのみを含む有効な `CITATION.cff` ファイルの最小例は次のようになります。

```yaml
authors:
  - family-names: Doe
    given-names: John
cff-version: 1.2.0
message: "If you use this software, please cite it using the metadata from this file."
title: "My research software"
```

ただし、より多くのフィールドを追加すると、ソフトウェアのより説明的なメタデータを作成することができます。 以下の例は、バージョン、リリース日、DOI、ライセンス、キーワードなどのソフトウェアの重要な情報も提供します。

```yaml
抽象的: "これは私の素晴らしい研究ソフトウェアです。 It does many things."
authors:
  - family-names: Doe
    given-names: John
    orcid: "https://orcid.org/0000-0001-8888-9999"
cff-version: 1.2.0
date-released: "2021-10-13"
identifiers:
  - description: "This is the collection of archived snapshots of all versions of My Research Software"
    type: doi
    value: 10.5281/zenodo.123456
  - description: "This is the archived snapshot of version 0.11.2 of My Research Software"
    type: doi
    value: 10.5281/zenodo.123457
keywords:
  - "amazing software"
  - research
license: Apache-2.0
message: "If you use this software, please cite it using the metadata from this file."
repository-code: "https://github.com/citation-file-format/my-research-software"
title: "My Research Software"
version: 0.11.2
```

フィールドの完全なリストは、 [CFF スキーマガイド](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) に記載されています。 次のセクションでは、 `CITATION.cff` ファイルの作成と使用に役立つツールを見つけることができます。

### ソフトウェアを適用できるようにするための手順

ソフトウェアを有効にするには、以下の2つの手順に従う必要があります。

#### ステップ1. `CITATION.cff` ファイルを作成

`CITATION.cff` ファイルを作成するには 2 つの方法があります。

1. 文献ファイルの作成プロセスをガイドする [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/)を使用します。 `cffinit` には、手動編集などと比較していくつかの利点があります。

    - 追加のツールをインストールする必要はありません;
    - 手動での検証は必要ありません;
    - 各フィールドのガイダンス;
    - 問題を示す視覚的なフィードバックです

    作成と検証を簡素化するため、 `cffinit` を使用することをお勧めします。 `cffinit` の使用の詳細については {ref}`cm-citable--cffinit` を参照してください。

2. お気に入りのコード エディターでファイルを手動で編集します。 この方法の欠点は、システムに必要なツールをインストールし、自分で検証を行うことです。 また、検証のエラーメッセージは比較的長く、理解しにくい場合があります。 `CITATION.cff` ファイルがある場合は、問題がないことを確認するために検証する必要があります。 `CITATION.cff` ファイルを [`cffconvert` Python パッケージ](https://pypi.org/project/cffconvert/) で確認できます。

    ```shell
    cd path/to/CITATION.cff
    cffconvert --validate
    ```

    Dockerを使用したい場合は、 [`cffconvert` Docker イメージ](https://hub.docker.com/r/citationcff/cffconvert) を使用できます。

    ```shell
    cd path/to/CITATION.cff
    docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
    ```

    エラーメッセージが表示された場合は、関連する検証エラーを探し、修正してください。

```{note}
GitHub リポジトリに有効な `CITATION.cff` ファイルが常に存在することを確認するには、 [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Actionを使用します。
```

#### ステップ 2. 公開コードリポジトリに `CITATION.cff` を追加する

After creating a valid `CITATION.cff` file, you will need to add it to root of your code or data repository so that it can be easily found and cited.

(cm-citable-cff-updating)=
## `CITATION.cff` ファイルの更新

When you need to update your `CITATION.cff` file, for example to add an author or to change the information about releases, you will need to edit the file manually. ソフトウェアをリリースする前に、 `CITATION.cff` ファイルを更新することをお勧めします。

(cm-citable-cff-how-to-cite)=
## `CITATION.cff` を使用して引用する方法

If you have found software or datasets that contain a `CITATION.cff`, there are a few ways to obtain the reference information to cite them in your publication.

- You can use one of the tools, such as `cffconvert` command line program, to convert your `CITATION.cff` file to one of the [supported formats](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), such as APA, BibTeX or EndNote.

- あるいは、引用したいソフトウェアまたはデータセットが GitHub で利用可能である場合。 GitHubのインターフェイスを使用して、「このリポジトリを削除する」ボタンをクリックすることで、APAまたはBibTeX形式の参照をコピーすることができます(下の画像の緑色の領域を参照してください)。 GitHubのソフトウェア引用の詳細については、ソフトウェア引用に関する [GitHubのガイド](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files) を参照してください。

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  name: github-cff-integration
  alt: `CITATION.cff`ファイルをAPAとBibTexのフォーマットに自動的に変換するためのGitHub上のボタン。
  ---
  "Cite this repository" は自動的に `CITATION.cff` ファイルをAPAとBibTexのフォーマットに変換します。
  ```

  ```{note}
  "Cite this repository" ボタンは、リポジトリに `CITATION.cff` ファイルがある場合にのみ表示されます。
  ```

(cm-citable-cff-available-tools)=
## 利用可能なツール

`CITATION.cff` ファイルの作成と検証、および他のフォーマットへの変換を容易にするためのいくつかのツールがあります。 文献ファイル形式のリポジトリには、 [これに対するすべての既知のツールのリスト](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) があります。
