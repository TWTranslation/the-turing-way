(ch-newsletters-style)=
# ニュースレターのスタイルガイド

前の章では、ドラフト、レビュー、出版のプロセスを説明しました _チューリングウェイ_の月刊ニュースレター。

このドキュメントでは、すべてのニュースレターの一貫性を維持するためのいくつかのガイドラインを列挙しています。

- **ファイル形式**: [Markdown](https://en.wikipedia.org/wiki/Markdown) でニュースレターを抽出する
- **Filename**: "newsletter_serial_MonthYYYY. d "serial" をニュースレターのシリアル番号(数値)に置き換える必要がある 月は月の短い名前とYYYYの年を数値で置き換える必要があります。
- **ファイルの場所 _The Turing Way_ GitHub**: ニュースレターは現在"the-turing-way/communications/newsletters/"のパスに保存されています。
    - この場所はまた、各リリース後に更新されるすべての公開されたニュースレターの表を持つ「README.md」ファイルで構成されています。
    - この場所には、中央にすべての画像を保持し、対応するニュースレターにリンクされた「images」というフォルダがあります。
- **日付**: "DD Month YYYY" format
    - 文書全体で一貫して使用してください
    - 範囲を反映するには、"DD Month YYYY" フォーマットを使用します。
    - 文章が「昨日」、「今日」、「明日」の日を参照している場合でも。 カッコ内の正確な日付を入力してください誰かが将来ニュースレターを読んでも意味があります
- **Time**: Use time in [Greenwich Mean Time](https://greenwichmeantime.com/what-is-gmt/) (GMT) or [British Summer Time](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST), followed by a link from [arewemeetingyet.com](https://arewemeetingyet.com/#form) to check the time in relative time zones
- **リンク**: このようなリンクにはMarkdown形式を使用します。 `[リンクが必要なテキスト](full HTTP link)`
    - Provide links wherever useful, for example, [HackMD for Collaboration Café](https://hackmd.io/@KirstieJane/CollabCafe), [GitHub issue](https://github.com/alan-turing-institute/the-turing-way/issues), [registration pages](https://www.eventbrite.co.uk/) and [see details](https://github.com/alan-turing-institute/the-turing-way).
    - マークダウン構文を使用してメールIDのリンクを作成する - `[real-email-id](mailto:real-email-id)`
- **他人を引用する**: (>) より小さい記号を使用し、引用された文の前にスペースを続けてください。 例: `> これは私の伝説の引用符です。` は次のように表示されます: > これは私の伝説の引用符です。
- **ヘッダーとスタイル**: ニュースレターのタイトルがトップヘッダーです。
    - ニュースレターで示唆されているように、異なるセクションは2番目のレベルのヘッダーであり、サブセクションは3番目のレベルのヘッダーです。
    - 必要に応じて太字、斜体、ハイパーリンクされたテキストや引用符を使用してください
    - プロジェクト名、 _The Turing Way_, should be italicised.
    - _チューリング方法_ の書式と一致する行ごとに改行を使用します。
    - 各セクションとサブセクションの後に少なくとも1つの行スペースを残します。
- **言語とトーン**: 全体的な言語をシンプルにしておきましょう。 [_チューリングウェイ_ スタイルガイド](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md#style-guide) を参照してください。
    - トーンは歓迎する必要があります, フレンドリーで、好ましくは非公式. これは著者の執筆スタイルに個人的である場合もある。
    - 複数の人にあなたのドラフトを確認して、その内容がわかりやすく、明確に書かれていることを確認してもらいます。
    - 自分と異なる言語や文化のコンテンツを使用する場合 その言語または文化を持つ人々に、内容が誤って表現されていないことを確認するために、下書きを確認するよう依頼してください。
- **絵文字の使用**: 絵文字を使用することをお勧めします (*あなたの性格を表示*) 😇, でもシンプルで中立的でポジティブです
    - あいまいな絵文字は、異なる読者によって誤解される可能性があることに注意してください。
    - 間違いがある場合は、下書きを確認するよう誰かに依頼してください。
- **画像の使用**: ニュースレターのニュース項目にリンクされている関連画像のみを使用します。
    - CC-BY ライセンスの下で画像が利用可能であるか、または所有者が再利用するために承認されていることを確認してください。
    - ミーム、政治的または性的なinnuendoの画像、またはコミュニティに直接関係のないものを使用しないでください。
    - HackMDでニュースレターを作成するとき [Imgur](https://en.wikipedia.org/wiki/Imgur)に画像を自動的にアップロードするには、画像をエディタにドラッグ&ドロップするか、画像をコピー&ペーストします。
    - GitHub でニュースレターを起草する際は、「the-turing-way/communications/newsletters/」フォルダに画像をアップロードしてください。
    - 画像のファイル命名規則は "short-name-monthYYYY. ng", short-name を画像の識別可能な短い名前に置き換える必要があります 月は月の短い名前に置き換えられ、YYYYは年に置き換えられます。
    - ファイル拡張子は '.jpg'、'.png'など、互換性のある画像ファイルタイプです。
    - `![](image/path)` . マークダウン構文を使ってニュースレターの画像をリンクしましょう。
    - As suggested in [_The Turing Way_ style guide](https://the-turing-way.netlify.app/community-handbook/style/style-figures.html), create an alt text for the image: `![Alt: Description of the image - this is not the title but actual explanation of the image](image/path)`
    - 画像の下に、画像の短い説明タイトルと空行を書きます。 ツイートや関連するイベントなどのソースにタイトルをリンクします。
    - 複数の画像を1つの集合画像のパネルとして使用する場合 各画像をはっきりと番号付けします(写真やテキストエディタで行うことができます)。また、各画像に番号付けされたタイトルを指定します。 [の例](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/newsletter_14_May2020.md#tweets-from-the-community) を参照してください。
