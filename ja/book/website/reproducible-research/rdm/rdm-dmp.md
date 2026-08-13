(rr-rdm-dmp)=

# Data Management Plan

データ管理計画(DMP)、または出力管理計画 は、プロジェクト内で研究成果を生成、保存、使用、共有する方法を記述するドキュメントです。
DMPは、必要に応じて研究プロジェクトを通じて更新することができる生きている文書です。

データ管理プランは、データを効率的かつ安全に管理するためのロードマップです。
これにより、データの損失や漏洩を防ぐことができます。
データを一貫して管理する方法を前進させることで、後で時間を節約できます。 It can also make it easier to {ref}`share<rr-rdm-sharing>` your data with others and therefore make the data more {ref}`FAIR<rr-rdm-fair>`

```{figure} ../../../figures/data-management-plan.*
---
name: data-management-plan
alt: There are two women in the illustration. The left one is looking distressed and says 'Oh no, my computer crashed! I lost all the data!' The right woman is holding a map which says DMP (Data Management Plan) and is looking happy. She is saying 'Good thing I had a plan! The data is all backed up! 

---
Data Management Plan. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

## A Data Management Plan should provide information on six main topics:

### 1. 役割と責任

- 研究プロジェクトのライフサイクルの中で、誰がさまざまなタスクを担当しているのかを議論することが重要です。
  データとコードの管理を誰が担当するかを定義すると、プロジェクトの後半で混乱や誤解を防ぐことができます。
- あなたの研究所と資金提供者のDMPの推奨と要件を確認する必要があります。
  あなたの研究所の図書館研究支援チームとあなたの資金提供者のウェブサイトは、通常、情報と助けを見つけるのに良い場所です。
  資金提供者の中には、DMPテンプレートを使用する必要があります。
  You can check if your funder or institute has a DMP using [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. 収集されたデータの種類とサイズ、生成されたドキュメント/メタデータ

- ここでは、収集、処理、およびデータの表示に使用するファイル形式を一覧表示できます。
  研究成果を後で共有したい場合 ソフトウェアプログラムの特定のライセンスなしで公然と使用できる標準ファイル形式が好ましい。
  これを確実にするには、ファイルを適応させるか、早期にこれらの形式で作業を開始する必要があります。
- プランで別々に説明できるさまざまな種類のデータを区別することができます。
  - Raw/primary data: ソースから収集されたデータ (読み取り専用のバージョンのデータを常に保持して、後で戻ってくることができます)
  - 処理されたデータ: 分析または視覚化のために変更されたデータのバージョン
  - Finalised data: data that is ready to be shared in a publication or data repository (see {ref}`Sharing and archiving data section <rr-rdm-sharing>` for more information).
    Some data repositories, such as [Zenodo](https://zenodo.org/), allow versioning of datasets so that you can update your finalised dataset if you want to release another version.
- All of these types of data will have to be described to be placed into context by using metadata (see the {ref}`Documentation and metadata section<rr-rdm-metadata>`) and adequate documentation which will allow future you, and anyone in your team, to interpret the data.
- おおよそのサイズ(MB、GBの範囲)を知っておくと便利です。 これらのさまざまな段階におけるデータの結核またはPB)は、利用可能なストレージソリューションに影響を与えるためです(次の点で説明します)。

### 3. 使用されるデータストレージの種類とその場での手順のバックアップ

- Check the {ref}`data storage and organisation section<rr-rdm-storage>` for storage and back-up solutions and ways to organise your files
- データ/コードに特定の変更を加えた人を追跡することは、特にコードにとって重要です。
  See the {ref}`Version Control chapter<rr-vcs>` for more information.
- 誰がデータにアクセスでき、誰がアクセスを許可するかを決定します。
  少なくとも1人はあなたのデータにアクセスできる必要があります。たとえば、部門の上司/PI/ヘッドです。
  個人的/商業的に機密性の高いデータを管理している場合は、データを扱う必要がある個人にのみアクセスを許可する必要があります。

### 4. プロジェクト後の研究成果の保存

- 研究成果を公開できるかどうかを検討してください。
  Personal data or research outputs needed to apply for patents cannot be publicly shared, see the {ref}`Open data section<rr-open-data>`
  If data cannot be made publicly available you will still have to preserve it for several years, depending on the policies of your country, institute and funder.
- データの長期保存をデータリポジトリにアウトソースすることができます。
  You can find more information on how to select an appropriate repository in {ref}`sharing and archiving data<rr-rdm-sharing>` section
  - Select repositories using, for example, [FAIRsharing](https://fairsharing.org/) or [Nature's recommended repository list](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), that provide a persistent identifier such as a DOI for your research output.

リポジトリには、出力がどのくらいの期間キュレーションされるかを指定する保存ポリシーが必要です。
疑問がある場合は、データリポジトリに関する詳細情報については、図書館研究データサポートチームにお問い合わせください。

- For digital preservation, ensure that the research data can be discovered, accessed, used and understood now and in future.
  This requires that you address the technological changes, changing user behavior and new requirements on the computer-aided processing of research data as well as evolving organisational.

### 5. 他人による研究成果の再利用。

- Select a license when you make your output available on a repository (see the Licensing subchapters on {ref}`data<rr-licensing-data>` and {ref}`software<rr-licensing-floss>` for more information).
  ライセンスを選択することで、データの再利用方法を他の人に伝えることができます。
  ライセンスを選択しない場合、他のユーザーは許可を求めずにデータを再利用することはできません。
- README.txt ファイルなど、研究成果をコンテキストに入れることができます。
  - See the {ref}`documentation and metadata section<rr-rdm-metadata>`

### 6. Costs

- Check if there are any costs associated with your project
  - Preferred storage solution (during and after the project, see #3-4)
  - 人件費（より機密性の高いデータや大量のデータを管理するためにデータマネージャが必要な場合）
  - Software licenses (such as Electronic Lab Notebooks, see the {ref}`Open notebooks section<rr-open-notebooks>`)
  - Or [indirect costs](https://labrigger.com/blog/2025/02/12/indirect-costs-are-research-costs/) that need to be covered.
  - You can use this [checklist for costs](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) as a guidance, or the [Framework for Costing Research Data Management](https://doi.org/10.5281/zenodo.15465412).

You can use this [checklist](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) to see if you have everything covered in your Data Management Plan.

(rr-rdm-dmp-citable)=

## DMPs as Citable Research Objects

Many funders now encourage or require DMP as part of their open science policies.
Publishing your DMP also allows you to create a living document - you can update it during the project and deposit new versions with new DOIs while maintaining all previous versions.
This creates a traceable record of how your data management evolved throughout the research lifecycle.
See [](#cm-citable-steps-object) for more information on how to make your DMP citable.

(rr-rdm-dmp-tools)=

## DMP tools

There are several platforms or tools that you can use to set up your Data Management Plan:

- [ARGOS](https://argos.openaire.eu/home)
- [DMPonline](https://dmponline.dcc.ac.uk)
- [DMPtool](https://dmptool.org)

See [activeDMPs](https://activedmps.org/) for a full overview.

## Additional Resources

- [UK Data Services data management information](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft Research Data Management portal](https://www.tudelft.nl/en/library/research-data-management)
- [Research Data Management](https://www.scienceeurope.org/our-priorities/research-data/research-data-management/) by Science Europe
- Books
  - {cite:ps}`Briney2015dmp`
- Articles
  - {cite:ps}`Briney2020dmp`
  - {cite:ps}`Hart2016dmp`
  - {cite:ps}`Michener2015dmp`
- Videos
  - [Videos (3-7 min) on data management by Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
  - Video on [elements of a DMP](https://commons.esipfed.org/node/1442).
  - [3 min video on Roles and Responsibilities](https://www.youtube.com/watch?v=Ry0OA9mDTCc)
  - [DMPs by DTU Bibliotek](https://www.youtube.com/watch?v=tvs5_X5rn8w) (20 minutes)
  - [Areas of a Data Management Plan](https://www.youtube.com/watch?v=L3LPv2sB-IE) (7 minute video by Moore Library)
- Definition of [Long Term Preservation](https://www.gesis.org/en/research/research-data-management/long-time-preservation) from the Leibniz Institute of Social Science.
- Planning by [DataOne](https://dataoneorg.github.io/Education/bp_step/plan/) & [USGS](https://www.usgs.gov/data-management/planning)


