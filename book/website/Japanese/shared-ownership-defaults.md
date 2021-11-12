(cl-shared-ownership-defaults)=
# より優れたデフォルトのためにナッジする

Research has shown that humans making decisions have a strong tendency to go along with the status quo or default option (See the [Nudge Theory](https://www.imperial.ac.uk/nudgeomics/about/what-is-nudge-theory/) by {cite:ps}`ThalerSunstein2009Nudge`). 積極的に定義されたデフォルトが存在しない場合、一般的な文化的または制度的な規範は選択の事実上の選択肢になります。 したがって、継続中および新規プロジェクトのデフォルトオプションは、共有所有権モデルの採用に向けて強く動くべきです。

オープンソースプロジェクトの最小のデフォルトには、次のドキュメントが含まれている必要があります。
1. オープンソースのライセンスを選択します(可能な場合はいつでも)。
2. 投稿者の承認が目に見えます。
3. 共有所有権の基準を設定します。

## オープンソースライセンス

現在コードを所有している多くの研究者は、オープンソースライセンスがプロジェクトのオープン性とアイデンティティをどのように保護できるかを完全に認識していないかもしれないため、オープンライセンスに関するより多くの認識が必要です。 オープンライセンスの違いについての基本的な紹介が、研究者に与えられた場合、より多くのコードがライセンスされる可能性があります(例えば、 コピーレフト対許容）と選択する項目 ただし、これはライセンスが追加されるのに十分なメンテナンスが行われているプロジェクトのみに役立ちます (参照については、 {ref}`rr-licensing`を参照)。 デフォルトでオープンライセンスされるコードをプッシュする必要があります。 これは、研究エコシステムの多くのステークホルダーによって適用することができます。 Funders can require that code produced by a grant is openly licensed and, similarly, publishers can require that code associated with a publication is openly licensed (open research _data_ is already required by funders for example, [in the UK](https://www.ukri.org/about-us/policies-standards-and-data/good-research-resource-hub/open-research/), this could easily be extended to cover software). リポジトリをホストする企業は、ライセンスを簡単に追加できるようになります。 そして、デフォルトでライセンスを追加することで、ユーザーに優しくそうするよう促します。

**アクションの呼び出し: プロジェクトのライセンスを選択してください**

あなたの研究のライフサイクル全体を通して開かれるように最初からプロジェクトを計画しなさい。 個人データまたは識別可能なデータを使用する場合は、プライバシーとデータのセキュリティを確保するためにどのような措置が講じられているかを明記してください。 作業内容については、オープンソースのライセンスを選択し、リポジトリに追加してください (https://choosealicense.com/を参照)。 詳細については、 {ref}`ライセンス<rr-licensing-software>` 章を参照してください。

## 貢献者の意義ある謝辞

オーナーシップは、プロジェクト内での作業方法、貢献方法、認識方法が適切に定義されていることを確認することにより、貢献者とより正確に共有されるべきです。 既存のコントリビューターだけでなく、新しいコントリビューターがプロジェクトでどのような道筋を取ることができるかを特定できるように、人々とプラクティスに関する詳細を透過的に文書化し、伝達する必要があります。 オープンソースプロジェクトでは、コードやドキュメントを書く以外にも、多くの種類の貢献が可能です。 これらの貢献はそれぞれ透明かつ公平に認められるべきである。 For example, we can learn from open source metrics like [CHAOSS](https://chaoss.community/) or [CRediT - Contributor Roles Taxonomy](https://casrai.org/credit/), recognise the hidden labour using frameworks defined by [HiddenREF](https://hidden-ref.org/) or as described in {ref}`The Turing Way Acknowledge chapter<ch-acknowledgement>`, allow people to capture their contributions in a way that is most meaningful for them. プロジェクトの持続可能性に重要な貢献者を認識し、報酬を与え、インセンティブを与える、より構造化されたプログラムを開発することができます。

**アクションへの呼び出し: コントリビューターを目に見えて承認**

可視化された場所(コントリビューターファイルなど)に名前を記録することでコントリビューターを認識するには、管理者またはメンテナーのワークフローに追加する必要があります。 公式のコミュニティフォーラムやチャンネルで公然とそれらを伝えることによって、あらゆる種類の仕事を発表し、祝います。 GitHubアクション、ボット、連続インテグレーションパイプラインを使用して、プロセスを自動化できます。 もう一つの簡単なアプローチを取るには、all-contributorsボットを

https://allcontributorsでインストールしてください。 rg [](https://allcontributors.org) をリポジトリに送ります。コードをプッシュしないものを含む貢献を認識するのに役立ちます。 [_Turing Way_ リポジトリ](https://github.com/alan-turing-institute/the-turing-way#contributors) での作業を参照してください。</p> 



## プロジェクトのオーナーシップをコミュニティと共有

共有所有の場合、共同体がプロジェクトを構築し、それゆえにそのようなものとみなされるべきです。 デフォルトにするには、さまざまなオープンソースプロジェクトで簡単に実践できるようにする必要があります。 そのための一つの方法は、プロジェクトの所有権をすべての貢献者と公平に認め、共有するというコミットメントを示すための不可欠なコミュニティ文書を持つことです。 これらの文書は共有されるだけでなく、フィードバック、貢献、コミュニティにとって有意義な更新のために公開されるべきです。 コミュニティーの政策及び規範は,コミュニティメンバー間の開かれた,安全で尊重された対話を促進するために,最初から伝達されるべきである。

**アクションの呼び出し: 共有所有権の標準を設定**

プロジェクトの所有者と見なされる人を明示的に記述します。 プロジェクトを管理する個人のみに帰属するのではなく、貢献者コミュニティとクレジットを共有する必要があります。 For example, when citing the project, use “Community” as the first author [as practised in The Turing Way](https://the-turing-way.netlify.app/welcome.html#citing-the-turing-way). コントリビューションのガイドライン 行動規範(参照のためのオープンソースガイドを参照)とプロジェクトリポジトリのその他のコミュニティページは、コミュニティで宣伝したい文化のトーンを設定するのに役立ちます。 貢献者がどのように支援されているかを示しています
