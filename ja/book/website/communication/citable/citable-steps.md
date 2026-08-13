(cm-citable-steps)=

# 研究対象を陽性にするためのステップ

There are many reasons why authors don't cite the data, protocols, software and hardware that they use, but one of the biggest ones is that it's not clear how.
できるだけ簡単にするためにいくつかのステップに従うことによって、この障壁を減らすために長い道のりを行くことができます。

(cm-citable-steps-object)=

## 1. 研究オブジェクトを特定する

我々の研究対象のほとんどを共有し、他の研究者が再現し再利用できるようにすべきであることを強調したい。
したがって、最初のステップは、オンラインで共有するすべての研究コンポーネントを特定することです。
オープンリサーチを実践することは、データやソフトウェアの信用を得るために不可欠ではありません。 だがそれは他の人があなたの貢献を認める方法であなたの仕事を構築することをはるかに容易にします。
オープンな研究が同等の質と意義の非オープンな研究よりも多く引用される傾向を示すエビデンスの増加団体があります。

As part of the citation for your research objects, it is important to publish research objects beyond papers, such as images, data, software, protocols, methods, and workflow associated with your research.

これを始める最善の方法は、どのような研究対象がどのようなものであるか、あるいは引用されるべきかの例を調べることです。
あなたの専門分野で一般的に参照される研究オブジェクトを見つけることは、以下の2つの目的を果たします。

1. It demonstrates that software & data are things that can be cited;
2. It gives authors a reference and format that they can copy and paste directly into their document.

<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
You can learn more about the different types of research objects in the chapters {ref}`making your research open<rr-open>` and {ref}`making your research FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=

## 2. オンラインで作品を公開する

Online publications are attached to [persistent identifiers](https://www.youtube.com/watch?v=iea6d5oI8Ag) that are used for citing them.
オンラインで公開されているすべてのものが一意の識別子を取得するわけではないことに注意することが重要ですが、以下で説明されているように、研究対象がオンラインでDOIで公開されていることが重要です。

(cm-citable-steps-doi)=

### DOIs

```{figure} ../../../figures/DOI.*
---
name: doi
alt: This image shows three boxes with materials on top. The main box in the middle has 'identifiers' written on it with three discs on top of it that are labelled 'data sets'. Both boxes by their side have journal articles on top of them. An arrow on the top of the image points to these images as being 'Digital Object Identifiers'. There is text at the bottom of the image which says 'Persistent', 'Unique', 'Trusted'.
---
Digital Object Identifiers or DOIs are persistent, unique and trusted. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Unique identifiers or persistent links for digital objects are more formally called [Digital Object Identifiers or DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier).
DOIを使用すると、他の人があなたのデータを引用することがはるかに簡単になります。 リンクが腐敗するリスクを減らし研究がどのように使用されているかを追跡できることを意味します

### DOIを提供するサーバー

論文とは無関係に、DOIを提供するサーバー上で異なる研究対象をオンラインで公開することができます。
Some of these servers are [Zenodo](https://zenodo.org/) and [FigShare](https://figshare.com/) (for different objects such as figures, presentations and reports), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework (OSF)](https://osf.io/) (for different components of an open research project).

データセットやソフトウェアパッケージを直接引用することは完全に可能であり、主要な出版社のほとんどがこれをスタイルガイドで許可しています。
しかし、時にはより従来の論文を引用するのに役立つことがあります。ここではソフトウェアやデータジャーナルが登場します。
これらの雑誌はメソッドジャーナルと似ています 重要な結果は含まれず再利用を可能にするのに十分な詳細なデータとソフトウェアを記述することに集中する傾向があります
いくつかの例は次のとおりです。

- [Journal of Open Research Software](https://openresearchsoftware.metajnl.com/)
- [Journal of Open Source Software](https://joss.theoj.org/)

You can read more about these different article types in our {ref}`Chapter on Publishing Different Article Types<cm-dif-articles>`.

(cm-citable-steps-referencing)=

## 3. 機械読み取り可能な参照情報を追加

さらに一歩進むには、リサーチオブジェクトに関する情報を自分の好みの参照データベースにインポートすることができます。
If [BibTeX](https://en.wikipedia.org/wiki/BibTeX) is popular in your field for managing references, post a `.bib` file of _all_ your outputs (not just your papers).
If [Endnote](https://endnote.com/) is more popular, make an Endnote export available.
If you use GitHub, GitLab or a similar public repository, consider creating a `CITATION.cff` file in each repository, which will describe how someone can refer to different research outputs from your project.
You can read more about `CITATION.cff` in {ref}`Software citation with CITATION.CFF <cm-citable-cff>`.

可能であれば、いくつかの形式を提供してください:あなたはこれらの非常に頻繁に更新する必要はありませんし、それは報酬を支払います。

