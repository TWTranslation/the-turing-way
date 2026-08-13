(rr-open-data)=

# オープンデータ

世界は、テクノロジーとデジタルメディアによって促進され、データと情報によって促進される重要な世界的な変化を目の当たりにしています。
この変革は、より透明性があり、説明責任があり、効率的で、反応があり、効果的な研究を促進する大きな可能性を秘めています。
元のデータのほんの一部は、従来の雑誌に掲載されています。
データのアーカイブに関する既存のポリシーにもかかわらず、今日のプラクティスデータは主にプライベートファイルに保存されます。 安全な機関リポジトリではなく効果的に公共の場で失われています (データを生成した研究者にさえも)。

このデータ共有の欠如は、主に2つの理由から国際的な研究(学術的、政府的、または商業的)への障害となります。

1. 元のデータなしで研究を再現することは一般的に困難または不可能です。
2. アクセスできない場合は、他の研究者が再利用したり、新しい研究に組み込んだりすることはできません。

したがって、連携と効果的で効率的な研究プログラムの作成と拡大を促進しようとする世界的なデータ革命が進行中です。
Open data [{term}`def<Open data>`] is crucial to meeting these objectives.
オープンデータはインターネット上で自由に利用できます。
Any user is permitted to download, copy, analyse, re-process, and reuse it for any other purpose with minimal financial, legal, and technical barriers.

これは研究の仕組みの大きな変化を表している。 Funders are starting to require researchers to make their data available and submit data management plans {ref}`Data Management Plans<rr-rdm-dmp>` as part of project proposals.
現時点では、研究者のデータを使用したい人は、その研究者に連絡してリクエストを行う必要があることがよくあります。
「デフォルトで開く」は、すべての人のための出版物の前提でこれを改善します。
たとえば、セキュリティ上の理由からデータへのアクセスが制限されている場合、これの正当化は明確にすべきです。
Free access to and subsequent use of data is of [significant value to society and the economy and also has benefits to researchers](https://blog.datadryad.org/2025/07/24/benefits-of-open-data/).
したがって、そのデータはデフォルトで開き、必要に応じてクローズされるべきです。

You can find more about the practical steps to make your data available in the section describing {ref}`Steps to Share your Data <rr-rdm-sharing-steps>` in the subchapter: {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(rr-open-data-barriers)=

## データ共有へのバリアーについて

多くの学者は、データの共有を困難に感じています。
Recent surveys {cite:ps}`Stuart2018sharing` conducted amongst researchers list the following reasons:

- データをプレゼン可能かつ有用な方法で整理することは困難です(46%が述べています)。
- 研究者は著作権とライセンスについて不明です (37%)
- 研究者は、さまざまなデータタイプに使用するリポジトリがわかりません（33%)

これらは、今後変化する実践において対処されるかもしれない文化的課題です。
しかし、法的、倫理的または契約的な理由もあり、その全体または部分的にデータを公開することを妨げることがあります。
以下では、なぜこのような場合があるかを説明するいくつかの理由について説明します。

```{figure} ../../../figures/data-privacy.*
---
height: 500px
name: data-privacy
alt: An image detailing why private data should be used. A person stands next to a well with 'private data' written on it and a padlock around it. It is black and white and blue. The text lists that 'people deserve - dignity, agency, privacy, rights, confirmed consent.'
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barriers-privacy)=

### プライバシーとデータ保護

多くの研究分野では、機密性の高い個人データを扱っていますが、医学的研究が最も明白な例です。
Please see the {ref}`sensitive data<pd-sdp>` chapter for more information about different types of sensitive data.
You can check the {ref}`Managing Sensitive Data Projects<pd-sdpm>` chapter on how you should manage these data.
Particularly the {ref}`Data Privacy Strategies<pd-sdpm-privacy>` section can help you to safely manage and protect sensitive personal data.

(rr-open-data-barriers-consent)=

### Consent

将来的に再利用できるようにする匿名化された研究データについては、同意書がこのデータを他の研究者と共有することを含む必要があります。
Research so far suggests that study participants are usually less concerned about the data being archived and shared than researchers think {cite:ps}`Kuula2010archiving`.
参加者情報シートと同意書には、研究データの保存方法を含める必要があります 必要に応じて守秘義務がどのように守られるか

(rr-open-data-barriers-national)=

### 国家および商業的に機密データ

多くの場合、企業は当然ながらデータの多くを公開する気がありません。
企業の商業的機密情報が開示されると、企業の商業的利益が損なわれ、競争力が低下するという推論があります。
これは、競争の激しい市場では、情報を保護するだけでイノベーションが起こるという考えに基づいています。
会社が新しいものを開発し、時間とお金を費やしている場合, その詳細は、その後、公開されています 競合他社は同じリソースを投資しなくても簡単にコピーできます
その結果、そもそも誰もイノベーションを起こさなかったのです。
同様に、公共の安全上の懸念については、政府は国家安全保障などの問題に関連するデータを公表することを好まないことが多い。
このような場合、データをオープンにすることができない場合や、部分的/隠されたデータセットを共有することができない場合があります。

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
