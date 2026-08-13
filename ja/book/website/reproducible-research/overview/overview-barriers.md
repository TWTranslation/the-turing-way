(rr-overview-barriers)=

# 再現性の障害

So far we have explained {ref}`what we mean<rr-overview-definitions>` by reproducible research and explained some of the {ref}`additional benefits<rr-overview-benefits>`.

このセクションでは、作品を再現できるようにする際に直面する(リアルで認識された)障壁のいくつかを取り上げます。

```{figure} ../../../figures/barriers-reproducibility.*
---
width: 500px
name: reproducibility-barriers
alt: Slide from the presentation showing the different barriers to reproducibility. The text in the center says 'Barriers to reproducible research' and the following barriers are arranged clockwise around the slide - Is not considered for promotion, Held to a higher standard than others, Publication bias towards novel findings, Plead the 5th, Takes time, Support additional users, Requires additional skills.
---
A slide outlining some of the barriers to reproducible research from Kirstie Whitaker's [talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
Used under a CC-BY 4.0 license.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

この章では、それらの障壁のいくつかと、それらを回避するためのいくつかの提案について概説します。
再現可能な研究への障壁は、3つの主要グループに記述することができます。
The first, and hardest to overcome are those relating to the current incentive structure in academic research: {ref}`Limited incentives to give evidence against yourself<rr-overview-barriers-incentives>` (or "Plead the fifth"), the known {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, the fact that reproducible or open research may be {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and that all this effort is {ref}`not considered for promotion<rr-overview-barriers-promotion>`.
Then there are the technical and theoretical challenges of working with {ref}`big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` and remembering that {ref}`being reproducible does not mean the answer is right<rr-overview-barriers-notright>`.
We finish with three barriers considering the pressures on individual data scientists: that this work can be perceived to {ref}`take extra time<rr-overview-barriers-time>`, that you may be required to {ref}`support additional users<rr-overview-barriers-support>` (spoiler: you aren't!), and that you and members of your team might {ref}`require additional skills<rr-overview-barriers-skills>`.
The good news is that helping you learn those skills is exactly what _The Turing Way_ is here for!

(rr-overview-barriers-incentives)=

## 自分自身に対する証拠を与えるための限定されたインセンティブ。

The [Fifth Amendment](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) to the United States Constitution includes a clause that no one "shall be compelled in any criminal case to be a witness against themselves".
(性別に依存しない言語に編集)
"五番目を嘆願する"とは、誰かが過去の行動に何か悪いことがあった可能性があるという証拠を与えないことを選択することを意味します。
彼らには黙秘権がある。

私たちは、誰も自分自身を非難したくないことを知っています, そしてまた、誰もが絶対に不可能ではないこと.
あなたのコードとデータをオンラインに置くことは非常に明らかで恐ろしいことがあります。 他人に判断されることを神経質にするのは人間の状態の一部です
Although there is no _law_ governing the communication of reproducible research - unless you commit explicit fraud in your work - sharing errors that you find in your work is heavily disincentivised.

```{figure} ../../../figures/make-ok-to-be-human.*
---
height: 500px
name: make-ok-to-be-human
alt: A cartoon of a woman holding a folder of files and looking worried. Thought bubble says, If I share my data people might find mistakes. The caption on the images reads Need to make it ok to be human.
---
An illustration of the "plead the fifth" barrier where our current culture disincentivises acknowledging and correcting mistakes.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

自分自身に対する証拠を与えること, 特に公開された資料でミスを見つけた場合, 困難でストレス.
しかし、コードを公開することで他の研究者がフィードバックするのに役立つという事実と、個々のコストをバランスさせる必要があります。 彼らの研究に役立つかもしれません
実際には、コードやデータドキュメントを公開することで、分析をより高い水準にするようになることがほぼ確実に分かります。
あなたが書き留め、あなたの決定を文書化することについて注意することは、また、あなた自身や他の人のための新しいアイデアを生成するのに役立ちます。

Most importantly, we need to move away from a culture where publishing nothing is safer than publishing _something_.
_The Turing Way_ is here to help you take little steps towards being more reproducible as your career progresses.
私たちは、誰もが一人で感じることを望んでいない、または彼らが彼らのオープンな研究の旅を開始し、続ける"十分に良くない"ことを望んでいません。

(rr-overview-barriers-publication)=

## 新しい所見に対する公開バイアス（公開バイアス）

小説の成果は必ずしも正確でも面白いものでもありませんが、学術界で報われるものです!
Papers that do not find statistically significant relationships are hard to publish, particularly if the results _do not_ reproduce previously published findings.
(これには、すでに発表されている研究とは逆の方向に進む統計的に重要な結果が含まれます。
同様に 新しいセットを作る代わりに、すでに出版された結果を再現すれば、論文がジャーナルやカンファレンスに受け入れられない可能性があるかもしれません。
査読者が「我々はすでにこれを知っています」と言って提出を拒否する可能性があります。

データサイエンスにおける新規性に対する偏見は、多くの研究者がコードやデータの文書化、テスト、共有を行うことを嫌がっていることを意味します。
John Ioannidis published an influential paper in 2005 titled "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` which discusses the many factors that contribute to publication bias.
これらのバイアスを考えると、データサイエンスには多くの重複した研究がある可能性が非常に高い。
多くの異なる研究者が同じ質問をしています 彼らが期待している答えを得られないし、彼らが見つけたものを誰にも言わない。

This barrier is not specific to computational reproducibility as we define it in _The Turing Way_.
However, it is a major cultural barrier to {ref}`transparent communication<cm>`, and affects {ref}`project design<pd>`.
_The Turing Way_ community are advocating in all the places we are able, for the systemic culture change that is required to dismantle the current publication and academic credit biases towards novelty over rigour.

(rr-overview-barriers-standards)=

## 他よりも高い水準に保持されます

コードやデータを共有することで作品を再現可能にする研究者は、他の研究者よりも高い水準に保持されることがあります。
著者がまったく何も共有しない場合、原稿または会議論文の読者はすべて、結果を信頼する(または信頼しない)ことができます。

コードとデータが利用可能であれば、ピアレビューアは実装の違いを探すかもしれません。
データを分析する方法についての新しいアイデアが返ってくるかもしれません。なぜなら、彼らは作業を試すことができたからです。
ピアレビューのために受け入れられる前に、提出された原稿の著者から追加の変更が必要となるリスクがあります。

As we described in the {ref}`"Plead the Fifth"<rr-overview-barriers-incentives>` section above, the solution to this challenge is to align career incentives so that doing what is best for _science_ also benefits the individuals involved.

(rr-overview-barriers-promotion)=

## 昇進には考慮されていません

現在の学術制度では、助成金の授与や学生の採用能力が証明されています。
Both funding bodies and prospective students value novelty and this behaviour is reflected in preferentially rewarding papers with a high [journal impact factor](https://en.wikipedia.org/wiki/Impact_factor).
It is likely part of the human condition to be motivated by things that are new or surprising, but as {ref}`discussed above<rr-overview-barriers-publication>`, this bias towards novelty causes a systematic publication bias.

より広い範囲では、学問における昇進制度は、自らの分野で他者と異なることを示した個人に報酬を与える傾向がある。
つまり、「競合他社」が同じ作業を簡単にするためにコードとデータを共有することは、プロモーションや資金調達の選択パネルによって失敗することになります。
A good example of this bias is the Nobel Prize award which only goes to a small number of researchers each year, and as such ["overlooks many of its important contributors"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017).
One of the goals of _The Turing Way_ is to draw attention to the misalignment of the tenure and promotion process with collaborative and reproducible data science.

(rr-overview-barriers-インフラストラクチャ)=

## ビッグデータと複雑な計算インフラストラクチャ

ビッグデータは、異なる研究者によって異なる方法で概念化されます。
「ビッグ」データは、さまざまなデータソースから生じる複雑なものであり、ストレージ容量が大きいこと、および/または非常に高い時間分解能でストリーミングされることがあります。
ランダムな種を設定し、特定の時点でデータセットのスナップショットを取る方法がありますが。 異なるパイプラインを横断して同一のデータを持つことは困難です
これは、並列コンピューティングのためのツールの文脈で特に重要です。
例えば、 フライトトラッキングやインターネットトラフィックなどのデータは非常に大きいので保存できず、リアルタイムでストリーミングされるように処理しなければなりません。

「ビッグデータ」の研究者にとってより一般的な課題は、オペレーティングシステム全体でのソフトウェアパフォーマンスの変化と、ツールが時間とともにどれほど早く変化するかです。
ほぼ絶えず変化するデータサイエンス技術のエコシステムが利用可能です つまり将来の結果を再現することは非常に可変であり 完全に後方互換性のあるツールを 開発することに依存しています
統計的テストの結果は、それぞれの実験で使用されたインフラストラクチャの構成によって異なります。 独立して結果を再現するのが非常に難しくなっています
実験は多くの場合、反復アルゴリズムのランダムな初期化に依存しますが、すべてのソフトウェアには並列化機能(例えばTensorflow)を制限することなく擬似乱数を修正する機能が含まれているわけではありません。
これらのツールには、データサイエンティストには広く利用できない技術的スキルが必要になる場合があります。
The [Apache Hadoop](https://hadoop.apache.org/) framework, for instance, is extremely complex to deploy data science experiments without strong software and hardware engineering knowledge.

「標準的な」高性能コンピューティングでさえ、特に異なるクラウドコンピューティングプロバイダーや制度構成で完全に再現できるように設定することは困難です。
_The Turing Way_ contains chapters to help data scientists learn skills in {ref}`reproducible computational environments<rr-renv>` including {ref}`containers<rr-renv-containers>` such as docker and ways to {ref}`version control your software libraries<rr-renv-package>`.
We are always [open to more contributions](#ch-contributing) as the technology to support reproducible research in very large datasets or for complex modelling evolves.

(rr-overview-barright-notright)=

## 再現性があるということは答えが正しいということではありません

By making the code and data used to produce a result openly available to others, our results may be **reproduced** but mistakes made by the initial author can be carried through.
Getting the same wrong answer each time is a step in the right direction, but still very much a **wrong** answer!

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science.
計算の再現性は、高品質の研究には不十分であると考えることができます。
既存のソフトウェアを単純に使用したり、統計的手法を実行したりするのではなく、重要なアプローチが必要です。
See, for example, [a discussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) in August 2019 about whether the default settings for Scikit-learn's implementation of logistic regression are misleading to new users.
元の研究を適切に評価し、調査結果を強化するためには、解釈性と相互運用性が必要です。

(rr-overview-barriers-time)=

## 時間がかかる

再現性のある解析を行うには、特にプロジェクトの開始時に時間と労力がかかります。
This may include agreeing upon a {ref}`testing framework<rr-testing>`, setting up {ref}`version control<rr-vcs>` such as a Github repository and {ref}`continuous integration<rr-ci>`, and {ref}`managing data<rr-rdm>`.
再現可能なパイプラインを維持するには、プロジェクト全体で時間がかかる場合があります。

また、プロジェクトのどの部分がオープンソースであり、いつ、どのように出力が共有されているかについて同意するために、コラボレーターとのコミュニケーションに時間がかかることもあります。
研究者は、GitやGitHubなどの再現性ツールをチームが利用できるようにするために、同僚を「アップスキル」する必要があることを発見するかもしれません。 コンテナ、Jupyter notebook、またはデータベース。

```{figure} ../../../figures/help-you-of-the-future.*
---
width: 500px
name: help-you-of-the-future
alt: A cartoon of a woman passing a folder of documents back to herself. Speech bubble says You're mainly keeping records for you in the future.
---
Although making clear documentation may feel like it is taking a lot of time at the moment, you are helping yourself and your collaborators remember what you have done so it is easy to reuse the work or make changes in the future.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

However, _The Turing Way_ community advocates that this time is more than made up for by the end of the project.
論文がジャーナルに提出された場合、「もう一度分析するだけ」という査読者が思考実験を行います。
多くの場合、このリクエストは、研究チームが生のデータを扱ってから6~12ヶ月後に発生します。
査読者があなたに変更を求めたパイプラインの一部を見つけるのに時間を遡ることは非常に困難な場合があります。
バージョン管理のデータと図の生成コードを含む、作業が完全に再現可能である場合。 この分析は最終的な研究成果にすばやく組み込むことができます
分析パイプラインは、共著者やレビューアからのリクエストに応じて、必要に応じて簡単に適応できます。
また、将来の研究プロジェクトに簡単に再利用することもできます。

(rr-overview-barriers-support)=

## 追加ユーザーをサポートする

多くの人は、解析を再現可能にすることで、将来のコードのユーザーから多くの質問に答える必要があると心配しています。
These questions may cover software incompatibility across operating systems and the dependencies changing over time (see the {ref}`Big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` barrier above).
また、コードを別の目的に合わせて調整する方法についての質問も含めることができます。

このバリアは、「オープン」研究と「再現性」を融合させる部分に基づいています。
The _Turing Way_ {ref}`definition of "reproducible"<rr-overview-definitions>` doesn't require authors to support the expansion and reuse of the data and code beyond running the exact analyses that generate the published results in the accompanying manuscript.

ほとんどの場合、コードとデータをオープンソースにするには、研究者が自分自身のために書くより良いドキュメントが必要です。
This can feel like an additional barrier, although - as discussed in the previous section on reproducible research {ref}`taking extra time<rr-overview-barriers-time>` it is likely that the primary beneficiaries of well commented and tested code with detailed documentation are the research team - particularly the principal investigator of the project - themselves.

(rr-overview-barriers-skills)=

## 追加のスキルが必要です

As you can tell from the ever-growing number of chapters in _The Turing Way_, working reproducibly requires skills that aren't always taught in training programmes.
あなたまたはあなたのチームの誰かが、データエンジニアリングの専門知識を開発する必要があるかもしれません GitHubの研究ソフトウェアエンジニアリング、ドキュメントやプロジェクト管理のための技術文書作成。
That is a major barrier when the current incentive structures are not aligned with learning these skills (see the barriers on {ref}`plead the fifth<rr-overview-barriers-incentives>`, {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and {ref}`not considered for a promotion<rr-overview-barriers-promotion>`!)
However, this is the primary barrier that we at _The Turing Way_ are working to dismantle with you.
私たちは、あなたが私たちと一緒にこれらのスキルを学ぶことを楽しみ、あなたがそうであるように本を改善するために私たちを助けることを願っています。

> "A journey of a thousand miles begins with a single step" (Chinese philosopher [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

これらの貴重なスキルを学ぶために取り組むことで、再現性のある研究へのより構造的障壁も解消することを願っています。

## さらなる読書と追加のリソース

You can watch Kirstie Whitaker describe some of these barriers in [her talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
You can use and reuse her slides under a CC-BY licence via Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)).
以下のスライドを説明するセクションは、ビデオの約5分後に開始します。
