(rr-rdm-fair)=

# FAIR原則

The FAIR guiding principles for scientific data management and stewardship {cite:ps}`Wilkinson2016fair` were developed as guidelines to improve the **F**indability, **A**ccessibility, **I**nteroperability and **R**eusability of digital assets; all of which support research reproducibility.
FAIRの原則は、あなたのデータを他の人が再利用できるようにする上で重要な役割を果たします。

研究プロジェクトの最初からこれを行う予定がある場合は、データFAIRをより簡単にすることができます。
You can plan for this in your Data Management Plan (DMP) (see points 4 and 5 of the {ref}`Data Management Plan<rr-rdm-dmp>` chapter).

FAIRの原則は、機械がデジタルオブジェクトを自動的に見つけて使用することを可能にするように定義されています。 人間によるデータの再利用性も向上します
The capacity of computational systems to find, access, interoperate, and reuse data, with none or minimal human intervention, is essential in today's data-driven era, where humans increasingly rely on computational support to deal with data as a result of the increase in volume, velocity and
variety.

この章では、FAIRの原則が何であるかについての抽象的かつ広範な見解を示します。 How to put the FAIR principles into practise is discussed in other sub chapters ( {ref}`Data Organisation in Spreadsheets<rr-rdm-fair>`, {ref}`Documentation and Metadata<rr-rdm-metadata>` and {ref}`Sharing and Archiving Data<rr-rdm-sharing>`). You can also use the [Wellcome Getting Started Guide](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) or the [How To FAIR](https://howtofair.dk/) website to find out more about the FAIR principles and how to get started.

```{figure} ../../../figures/fair-principles.*
---
name: fair-principles
alt: >
  Image in green and grey scale showing a winding, climbing pathway made of jigsaw pieces representing the FAIR principles, with stick figures continuing to build the pathway at the top.
  In the top left hand corner, a highlight bubble shows a signposted pathway with a location marker labelled persistent as a visual representation of findable.
  In the top right hand corner a highlight bubble shows a key unlocking a padlock with the text meaningful interaction as a visual representation of accessible.
  In the bottom left hand corner a highlight bubble shows sharing between two computers as a visual representation of interoperable.
  In the bottom right hand corner a highlight bubble shows a completed puzzle with the text full disclosure as a visual representation of reusable.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-rdm-fair-theory)=

## 説

要するに、FAIR データは次のようにする必要があります:

**Findable:** The first step in (re)using data is to find it!
Descriptive metadata (information about the data such as keywords) is essential.
Persistent identifiers (PIDs) are fundamental to making research findable - they provide globally unique identifiers that resolve to landing pages with rich metadata.
See our [chapter on persistent identifiers](#rr-rdm-pid) for details on how PIDs enable findability.

**Accessible:** Once the user finds the data and software they need to know how to access it.
データは公然と入手可能である可能性がありますが、認証と承認の手順が必要であることも可能です。
PIDs resolve to landing pages that describe access conditions even for restricted resources.
Learn more in our [PIDs and FAIR Principles](#rr-rdm-pid-fair) section.

**Interoperable:** Data needs to be integrated with other data and interoperate with applications or workflows.

**Reusable:** Data should be well-described so that they can be used, combined, and extended in different settings.

You can find a more detailed [overview of the FAIR principles by GO FAIR](https://www.go-fair.org/fair-principles) of what the FAIR principles recommend.
You can also read [A FAIRy tale](https://doi.org/10.5281/zenodo.2248200) for an understandable explanation of each principle.

データ「FAIR」を作ることは、それを「開く」ことと同じではありません。
アクセシブルとは、データにアクセスするための手順があることを意味します。
データは可能な限り開いて、必要に応じて閉じる必要があります。

また、FAIRの原則が野心的であると言うことも重要です。FAIRの状態をどのように達成するかを厳密に定義しているわけではありません。 その目標に近づくデジタルリソースを動かす特徴や属性や行動の連続を記述するのです

The FAIR principles are also applied to software (see [[LGK+20](https://book.the-turing-way.org/afterword/bibliography.html#id10)]and [[HCH+20](https://book.the-turing-way.org/afterword/bibliography.html#id9)]). Watch a [ten minute video on FAIR software](https://www.youtube.com/watch?v=ME8_NRGRhSs&list=PL1CvC6Ez54KDvJbbdLn5rPvf1kInifEh9&index=16) for a short explanation.

## FAIR principles and environmental sustainability

> "FAIR practices can result in highly efficient code implementations, reduce the need to retrain models, and reduce unnecessary data generation/storage, thus reducing the overall carbon footprint.
> As a result, green computing and FAIR practices may boht stimulate innovation and reduce financial costs." - {cite:ps}`Lannelongue2023greener`

## FAIR principles and accessibility

The Accessible in FAIR is not equal to ensuring that your research objects are accessibles to all users.
For this, the term “actually accessible” has been coined by {cite:ps}`Colon2023accessibility` to refer to data that is "easy to locate, obtain, interpret, use, share, and analyze for everybody, including disabled people."

(rr-rdm-fair-community)=

## コミュニティへの参加

Various online resources are provided for people who are working in the life sciences, to guide them in ensuring FAIRness in their data, providing them with tools and advice for good data management at various stages of their work. Two prominent ones include:

- Under the [FAIR Cookbook](https://faircookbook.elixir-europe.org/content/home.html), several resources are offering guidance and assistance in FAIR data management.
  The FAIR Cookbook is designed to serve a variety of audience types and involved in different stages of data management life cycle.
  The FAIR Cookbook is developed and maintained by life sciences professionals, both in the academia and industry sectors, including members of the ELIXIR community.
- Under [ELIXIR Research Data Management Kit (RDMkit)](https://rdmkit.elixir-europe.org/), resources are provided for life scientists to guide them in better management of their research data in adhering to the FAIR Principles.
  It is an attempt to help researchers work at different capacities, both in individual and collaborative workspaces.
  The RDMkit is open for suggestions from anyone, as long as they abide by the [contributor responsibilities](https://rdmkit.elixir-europe.org/how_to_contribute).

Many groups and organisations are working to define guidance and tools to help researchers and other stakeholders (like librarians, funders, publishers, and trainers) make data more FAIR.
There are two global initiatives that act as umbrella organisations and reference points for many discipline-specific efforts, including the ones listed above: [GOFAIR](https://www.go-fair.org) and the [Research Data Alliance (RDA)](https://www.rd-alliance.org).

- Under GOFAIR, there are many [Implementation Networks (INs)](https://www.go-fair.org/implementation-networks) committed to implementing the FAIR principles.
- RDAの下には、RDMライフサイクルに関連するさまざまな側面に取り組むいくつかのグループがあります。 Among these, one group, the [FAIR Data Maturity Model Working Group](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) is reviewing existing efforts, building on them to define a standard set of common assessment criteria for the evaluation of FAIRness.

## More information

- Deep dive into the [FAIR principles by Dr. Maryann Martone](https://www.youtube.com/watch?v=xx2wHxQfcnA) (45 minute video)
