(rr-open)=

# 研究を開く

(rr-open-requireites)=

## Prerequisites

| Prerequisite  | Importance | Notes                   |
| ------------- | ---------- | ----------------------- |
| {ref}`rr-vcs` | Helpful    | GitHubでのエクスペリエンスは特に便利です |

```{figure} ../../figures/evolution-open-research.*
---
name: evolution-open-research-rr
alt: This image shows a researcher evolving their research practices to move towards the era of open research. The image starts with the person looking anxious about engaging with open science, slowly they take a few steps, feel comfortable about sharing their work, and finally start to collaborate with others.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=

## Summary

オープンな研究は、より再現性のある、透明性のある、再利用可能で、共同で説明責任を負い、社会からアクセスできるようにすることによって、研究を変革することを目指しています。 それは、デジタルツールによって研究が行われ、普及されるように変化を促します。 One definition of open research, [as given by the Organisation for Economic Co-operation and Development (OECD)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), is the practice of making "the primary outputs of publicly funded research results – publications and the research data – publicly accessible in a digital format with no or minimal restriction." 研究におけるこの開放性を達成するためには、研究プロセスの各要素は次のとおりです。

- _Be publicly available_: It is difficult to use and benefit from knowledge hidden behind barriers such as passwords and paywalls.
- _Be reusable_: Research outputs need to be licensed appropriately, so that prospective users know any limitations on reuse.
- _Be transparent_: With appropriate metadata to provide clear statements of how research output was produced and what it contains.

Schematically, the research process has the following form: data are collected and then analysed (often using software). このプロセスには、専門的なハードウェアの使用が含まれる場合があります。 研究の結果は、その後公開されます。 Throughout the process, it is good practice for researchers to document their work. This can happen in notebooks or other forms of documentation. For experimental studies, Electronic Lab Notebooks are common. それぞれの要素をオープンにすることを目指しています。

- _Open Data_: Documenting and sharing research data openly for reuse.
- _Open Source Software_: Documenting research code and routines, and making them freely accessible and available.
- _Open Hardware_: Documenting designs, materials, and other relevant information related to hardware, and making them freely accessible and available.
- _Open Access_: Making all published outputs freely accessible for maximum use and impact.
- _Open Notebooks_: An emerging practice, documenting and sharing the experimental process of trial and error.

See the [Open Definition](https://opendefinition.org/) for a set of principles that define “openness” in relation to data and content. The above elements are expanded upon in this chapter.

Open scholarship [{term}`def<Open Scholarship>`] is a concept that extends open research further. 科学的研究の他の側面を一般に公開することに関連しています。例えば:

- _Open educational resources_: Making educational resources publicly available to be re-used and modified.
- _Equity, diversity, inclusion_: Ensuring scholarship is open to anyone without barriers based on factors such as race, background, gender, and sexual orientation.
- _Citizen science_: The inclusion of members of the public in scientific research.

これらの要素については、この章でも詳しく説明しています。

(rr-open-function)=

## Motivation and Background

研究に役立つためにオープンな実践を動機付ける考え方には、5つの主要な学校があります。

| 学校         | 信仰                               | 目指して                                         |
| ---------- | -------------------------------- | -------------------------------------------- |
| インフラストラクチャ | 効率的な研究は、利用可能なツールとアプリケーションに依存します。 | オープンに利用可能なプラットフォーム、ツール、および研究者のためのサービスを作成します。 |
| プラグマティック   | 研究者が協力すれば、知識創造はより効率的になる可能性があります。 | 知識創造のプロセスを開く。                                |
| 測定         | アカデミックな貢献は今日、代替の影響測定が必要です。       | 研究への影響のための代替メトリックシステムを開発します。                 |
| <unk>      | 知識へのアクセスは不均等に分散されています。           | 誰もが自由に知識を利用できるようにします。                        |
| 公開         | 研究は一般に公開される必要がある。                | 市民が研究にアクセスできるようにする。                          |

オープンプラクティスは、それらを伝播する研究者にも利益をもたらします。
For example, there is evidence {cite:t}`McKiernan2016Open` that open access articles are cited more often, as shown by the metastudy presented in the figure below.

```{figure} ../../figures/open-access-citations.*
---
height: 500px
name: open-access-citations
alt: A plot of the relative citation rate (OA divided by non-OA), in the x axis, for 19 different areas of knowledge, in the y axis. The areas of knowledge are organized from the highest to the lowest Relative Citation Rate in the following order - Agricultural Studies, Physics/Astronomy, Medicine, Computer Science, Sociology/Social Sciences, Psychology, Political Science, Management, Law, Economics, Mathematics, Health, Engineering, Philosophy, Education, Business, Communications Studies, Ecology, and Biology. The highest mean values are around 3.2 for Agricultural Studies, and the lowest are around 1.2 for Biology.
---
The relative citation rate (OA: non-OA) in 19 fields of research. This rate is defined as the mean citation rate of OA articles divided by the mean citation rate of non-OA articles. Multiple points for the same discipline indicate different estimates from the same study or estimates from several studies. (See {cite:ps}`McKiernan2016Open`.)
```

開放性のもう一つの利点は、知識を向上させ、適切な協力者を特定し、接続するためには、研究協力が不可欠である一方で、適切な協力者を特定し、接続することは些細なことではないということです。 オープンプラクティスは、研究者が自分の仕事の発見可能性と可視性を高めることで、より簡単に接続できるようになります。 新しいデータやソフトウェアリソースへの迅速なアクセスを促進し、現在進行中の共同プロジェクトと相互作用し、貢献する新たな機会を生み出す。

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
