(rr-overview-barriers)=
# 再現性の障害

これまでに、再現性のある研究によって {ref}`私たちが<rr-overview-definitions>` の意味を説明し、 {ref}`追加の利点のいくつかを説明しました。<rr-overview-benefits>`.

このセクションでは、作品を再現できるようにする際に直面する(リアルで認識された)障壁のいくつかを取り上げます。

```{figure} ../../figures/barriers-reproducibility.png
---
width: 500px
name: reproducibility-walls
alt: プレゼンテーションからスライドし、再現性に対する異なる障壁を示します。 中央のテキストは、「再現可能な研究のための障壁」と言うと、スライドの周りに時計回りに次の障壁が配置されています - プロモーションのために考慮されていません 他の人よりも高い標準に開催されました, 新しい知見に向けた発行バイアス, 5を提示, 時間がかかります, 追加のユーザーをサポート, 追加のスキルが必要.
---
2019年5月の[csv,conf,v4](https://csvconf.com/2019)のKirstie Whitakerの[talk about _The Teuring Way_](https://youtu.be/wZeoZaIV0VE?t=312)の再現可能な研究への障壁のいくつかを概説したスライド。
CC-BY 4.0ライセンスの下で使用される。
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

この章では、それらの障壁のいくつかと、それらを回避するためのいくつかの提案について概説します。 再現可能な研究への障壁は、3つの主要グループに記述することができます。 The first, and hardest to overcome are those relating to the current incentive structure in academic research: {ref}`Limited incentives to give evidence against yourself<rr-overview-barriers-incentives>` (or "Plead the fifth"), the known {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, the fact that reproducible or open research may be {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and that all this effort is {ref}`not considered for promotion<rr-overview-barriers-promotion>`. 次に、 {ref}`のビッグデータと複雑な計算インフラストラクチャ<rr-overview-barriers-infrastructure>` を使用して作業する技術的および理論的な課題があり、 {ref}`再現性があることを覚えておくことは、答えが正しいことを意味するものではありません<rr-overview-barriers-notright>`。 We finish with three barriers considering the pressures on individual data scientists: that this work can be perceived to {ref}`take extra time<rr-overview-barriers-time>`, that you may be required to {ref}`support additional users<rr-overview-barriers-support>` (spoiler: you aren't!), and that you and members of your team might {ref}`require additional skills<rr-overview-barriers-skills>`. 良いニュースは、あなたがそれらのスキルを学ぶのに役立つことです _The Turing Way_ がここにある!

(rr-overview-barriers-incentives)=
## 自分自身に対する証拠を与えるための限定されたインセンティブ。

合衆国憲法の [第五修正](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) 条には、「いかなる場合においても、 [them]セル[ves]に対する証人にならない」という条項が含まれています。 (性別に依存しない言語に編集) "五番目を嘆願する"とは、誰かが過去の行動に何か悪いことがあった可能性があるという証拠を与えないことを選択することを意味します。 彼らには黙秘権がある。

私たちは、誰も自分自身を非難したくないことを知っています, そしてまた、誰もが絶対に不可能ではないこと. あなたのコードとデータをオンラインに置くことは非常に明らかで恐ろしいことがあります。 他人に判断されることを神経質にするのは人間の状態の一部です 再現性のある研究のコミュニケーションを規定する _法_ はありません - あなたがあなたの仕事で明示的な詐欺を犯さない限り - あなたの仕事で見つけたエラーを共有することは非常に嫌悪されます。

```{figure} ../../figures/make-ok-to-be-human.jpg
---
height: 500px
name: make-ok-to-be-human
alt: ファイルのフォルダを持っている女性の漫画。 Thought bubble は、私がデータを共有すれば、人々は間違いを見つけるかもしれません。 画像のキャプションは、読み取ります 人間であるためにそれをOKにする必要があります。
---
私たちの現在の文化が間違いを認め、修正する動機づけを与える「第五の障壁を嘆願する」図。
Kirstie Whitaker氏の基調講演『The Ludic Group LLP』のイラストは、2017年のScientific Dataにて行われました。
CC-BY 4.0ライセンスの下で使用される。
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1)
```

自分自身に対する証拠を与えること, 特に公開された資料でミスを見つけた場合, 困難でストレス. しかし、コードを公開することで他の研究者がフィードバックするのに役立つという事実と、個々のコストをバランスさせる必要があります。 彼らの研究に役立つかもしれません 実際には、コードやデータドキュメントを公開することで、分析をより高い水準にするようになることがほぼ確実に分かります。 あなたが書き留め、あなたの決定を文書化することについて注意することは、また、あなた自身や他の人のための新しいアイデアを生成するのに役立ちます。

最も重要なことは、パブリッシング _何か_ を発行することよりも安全でない文化から離れる必要があるということです。 _チューリングウェイ_ は、キャリアが進むにつれて再現性が高くなるまでのほとんどのステップを踏み出すのを助けるためにここにあります。 私たちは、誰もが一人で感じることを望んでいない、または彼らが彼らのオープンな研究の旅を開始し、続ける"十分に良くない"ことを望んでいません。

(rr-overview-barriers-publication)=
## 新しい所見に対する公開バイアス（公開バイアス）

小説の成果は必ずしも正確でも面白いものでもありませんが、学術界で報われるものです! Papers that do not find statistically significant relationships are hard to publish, particularly if the results *do not* reproduce previously published findings. (これには、すでに発表されている研究とは逆の方向に進む統計的に重要な結果が含まれます。 同様に 新しいセットを作る代わりに、すでに出版された結果を再現すれば、論文がジャーナルやカンファレンスに受け入れられない可能性があるかもしれません。 査読者が「我々はすでにこれを知っています」と言って提出を拒否する可能性があります。

データサイエンスにおける新規性に対する偏見は、多くの研究者がコードやデータの文書化、テスト、共有を行うことを嫌がっていることを意味します。 John Ioannidisは、2005年に「なぜ最も公表された研究成果は偽であるのか」と題した影響力のある論文を出版しました。 {cite:ps}`Ioannidis2005False` は、出版バイアスに貢献する多くの要因について論じています。 これらのバイアスを考えると、データサイエンスには多くの重複した研究がある可能性が非常に高い。 多くの異なる研究者が同じ質問をしています 彼らが期待している答えを得られないし、彼らが見つけたものを誰にも言わない。

このバリアは、 _The Turing Way_ で定義されているように、計算の再現性に固有のものではありません。 しかし、それは {ref}`透過的なコミュニケーション<cm>`への主要な文化障壁であり、 {ref}`プロジェクトデザイン<pd>` に影響を与えます。 _チューリングウェイ_ コミュニティは、私たちができるすべての場所で提唱しています。 現代の出版物や学術的な信用バイアスを解体するために必要な全身文化の変化に

(rr-overview-barriers-standards)=
## 他よりも高い水準に保持されます

コードやデータを共有することで作品を再現可能にする研究者は、他の研究者よりも高い水準に保持されることがあります。 著者がまったく何も共有しない場合、原稿または会議論文の読者はすべて、結果を信頼する(または信頼しない)ことができます。

コードとデータが利用可能であれば、ピアレビューアは実装の違いを探すかもしれません。 データを分析する方法についての新しいアイデアが返ってくるかもしれません。なぜなら、彼らは作業を試すことができたからです。 ピアレビューのために受け入れられる前に、提出された原稿の著者から追加の変更が必要となるリスクがあります。

As we described in the {ref}`"Plead the Fifth"<rr-overview-barriers-incentives>` section above, the solution to this challenge is to align career incentives so that doing what is best for _science_ also benefits the individuals involved.

(rr-overview-barriers-promotion)=
## 昇進には考慮されていません

現在の学術制度では、助成金の授与や学生の採用能力が証明されています。 資金調達機関と将来の学生は、新規性を重視し、この行動は、 [ジャーナルインパクトファクター](https://en.wikipedia.org/wiki/Impact_factor)が高い論文に優先的に報酬を与えることに反映されている。 新しいもの、又は驚くべきものによって動機づけられることは、人間の状態の一部でありそうです。 しかし、上記の {ref}`<rr-overview-barriers-publication>`で述べたように、この新規性への偏りは、系統的な出版バイアスを引き起こす。

より広い範囲では、学問における昇進制度は、自らの分野で他者と異なることを示した個人に報酬を与える傾向がある。 つまり、「競合他社」が同じ作業を簡単にするためにコードとデータを共有することは、プロモーションや資金調達の選択パネルによって失敗することになります。 このバイアスの良い例は、毎年少数の研究者だけがノーベル賞を受賞していることです。 そして ["その重要な貢献者の多くを見落とす"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017)。 _The Turing Way_ の目標の一つは、共同で再現可能なデータサイエンスと共に、テニュアとプロモーションプロセスのずれに注意を向けることです。

(rr-overview-barriers-インフラストラクチャ)=
## ビッグデータと複雑な計算インフラストラクチャ

ビッグデータは、異なる研究者によって異なる方法で概念化されます。 「ビッグ」データは、さまざまなデータソースから生じる複雑なものであり、ストレージ容量が大きいこと、および/または非常に高い時間分解能でストリーミングされることがあります。 ランダムな種を設定し、特定の時点でデータセットのスナップショットを取る方法がありますが。 異なるパイプラインを横断して同一のデータを持つことは困難です これは、並列コンピューティングのためのツールの文脈で特に重要です。 例えば、 フライトトラッキングやインターネットトラフィックなどのデータは非常に大きいので保存できず、リアルタイムでストリーミングされるように処理しなければなりません。

「ビッグデータ」の研究者にとってより一般的な課題は、オペレーティングシステム全体でのソフトウェアパフォーマンスの変化と、ツールが時間とともにどれほど早く変化するかです。 ほぼ絶えず変化するデータサイエンス技術のエコシステムが利用可能です つまり将来の結果を再現することは非常に可変であり 完全に後方互換性のあるツールを 開発することに依存しています 統計的テストの結果は、それぞれの実験で使用されたインフラストラクチャの構成によって異なります。 独立して結果を再現するのが非常に難しくなっています 実験は多くの場合、反復アルゴリズムのランダムな初期化に依存しますが、すべてのソフトウェアには並列化機能(例えばTensorflow)を制限することなく擬似乱数を修正する機能が含まれているわけではありません。 これらのツールには、データサイエンティストには広く利用できない技術的スキルが必要になる場合があります。 The [Apache Hadoop](https://hadoop.apache.org/) framework, for instance, is extremely complex to deploy data science experiments without strong software and hardware engineering knowledge.

「標準的な」高性能コンピューティングでさえ、特に異なるクラウドコンピューティングプロバイダーや制度構成で完全に再現できるように設定することは困難です。 _The Turing Way_ contains chapters to help data scientists learn skills in {ref}`reproducible computational environments<rr-renv>` including {ref}`containers<rr-renv-containers>` such as docker and ways to {ref}`version control your software libraries<rr-renv-package>`. 私たちは、非常に大規模なデータセットや複雑なモデリングの進化のための再現可能な研究をサポートする技術として、 [より多くの貢献](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) に常に開かれています。

(rr-overview-barright-notright)=
## 再現性があるということは答えが正しいということではありません

コードとデータを使用して、他の人がオープンに結果を得ることができます。 私たちの結果は **再現** かもしれませんが、最初の著者が犯した誤りは引き継がれる可能性があります。 毎回同じ間違った答えを得ることは正しい方向へのステップですが、それでも非常に **間違った** 答えです！

この障壁は、再現性に時間を費やすことは必ずしもあなたがより良い科学をしていることを意味するわけではないという警告ほど、再現性のある研究のための _障壁_ ではありません。 計算の再現性は、高品質の研究には不十分であると考えることができます。 既存のソフトウェアを単純に使用したり、統計的手法を実行したりするのではなく、重要なアプローチが必要です。 例えば、 [2019年8月の](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) で、Scikit-learnのロジスティック回帰のデフォルト設定が新しいユーザに誤解をもたらすかどうかについてのディスカッションが行われました。 元の研究を適切に評価し、調査結果を強化するためには、解釈性と相互運用性が必要です。

(rr-overview-barriers-time)=
## 時間がかかる

再現性のある解析を行うには、特にプロジェクトの開始時に時間と労力がかかります。 This may include agreeing upon a {ref}`testing framework<rr-testing>`, setting up {ref}`version control<rr-vcs>` such as a Github repository and {ref}`continuous integration<rr-ci>`, and {ref}`managing data<rr-rdm>`. 再現可能なパイプラインを維持するには、プロジェクト全体で時間がかかる場合があります。

また、プロジェクトのどの部分がオープンソースであり、いつ、どのように出力が共有されているかについて同意するために、コラボレーターとのコミュニケーションに時間がかかることもあります。 研究者は、GitやGitHubなどの再現性ツールをチームが利用できるようにするために、同僚を「アップスキル」する必要があることを発見するかもしれません。 コンテナ、Jupyter notebook、またはデータベース。

```{figure} ../../figures/help-you-of-the-future.jpg
---
width: 500px
name: help-you-of-the-future
alt: ドキュメントのフォルダを自分自身に渡す女性の漫画。 スピーチバブルはあなたが主に将来のために記録を保持していると言います。
---
明確なドキュメントを作成することは、今のところ多くの時間を要しているように感じるかもしれませんが。 協力者が自分のしたことを思い出すのを手助けしてるから 仕事を再利用したり変更を加えたりするのは簡単だ
Kirstie Whitaker氏の基調講演『The Ludic Group LLP』のイラストは、2017年のScientific Dataにて行われました。
CC-BY 4.0ライセンスの下で使用される。
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1)
```

しかし、 _The Turing Way_ コミュニティは、今回はプロジェクトの終了までに補完される以上のものであると主張している。 論文がジャーナルに提出された場合、「もう一度分析するだけ」という査読者が思考実験を行います。 多くの場合、このリクエストは、研究チームが生のデータを扱ってから6~12ヶ月後に発生します。 査読者があなたに変更を求めたパイプラインの一部を見つけるのに時間を遡ることは非常に困難な場合があります。 バージョン管理のデータと図の生成コードを含む、作業が完全に再現可能である場合。 この分析は最終的な研究成果にすばやく組み込むことができます 分析パイプラインは、共著者やレビューアからのリクエストに応じて、必要に応じて簡単に適応できます。 また、将来の研究プロジェクトに簡単に再利用することもできます。

(rr-overview-barriers-support)=
## 追加ユーザーをサポートする

多くの人は、解析を再現可能にすることで、将来のコードのユーザーから多くの質問に答える必要があると心配しています。 これらの質問は、オペレーティングシステム間のソフトウェアの非互換性や依存関係の変化について説明するかもしれません (上記の {ref}`ビッグデータと複雑な計算インフラストラクチャ<rr-overview-barriers-infrastructure>` バリアを参照してください)。 また、コードを別の目的に合わせて調整する方法についての質問も含めることができます。

このバリアは、「オープン」研究と「再現性」を融合させる部分に基づいています。 _Turing Way_ {ref}`の"再現性"の定義<rr-overview-definitions>` は、付随する原稿で公開された結果を生成する正確な分析を実行する以外に、データとコードの拡張と再利用をサポートする必要はありません。

ほとんどの場合、コードとデータをオープンソースにするには、研究者が自分自身のために書くより良いドキュメントが必要です。 これは追加の障壁のように感じることができます。 ただし、再現性のある研究 {ref}`の前のセクションで説明されているように、余分な時間がかかります<rr-overview-barriers-time>` 詳細なドキュメントでよくコメントし、テストされたコードの主な受益者は、研究チーム、特にプロジェクトの主任研究者である可能性があります。

(rr-overview-barriers-skills)=
## 追加のスキルが必要です

_The Turing Way_のチャプター数が増え続けていることからわかるように。 再現的に働くには訓練プログラムで教えられないスキルが必要です あなたまたはあなたのチームの誰かが、データエンジニアリングの専門知識を開発する必要があるかもしれません GitHubの研究ソフトウェアエンジニアリング、ドキュメントやプロジェクト管理のための技術文書作成。 That is a major barrier when the current incentive structures are not aligned with learning these skills (see the barriers on {ref}`plead the fifth<rr-overview-barriers-incentives>`, {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and {ref}`not considered for a promotion<rr-overview-barriers-promotion>`!) しかし、これが私たちが _The Turing Way_ にいる主な障壁です。 私たちは、あなたが私たちと一緒にこれらのスキルを学ぶことを楽しみ、あなたがそうであるように本を改善するために私たちを助けることを願っています。

> 「千マイルの旅は一歩から始まる」(中国の哲学者 [ラオスツー](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step))。

これらの貴重なスキルを学ぶために取り組むことで、再現性のある研究へのより構造的障壁も解消することを願っています。

## さらなる読書と追加のリソース

You can watch Kirstie Whitaker describe some of these barriers in [her talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019. あなたはゼノド(doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547))を介して、CC-BYライセンスの下で彼女のスライドを使用し、再利用することができます。 以下のスライドを説明するセクションは、ビデオの約5分後に開始します。
