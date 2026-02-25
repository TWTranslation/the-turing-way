(rr-open-data)=

# Données ouvertes

Le monde est en train d'assister à une transformation mondiale significative, facilitée par la technologie et les médias numériques, alimentée par les données et l'information.
Cette transformation a un énorme potentiel pour favoriser une recherche plus transparente, plus responsable, plus efficiente, plus réceptive et plus efficace.
Seule une très faible proportion des données originales est publiée dans les revues conventionnelles.
Malgré les politiques existantes sur l'archivage des données, dans la pratique actuelle, les données sont principalement stockées dans des fichiers privés, pas dans les dépôts institutionnels sécurisés, et en fait sont perdus pour le public (et souvent même pour le chercheur qui a généré les données).

Ce manque de partage de données est un obstacle à la recherche internationale (universitaire, gouvernementale ou commerciale) pour deux raisons principales:

1. Il est généralement difficile ou impossible de reproduire une étude sans les données originales.
2. Les données ne peuvent être réutilisées ou incorporées à de nouveaux travaux par d'autres chercheurs s'ils ne peuvent y avoir accès.

En conséquence, il existe une révolution mondiale des données qui vise à faire progresser la collaboration et la création et l’expansion de programmes de recherche efficaces et efficients.
Open data [{term}`def<Open data>`] is crucial to meeting these objectives.
Les données ouvertes sont librement disponibles sur Internet.
Any user is permitted to download, copy, analyse, re-process, and reuse it for any other purpose with minimal financial, legal, and technical barriers.

Cela représente un réel changement dans le mode de fonctionnement de la recherche. Funders are starting to require researchers to make their data available and submit data management plans {ref}`Data Management Plans<rr-rdm-dmp>` as part of project proposals.
Pour le moment, toute personne souhaitant utiliser les données d'un chercheur doit souvent contacter ce chercheur et lui faire une demande.
"Ouvrir par défaut" corrige cela avec une présomption de publication pour tous.
Si l'accès aux données est restreint, par exemple, pour des raisons de sécurité, il convient de préciser la justification de cette restriction.
Free access to and subsequent use of data is of [significant value to society and the economy and also has benefits to researchers](https://blog.datadryad.org/2025/07/24/benefits-of-open-data/).
Par conséquent, ces données devraient être ouvertes par défaut et seulement aussi fermées que nécessaire.

You can find more about the practical steps to make your data available in the section describing {ref}`Steps to Share your Data <rr-rdm-sharing-steps>` in the subchapter: {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(rr-open-data-barriers)=

## Barrières vers le partage de données

De nombreux universitaires éprouvent des difficultés à partager des données.
Recent surveys {cite:ps}`Stuart2018sharing` conducted amongst researchers list the following reasons:

- L'organisation des données d'une manière présentable et utile est un défi (mentionné par 46%)
- Les chercheurs ne sont pas sûrs des droits d'auteur et des licences (mentionnés par 37%)
- Les chercheurs ne savent pas quel dépôt utiliser pour différents types de données (augmenté de 33%)

Ce sont là des défis culturels qui pourraient être abordés dans la mise en œuvre de nouvelles pratiques.
Cependant, il existe aussi des raisons juridiques, éthiques ou contractuelles qui empêchent parfois de rendre les données publiques dans leur intégralité ou même en partie.
Ci-dessous, nous discutons de certaines raisons expliquant pourquoi cela peut être le cas.

```{figure} ../../../figures/data-privacy.*
---
height: 500px
name: data-privacy
alt: An image detailing why private data should be used. A person stands next to a well with 'private data' written on it and a padlock around it. It is black and white and blue. The text lists that 'people deserve - dignity, agency, privacy, rights, confirmed consent.'
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barriers-privacy)=

### Protection de la vie privée et des données

De nombreux domaines de recherche impliquent de travailler avec des données personnelles sensibles, la recherche médicale étant l'exemple le plus évident.
Please see the {ref}`sensitive data<pd-sdp>` chapter for more information about different types of sensitive data.
You can check the {ref}`Managing Sensitive Data Projects<pd-sdpm>` chapter on how you should manage these data.
Particularly the {ref}`Data Privacy Strategies<pd-sdpm-privacy>` section can help you to safely manage and protect sensitive personal data.

(rr-open-data-barriers-consent)=

### Consent

Pour que des données de recherche anonymes soient rendues disponibles pour une réutilisation future, les formulaires de consentement doivent couvrir le partage de ces données avec d'autres chercheurs.
Research so far suggests that study participants are usually less concerned about the data being archived and shared than researchers think {cite:ps}`Kuula2010archiving`.
Les fiches d'information des participants et les formulaires de consentement doivent comprendre comment les données de recherche seront stockées, conservé et utilisé à long terme, et comment la confidentialité sera protégée au besoin.

(rr-open-data-barriers-national)=

### Données nationales et commerciales sensibles

Dans de nombreux cas, les entreprises ne sont pas prêtes à publier une grande partie de leurs données.
Le raisonnement est que si des informations sensibles sur le plan commercial sont divulguées, elles nuiront aux intérêts commerciaux de l’entreprise et nuiront à la compétitivité.
Cela se fonde sur l'idée que dans les marchés concurrentiels, l'innovation ne se fera qu'avec une certaine protection de l'information.
Si une entreprise dépense du temps et de l'argent pour développer quelque chose de nouveau, dont les détails sont ensuite rendus publics. alors ses concurrents peuvent facilement le copier sans avoir à investir les mêmes ressources.
Le résultat est que personne n'innoverait en premier lieu.
De même, pour des raisons de sécurité publique, les gouvernements refusent souvent de publier des données relatives à des questions telles que la sécurité nationale.
Dans de tels cas, il ne sera peut-être pas possible d'ouvrir des données, ou il ne sera possible de partager que des jeux de données partiels/dissimulés.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
