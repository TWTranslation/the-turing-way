(pd-overview-sharing)=

# 研究内容を共有

In order to make sure that (most) research outputs are available to everyone interested in analysing or reusing them, let's take some time to learn about how to share them.
Science can only progress when we build on each other's work.
Different digital research outputs or {ref}`research objects<cm-ro>`, such as data, software and code, protocols, reagents, and hardware, can be shared as open results on the web.
They should come with specific information such as licenses, documentation and source code (repository, online index or archive).

Sharing online is not enough - you should make sure that knowledge discovery and navigation process is clearly described.
You need to make sure that your research objects are **F**indable, **A**ccesible, **I**nteroperable and **R**eusable.
This is referred to as {ref}`FAIR Principles<rr-rdm-fair>` that provides guidelines to improve the Findability, Accessibility, Interoperability and Reusability of digital assets; all of which support research reproducibility.

This aspect is already considered when developing your {ref}`Data Management Plan (DMP)<rr-rdm-dmp>` (see {ref}`pd-overview-planning-dmp`).
Therefore, it is important to revisit your DMP to make sure that the guidelines are applied when making your results available.
You can learn more about this in a chapter on {ref}`making data FAIR<rr-rdm-fair>`).

(pd-overview-sharing-archive)=

## Share your data

When legally possible, your data should be archived in an open place, where people can access them.
If you have sensitive data, you will not be able to share the raw data, but there may be some data you can share.
A repository is a good place to store your data.

An overview of some repositories available for archiving your data can be found in [re3data.org](https://www.re3data.org/).

Another good resource where you can read more about this topic is the chapter on {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(pd-overview-sharing-protocols)=

## プロトコルを共有

再現可能な研究を行う理由の一つは、他の人にその上に構築するためのツールを提供することです。
プロトコルの詳細が共有されていない場合、研究者は彼らのプロジェクトから始めることができる前にそれらを最適化する数ヶ月を費やすことができます。

A tool that can be used to avoid this is [protocols.io](https://www.protocols.io/).
それはあなたのプロトコルが公然と利用可能であることを保証する方法を提供し、変更を追跡しながらそれらを更新することを可能にします。
さらに、オンラインでプロトコルを共有することで、貢献する機会を作ることが容易になります。
You can also link protocol DOIs to related research outputs (datasets, papers) using connection metadata - see our [chapter on linking research outputs](#cm-citable-linking) for guidance on creating these connections.

The benefits of making protocols FAIR and citable extend beyond credit: searchable protocols help others find proven methods, DOIs enable impact tracking, and formal citations encourage rigorous protocol documentation.
Protocols.io provides [detailed guidance on protocol DOIs](https://www.protocols.io/help/dois), and Nature Protocols offers [best practices for protocol citation](https://www.nature.com/nprot/).
For more information on how DOIs work, see our [chapter on persistent identifiers](#rr-rdm-pid).

## シェア解析スクリプトとリサーチソフトウェア

If you have been using a version control system with a public repository (see the {ref}`Version Control<rr-vcs>` chapter), you have already done most of the work.
You should now consider putting a snapshot of your code in a repository, so you can be sure it gets archived for a relatively long time, and it become citable.
Indeed, there is no guarantee that the repository will stay available for a long time.

バージョン管理システムを汎用リポジトリと統合できます。
For example, when integrating GitHub or Gitlab with Zenodo (see {ref}`cm-citable-cite-software`), you can get Digital Object Identifiers or DOIs for your software.
これにより自動的に共有が容易になり、それが引用できるようになります。
You can read about DOIs in the chapter on {ref}`Making Research Components Citable<cm-citable>`.

## Share Research Hardware

In absence of better solution, you may deal with your hardware documentation with the same strategy as with your software: using version control  repositories during its development, and zenodo integration for archiving.
If your documentation is in the form of a website, try to provide a independent html build that can run without a server.

## Share reagents

Depending on your research domain, you may have produced reagents (genetic material or tissue for example).
If there is a specific bank for these products that can share them widely, you may consider using them.
Make sure a persistent identifier is given, an that the description of your reagents have enough metadata to make sharing useful.

## あなたの研究を集めています

あなたの研究が終わったらあなたのプロジェクトのすべてのデジタル部品を1 つの場所で集めたいと思う場合もある。
これを研究成果といいます。
研究の概要と一緒にあなたの論文を公開することは、あなたの研究の完全な範囲を可能にします: プロジェクトの設計から データの収集と分析と結果の出力によってです

これは無限の利点があります。 それはあなたの仕事を共有し、再現可能にし、他の人はそれを上に構築し、より多くの可視性を与えることができます。

You can read how to set up your research compendia, {ref}`this chapter<rr-compendia>`.

(pd-overview-sharing-License)=

## 研究出力にライセンスを追加

プロジェクトの最初にライセンスを取得した場合でも、結果と最終結果を共有する際に再度検討する必要があります。これにより、研究を再利用して共有する方法についての情報を人々に提供することができます。

If you want more information about how to choose and add a license to your project you can check the {ref}`Licensing Chapter<rr-licensing>`.

(pd-overview-citation)=

## 文献を受け取る

すべてのこのハードワークは、その報酬を持っています。 結果にデザインからすべてのあなたの研究を公開したことは、あなたの仕事に可視性を追加し、クレジットを得るためのより多くの機会を得ます.

結果を引用できるだけでなく、メソッドとプロトコルを再利用でき、デザインを共有できます。

Read {ref}`this chapter on ORCID<cm-citable-orcid>` for more information about how you can collect different research outputs in one place using ORCID and highlight them to get fair credit for your work.
