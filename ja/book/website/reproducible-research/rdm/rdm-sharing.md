(rr-rdm-sharing)=

# データの共有とアーカイブ

(rr-rdm-sharing-motivations)=

## データを共有するためのモチション

あなたの研究データを公に共有する理由はたくさんあります。

1. 科学的研究を完全に再現できるようにする。
2. 重複した努力を防ぎ、科学的進歩を加速するために。
   多くの研究資金や研究者のキャリアは、出版物という形での研究のほんの一部を共有するだけで無駄になることがあります。
3. 連携を促進し、科学研究の影響と質を高めるために。
4. 研究は、しばしば公的資金として提供されるので、研究の成果を公然と利用できるようにする。

You can read more about why data should be available, and why some data should remain closed, in the {ref}`Open Data section <rr-open-data>`.

```{figure} ../../../figures/birds-of-open-data.*
---
height: 400px
name: birds-of-open-data.*
alt: Two birds in a fountain of open data. One asks "You mind if I reuse this data?" The other answers "Go ahead! We can even work together on it!"
---
Birds of Open Data. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. [](doi:10.5281/zenodo.3332807).
```

(rr-rdm-sharing-steps)=

## データを共有するための手順

### ステップ 1: 共有するデータを選択してください

Not all data can be made openly available, due to ethical and commercial concerns (see the {ref}`Open Data section <rr-open-data>`), and you may decide that some of your intermediate data is too large to share.
そのため、研究を再現できるようにするためには、まずどのデータを共有する必要があるかを決定する必要があります。

### ステップ 2: データリポジトリまたはその他の共有プラットフォームを選択します

Data should be shared in a formal, open, and indexed data repository [{term}`def<Repository>`] where possible so that it will be accessible in the long run.
Suitable data repositories by subject, content type or location can be found at [Re3data.org](https://www.re3data.org/), and in [FAIRsharing](https://fairsharing.org/databases) where you can also see which standards (metadata and identifier) the repositories implement and which journal/publisher recommend them.
Pay attention to whether a repository assigns DOI.
See our [chapter on persistent identifiers](#rr-rdm-pid) to learn more about how you can link your data to other research objects.

A few public data repositories are [Zenodo](https://zenodo.org/), [Figshare](https://figshare.com/), [Harvard Dataverse](https://dataverse.harvard.edu/), [4TU.ResearchData](https://data.4tu.nl/info/en), and [Dryad](https://datadryad.org/).
See the [NIH list of Generalist Repositories](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/generalist-repositories) for more data repositories.

### ステップ 3: ライセンスを選択し、ペーパーとコードにリンクする

So that others know what they can do with your data, you need to apply a licence [{term}`def<License>`] to your data.
The most commonly used licences are [Creative Commons](https://creativecommons.org/choose/), [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), or an [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/index.html).
データ共有から最大値を得るには、ペーパーとコードの両方がデータにリンクされていることを確認してください その逆もまた他の人があなたのプロジェクトを理解しやすくするためです
See {ref}`rr-licensing` for more information.

### ステップ 4: データとドキュメントをアップロード

In line with the {ref}`FAIR principles <rr-rdm-FAIR>`, upload the data in open formats as much as possible and include sufficient documentation and metadata so that someone else can understand your data.
また、情報が提供されるファイル形式について考えることも不可欠です。
データは、相互運用性、トレーサビリティ、および効果的な再利用をサポートするために、構造化された標準化されたフォーマットで提示されるべきである。
多くの場合、これには複数の標準化されたフォーマットでデータを提供することが含まれるため、コンピュータによって処理され、人々が使用できるようになります。

(rr-rdm-sharing-resources)=

## データ共有に関する追加リソース

- '[How can you make research data accessible?](https://www.software.ac.uk/how-can-you-make-research-data-accessible)': a blog that contains five steps to make your data more accessible
- The European Commission's [data guidelines](https://open-research-europe.ec.europa.eu/for-authors/data-guidelines)
- Videos on [Data sharing and reuse](https://www.youtube.com/watch?v=4igGBCggU0Y) & [Data Preservation and Archiving](https://www.youtube.com/watch?v=J76yTp8XE-0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- [Webinar: Why share your data?](https://www.ebi.ac.uk/training/online/courses/bringing-data-life-data-management-biomolecular-sciences/why-share-your-data/)
- [Webinar: Publishing and citing data in practice by Jez Cope](https://youtu.be/PpMOkTnBMlI)
- Coursera Videos from [Research Data Management and Sharing](https://www.coursera.org/learn/data-management) on the [Benefits of Sharing](https://www.coursera.org/lecture/data-management/benefits-of-sharing-IPZ0h), [Why Archive Data?](https://www.coursera.org/lecture/data-management/why-archive-data-lcQ2m), and [Why is Archiving Data Important?](https://www.coursera.org/lecture/data-management/why-is-archiving-data-important-04Gji)
- [Blog: Ask not what you can do for open data; ask what open data can do for you](http://blogs.nature.com/naturejobs/2017/06/19/ask-not-what-you-can-do-for-open-data-ask-what-open-data-can-do-for-you/)
- {cite:ps}`Levenstein2018sharing`

(rr-rdm-data-availability-statement)=

## データの可用性に関する声明

一度あなたのデータを利用できるようにしたら、それは人々が関連付けられた記事を読むときそれを見つけることができることを保証することが重要である。
関連のある場所にある論文に直接データセットを引用し、参考文献リストに引用を含めるべきです。 同様に、論文の末尾にデータ可用性に関する声明を含めることもできます(承認セクションと同様)。
See {ref}`cm-citable-cite-data` for some examples.

