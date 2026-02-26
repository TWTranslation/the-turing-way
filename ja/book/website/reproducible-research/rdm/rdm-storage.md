(rr-rdm-storage)=

# データの保存と組織

データ損失はあなたの研究プロジェクトにとって壊滅的なものであり、頻繁に起こる可能性があります。
適切なストレージソリューションを選択し、データを頻繁にバックアップすることで、データの損失を防ぐことができます。

```{figure} ../../../figures/version-control.*
---
height: 500px
name: version-control
alt: Two images are shown to represent the benefits of using version control. On the left, there is an image of two people rummaging through a blue box on top of a table. The box is full of jumbled documents and the people look confused and frustrated. The documents are named "final 2" and "let this be the final". On the right, the same two people look happy and are searching through files organised clearly in a blue filing cabinet. There are "V1, V2, V3 and V4" separations organising the files.
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-storage-where)=

## データを保存する場所

- Most institutions will provide a _network drive_ that you can use to store data.
- _Portable storage media_ such as memory sticks (USB sticks) are more risky and vulnerable to loss and damage.
- _Cloud storage_ provides a convenient way to store, backup and retrieve data.
  研究データに使用する前に利用規約を確認してください。

特に個人データや機密データを扱っている場合は クラウドオプションがデータ保護規則に準拠していることを確認する必要があります
セキュリティの追加層を追加するには、必要に応じてデバイスとファイルを暗号化する必要があります。

教育機関が、使用できるものを制限するローカルストレージソリューションやポリシーやガイドラインを提供する場合があります。
したがって、私たちはあなたのローカルポリシーと推奨事項を理解することをお勧めします。

When you are ready to release the data to the wider community, you can also search for the appropriate databases and repositories in [FAIRsharing](https://fairsharing.org/databases), according to your data type, and type of access to the data.
Learn more about this in the {ref}`rr-rdm-sharing` subchapter.

(rr-rdm-storage-organization)=

## データ組織

To organise your data, you should use a clear folder structure to ensure that you can find your files.
We encourage you to use an existing template.
An open source project created a quite complete one at https://github.com/tonic-team/Tonic-Research-Project-Template

```{figure} ../../../figures/file-management-manual.jpg
---
name: Folder structure for research data

alt: A protagonist has a file with "readme" written on it and brings it to another person standing in front of a filing cabinet. The cabinet has three drawers labelled "data", "code", and "results".
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

- ファイルが正しいフォルダに保存され、それらが属していないフォルダに散在しないように、十分な(サブ)フォルダがあることを確認してください。 1つのフォルダに大量に保存されています
- 明確なフォルダ構造を使用します。
  データ/フォルダを生成した人に基づいてフォルダを構成できます(月、年、年)。 セッション)、プロジェクト毎(以下の例で行う)、または分析方法/機器またはデータタイプに基づいています。
- Avoid overlapping or vague folder names, and do not use personal data in folder/file names.

(rr-rdm-storage-organization-examples)=

### データ組織の例

- Download [this](http://nikola.me/folder_structure.html) folder structure by Nikola Vukovic
- You can pull/download folder structures using GitHub:
  [This template](https://github.com/bvreede/good-enough-project) by Barbara Vreede, based on [cookiecutter](https://github.com/cookiecutter/cookiecutter), follows recommended practices for scientific computing by [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- See [this template](https://osf.io/4sdn3/) by Chris Hartgerink for file organisation on the [Open Science Framework](https://osf.io/).
- [How to Organize Your Digital Files](https://www.nytimes.com/wirecutter/guides/how-to-organize-your-digital-files/) by Melanie Pinola.
- [Project structure videos by Danielle Navarro](https://www.youtube.com/watch?v=u6MiDFvAs9w&list=PLRPB0ZzEYegPiBteC2dRn95TX9YefYFyy&index=1) (with [slides](https://slides.djnavarro.net/project-structure/#1)).

### More Information on Data Organisation

- [How to organise your data and code](https://renebekkers.wordpress.com/2021/04/02/how-to-organize-your-data-and-code) by Rene Bekkers.

(rr-rdm-storage-conventions)=

## ファイル命名規則

ファイル名を構成し、このためのテンプレートを設定します。
For example, it may be advantageous to start naming your files with the date each file was generated (such as `YYYYMMDD`).
これは、ファイルを時系列にソートし、各ファイルの一意の識別子を作成します。
上書きを避けるためにバージョン化する必要がある同じ日に複数のファイルを生成するとき、このプロセスのユーティリティは明らかです.
File names should be friendly to both machines and humans.

ファイル名を指定するためのその他のヒント:

- Use the date or date range of the experiment: `YYYYMMDD`
- ファイルの種類を使用
- 研究者の名前/イニシャルを使用
- ドキュメントで使用されているファイルのバージョン番号(v001、v002)または言語(ENG)を使用してください
- ファイル名が長すぎないようにします（ファイル転送が複雑になる可能性があります）
- Avoid special characters `()?\!@\*%{[<>` and spaces
- Hyphens `-` and underscores `_` can be used to separate related and unrelated chunks, respectively
- Keep in mind that some operating systems are case-sensitive, some are not
- Avoid personal data in file names

ファイルの命名規則をREADME.txtファイルで説明すると、ファイル名が何を意味するのか他の人にも明らかになります。

For further guidance on file naming:

- [Jenny Bryan’s ‘naming things’ presentation](https://speakerdeck.com/jennybc/how-to-name-files) (or watch the [5 minute summary](https://youtu.be/ES1LTlnpLMk))
- [MIT's recommendations on File naming and folder hierarchy](https://libraries.mit.edu/data-management/store/organize/)
- [8 step guide on how to set up your file naming convention](https://resolver.caltech.edu/CaltechAUTHORS:20200601-161923247)
- [Project structure slides by Danielle Navarro](https://djnavarro.net/slides-project-structure/#9)

(rr-rdm-storage-renaming)=

### File renaming tools

If you want to change your file names you have the option to use bulk renaming tools.
Be careful with these tools, because changes made with bulk renaming tools may be too rigorous if not carefully checked!

Some bulk file renaming tools include:

- [Bulk Rename Utility](http://www.bulkrenameutility.co.uk/Main_Intro.php), [WildRename](http://www.cylog.org/utilities/wildrename.jsp), and [Ant Renamer](http://www.antp.be/software/renamer) (for Windows)
- [Renamer](https://renamer.com/) (for MacOS)
- [PSRenamer](http://www.cylog.org/utilities/wildrename.jsp) (for MacOS, Windows, Unix, Linux)

(rr-rdm-storage-backups)=

## バックアップ

データを失うことを避けるためには、適切なバックアッププラクティスに従ってください。

- 2つまたは3つのファイルのコピーが保存されている必要があります。
- 少なくとも2つの異なる記憶媒体があります
- 様々な場所で行われています

Backups are ideally done automatically and should take into consideration your institute's guidelines.
データが重要になり、データセットが変更される頻度が増えるほど、データをバックアップする頻度が増えます。
あなたのファイルが大量のスペースを占有し、それらのすべてをバックアップすることが困難であるか、または高価であることが証明されます。 データをバックアップする際の基準を作成したいと思うかもしれません
This can be part of your {ref}`Data Management Plan<rr-rdm-dmp>`.

Watch this video on [Safe data storage and backup](https://www.youtube.com/watch?v=bgbbToXHgW0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).



