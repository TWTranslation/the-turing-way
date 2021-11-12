(rr-rdm-fair)=
# FAIR原則

The FAIR guiding principles for scientific data management and stewardship {cite:ps}`Wilkinson2016fair` were developed as guidelines to improve the **F**indability, **A**ccessibility, **I**nteroperability and **R**eusability of digital assets; all of which support research reproducibility. FAIRの原則は、あなたのデータを他の人が再利用できるようにする上で重要な役割を果たします。

研究プロジェクトの最初からこれを行う予定がある場合は、データFAIRをより簡単にすることができます。 これについては、データ管理プラン (DMP) を参照してください。( {ref}`データ管理プラン<rr-rdm-dmp>` 章のポイント 4 と 5 を参照してください。

FAIRの原則は、機械がデジタルオブジェクトを自動的に見つけて使用することを可能にするように定義されています。 人間によるデータの再利用性も向上します The capacity of computational systems to find, access, interoperate, and reuse data, with none or minimal human intervention, is essential in today's data-driven era, where humans increasingly rely on computational support to deal with data as a result of the increase in [volume, velocity and variety](https://www.zdnet.com/article/volume-velocity-and-variety-understanding-the-three-vs-of-big-data/).

この章では、FAIRの原則が何であるかについての抽象的かつ広範な見解を示します。 How to put the FAIR principles into practise is discussed in other sub chapters ( {ref}`Data Organisation in Spreadsheets<rr-rdm-fair>`, {ref}`Documentation and Metadata<rr-rdm-metadata>` and {ref}`Sharing and Archiving Data<rr-rdm-sharing>`). [ウェルカム入門ガイド](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) または [FAIR の方法](https://howtofair.dk/) のウェブサイトを使用して、FAIR の原則と始める方法についての詳細を確認することもできます。

```{figure} ../../figures/fair-principles.jpg
---
name: 公平原則
alt: 検索可能、アクセシブル、相互運用可能、および再利用可能であることの定義を示すための FAIR 原則のイラスト。
---
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```

(rr-rdm-fair-theory)=
## 説

要するに、FAIR データは次のようにする必要があります:

**Findable:** データを使用する最初のステップは、それらを見つけることです! 記述メタデータ(キーワードなどのデータに関する情報)は不可欠です。

**アクセシビリティ:** ユーザーがデータとソフトウェアを見つけたら、アクセス方法を知る必要があります。 データは公然と入手可能である可能性がありますが、認証と承認の手順が必要であることも可能です。

**相互運用性:** データは他のデータと統合し、アプリケーションやワークフローと相互運用する必要がある。

**再利用可能:** 異なる設定で使用、組み合わせ、拡張ができるように、データは十分に記述されるべきである。

You can find a more detailed [overview of the FAIR principles by GO FAIR](https://www.go-fair.org/fair-principles) of what the FAIR principles recommend. それぞれの原理について理解できる説明のために、 [A FAIRy tale](https://doi.org/10.5281/zenodo.2248200) を読むこともできます。

データ「FAIR」を作ることは、それを「開く」ことと同じではありません。 アクセシブルとは、データにアクセスするための手順があることを意味します。 データは可能な限り開いて、必要に応じて閉じる必要があります。

また、FAIRの原則が野心的であると言うことも重要です。FAIRの状態をどのように達成するかを厳密に定義しているわけではありません。 その目標に近づくデジタルリソースを動かす特徴や属性や行動の連続を記述するのです

The FAIR principles are also applied to software (see {cite:ps}`Lamprecht2020FAIRsoftware`and {cite:ps}`Hasselbring2020FAIRsoftware`).


(rr-rdm-fair-community)=
## コミュニティへの参加

生命科学で活動するコミュニティによって始められたが、FAIRの原則は出版社に急速に採用されている。 融資者と学際的なインフラプログラムと社会です 多くのグループや組織は、研究者や他のステークホルダー(図書館員など)を支援するためのガイダンスやツールを定義するために取り組んでいます。 Funders, publishers, trainersはデータをもっとFAIRにします。 あなたがこれらのコミュニティに参加することに興味を持っているならば、多くの分野固有の努力のための組織として機能する2つのグローバルなイニシアチブがあります: [GOFAIR](https://www.go-fair.org) と [研究データ同盟(RDA)](https://www.rd-alliance.org)。
* GOFAIRの下には、FAIRの原則を実施することを約束した [実装ネットワーク (INS)](https://www.go-fair.org/implementation-networks) がたくさんあります。
* RDAの下には、RDMライフサイクルに関連するさまざまな側面に取り組むいくつかのグループがあります。 その中で、 [グループ](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) が既存の取り組みをレビューしています。 FAIRnessの評価のための一般的な評価基準の標準セットを定義するためにそれらを基に。
