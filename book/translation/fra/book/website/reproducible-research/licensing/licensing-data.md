(rr-licensing-data)=
# Licences de données

Comme une licence de logiciel, une licence de données régit ce que quelqu'un d'autre peut faire avec les données que vous créez ou possédez et que vous rendez accessibles aux autres par le biais de par exemple, un référentiel de données. Les licences de données varient selon différents critères, tels que:
* Attribution au propriétaire original
* Permission de redistribuer ou de modifier l'original
* Inclusion de la même licence avec des produits dérivés ou des redistributions

Par conséquent, l'accessibilité à vos données est affectée par la licence de données que vous avez choisie.

(rr-licensing-data-cc)=
## Licences Creative Commons

Creative Commons ou CC fournit un certain nombre de licences qui peuvent être utilisées avec une grande variété de créations qui, autrement, pourraient être soumises à des restrictions de copyright, y compris la musique, l'art, les livres et les photographies. Bien qu'il ne soit pas adapté aux données, les licences CC peuvent être utilisées comme licences de données car elles sont faciles à comprendre. Son site web comprend une page de résumé [](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` décrivant toutes les licences disponibles, expliquées avec de simples symboles visuels.

(rr-licensing-data-cc-permissions)=
### Niveaux de permission

Le niveau de permission fourni par une licence de données Creative Commons peut être compris à partir de son nom, qui est une combinaison de deux lettres « marques de permission ». La seule exception à ce schéma de nommage est CC0, qui sera introduit dans la section suivante.

| **Marque de permission** | **Que puis-je faire avec les données ?** |
| ------------------------ | ---------------------------------------- |
|                          |                                          |
 BY | Le créateur doit être crédité SA | Les dérivés ou les redistributions doivent avoir une licence identique NC | Seules les utilisations non commerciales sont autorisées ND | Aucun dérivé n'est autorisé


Par exemple, la licence CC BY-ND spécifie que les utilisateurs doivent créditer le créateur des données et ne peuvent pas créer de dérivés.

(rr-licensing-data-cc-cc0)=
### Dédiez votre travail au public avec CC0

CC0 sert de mécanisme de dédicace public, où vous renoncez à tous les droits d'auteur à vos données. Cela signifie que n'importe qui peut modifier, redistribuer ou construire votre travail. De plus, en utilisant CC0, vous perdez le droit à l'attribution. Au lieu de cela, vous devez vous fier à des normes telles que les bonnes pratiques de citation dans les communautés universitaires pour être reconnu comme le créateur. Plusieurs organisations, comme les musées, les organismes gouvernementaux et les éditeurs scientifiques, ont choisi CC0 pour avoir accès à au moins une partie de leurs données. Dans de nombreux cas, les dépôts de données maintenus par les universités recommandent le CC0 comme option par défaut, comme le [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=
## Données ouvertes communes

Open Data Commons fournit trois licences qui peuvent être appliquées spécifiquement aux données. Les [pages web](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` de chacune de ces licences incluent des résumés lisibles par l'homme, avec les ramifications des légaux expliquées dans un format concis.

(rr-licensing-data-odc-pddl)=
### La dédicace et la licence de domaine public ou PDDL

Le PDDL est analogue à CC0, où vous renoncez à tous vos droits sur les données que vous transmettez dans le domaine public. Il est livré avec un [ensemble de normes communautaires recommandées](https://opendatacommons.org/licenses/pddl/norms.html), qui ne sont pas obligatoires pour inclure et ne forment pas de contrat légal, mais peuvent être utiles à avoir comme guide pour encourager l'équité, partage ouvert des données. Il est également possible de mettre en place un ensemble de normes personnalisées qui servent mieux votre communauté de partage de données.

(rr-licensing-data-odc-odc-par)=
### La licence d'attribution ou ODC-BY

Cette licence protège vos droits d'attribution en tant que propriétaire ou créateur de données, tout comme la marque de permission **BY** des licences CC. Toute utilisation ou distribution de votre base de données doit également inclure des informations sur la licence utilisée avec l'original.

(rr-licensing-data-odc-odbl)=
### La licence Open Database ou ODbL

L'ODbL ajoute deux restrictions supplémentaires à la licence ODC-BY. La première est que toute utilisation publique de vos données doit être partagée avec la même licence, similaire à la marque de permission Cc **SA**. La seconde est que si une version quelconque de vos données est redistribuée dans un format « fermé » (par exemple, avec des mesures de protection technologique), il est obligatoire que cette redistribution soit également disponible dans une version exempte de telles mesures de fermeture.

(rr-licensing-data-differences)=
## Une note sur les différences entre les licences CC et ODC

Bien qu'il puisse sembler que les options de licence offertes par Creative Commons et Open Data Commons sont exactement les mêmes, il y a quelques différences importantes.

Une différence est la portée des droits qui sont couverts par la licence, ce qui est bien expliqué [ici](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F). Les licences du ODC ont été conçues spécifiquement pour être appliquées aux données et ne couvrent généralement que les droits des bases de données. D'un autre côté, les licences CC sont plus générales et peuvent être appliquées à d'autres matériaux. Les licences CC couvrent également les droits d'auteur et autres droits voisins.

Une autre différence est la disponibilité d'un document normalisé de Normes Communautaires avec le PDDL. L'absence d'un tel document avec CC0 signifie que vous devez vous fier aux normes de la communauté, qui peuvent souvent être non parlées ou non écrites et peuvent varier d'une communauté à l'autre, pour assurer une juste attribution. Une comparaison entre le PDDL et le CC0 est fournie [ici](https://opendatacommons.org/faq.1.html).

(rr-licensing-data-options)=
## Autres options de licence

Il est également possible de choisir d'autres licences de données qui peuvent avoir été développées en pensant à un cas d'utilisation spécifique ou à une communauté ou qui ne sont pas dans une utilisation globale généralisée. Celles-ci incluent les licences qui ont été développées par les gouvernements nationaux, telles que la [licence norvégienne pour les données gouvernementales ouvertes](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`. Souvent, de telles licences sont l'option de licence de données recommandée dans le pays correspondant, en particulier pour les données créées ou détenues par leurs organes publics. Un autre exemple est la [licence Open Government](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) ou OGL, qui a été développée par The National Archives, UK.

Le guide [Data Curation Center (DCC)](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` sur la façon de licencier des données de recherche s'expatiate sur les licences décrites dans ce chapitre, et donne plus d'informations sur [Licences préparées](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Licences Bespoke](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Mécanismes de licence multiples](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) et [pour les données de licence](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

Si vous souhaitez en savoir plus sur les défis et les points plus fins de la licence, [cet article](https://research.okfn.org/avoiding-data-use-silos/) est une excellente ressource pour vous aider à démarrer.

***Mots-clés de chapitre**: Ce chapitre est supervisé pour le `Groupe d'étude de données Turing` (`turing-dsg`).*
