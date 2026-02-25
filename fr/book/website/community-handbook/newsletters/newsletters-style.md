(style e-newsletters) =

# Newsletter Style Guide

In the previous subchapter, we described the process of drafting, reviewing and publishing _The Turing Way_'s monthly newsletters.

Dans ce document, nous avons énuméré quelques lignes directrices pour maintenir la cohérence dans tous les bulletins d'information.

- **File format**: Draft the newsletter in {term}`Markdown`.
- **Filename**: Create a filename with the "newsletter_serial_MMYYYY.md " format, where "serial" should be replaced by the (numerical) serial number of the newsletter, the month should be replaced by the short name of the month and YYYY with the year as a number.
- **File location on _The Turing Way_ GitHub Organisation**: The newsletters are currently stored in the `newsletter` repository `https://github.com/the-turing-way/newsletter`.
  - Cet emplacement se compose également d'un fichier "README.md" qui a un tableau pour toutes les lettres d'information publiées qui sont mises à jour après chaque version.
  - This location has a folder called "images" that centrally holds images and links to the corresponding newsletters.
- **Dates**: "DD Month YYYY" format
  - utilisez-le de manière cohérente dans le document entier
  - Pour refléter une gamme, utilisez le format "de JJ à JJ Mois AAA".
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
  - Les différentes sections telles que suggérées dans les newsletters sont les en-têtes de deuxième niveau et les sous-sections sont des en-têtes de troisième niveau.
  - Utilisez des lettres en gras, en italique, des textes hyperliés et des citations, le cas échéant
  - The project name, _The Turing Way_, should be italicised.
  - Use line breaks for each line consistent with _The Turing Way_ writing format.
  - Laissez au moins un espace de ligne après chaque section et sous-section.
- **Language and tone**: Keep the overall language simple and jargon-free, see [_The Turing Way_ style guide](#ch-style) for reference.
  - Le ton devrait être accueillant, sympathique et de préférence informel.
    Cela peut être personnel au style d'écriture de l'auteur.
  - Demandez à plus d'une personne d'examiner votre brouillon pour s'assurer que son contenu est facile à comprendre et à écrire clairement.
  - If using content from a language or culture different from your own, ask people with that language or culture to review your draft to make sure that the content is not misrepresented.
- **Use of emojis**: It is encouraged to use emoji (_show your personality_) 😇, but keep it simple, neutral and positive.
  - Be aware that ambiguous emojis can be misinterpreted by different readers.
  - En cas de doute, demandez à quelqu'un de revoir votre brouillon.
- **Use of images**: Only use relevant images linked to the news item in the newsletter.
  - Make sure that the images are available under a CC-BY license or approved to be reused by the owners.
  - Évitez d'utiliser des memes, des images avec innuendo politique ou sexuel, ou tout ce qui n'est pas directement lié à la communauté.
  - When drafting the newsletter in a HackMD, drag-n-drop an image into the editor or copy-paste an image to automatically upload the image to [Imgur](https://en.wikipedia.org/wiki/Imgur).
  - When drafting the newsletter on GitHub, upload the images in the folder `the-turing-way/communications/newsletters/`.
  - The file naming convention for images is `short-name-monthYYYY.png`, where the short-name should be replaced with the identifiable short name of the image, the month should be replaced by the short name of the month and YYYY should be replaced by the year.
  - File extension can be `.jpg`, `.png` or others with compatible image file types.
  - Use {term}`Markdown` syntax to link the images in the newsletter: `![](image/path)`.
  - As suggested in [_The Turing Way_ style guide](https://book.the-turing-way.org/community-handbook/style/style-figures.html), create an alt text for the image: `![Alt: Description of the image - this is not the title but actual explanation of the image](image/path)`
  - Sous l'image, écrivez un titre descriptif court pour l'image suivi d'une ligne vide.
    Link the title to the source such as a tweet or related event.
  - Lors de l'utilisation de plusieurs images en tant que panneaux dans une image collective, numéroter clairement chaque image (cela peut être fait dans n'importe quel éditeur de photo) et fournir un titre numéroté pour chaque image.
    See an example [here](https://github.com/the-turing-way/newsletter/blob/main/newsletter_54_May2024.md).
