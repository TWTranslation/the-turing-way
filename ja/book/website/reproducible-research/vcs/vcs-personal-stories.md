(rr-vcs-personal-stories)=

# 個人的なストーリー

(rr-vcs-personal-stories-infow)=

## Dataladに関するAdinaとのインタビュー

バージョン管理データは難しい場合があります。 AdinaはDataLadを開発するチームの一員であり、データ管理の課題を解決するためにそれを使用しているため、これを知っています。
Kirstieは彼女の仕事についてインタビューし、なぜ彼女はバージョン管理データが不可欠であると考えています。

**Kirstie**: Hi Adina, thank you for contributing the chapter on version control for data!
私はあなたがDataLadの開発者であることを知っています、そして私はこのプロジェクトについてもっと学ぶことを楽しみにしています。
自分が何者で何に取り組んでいるのか教えてもらえますか。

**Adina**: Hey Kirstie, thanks a lot for providing a space for the topic of version-controlling data!
私は神経科学の博士課程の学生で、DataLadを開発する研究室の一員です。
神経科学的な質問に取り組む以外にも、私は自分の分野で典型的なデータ管理の課題に取り組んでいます。 例えば、「300GBのデータがありますが、バージョン管理や共有はどうすればできますか? , または "どのように私が使用したデータのバージョンに自分の分析をリンクすることができます?".
私は神経科学者として素晴らしいオープンなデータセットを持つ分野で働くことができて光栄です しかし、数百GBの容易なデータを扱い、共有し、追跡することも困難です。

**Kirstie**: Fab, so how does DataLad help with your work?

**Adina**: DataLad lets me version control and share data of any size, and I use this to attach data in precise versions to code and manuscripts I create.
データ分析を行い、基盤となるデータが変更されると、リポジトリを更新してスクリプトを再計算することができます。
これは、私の結果が複製可能であるかどうかを評価するのに役立ちます。
そしてGitと同じように、それは自分のデータに何をしたかを思い出すための大きな記憶に役立ちます。
Provenance Capture のためのいくつかのクールな機能があります Gitの履歴を調べて特定のデータがどのように作成されたかを調べることができます

**Kirstie**: Cool, so what makes DataLad better suited for what you do than other tools that version control data?

**Adina**: I personally like DataLad, because on top of the functionality that Git and `git-annex` provides, it makes linking and reusing modular parts of my research easy.
解析を行う際には、データ、コード+結果、原稿を別バージョン管理のGitリポジトリとしてGitHubに公開します。
しかし、これらのリポジトリは、私の原稿を読んだ人が、この結果を作成するために行われたすべてのステップをたどることができるように、一緒にリンクされています。
元のデータに戻します 自分の分析をGitHub上で共有し、データ、コード、ソフトウェア環境をまとめて持つことができます。 他の人が私の結果を再現できるようにするために私は非常に強力な特徴を見つけました

**Kirstie**: And as a part of the DataLad team, how do you contribute to the software?

**Adina**: My main motivation is to make the software accessible for users of all backgrounds.
もし科学者がバージョン管理や研究データ管理の正式なトレーニングを受けていない場合、再現性のある作業を行うのは難しい場合があります。
ソフトウェアが使いやすく、よく文書化されていれば、科学者がより良い科学をするのに役立つと私は信じています。
ソフトウェアに関しては、私は、したがって、ヘルプとUX機能に取り組んで、ドキュメンテーションに関わらず、私はスキルレベルや背景から独立したユーザーに適したチュートリアルに取り組んでいます。

**Kirstie**: What is the journey of DataLad, and how did you get to be a part of it?

**Adina**: DataLad was originally created by Michael Hanke and Yarik Halchenko in 2014.
彼らは、ソフトウェアパッケージと同じくらい簡単にデータをインストールし、データの変化を追跡できるツールを持つことを望んでいました。
`git-annex` already existed at this point, but they wanted to build upon it to make it easier to use.
長年にわたり、このツールはデータ共有、リビジョン追跡、再現可能な計算を容易にするための共同バージョン管理とデータ管理ツールとなりました。
私は、臨床心理学の修士課程の学生として、オープンで再現可能な科学に興奮して、2年ほど前に研究室に入室しました。 しかし、完全な初心者のテクノロジーに関して: 私はバージョン管理について聞いたことがありませんでした。 プログラミングの経験もなくデータが動的だという考えは 洞察力に富んでいましたが 私にはまったく新しいものでした 当然、DataLadを使い始めたときは圧倒されました。
当然、DataLadを使い始めたときは圧倒されました。
幸いなことに、始めるのを手伝ってくれる人がたくさんいて、必要な背景情報を教えてくれました。
I know, however, that such a learning environment is not the default, so when I started my PhD, I actually created the resource that I would have needed to get started as a student: [The DataLad Handbook](http://handbook.datalad.org).

**Kirstie**: Thanks a lot for telling us about this tool.
ハンドブックは人々がより多くを見つけることができる場所であるので、彼らが望むならば。

**Adina**: Yes, I would point them to [The DataLad Handbook](http://handbook.datalad.org).
これは、アクセス可能なコード沿いのチュートリアルであることを意図しています。 それはバックグラウンドに依存しない研究者に適しています。 バージョン管理データには、 Linuxクランクやコンピュータサイエンティストになる必要はないと思います。
