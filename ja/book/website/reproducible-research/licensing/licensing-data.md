(rr-licensing-data)=

# データライセンス

ソフトウェアライセンスのように データライセンスは他の人が作ったり所有したり他の人にアクセスさせたりするデータで何ができるかを管理します たとえば、データリポジトリなどです。
データ ライセンスは、以下のようなさまざまな基準に基づいて異なります。

- 元の所有者に帰属する
- オリジナルを再配布または変更する許可
- デリバティブまたは再配布と同じライセンスを含む

その結果、データへのアクセスは、選択したデータライセンスの影響を受けます。

(rr-licensing-data-cc)=

## クリエイティブ・コモンズ・ライセンス

CC licenses, although not tailored for data, can be used as data licenses in some cases, such as CC0 for public domain data.
The Creative Commons website provides a [summary page](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` outlining all the available licenses, explained with visual symbols as discussed in {ref}`rr-licensing-documentation`.

(rr-licensing-data-cc-c0)=

### CC0であなたの仕事を市民に奉仕する

CC0は、あなたのデータにすべての著作権を放棄する公的な献身的なメカニズムとして機能します。
これは、誰でもあなたの作品を変更、再配布、またはビルドすることができることを意味します。
さらに、CC0を使用することにより、お客様はアトリビューションの権利を放棄します。
その代わりに、学術コミュニティにおける良い引用慣行などの規範に頼って、創造者として認識されなければなりません。
博物館、政府機関、科学出版社などのいくつかの組織は、彼らのデータの少なくとも一部にアクセスするためにCC0を選択しました。
In many instances, data repositories maintained by universities recommend CC0 as the default option, such as the [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=

## Open Data Commons

Open Data Commonsは、データに特に適用できる3つのライセンスを提供します。
The [webpages](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` of each of these licenses include human-readable summaries, with the ramifications of the legalese explained in a concise format.

(rr-licensing-data-odc-pddl)=

### パブリックドメインの提供およびライセンスまたはPDDL

PDDLはCC0に類似しており、お客様がパブリックドメインに入力したデータに対するお客様のすべての権利を放棄します。
It comes with a [set of recommended community norms](https://opendatacommons.org/licenses/pddl/norms.html), which are not mandatory to include and do not form a legal contract but can be useful to have as a guide to encourage fair, open sharing of data.
また、カスタマイズされた規範を組み合わせることで、データ共有コミュニティにより良いサービスを提供することもできます。

(rr-licensing-data-odc-odc-by)=

### アトリビューションまたは ODC-BY ライセンス

This license protects your attribution rights as a data owner or creator, just like the **BY** permission mark of CC licenses.
データベースの使用または配布には、オリジナルと共に使用されるライセンスに関する情報も含める必要があります。

(rr-licensing-data-odc-odbl)=

### Open Database License or ODbL

ODbL は、ODC-BY ライセンスにさらに2つの制限を追加します。
The first is that any public uses of your data must be shared with the same license, similar to the CC **SA** permission mark.
二つ目は、お客様のデータのいずれかのバージョンが「クローズド」形式で再配布された場合(たとえば、技術的な保護措置で)、ということです。 この再配布にはこのような閉鎖対策のないバージョンで 利用できるようにする必要があります

(rr-licensing-data-differences)=

## CCライセンスとODCライセンスの違いに関するメモ

Creative CommonsとOpen Data Commonsによって提供されるライセンスオプションのように見えるかもしれませんが、いくつかの重要な違いがあります。

One difference is the scope of rights that are covered by the license, which is nicely explained [here](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F).
ODCライセンスは、データに適用されるように特別に作成され、通常はデータベース権限のみをカバーします。
一方、CCライセンスはより一般的な目的であり、他の材料に適用することができます。
CCライセンスは、著作権およびその他の隣接する権利もカバーします。

もう一つの違いは、PDDLによる標準化されたCommunity Normsドキュメントの可用性です。
CC0でそのようなドキュメントがないと、コミュニティの規範に頼らなければならないことを意味します。 公正な帰属を確保するために、しばしば暗黙的または非文書的な場合があり、コミュニティからコミュニティまで異なります。
A comparison between the PDDL and CC0 is provided [here](https://opendatacommons.org/faq/).

(rr-licensing-data-options)=

## その他のライセンスオプション

特定のユースケースやコミュニティを念頭に置いて開発された可能性のある他のデータライセンスを選択することもできますし、世界中で広く使用されていないものもあります。
These include licenses that were developed by national governments, such as the [Norwegian License for Open Government Data](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`.
多くの場合、そのようなライセンスは、特に公的機関によって作成または所有されるデータに対して、対応する国で推奨されるデータライセンスオプションです。
Another example is the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) or OGL, which was developed by The National Archives, UK.

The [Data Curation Center (DCC) guide](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` on how to license research data expatiates on the licenses discussed in this chapter, and gives more information about [Prepared Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Bespoke Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Multiple Licensing](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) and [Mechanisms for Licensing Data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

If you would like to read more about the challenges and finer points of licensing, [this article](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3320472) is a great resource to get you started.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
