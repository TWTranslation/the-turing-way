(cm-citable-cff)=

# CITATION.cffによるソフトウェア文献の参照

The [Citation File Format](https://citation-file-format.github.io) lets you provide citation metadata, for software or datasets, in plaintext files that are easy to read by both humans and machines.

```{figure} ../../../figures/recognition.*
---
name: recognition
width: 500px
alt: >
  Illustration by Scriberia for The Turing Way, highlighting the role of software citation in increasing recognition for developers.
  Two groups stand on separate pillars: researchers on a taller grey pillar and developers on a shorter green pillar labelled "CODE".
  Large black arrows labelled "software citation" point upward, lifting the developers.
  Above both groups is the word "RECOGNITION" in bold, with a glowing badge and green stars.
  A green arc connects the two pillars, suggesting a bridge of acknowledgement.
  Below, three figures sit at desks, representing the broader community.
---
Research software developers get recognition by making software citable. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

To provide this metadata, start by writing a `CITATION.cff` file and include it with your software or dataset.
A `CITATION.cff` file aggregates the information in a key-value format that can be easily interpreted and updated by humans, and easily parsed and converted with existing tools.

(cm-citable-cff-why)=

## Why Use `CITATION.cff`?

There are great advantages when using a `CITATION.cff` file for the citation information for your software!

It's easier for you:
When you host your software source code on GitHub and have a `CITATION.cff` in your repository, you can use the Zenodo-GitHub integration to automatically publish new releases of the software.
Zenodo will use the information from `CITATION.cff` and show it together with the publication.
Zenodo でこの情報を手動で編集する必要はありません。

```{figure} ../../../figures/software-credit.*
---
name: software-credit
width: 500px
alt: >
  Illustration by Scriberia for The Turing Way, highlighting the importance of giving software creators credit through the use of `CITATION.cff` files.
  On the right, a developer sits at a desk, writing code represented by binary and angled brackets.
  A pink path of code flows toward two people on the left.
  One person holds a large wallet labelled "Credits", while the other kneels and holds a magnifying glass that zooms in on the word "CFF" along the code path.
  A speech bubble above them reads, "More credits for the software creators!"
---
More credits for the software creators. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

ソフトウェアのユーザーは以下の方が簡単です。

1. They can directly use the citation information from `CITATION.cff` to cite your software.
2. ソースコードが GitHub の場合。 サイドバー内の引用情報をフォーマットされた引用として表示し、BibTeX形式で表示します。
   ユーザーはコピーして原稿に貼り付けて、ソフトウェアを正しく引用することができます。
3. If they use the Zotero reference manager, they can import the citation metadata directly from the `CITATION.cff` file in the GitHub repository to their reference manager.

(cm-citable-cff-how-to-create)=

## How to Create a `CITATION.cff` File

The `CITATION.cff` is a `YAML` file with its own schema definition.
スキーマは各フィールドのルールを定義し、どのフィールドが必要で、どのフィールドが任意であるかを定義します。
The user must follow these rules in order to create a valid `CITATION.cff` file.

A minimal example of a valid `CITATION.cff` file, that only contains the required keys, would look like this:

```yaml
authors:
  - family-names: Doe
    given-names: John
cff-version: 1.2.0
message: "If you use this software, please cite it using the metadata from this file."
title: "My research software"
```

ただし、より多くのフィールドを追加すると、ソフトウェアのより説明的なメタデータを作成することができます。
以下の例は、バージョン、リリース日、DOI、ライセンス、キーワードなどのソフトウェアの重要な情報も提供します。

```yaml
abstract: "This is my awesome research software. It does many things."
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

The complete list of fields is described in the [CFF schema guide](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md).
In the next section, you can find out which tools can help you create and use the `CITATION.cff` file.

### ソフトウェアを適用できるようにするための手順

ソフトウェアを有効にするには、以下の2つの手順に従う必要があります。

#### ステップ1. Create a `CITATION.cff` File

There are two ways of creating a `CITATION.cff` file.

1. Use [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), a web application which guides you through the process of creating your citation file.
   The `cffinit` has a few advantages compared to manual editing such as

   - 追加のツールをインストールする必要はありません;
   - 手動での検証は必要ありません;
   - 各フィールドのガイダンス;
   - 問題を示す視覚的なフィードバックです

   We suggest using `cffinit` as it simplifies the creation and validation.
   For more details on using `cffinit` see {ref}`cm-citable-cffinit`.
2. お気に入りのコード エディターでファイルを手動で編集します。
   この方法の欠点は、システムに必要なツールをインストールし、自分で検証を行うことです。
   また、検証のエラーメッセージは比較的長く、理解しにくい場合があります。
   Once you have a `CITATION.cff` file, it needs to be validated to make sure there are no issues.
   You can validate your `CITATION.cff` file on the command line with the [`cffconvert` Python package](https://pypi.org/project/cffconvert/).

   ```shell
   cd path/to/CITATION.cff
   cffconvert --validate
   ```

   If you prefer to use Docker, you can use the [`cffconvert` Docker image](https://hub.docker.com/r/citationcff/cffconvert):

   ```shell
   cd path/to/CITATION.cff
   docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
   ```

   エラーメッセージが表示された場合は、関連する検証エラーを探し、修正してください。

```{note}
To make sure your GitHub repository always has a valid `CITATION.cff` file, you can use the [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Action.
```

#### ステップ 2. Add Your `CITATION.cff` to a Public Code Repository

After creating a valid `CITATION.cff` file, you will need to add it to root of your code or data repository so that it can be easily found and cited.

(cm-citable-cff-updating)=

## Updating your `CITATION.cff` file

When you need to update your `CITATION.cff` file, for example to add an author or to change the information about releases, you will need to edit the file manually. It is recommended to update your `CITATION.cff` file before making a software release.

(cm-citable-cff-how-to-cite)=

## How to Cite Using `CITATION.cff`

If you have found software or datasets that contain a `CITATION.cff`, there are a few ways to obtain the reference information to cite them in your publication.

- You can use one of the tools, such as `cffconvert` command line program, to convert your `CITATION.cff` file to one of the [supported formats](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), such as APA, BibTeX or EndNote.
- あるいは、引用したいソフトウェアまたはデータセットが GitHub で利用可能である場合。 GitHubのインターフェイスを使用して、「このリポジトリを削除する」ボタンをクリックすることで、APAまたはBibTeX形式の参照をコピーすることができます(下の画像の緑色の領域を参照してください)。
  For more details on software citation on GitHub please see [GitHub's guide on software citation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

```{figure} ../../../figures/github-cff-integration.*
---
name: github-cff-integration
alt: >
  Screenshot of a GitHub repository showing the automatic citation box generated from a `CITATION.cff` file.
  On the right, a dropdown labeled "Cite this repository" is expanded, displaying citation formats in APA and BibTeX.
  The APA citation is visible with author names listed, and a button below labeled "View citation file".
  This box appears in the repository sidebar beneath metadata such as license type and tags.
  The screenshot demonstrates how GitHub displays citation information when a `CITATION.cff` file is included.
---
"Cite this repository" automatically converts the `CITATION.cff` file to APA's and BibTex's format. The screen capture is from the [Citation File Format repository](https://github.com/citation-file-format/citation-file-format).
```

```{note}
"Cite this repository" button only appears when there is a `CITATION.cff` file in the repository.
```

(cm-citable-cff-available-tools)=

## 利用可能なツール

Several tools exist to facilitate the creation and validation of `CITATION.cff` files, as well as the conversion to and from other formats.
The Citation File Format’s repository provides [a list of all known tools](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) for this.
