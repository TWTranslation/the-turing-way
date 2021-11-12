(rr-rdm-sharing)=
# データの共有とアーカイブ

(rr-rdm-sharing-motivations)=
## データを共有するためのモチション
あなたの研究データを公に共有する理由はたくさんあります。

1. 科学的研究を完全に再現できるようにする。
2. 重複した努力を防ぎ、科学的進歩を加速するために。 多くの研究資金や研究者のキャリアは、出版物という形での研究のほんの一部を共有するだけで無駄になることがあります。
3. 連携を促進し、科学研究の影響と質を高めるために。
4. 研究は、しばしば公的資金として提供されるので、研究の成果を公然と利用できるようにする。

データが利用可能であるべき理由、および一部のデータが閉じたままである必要がある理由についての詳細を読むことができます。 {ref}`Open Data section <rr-open-data>`

(rr-rdm-sharing-steps)=
## データを共有するための手順

### ステップ 1: 共有するデータを選択してください

倫理的および商業的な懸念のため、すべてのデータが公然と利用可能になるわけではありません( {ref}`Open Data セクションを参照してください)。 <rr-open-data>)、中間データの一部が大きすぎて共有できない場合があります。 そのため、研究を再現できるようにするためには、まずどのデータを共有する必要があるかを決定する必要があります。

### ステップ 2: データリポジトリまたはその他の共有プラットフォームを選択します

データは正式なオープンで共有する必要があります。 インデックス化されたデータリポジトリ [{term}`def<Repository>`] があります。 Suitable data repositories by subject, content type or location can be found at [Re3data.org](https://www.re3data.org/), and in [FAIRsharing](https://fairsharing.org/databases) where you can also see which standards (metadata and identifier) the repositories implement and which journal/publisher recommend them. 可能な場合は、DOI(デジタルオブジェクト識別子)を割り当てるリポジトリを使用して、他の人があなたのデータを引用しやすくします。 {ref}`cm-citable` を見て、データやその他の研究オブジェクトを共有し引用する方法を確認してください。 {ref}`cm-citable-linking` セクションでは、データとその他の研究オブジェクトをリンクするためのいくつかのオプションについて説明します。

いくつかの公開データリポジトリは、 [Zenodo](https://zenodo.org/)、 [Figshare](https://figshare.com/)、 [4TU.ResearchData](https://data.4tu.nl/info/en)、 および [Dryad](https://datadryad.org/) です。

### ステップ 3: ライセンスを選択し、ペーパーとコードにリンクする

他の人があなたのデータを使って何ができるかを知るようにします データにライセンス [{term}`def<License>`] を適用する必要があります。 The most commonly used licences are [Creative Commons](https://creativecommons.org/choose/), [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), or an [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/index.html). データ共有から最大値を得るには、ペーパーとコードの両方がデータにリンクされていることを確認してください その逆もまた他の人があなたのプロジェクトを理解しやすくするためです

### ステップ 4: データとドキュメントをアップロード

{ref}`FAIR 原則 <rr-rdm-FAIR>`に沿って できるだけオープンな形式でデータをアップロードし、他の誰かがあなたのデータを理解できるように、十分なドキュメントとメタデータを含めてください。 また、情報が提供されるファイル形式について考えることも不可欠です。 データは、相互運用性、トレーサビリティ、および効果的な再利用をサポートするために、構造化された標準化されたフォーマットで提示されるべきである。 多くの場合、これには複数の標準化されたフォーマットでデータを提供することが含まれるため、コンピュータによって処理され、人々が使用できるようになります。

## データ共有に関する追加リソース
* '[どのように研究データをアクセス可能にすることができますか?](https://www.software.ac.uk/how-can-you-make-research-data-accessible)': データにアクセスしやすくするための5つのステップを含むブログ
* 欧州委員会の [データガイドライン](https://open-research-europe.ec.europa.eu/for-authors/data-guidelines)

(rr-rdm-data-availability-statement)=
## データの可用性に関する声明
一度あなたのデータを利用できるようにしたら、それは人々が関連付けられた記事を読むときそれを見つけることができることを保証することが重要である。 関連のある場所にある論文に直接データセットを引用し、参考文献リストに引用を含めるべきです。 同様に、論文の末尾にデータ可用性に関する声明を含めることもできます(承認セクションと同様)。 いくつかの例については {ref}`cm-citable-cite-data` を参照してください。
