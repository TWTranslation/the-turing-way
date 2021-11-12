(rr-licensing-data)=
# データライセンス

ソフトウェアライセンスのように データライセンスは他の人が作ったり所有したり他の人にアクセスさせたりするデータで何ができるかを管理します たとえば、データリポジトリなどです。 データ ライセンスは、以下のようなさまざまな基準に基づいて異なります。
* 元の所有者に帰属する
* オリジナルを再配布または変更する許可
* デリバティブまたは再配布と同じライセンスを含む

その結果、データへのアクセスは、選択したデータライセンスの影響を受けます。

(rr-licensing-data-cc)=
## クリエイティブ・コモンズ・ライセンス

Creative CommonsまたはCCは、著作権制限に該当する可能性のあるさまざまな作品で使用することができるライセンスの数を提供しています。 音楽、アート、本、写真などです データに合わせたものではありませんが、理解しやすいため、CCライセンスをデータライセンスとして使用することができます。 そのウェブサイトには、 [サマリーページ](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` が含まれており、利用可能なすべてのライセンスについて簡単なビジュアルシンボルで説明されています。

(rr-licensing-data-cc-permissions)=
### 権限レベル

Creative Commonsデータライセンスによって提供される許可レベルは、2文字の「許可マーク」の組み合わせである、その名前から理解することができます。 この命名方式の唯一の例外は CC0 で、次のセクションで紹介されます。

| **権限マーク** | **データで何ができますか?** |
| --------- | ---------------- |
|           |                  |
 BY | Creatorはクレジットされなければなりません SA | デリバティブまたは再配布は同一のライセンスを持っていなければなりません NC | 商業的でない使用のみが許可されます ND | デリバティブは許可されません


たとえば、CC BY-ND ライセンスでは、ユーザーがデータの作成者にクレジットを与える必要があり、派生物を作成することはできません。

(rr-licensing-data-cc-c0)=
### CC0であなたの仕事を市民に奉仕する

CC0は、あなたのデータにすべての著作権を放棄する公的な献身的なメカニズムとして機能します。 これは、誰でもあなたの作品を変更、再配布、またはビルドすることができることを意味します。 さらに、CC0を使用することにより、お客様はアトリビューションの権利を放棄します。 その代わりに、学術コミュニティにおける良い引用慣行などの規範に頼って、創造者として認識されなければなりません。 博物館、政府機関、科学出版社などのいくつかの組織は、彼らのデータの少なくとも一部にアクセスするためにCC0を選択しました。 多くの場合、大学によって管理されているデータリポジトリは、 [4TU研究データセンター](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/)などのデフォルトオプションとしてCC0を推奨しています。

(rr-licensing-data-odc)=
## Open Data Commons

Open Data Commonsは、データに特に適用できる3つのライセンスを提供します。 これらの各ライセンスの [webpages](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk20odc` には、人間が読める要約を含む。 法制度の結果を簡潔に説明しています

(rr-licensing-data-odc-pddl)=
### パブリックドメインの提供およびライセンスまたはPDDL

PDDLはCC0に類似しており、お客様がパブリックドメインに入力したデータに対するお客様のすべての権利を放棄します。 これは、推奨されるコミュニティ規範の [セット](https://opendatacommons.org/licenses/pddl/norms.html)が付属しています。 法的な契約を締結することは義務ではありませんがフェアを奨励するための指針として有用です データの共有を開きます また、カスタマイズされた規範を組み合わせることで、データ共有コミュニティにより良いサービスを提供することもできます。

(rr-licensing-data-odc-odc-by)=
### アトリビューションまたは ODC-BY ライセンス

このライセンスは、CCライセンスの **BY** 許可マークと同様に、データ所有者または作成者としてアトリビューション権を保護します。 データベースの使用または配布には、オリジナルと共に使用されるライセンスに関する情報も含める必要があります。

(rr-licensing-data-odc-odbl)=
### Open Database License or ODbL

ODbL は、ODC-BY ライセンスにさらに2つの制限を追加します。 最初に、データの一般的な使用は、同じライセンスで共有する必要があります。 CC **SA** 権限マークに似ている。 二つ目は、お客様のデータのいずれかのバージョンが「クローズド」形式で再配布された場合(たとえば、技術的な保護措置で)、ということです。 この再配布にはこのような閉鎖対策のないバージョンで 利用できるようにする必要があります

(rr-licensing-data-differences)=
## CCライセンスとODCライセンスの違いに関するメモ

Creative CommonsとOpen Data Commonsによって提供されるライセンスオプションのように見えるかもしれませんが、いくつかの重要な違いがあります。

違いの一つは、ライセンスの対象となっている権利範囲であり、ここでうまく説明されている [](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F)。 ODCライセンスは、データに適用されるように特別に作成され、通常はデータベース権限のみをカバーします。 一方、CCライセンスはより一般的な目的であり、他の材料に適用することができます。 CCライセンスは、著作権およびその他の隣接する権利もカバーします。

もう一つの違いは、PDDLによる標準化されたCommunity Normsドキュメントの可用性です。 CC0でそのようなドキュメントがないと、コミュニティの規範に頼らなければならないことを意味します。 公正な帰属を確保するために、しばしば暗黙的または非文書的な場合があり、コミュニティからコミュニティまで異なります。 PDDLとCC0の比較はこちら [](https://opendatacommons.org/faq.1.html).

(rr-licensing-data-options)=
## その他のライセンスオプション

特定のユースケースやコミュニティを念頭に置いて開発された可能性のある他のデータライセンスを選択することもできますし、世界中で広く使用されていないものもあります。 これらには、 [オープン政府データのためのノルウェーのライセンス](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020政府データ` など、国家政府によって開発されたライセンスが含まれます。 多くの場合、そのようなライセンスは、特に公的機関によって作成または所有されるデータに対して、対応する国で推奨されるデータライセンスオプションです。 別の例として、英国国立公文書館によって開発された [Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) またはOGLがあります。

The [Data Curation Center (DCC) guide](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` on how to license research data expatiates on the licenses discussed in this chapter, and gives more information about [Prepared Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Bespoke Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Multiple Licensing](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) and [Mechanisms for Licensing Data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

ライセンスの課題とより細かい点についてもっと読みたい場合。 [この記事](https://research.okfn.org/avoiding-data-use-silos/) は、あなたが始めるための素晴らしいリソースです。

***チャプタータグ**: このチャプターは、 `チューリングデータ研究グループ` (`turing-dsg` ) のためにキュレーションされています。*
