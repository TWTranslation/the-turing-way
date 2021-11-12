# ニュースレター作成のプロセス

このドキュメントでは、ニュースレターの作成、レビュー、公開に _The Turing Way_ で使用するプロセスの概要を説明します。 _The Turing way_のために書かれていますが、これらのステップは、任意のプロジェクトのニュースレターを文書化するために適応させることができます。

これらの推奨事項をガイドとして使用することをお勧めします。 これらは固定された規則のセットまたは人が時事通信を作成するべきである"唯一の" 方法とみなされてはいけない。 個々の著者として、あなたの人格があなたの時事通信の草稿に示すことを許可するべきである。 結局のところ、これらのニュースレターは誰かの個人的なメールボックスに届き、ほとんどの場合、彼らはあなた(またはあなたのコミュニティ)を知っています。

## 製図のためのステップ _The Turing Way_ newsletters

### GitHubの課題を作成してアイテムを回収する

あなたと他のコミュニティメンバーがコメントとしてニュース項目を提案できる新しいGitHub課題を作成します。 例えば、 [この課題](https://github.com/alan-turing-institute/the-turing-way/issues/1037)で 複数のメンバーは、2020年6月のこの場合には、次のニュースレターに含めるニュース項目を提案することができます。 このようなGitHubの問題は、今回のニュースレターで、来月から読者やコミュニティメンバーの貢献を募集して公開することができます。

### 下書きを開始

ドラフトを開始するにはいくつかの方法があります:

1. _The Turing Way_ [GitHub リポジトリ](https://github.com/alan-turing-institute/the-turing-way/) の新しいブランチを適切なディレクトリ内に作成する ( {ref}`newsletter's style guide の次の章で説明する <ch-newsletters-style>`).

このGitHubブランチでローカルまたはオンラインでプルリクエスト(PR)を使用して作業できます。 オンラインで作業する場合は、PR用のドラフトモードをオンにするか、タイトルに「[WIP]」(作業中)を追加してください。

2. GitHubブランチにそれらを転送する前に、他の人と共同でドラフトを書くために、共有HackMDに最初のドラフトを作成します。

HackMDの例では、Malvikaが現在最初のドラフトを作成しています。https://hackmd.io/@malvikasharan/tw-newsletter。

### 箇条書きとしてニュースレターのアイテムを収集する

現在公開している内容に基づき、以下のトピックについてリストされているリソースから情報を収集します。

1. **コミュニティミーティング**: コラボレーションカフェ、ブックダッシュ、ワークショップなどの今後のイベントについては、 [コミュニティカレンダー](https://calendar.google.com/calendar/embed?src=theturingway%40gmail.com&ctz=Europe%2FLondon) を確認してください。

2. **News from the community**: check Twitter for updates on the [official account](https://twitter.com/turingway) and the [#TuringWay Hashtag](https://twitter.com/hashtag/TuringWay?src=hashtag_click), see the Github repository for [issues](https://github.com/alan-turing-institute/the-turing-way/issues) for ongoing discussions, recently [merged PRs](https://github.com/alan-turing-institute/the-turing-way/pulls?q=is%3Apr+is%3Aclosed+sort%3Aupdated-desc) and new chapters. 誰かがニュースレターに何かを追加したい場合は、 [Slackチャンネル](https://theturingway.slack.com) で確認することもできます。 この部分では、先月に設立または達成されたプロジェクトの重要なマイルストーンを強調します。

4. **コミュニティに関連するリソース**: コミュニティメンバーからの最近の出版物については、Twitterやオンライン投稿を確認してください。 トレーニングやスキル構築のためのリソースまたは他の人に役立つ可能性があり、ネットワークに掲載されているブログ記事や記事などの他の資料.

5. **ヒント & 新しい貢献者のためのコツ**: プロジェクト内のどんなリソースでも、新しいメンバーが関与する方法を学ぶことができます コントリビューターとして開始するパスを特定し、既存のメンバー、コントリビューターのプロフィールやその他のコミュニティ関連の側面のインパクトストーリーなど、関連性のあるコンテンツを見つけます。

6. **謝辞とお祝いのセクション**: プロジェクトや他のメンバーを何らかの方法で助けてくれたメンバーに叫ばせる場所です。 個人的なマイルストーンを祝い、コミュニティメンバーからの関連する発表を強調します。 また、コミュニティからのツイートを共有したり、誰かが _The Turing Way_について話した最近のミーティングからの投稿など、他のオンライン上のやり取りを言及する場でもあります。

ニュースレターは、貢献者と新規メンバーに焦点を当て、 _The Turing Way_ の中核メンバーからの注目すべきコンテンツのみを強調表示する必要があります。

### ニュース項目に関連付けられている画像を収集する

コミュニティの {ref}`スタイルガイド<ch-style>` および {ref}`スタイルガイド の画像を使用するための<ch-newsletters-style>` いくつかの画像を収集します(1セクションあたり最大2枚)。 これらの画像が(CC-BYのような)無料ライセンスで利用可能であることを確認してください。 彼らの情報源のリンクで収集され、スタイルガイドで示唆されているように明確に名前。

ツイッターの言及に関しては、スクリーンショットの一定数はありませんが、4〜6のツイートは、ニュースレターではあまり混雑していません。 1つの画像(ニュースレターのスタイルガイドで説明)でまとめることができます。

### 各ニュース項目について書く

各ニュース項目に対して収集された箇条書きに基づいています 次のサブチャプターで説明されている言語と書式の推奨事項を使用して、1~2個の小さな段落を作成します。

便利な場合はリンクを提供する ニュース項目に関連付けられている可能性のあるコミュニティメンバーに公正なクレジットを与え、文章で段落を終了し、詳細情報へのリンクを付けます。

### 下書きの校正中

下書きを共有する前に、文法とタイポの校正を行う必要があります。 An online app like [Ginger Grammar Checker](https://www.gingersoftware.com/grammarcheck), [Grammarly](https://app.grammarly.com) free version, [GrammarCheck](https://www.grammarcheck.net/editor/) or [Reverso Speller](https://www.reverso.net/spell-checker/english-spelling-grammar/) can help correct any grammatical and spelling errors.

ドラフトに記載されているリンクが壊れていないことを確認するには、再確認する必要があります。 [W3C リンクチェッカー](https://validator.w3.org/checklink) や [Dr. Link Check](https://www.drlinkcheck.com/) の無料版などのオンラインツールを使用できます。

可能であれば、1-2人のメンバーによってレビューされたドラフトを取得します。

### オンラインリポジトリで下書きを更新しています

PRを作成する前に、ローカルブランチでニュースレターをドラフトした場合 ニュースレターに記載されているすべての画像を適切なファイルの場所に追加してください: `The turing-way/communications/newsletters/image`. 画像の使用に関する詳細については、次のサブチャプター、 {ref}`スタイルガイド<ch-newsletters-style>` で議論されています。

GitHub で PR を使用している場合は、すべての画像をアップロードし、それらが正しくリンクされているかどうかを確認します。

HackMDでニュースレターのドラフトを作成した場合は、コンテンツをコピー&ペーストしてGitHubのPRを作成/更新し、リンクされたすべての画像をアップロードします。

準備ができたら、PRを「レビューの準備ができました」としてマークし、投稿者をタグ付けします。 できれば草案に記載されている人々があなたの文章を確認し承認できるように

### プロセスを確認する

ニュースレターの査読者は、言語、関連性、タイポス、正確性(事実チェック)、画像の使用の適切性および全体的なトーンについて、テキストを確認することができます。

査読者はニュースレターのドラフトに建設的なフィードバックを提供し、ハイライトしたい項目を追加できます。 草案が公開される準備ができたら、適切な変更を提案し、PRを承認します。

審査プロセスの後、各審査者の名前は著者が自分の仕事を認めるために特別なメンションセクションの下に追加することができます。

### 公開プロセス

現在、 [TinyLetter](https://tinyletter.com/) を使用してニュースレターを公開しています。 TinyLetter は [MailChimp](https://mailchimp.com/)の子会社です 簡素化されたインターフェースを提供しますメールマガジンを設定し、購読者と共有するための無料サービスです

ニュースレターのドラフトをオンラインで公開し、購読しているメンバーにメールで送信する手順は次のとおりです。

-
ブラウザーリングを使用して、ニュースレタードラフトのMarkdownコンテンツをHTMLに変換します。 om [](https://www.browserling.com/tools/markdown-to-html) by copy-pasting the Markdown content to the text box in the web application and press "Convert to HTML button".</li> 
  
  - 承認された場合は、TinyLetterアカウントにログインし、「ニュースレターを書く」ボタンをクリックしてください。
- ブラウザーで生成されたドラフトのHTMLコンテンツを貼り付けます。
- 件名が正しいテキストボックスに書き込まれていることを確認します。
- 「プレビュー」をクリックして、メッセージのレンダリングされたバージョンがどのように見えるかを確認します。
- プレビュー版をメールまたは _チューリング方法_ (theturingway@gmail.com)に送信して、すべてが正常に見えるかどうかを確認します。
- フォーマットと内容を確認したら、「すべてに送信」をクリックして登録メンバーにニュースレターが送信されます。
- [オンラインニュースレター](https://tinyletter.com/TuringWay/) はリンクで共有可能で、購読していないメンバーも読むことができます。</ul> 

*(ニュースレター [はこちら](https://www.sitepoint.com/how-start-a-newsletter-in-minutes-with-tinyletter/)をご覧ください。*

**それは出版された、次は何ですか?**

- 新たに公開されたニュースレターの詳細を記載した [README.md ファイル](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/README.md) のインデックス テーブルを更新します。
- [@turingway](https://twitter.com/turingway) からツイートします。
- [Gitter](https://gitter.im/alan-turing-institute/the-turing-way) と [Slack](https://theturingway.slack.com) チャンネルで通知を送信します。
- お祝いの踊りをしよう! (これは必須です! 💃)
