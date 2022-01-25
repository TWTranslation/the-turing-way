(style e-newsletters) =
# Guide de style de la newsletter

Dans le sous-chapitre précédent, nous avons décrit le processus de rédaction, de révision et de publication des bulletins d'information mensuels de _The Turing Way_.

Dans ce document, nous avons énuméré quelques lignes directrices pour maintenir la cohérence dans tous les bulletins d'information.

- **Format de fichier**: Brouillon de la newsletter dans [Markdown](https://en.wikipedia.org/wiki/Markdown)
- **Nom de fichier**: Créez un nom de fichier avec la "newsletter_serial_MonthYYYYYY. d " format, où "série" doit être remplacé par le numéro de série (en numérique) de la newsletter, le mois doit être remplacé par le nom abrégé du mois et AAAA par l'année en numérique.
- **Emplacement du fichier sur _The Turing Way_ GitHub**: Les newsletters sont actuellement stockées dans le chemin "the-turing-way/communications/newsletters/".
    - Cet emplacement se compose également d'un fichier "README.md" qui a un tableau pour toutes les lettres d'information publiées qui sont mises à jour après chaque version.
    - Cet emplacement a un dossier appelé "images" qui contient centralement toutes les images et liés aux lettres d'information correspondantes.
- **Dates**: format "JJ Mois AAA"
    - utilisez-le de manière cohérente dans le document entier
    - Pour refléter une gamme, utilisez le format "de JJ à JJ Mois AAA".
    - Même si les phrases ont référence à un jour dans "hier", "aujourd'hui" ou "demain", fournir la date exacte entre parenthèses afin que cela ait toujours un sens si quelqu'un lit une newsletter dans le futur.
- **Temps**: Utiliser temps en [Temps moyen de Greenwich](https://greenwichmeantime.com/what-is-gmt/) (GMT) ou [Heure d'été britannique](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST), suivi d'un lien de
arewemeetingyet.</li> 
  
  - **Liens**: Utilisez le formatage Markdown pour un lien comme celui-ci, `[texte qui doit être lié](lien HTTP complet)` 
      - Fournir des liens partout où cela est utile, par exemple, [HackMD pour le Café-Collaboration](https://hackmd.io/@KirstieJane/CollabCafe), [Problème GitHub](https://github.com/alan-turing-institute/the-turing-way/issues), [pages d'inscription](https://www.eventbrite.co.uk/) et [voir détails](https://github.com/alan-turing-institute/the-turing-way).
    - Créer un lien pour les identifiants de courriel en utilisant cette syntaxe Markdown - `[real-email-id](mailto:real email-id)`
- **Citation des autres**: Utilisez un symbole plus petit que (>) suivi d'un espace avant la phrase citée. Par exemple : `> C'est ma citation légendaire.` apparaîtra en tant que > C'est ma citation légendaire.
- **En-tête et style**: Le titre de la newsletter est l'en-tête supérieur. 
      - Les différentes sections telles que suggérées dans les newsletters sont les en-têtes de deuxième niveau et les sous-sections sont des en-têtes de troisième niveau.
    - Utilisez des lettres en gras, en italique, des textes hyperliés et des citations, le cas échéant
    - Le nom du projet, _The Turing Way_, doit être en italique.
    - Utilisez des sauts de ligne pour chaque ligne compatible avec le format d'écriture _The Turing Way_.
    - Laissez au moins un espace de ligne après chaque section et sous-section.
- **Langue et ton**: Gardez le langage global simple et sans jargon, voir [_Le guide de style_ de Turing Way](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md#style-guide) pour référence. 
      - Le ton devrait être accueillant, sympathique et de préférence informel. Cela peut être personnel au style d'écriture de l'auteur.
    - Demandez à plus d'une personne d'examiner votre brouillon pour s'assurer que son contenu est facile à comprendre et à écrire clairement.
    - Si vous utilisez du contenu d'une langue ou d'une culture différente de la vôtre, demander aux personnes qui ont cette langue ou cette culture de revoir votre projet pour s'assurer que le contenu ne soit pas mal représenté.
- **Utilisation des émoticônes**: Il est recommandé d'utiliser des émojis (*montrer votre personnalité*) 😇, mais garder simple, neutre et positif. 
      - Sachez que ces émoticônes ambiguës peuvent être mal interprétées par différents lecteurs.
    - En cas de doute, demandez à quelqu'un de revoir votre brouillon.
- **Utilisation des images**: N'utiliser que des images pertinentes liées à l'élément d'actualité dans la newsletter. 
      - Assurez-vous que les images sont disponibles sous licence CC-BY ou approuvées pour être réutilisées par les propriétaires.
    - Évitez d'utiliser des memes, des images avec innuendo politique ou sexuel, ou tout ce qui n'est pas directement lié à la communauté.
    - Lors de la rédaction de la newsletter dans un HackMD, glisser-déposer une image dans l'éditeur ou copier-coller une image pour télécharger automatiquement l'image sur [Imgur](https://en.wikipedia.org/wiki/Imgur).
    - Lors de la rédaction de la newsletter sur le GitHub, téléchargez les images dans le dossier "a-tourner/communications/newsletters/".
    - La convention de nommage des fichiers pour les images est "nom-court chaque moisYYYYY. ng", où le nom court doit être remplacé par le nom abrégé identifiable de l'image, le mois doit être remplacé par le nom abrégé du mois et AAAA doit être remplacée par l'année.
    - L'extension de fichier peut être '.jpg', '.png' ou autre avec le type d'image compatible.
    - Utilisez la syntaxe Markdown pour lier les images dans la newsletter : `![](image/chemin)`.
    - Comme suggéré dans le guide de style [_The Turing Way_](https://the-turing-way.netlify.app/community-handbook/style/style-figures.html), créer un texte alt pour l'image: `! Alt : Description de l'image - ce n'est pas le titre mais l'explication réelle de l'image](image/chemin)`
    - Sous l'image, écrivez un titre descriptif court pour l'image suivi d'une ligne vide. Lier le titre à la source comme un tweet ou un événement connexe.
    - Lors de l'utilisation de plusieurs images en tant que panneaux dans une image collective, numéroter clairement chaque image (cela peut être fait dans n'importe quel éditeur de photo) et fournir un titre numéroté pour chaque image. Voir un exemple [ici](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/newsletter_14_May2020.md#tweets-from-the-community).</ul>
