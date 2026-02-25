(Poca-boletimas-estilo)=

# Newsletter Style Guide

In the previous subchapter, we described the process of drafting, reviewing and publishing _The Turing Way_'s monthly newsletters.

Neste documento, enumerámos algumas orientações para manter a coerência em todos os boletins informativos.

- **File format**: Draft the newsletter in {term}`Markdown`.
- **Filename**: Create a filename with the "newsletter_serial_MMYYYY.md " format, where "serial" should be replaced by the (numerical) serial number of the newsletter, the month should be replaced by the short name of the month and YYYY with the year as a number.
- **File location on _The Turing Way_ GitHub Organisation**: The newsletters are currently stored in the `newsletter` repository `https://github.com/the-turing-way/newsletter`.
  - Esse local também consiste em um arquivo "README.md" que tem uma tabela para todas as newsletters publicadas que são atualizadas após cada versão.
  - This location has a folder called "images" that centrally holds images and links to the corresponding newsletters.
- **Dates**: "DD Month YYYY" format
  - usá-lo consistentemente em todo o documento
  - Para refletir um intervalo, use o formato "de DD a DD Mês YYYY".
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
  - Diferentes secções como sugerido nos boletins informativos são cabeçalhos de segundo nível e as subsecções são cabeçalhos de terceiro nível.
  - Usar letras negritos, itálicos, hiperlinks de textos e citações sempre que aplicável
  - The project name, _The Turing Way_, should be italicised.
  - Use line breaks for each line consistent with _The Turing Way_ writing format.
  - Deixe pelo menos um espaço de linha após cada seção e subseção.
- **Language and tone**: Keep the overall language simple and jargon-free, see [_The Turing Way_ style guide](#ch-style) for reference.
  - O tom deve ser bem-vindo, amistoso e de preferência informal.
    Isto pode ser pessoal do estilo de escrita do autor.
  - Peça que mais de uma pessoa reveja seu rascunho para garantir que seu conteúdo seja fácil de entender e escrito claramente.
  - If using content from a language or culture different from your own, ask people with that language or culture to review your draft to make sure that the content is not misrepresented.
- **Use of emojis**: It is encouraged to use emoji (_show your personality_) 😇, but keep it simple, neutral and positive.
  - Be aware that ambiguous emojis can be misinterpreted by different readers.
  - Em caso de dúvida, peça a alguém que reveja o seu projecto.
- **Use of images**: Only use relevant images linked to the news item in the newsletter.
  - Make sure that the images are available under a CC-BY license or approved to be reused by the owners.
  - Evite usar memes, imagens com conteúdo político ou sexual ou qualquer coisa que não esteja diretamente relacionada à comunidade.
  - When drafting the newsletter in a HackMD, drag-n-drop an image into the editor or copy-paste an image to automatically upload the image to [Imgur](https://en.wikipedia.org/wiki/Imgur).
  - When drafting the newsletter on GitHub, upload the images in the folder `the-turing-way/communications/newsletters/`.
  - The file naming convention for images is `short-name-monthYYYY.png`, where the short-name should be replaced with the identifiable short name of the image, the month should be replaced by the short name of the month and YYYY should be replaced by the year.
  - File extension can be `.jpg`, `.png` or others with compatible image file types.
  - Use {term}`Markdown` syntax to link the images in the newsletter: `![](image/path)`.
  - As suggested in [_The Turing Way_ style guide](https://book.the-turing-way.org/community-handbook/style/style-figures.html), create an alt text for the image: `![Alt: Description of the image - this is not the title but actual explanation of the image](image/path)`
  - Abaixo da imagem, escreva um pequeno título descritivo para a imagem seguida de uma linha vazia.
    Link the title to the source such as a tweet or related event.
  - Ao usar várias imagens como painéis em uma única imagem coletiva, número de cada imagem claramente (isso pode ser feito em qualquer editor de foto ou texto) e fornecer um título numerado para cada imagem.
    See an example [here](https://github.com/the-turing-way/newsletter/blob/main/newsletter_54_May2024.md).
