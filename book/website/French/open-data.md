(rr-open-data)=
# Données ouvertes

Le monde est en train d'assister à une transformation mondiale significative, facilitée par la technologie et les médias numériques, alimentée par les données et l'information. Cette transformation a un énorme potentiel pour favoriser une recherche plus transparente, plus responsable, plus efficiente, plus réceptive et plus efficace. Seule une très faible proportion des données originales est publiée dans les revues conventionnelles. Malgré les politiques existantes sur l'archivage des données, dans la pratique actuelle, les données sont principalement stockées dans des fichiers privés, pas dans les dépôts institutionnels sécurisés, et en fait sont perdus pour le public (et souvent même pour le chercheur qui a généré les données).

Ce manque de partage de données est un obstacle à la recherche internationale (universitaire, gouvernementale ou commerciale) pour deux raisons principales:

1. Il est généralement difficile ou impossible de reproduire une étude sans les données originales.
2. Les données ne peuvent être réutilisées ou incorporées à de nouveaux travaux par d'autres chercheurs s'ils ne peuvent y avoir accès.

En conséquence, il existe une révolution mondiale des données qui vise à faire progresser la collaboration et la création et l’expansion de programmes de recherche efficaces et efficients. Les données ouvertes [{term}`def<Open data>`] sont cruciales pour atteindre ces objectifs. Les données ouvertes sont librement disponibles sur Internet. Tout utilisateur est autorisé à télécharger, copier, analyser, retraiter et réutiliser à d'autres fins avec un minimum d'obstacles financiers, juridiques et techniques.

Cela représente un réel changement dans le mode de fonctionnement de la recherche. Les bailleurs de fonds commencent à exiger des chercheurs qu'ils mettent leurs données à la disposition des chercheurs et soumettent des plans de gestion des données {ref}`Les plans de gestion des données<rr-rdm-dmp>` dans le cadre des propositions de projets. Pour le moment, toute personne souhaitant utiliser les données d'un chercheur doit souvent contacter ce chercheur et lui faire une demande. "Ouvrir par défaut" corrige cela avec une présomption de publication pour tous. Si l'accès aux données est restreint, par exemple, pour des raisons de sécurité, il convient de préciser la justification de cette restriction. Le libre accès aux données et leur utilisation ultérieure sont d'une grande valeur pour la société et l'économie. Par conséquent, ces données devraient être ouvertes par défaut et seulement aussi fermées que nécessaire.

Vous pouvez trouver plus d'informations sur les étapes pratiques pour rendre vos données disponibles dans la section décrivant {ref}`Étapes pour partager vos données <rr-rdm-sharing-steps>` dans le sous-chapitre : {ref}`Partage et Archivage des données<rr-rdm-sharing>`.

(rr-open-data-barriers)=
## Barrières vers le partage de données
De nombreux universitaires éprouvent des difficultés à partager des données. Enquêtes récentes {cite:t}`Stuart2018sharing` effectuées parmi les chercheurs énumère les raisons suivantes :

- L'organisation des données d'une manière présentable et utile est un défi (mentionné par 46%)
- Les chercheurs ne sont pas sûrs des droits d'auteur et des licences (mentionnés par 37%)
- Les chercheurs ne savent pas quel dépôt utiliser pour différents types de données (augmenté de 33%)

Ce sont là des défis culturels qui pourraient être abordés dans la mise en œuvre de nouvelles pratiques. Cependant, il existe aussi des raisons juridiques, éthiques ou contractuelles qui empêchent parfois de rendre les données publiques dans leur intégralité ou même en partie. Ci-dessous, nous discutons de certaines raisons expliquant pourquoi cela peut être le cas.

```{figure} ../../figures/data-privacy.jpg
---
hauteur : 500px
nom : data-privacy
alt: Une image détaillant pourquoi les données privées doivent être utilisées. Une personne se tient à côté d'un puits avec des 'données privées' écrites dessus et un cadenas autour de lui. Il est noir et blanc et bleu. Le texte énumère que "les gens méritent - dignité, agence, vie privée, droits, consentement confirmé".
---
_The Turing Way_ project illustration by Scriberia. Version originale sur Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barriers-privacy)=
### Protection de la vie privée et des données

De nombreux domaines de recherche impliquent de travailler avec des données personnelles sensibles, la recherche médicale étant l'exemple le plus évident. Les personnes doivent être protégées contre la (re)identification par le biais de leurs données utilisées pour la recherche. L'anonymisation des données peut être suffisante dans certains cas, mais s'assurer que la (re)identification n'est pas possible devient de plus en plus difficile en raison des progrès techniques. augmentation de la puissance de calcul et – ironiquement – plus de données ouvertes. Par exemple, la (re)identification peut être possible par le biais de l'extraction de données accessibles et de soi-disant quasi-identifiants, un ensemble de propriétés (communes) qui sont – dans leur combinaison – de sorte qu’elles peuvent être utilisées pour identifier des individus.

La préservation de la vie privée peut toujours être possible si des jeux de données partiels ou généralisés sont fournis. Par exemple, vous pouvez fournir des tranches d'âge au lieu de la date de naissance ou seulement les deux premiers chiffres des codes postaux. Il peut également être possible de fournir les données dans un format tel que les chercheurs peuvent les interroger tout en gardant les données elles-mêmes fermées. Par exemple, un utilisateur peut être en mesure d'envoyer une requête pour récupérer la moyenne d'un jeu de données, mais ne pas être en mesure d'accéder à l'un des points de données individuels.

De nombreuses disciplines scientifiques impliquent de travailler avec des données personnelles sensibles. Leur gestion est bien réglementée dans la législation en matière de protection des données (en Europe par la mise en œuvre nationale du Règlement général sur la protection des données) et les procédures d'éthique telles qu'elles sont établies dans la plupart des institutions de recherche. {cite:t}`Protection EU201616`.

(rr-open-data-barriers-consent)=
### Consentement

Pour que des données de recherche anonymes soient rendues disponibles pour une réutilisation future, les formulaires de consentement doivent couvrir le partage de ces données avec d'autres chercheurs. Jusqu'à présent, les recherches suggèrent que les participants à l'étude sont généralement moins préoccupés par les données archivées et partagées que les chercheurs ne pensent {cite:t}`Kuula2010archiving`. Les fiches d'information des participants et les formulaires de consentement doivent comprendre comment les données de recherche seront stockées, conservé et utilisé à long terme, et comment la confidentialité sera protégée au besoin.

(rr-open-data-barriers-anonymisation)=
### Anonymisation

Les personnes doivent être protégées contre l'identification (re)via leurs données L'anonymisation des données peut être suffisante dans certains cas, mais faire en sorte que la réidentification ne soit pas possible devient de plus en plus difficile. Cela pourrait même être impossible en raison du progrès technique, de la puissance informatique croissante et – ironiquement – des données plus ouvertes.

Par exemple, une nouvelle identification peut être possible grâce à l'extraction de données accessibles et à ce que l'on appelle les quasi-identifiants, un ensemble de propriétés (communes) qui sont – dans leur combinaison – de sorte qu'elles peuvent être utilisées pour identifier un individu. La préservation de la vie privée peut toujours être possible si des jeux de données partiels ou généralisés sont fournis, comme les groupes d'âge au lieu de la date de naissance, ou seulement les deux premiers chiffres des codes postaux. Il peut également être possible de fournir les données dans un format tel que les chercheurs peuvent les interroger tout en gardant les données elles-mêmes fermées. Par exemple, un utilisateur peut être en mesure d'envoyer une requête pour récupérer la moyenne d'un jeu de données, mais ne pas être en mesure d'accéder à l'un des points de données individuels. Une autre façon de fournir des données anonymes est de fournir des [données synthétiques](https://en.wikipedia.org/wiki/Synthetic_data), les données générées pour refléter les conditions et les propriétés des données brutes, sans y inclure aucune information personnelle.

(rr-open-data-barriers-national)=
### Données nationales et commerciales sensibles

Dans de nombreux cas, les entreprises ne sont pas prêtes à publier une grande partie de leurs données. Le raisonnement est que si des informations sensibles sur le plan commercial sont divulguées, elles nuiront aux intérêts commerciaux de l’entreprise et nuiront à la compétitivité. Cela se fonde sur l'idée que dans les marchés concurrentiels, l'innovation ne se fera qu'avec une certaine protection de l'information. Si une entreprise dépense du temps et de l'argent pour développer quelque chose de nouveau, dont les détails sont ensuite rendus publics. alors ses concurrents peuvent facilement le copier sans avoir à investir les mêmes ressources. Le résultat est que personne n'innoverait en premier lieu. De même, pour des raisons de sécurité publique, les gouvernements refusent souvent de publier des données relatives à des questions telles que la sécurité nationale. Dans de tels cas, il ne sera peut-être pas possible d'ouvrir des données, ou il ne sera possible de partager que des jeux de données partiels/dissimulés.

***Mots-clés de chapitre**: Ce chapitre est supervisé pour le `Groupe d'étude de données Turing` (`turing-dsg`).*
