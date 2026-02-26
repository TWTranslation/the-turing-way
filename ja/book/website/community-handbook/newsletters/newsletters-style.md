(ch-newsletters-style)=

# Newsletter Style Guide

In the previous subchapter, we described the process of drafting, reviewing and publishing _The Turing Way_'s monthly newsletters.

このドキュメントでは、すべてのニュースレターの一貫性を維持するためのいくつかのガイドラインを列挙しています。

- **File format**: Draft the newsletter in {term}`Markdown`.
- **Filename**: Create a filename with the "newsletter_serial_MMYYYY.md " format, where "serial" should be replaced by the (numerical) serial number of the newsletter, the month should be replaced by the short name of the month and YYYY with the year as a number.
- **File location on _The Turing Way_ GitHub Organisation**: The newsletters are currently stored in the `newsletter` repository `https://github.com/the-turing-way/newsletter`.
  - この場所はまた、各リリース後に更新されるすべての公開されたニュースレターの表を持つ「README.md」ファイルで構成されています。
  - This location has a folder called "images" that centrally holds images and links to the corresponding newsletters.
- **Dates**: "DD Month YYYY" format
  - 文書全体で一貫して使用してください
  - 範囲を反映するには、"DD Month YYYY" フォーマットを使用します。
  - Even if the sentences have reference to a day as in "yesterday", "today" or "tomorrow", provide the exact date inside parenthesis so that it still makes sense if someone reads a newsletter in the future.
- **Time**: Use time in [Greenwich Mean Time](https://greenwichmeantime.com/what-is-gmt/) (GMT) or [British Summer Time](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST), followed by a link from [arewemeetingyet.com](https://arewemeetingyet.com/#form) to check the time in relative time zones.
- **Links**: Use the Markdown formatting for link like this, `[text that needs to be linked](full HTTP link)`.
  - Provide links wherever useful, for example, [Framapad for Collaboration Café](https://annuel2.framapad.org/p/ttw-collaboration-cafe), [GitHub issue](https://github.com/the-turing-way/the-turing-way/issues), [registration pages](https://www.eventbrite.co.uk/) and [see details](https://github.com/the-turing-way/the-turing-way).
  - Create links for email addresses using this {term}`Markdown` syntax - `[real-email-address](mailto:real-email-address)`.
  - [Too many links](https://intelligentcontacts.com/7-tips-to-keep-your-emails-out-of-the-spam-filter/) can trigger the spam filter on a recipient's inbox. try to keep them to a mimumum if you can.
- **Quoting others**: Use greater than (>) symbol followed by a space before the quoted sentence. For example:
  `> This is my legendary quote.` will appear as:
  > This is my legendary quote.
- **Header and styling**: The newsletter title is the top header.
  - ニュースレターで示唆されているように、異なるセクションは2番目のレベルのヘッダーであり、サブセクションは3番目のレベルのヘッダーです。
  - 必要に応じて太字、斜体、ハイパーリンクされたテキストや引用符を使用してください
  - The project name, _The Turing Way_, should be italicised.
  - Use line breaks for each line consistent with _The Turing Way_ writing format.
  - 各セクションとサブセクションの後に少なくとも1つの行スペースを残します。
- **Language and tone**: Keep the overall language simple and jargon-free, see [_The Turing Way_ style guide](#ch-style) for reference.
  - トーンは歓迎する必要があります, フレンドリーで、好ましくは非公式.
    これは著者の執筆スタイルに個人的である場合もある。
  - 複数の人にあなたのドラフトを確認して、その内容がわかりやすく、明確に書かれていることを確認してもらいます。
  - If using content from a language or culture different from your own, ask people with that language or culture to review your draft to make sure that the content is not misrepresented.
- **Use of emojis**: It is encouraged to use emoji (_show your personality_) 😇, but keep it simple, neutral and positive.
  - Be aware that ambiguous emojis can be misinterpreted by different readers.
  - 間違いがある場合は、下書きを確認するよう誰かに依頼してください。
- **Use of images**: Only use relevant images linked to the news item in the newsletter.
  - Make sure that the images are available under a CC-BY license or approved to be reused by the owners.
  - ミーム、政治的または性的なinnuendoの画像、またはコミュニティに直接関係のないものを使用しないでください。
  - When drafting the newsletter in a HackMD, drag-n-drop an image into the editor or copy-paste an image to automatically upload the image to [Imgur](https://en.wikipedia.org/wiki/Imgur).
  - When drafting the newsletter on GitHub, upload the images in the folder `the-turing-way/communications/newsletters/`.
  - The file naming convention for images is `short-name-monthYYYY.png`, where the short-name should be replaced with the identifiable short name of the image, the month should be replaced by the short name of the month and YYYY should be replaced by the year.
  - File extension can be `.jpg`, `.png` or others with compatible image file types.
  - Use {term}`Markdown` syntax to link the images in the newsletter: `![](image/path)`.
  - As suggested in [_The Turing Way_ style guide](https://book.the-turing-way.org/community-handbook/style/style-figures.html), create an alt text for the image: `![Alt: Description of the image - this is not the title but actual explanation of the image](image/path)`
  - 画像の下に、画像の短い説明タイトルと空行を書きます。
    Link the title to the source such as a tweet or related event.
  - 複数の画像を1つの集合画像のパネルとして使用する場合 各画像をはっきりと番号付けします(写真やテキストエディタで行うことができます)。また、各画像に番号付けされたタイトルを指定します。
    See an example [here](https://github.com/the-turing-way/newsletter/blob/main/newsletter_54_May2024.md).
