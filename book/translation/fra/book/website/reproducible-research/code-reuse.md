(rr-code-reuse)=
# Code réutilisable
Votre projet logiciel pourrait aller d'un petit script que vous utilisez pour le traitement des données à un bloc-notes utilisé pour l'analyse des données, ou une bibliothèque logicielle implémentant vos algorithmes. Peu importe la taille ou la taille de votre projet logiciel, il est important de rendre votre code réutilisable.

Différents types de logiciels ont des exigences différentes pour être réutilisables : pour un petit script, avoir suffisamment de documentation peut suffire, tandis que pour une bibliothèque logicielle critique, des tests approfondis peuvent être nécessaires. Au niveau le plus basique, tout ce que vous avez à faire est de mettre votre code en ligne quelque part qui va probablement durer longtemps. Une approche plus élaborée pour rendre votre logiciel de recherche plus réutilisable est en suivant les Principes FAIR pour les Logiciels de Recherche (Principes FAIR4RS) {cite:ps}`ChueHong2021FAIR4RS`.

Lorsque nous parlons de rendre le code réutilisable, il est utile de clarifier ce que nous voulons. Dans la table des définitions de {ref}`pour la reproductibilité<rr-overview-definitions-reproducibility>` nous avons défini la recherche reproductible comme utilisant les mêmes données et le même code. Cependant, lorsque nous parlons de réutilisation du code, cela peut prendre plusieurs formes: nous pouvons vouloir exécuter exactement le même code (pour les langages de programmation compilés, cela pourrait même signifier le même fichier binaire), ou nous pouvons vouloir modifier le code source et l'étendre d'une manière particulière pour répondre à nos besoins. Freire et Chirigati {cite:ps}`Freire2018Reproduccibility` fournissent un cadre de différents niveaux de reproductibilité, selon ce qui peut être modifié. Ils définissent les niveaux suivants de reproductibilité : répétable, réexécutable, portable, extensible et modifiable.

Nous pouvons cartographier les définitions de reproductiblement dans le cadre Freire comme suit:

| Freire framework | Définitions de reproductiblement                                          |
| ---------------- | ------------------------------------------------------------------------- |
| Répétitif        | Reproductible (mêmes données, même analyse)                               |
| Réexécutable     | Robuste & Réplique (même code, données / analyse / paramètres différents) |
| Portable         | *Non pris en compte* (même code/données, environnement différent)         |
| Extensible       | (partiellement) Généralisable                                             |
| Modifiable       | (partiellement) Généralisable                                             |

La portabilité n'était pas envisagée précédemment, mais pour les logiciels un environnement différent (tel que le matériel différent, ou même une nouvelle installation sur un matériel comparable) peut affecter la capacité du logiciel à fonctionner (par exemple, cela peut affecter les dépendances).

Aussi, généralisable encapsule deux concepts : extensible (la capacité à s'intégrer à d'autres logiciels) et modifiable (la capacité de changer une partie de l'implémentation pour étendre sa fonctionnalité).

Dans le reste de ce chapitre, nous fournissons une liste de recommandations que vous pouvez suivre pour vous assurer que votre code est réutilisable.
