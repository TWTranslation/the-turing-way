(rr-open-hardware)=
# Ouvrir le matériel

"Open hardware", ou "open source hardware" [{term}`def<Open Source Hardware>`], fait référence aux spécifications de conception d'un objet physique qui sont sous licence de telle manière que ledit objet peut être étudié, modifié, créé et distribué par n'importe qui. Comme les logiciels libres, le "code source" pour le matériel ouvert - schémas, plans, conceptions de logiques, Des dessins ou des fichiers assistés par ordinateur (CAD) sont disponibles pour modification ou rehaussement par n'importe qui. Les utilisateurs ayant accès aux outils qui peuvent lire et manipuler ces fichiers sources peuvent mettre à jour et améliorer le périphérique physique et le code sous-jacent, et, s'ils le souhaitent, procéder à la partage de ces modifications.

Le code source du matériel ouvert devrait être facilement accessible et ses composants sont de préférence faciles à obtenir. Essentiellement, le matériel ouvert élimine les obstacles routiers communs à la conception et à la fabrication de biens physiques ; il offre au plus grand nombre de personnes la possibilité de construire, de remixer et de partager leurs connaissances en matière de conception et de fonction du matériel.

Il convient de noter que le matériel ouvert ne signifie pas nécessairement gratuit. Les unités peuvent toujours être vendues (par le concepteur original ou par d'autres), mais les utilisateurs *peuvent* les construire à partir de zéro. Qu'ils choisissent ou non d'acheter l'unité, les utilisateurs peuvent toujours avoir une bonne compréhension de la façon dont le matériel fonctionne à partir de la documentation, des conceptions et des modèles disponibles.

(rr-open-hardware-pourquoi)=
## Pourquoi ouvrir le matériel?

Le matériel ouvert permet aux chercheurs de comprendre ce que fait leur équipement, comment il le fait, et de vérifier qu'elle le fait correctement, plutôt que d'avoir à étendre un certain degré de confiance. Être conscient de la façon dont l'équipement qui génère un résultat fonctionne place les chercheurs sur une base plus ferme pour évaluer ces résultats. Le matériel ouvert rend également la recherche plus reproductible car les chercheurs cherchant à vérifier les résultats peuvent faire la même chose.

Parmi les autres avantages du matériel ouvert, citons la protection contre le verrouillage. Les logiciels propriétaires pour les infrastructures de base augmentent le risque de se retrouver bloqués par le fournisseur ou la technologie. Si cela se produit, les chercheurs peuvent être à la merci des hausses de prix des vendeurs et éprouver un manque de flexibilité qu'ils ne peuvent pas facilement et facilement échapper. En outre, si les chercheurs veulent modifier leur équipement pour mieux répondre à leurs besoins. il est beaucoup plus facile de le faire (et peut seulement être légal) dans le cas du matériel open-source.

(rr-open-hardware-elements)=
## Éléments d'un projet de matériel Open Source

Voici quelques fichiers que vous devriez envisager de partager lors de la publication de votre projet de matériel open-source. Vous n'êtes pas tenu de les publier tous, mais plus vous les partagez, plus les bénéfices de la communauté sont importants. Il y a ici beaucoup de passerelles avec des fichiers à inclure dans les projets de logiciels open source.

(rr-open-hardware-elements-overview)=
### Présentation et présentation
Votre projet de matériel open-source devrait inclure une description générale de l'identité et de la finalité du matériel, écrite autant que possible pour un public général. C'est-à-dire, expliquez ce qu'est le projet et ce qu'il est pour vous avant d'entrer dans les détails techniques.

(rr-open-hardware-elements-licence)=
### Une licence
Une licence appropriée sur le projet de matériel ouvert et son contenu donne l'autorisation légale à quiconque de réutiliser, modifier et distribuer les différentes composantes d'un projet selon les conditions énoncées (par exemple, ils doivent reconnaître votre contribution).

(rr-open-hardware-elements-design)=
### Fichiers de design originaux

Ce sont les fichiers sources que vous utiliserez pour apporter des modifications à la conception du matériel. L'acte de partager ces fichiers est la pratique principale du matériel open-source.
- Idéalement, votre projet de matériel open-source serait conçu à l'aide d'une application libre et open-source pour maximiser la capacité des autres à le voir et à l'éditer.

Pour le meilleur ou pour le pire, les fichiers de conception du matériel sont souvent créés dans des programmes propriétaires et stockés dans des formats propriétaires. Il est toujours essentiel de partager ces fichiers de conception originaux; ils constituent le « code source » original pour le matériel. Ce sont les mêmes fichiers dont une personne aura besoin pour apporter des changements à une conception donnée.
- Essayez de faciliter la compréhension de vos fichiers de conception. En particulier, les organiser de manière logique, commenter des aspects complexes, et noter toute procédure de fabrication inhabituelle.
- Des exemples de fichiers originaux de conception comprennent des dessins en 2D et des fichiers de conception assistée par ordinateur (CAD).

(rr-open-hardware-elements-auxiliaire)=
### Fichiers de conception auxiliaire

Au-delà des fichiers de conception originaux, il est souvent utile de partager votre design dans des formats supplémentaires et plus accessibles. Par exemple, les meilleures pratiques d'open-sourcing un design CAO est de partager le design non seulement dans son format de fichier natif, mais aussi dans une gamme de formats interchangeables et exportables qui peuvent être ouverts ou importés par d'autres programmes de CAO.
- Il est également utile de fournir des sorties prêtes à la vue qui peuvent être facilement consultées par les utilisateurs qui souhaitent comprendre (mais pas nécessairement modifier) le design. Une telle sortie pourrait être un PDF d'un schéma de carte de circuit. Ces fichiers de conception auxiliaire permettent d'étudier la conception du matériel, et parfois même le fabriquer, même sans accès à des logiciels propriétaires particuliers. Cependant, notez que les fichiers de conception auxiliaire ne sont jamais recommandés comme substituts aux fichiers de conception originaux.

(rr-open-hardware-elements-drawings)=
### Dessins techniques supplémentaires
Il est utile de fournir tous les dessins techniques supplémentaires dans leurs formats d'origine s'ils sont requis pour la fabrication de l'appareil. Ils peuvent être fournis dans un format lisible comme PDF.

(rr-open-hardware-elements-materials)=
### Bilan de Matériaux

Bien qu'il soit possible de déduire des fichiers de conception quelles parties composent un matériel, il est essentiel de fournir un document séparé. Un document peut être une feuille de calcul (par exemple, CSV, XLS, Google Doc) ou tout simplement un fichier texte avec une partie par ligne. Les éléments utiles à inclure dans la note de matériaux sont les numéros de pièces, les fournisseurs, les coûts et une brève description de chaque partie. Il est facile de dire quel élément de la facture des matériaux correspond à quel composant dans vos fichiers de conception : utilisez des référentiels correspondants aux deux endroits, fournir un diagramme indiquant quelle partie va où, ou expliquer autrement la correspondance.

(rr-open-hardware-elements-software)=
### Logiciel et Firmware

Vous devez partager le code ou le firmware requis pour utiliser votre matériel. Cela permettra à d'autres personnes de l'utiliser avec leur matériel ou de le modifier avec leurs modifications à votre matériel. Documentez le processus requis pour construire votre logiciel, y compris les liens vers toutes les dépendances (par exemple, des bibliothèques tierces ou des outils). Il est également utile de fournir une vue d'ensemble de l'état du logiciel (par exemple, "stable" ou "beta" ou "hack à peine fonctionnel").

(rr-open-hardware-elements-photos)=
### Photos
Les photos aident les gens à comprendre ce qu'est votre projet et comment le mettre en place. Il est bon de publier des photographies à partir de plusieurs points de vue et à différents stades de l'assemblage. Si vous n'avez pas de photos, publier des équivalents 3D de votre design est une bonne alternative. Dans les deux cas, il est bon de fournir des légendes ou du texte qui expliquent ce qui est affiché dans chaque image et pourquoi il est utile.

(rr-open-hardware-elements-instructions)=
### Instructions et autres explications

En plus des fichiers de conception eux-mêmes, il y a une variété d'explications qui sont inestimables pour aider les autres à créer ou modifier votre matériel :
- Réalisation du matériel : Pour aider les autres à créer et modifier votre conception matérielle, vous devez fournir des instructions pour passer de vos fichiers de conception au matériel physique qui fonctionne. Dans le cadre des instructions, il est utile de lier à des fiches de données pour les composants/parties de votre matériel et de lister les outils nécessaires à l'assemblage. Si la conception nécessite des outils spécialisés, dites-leur où les obtenir.
- Utilisation du matériel: Une fois que quelqu'un a fait le matériel, il a besoin de savoir comment l'utiliser. Fournissez des instructions qui expliquent ce qu'il fait, comment le mettre en place et comment interagir avec lui.
- Raison du design : si quelqu'un veut modifier votre conception, il voudra savoir pourquoi il en est ainsi. Expliquez le plan global de la conception du matériel et pourquoi vous avez fait les choix spécifiques.
- Jargon limité : Gardez à l'esprit que ces instructions peuvent être lues par une personne dont l'expertise ou la formation est différente de la vôtre. Dans la mesure du possible, essayez d'écrire à un public général, vérifiez vos instructions pour le jargon de l'industrie, et soyez explicite sur ce que vous supposez que l'utilisateur sait.
- Format: Les instructions peuvent être dans une variété de formats, comme un wiki, un fichier texte, Google Doc, ou PDF. N'oubliez pas cependant que d'autres personnes peuvent vouloir modifier vos instructions lors de la modification de votre conception matérielle, donc il est bon de fournir les fichiers originaux modifiables pour votre documentation, et pas seulement les formats de sortie comme PDF.

(rr-open-hardware-processes)=
## Processus et pratiques matériels Open-Source

(rr-open-hardware-processes-designing)=
### Conception de votre matériel

Si vous envisagez d'ouvrir une source sur un matériel particulier, suivre certaines bonnes pratiques dans sa conception facilitera la création et la modification du matériel :

- Utilisez les outils de conception de logiciels libres et open source (CAD) dans la mesure du possible : si ce n'est pas faisable, essayez d'utiliser des progiciels peu coûteux et/ou largement utilisés.
- Utiliser des composants, des matériaux standards et largement disponibles et processus de production : Essayez d'éviter les pièces qui ne sont pas disponibles pour des clients individuels ou des processus nécessitant des coûts d'installation coûteux.

(rr-open-hardware-processes-hosting)=
### Héberger vos fichiers de design

Le principal moyen de partager vos fichiers est d'utiliser un fichier zip sur votre site Web. Bien que ce soit un bon début, il est difficile pour les autres de suivre vos progrès ou de contribuer à des améliorations. Utiliser un référentiel de code source en ligne (comme GitHub, GitLab, ou NotaBug) peut être un meilleur endroit pour stocker vos projets de matériel open-source.

(rr-open-hardware-processes-distributing)=
### Distribuer du matériel Open-Source

- Fournissez des liens vers la source (fichiers de conception originaux) de votre matériel sur le produit lui-même, son emballage ou sa documentation.
- Il est facile de trouver la source (fichiers de conception originaux) du site Web pour un produit.
- Étiquetez le matériel avec un numéro de version ou une date de sortie afin que les gens puissent faire correspondre l'objet physique avec la version correspondante de ses fichiers de conception.
- En général, indiquer clairement quelles parties d'un produit sont open source (et lesquelles ne le sont pas).
