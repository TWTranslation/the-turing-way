(rr-licensing-data)=

# Licences de données

Comme une licence de logiciel, une licence de données régit ce que quelqu'un d'autre peut faire avec les données que vous créez ou possédez et que vous rendez accessibles aux autres par le biais de par exemple, un référentiel de données.
Les licences de données varient selon différents critères, tels que:

- Attribution au propriétaire original
- Permission de redistribuer ou de modifier l'original
- Inclusion de la même licence avec des produits dérivés ou des redistributions

Par conséquent, l'accessibilité à vos données est affectée par la licence de données que vous avez choisie.

(rr-licensing-data-cc)=

## Licences Creative Commons

CC licenses, although not tailored for data, can be used as data licenses in some cases, such as CC0 for public domain data.
The Creative Commons website provides a [summary page](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` outlining all the available licenses, explained with visual symbols as discussed in {ref}`rr-licensing-documentation`.

(rr-licensing-data-cc-cc0)=

### Dédiez votre travail au public avec CC0

CC0 sert de mécanisme de dédicace public, où vous renoncez à tous les droits d'auteur à vos données.
Cela signifie que n'importe qui peut modifier, redistribuer ou construire votre travail.
De plus, en utilisant CC0, vous perdez le droit à l'attribution.
Au lieu de cela, vous devez vous fier à des normes telles que les bonnes pratiques de citation dans les communautés universitaires pour être reconnu comme le créateur.
Plusieurs organisations, comme les musées, les organismes gouvernementaux et les éditeurs scientifiques, ont choisi CC0 pour avoir accès à au moins une partie de leurs données.
In many instances, data repositories maintained by universities recommend CC0 as the default option, such as the [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=

## Données ouvertes communes

Open Data Commons fournit trois licences qui peuvent être appliquées spécifiquement aux données.
The [webpages](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` of each of these licenses include human-readable summaries, with the ramifications of the legalese explained in a concise format.

(rr-licensing-data-odc-pddl)=

### La dédicace et la licence de domaine public ou PDDL

Le PDDL est analogue à CC0, où vous renoncez à tous vos droits sur les données que vous transmettez dans le domaine public.
It comes with a [set of recommended community norms](https://opendatacommons.org/licenses/pddl/norms.html), which are not mandatory to include and do not form a legal contract but can be useful to have as a guide to encourage fair, open sharing of data.
Il est également possible de mettre en place un ensemble de normes personnalisées qui servent mieux votre communauté de partage de données.

(rr-licensing-data-odc-odc-par)=

### La licence d'attribution ou ODC-BY

This license protects your attribution rights as a data owner or creator, just like the **BY** permission mark of CC licenses.
Toute utilisation ou distribution de votre base de données doit également inclure des informations sur la licence utilisée avec l'original.

(rr-licensing-data-odc-odbl)=

### La licence Open Database ou ODbL

L'ODbL ajoute deux restrictions supplémentaires à la licence ODC-BY.
The first is that any public uses of your data must be shared with the same license, similar to the CC **SA** permission mark.
La seconde est que si une version quelconque de vos données est redistribuée dans un format « fermé » (par exemple, avec des mesures de protection technologique), il est obligatoire que cette redistribution soit également disponible dans une version exempte de telles mesures de fermeture.

(rr-licensing-data-differences)=

## Une note sur les différences entre les licences CC et ODC

Bien qu'il puisse sembler que les options de licence offertes par Creative Commons et Open Data Commons sont exactement les mêmes, il y a quelques différences importantes.

One difference is the scope of rights that are covered by the license, which is nicely explained [here](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F).
Les licences du ODC ont été conçues spécifiquement pour être appliquées aux données et ne couvrent généralement que les droits des bases de données.
D'un autre côté, les licences CC sont plus générales et peuvent être appliquées à d'autres matériaux.
Les licences CC couvrent également les droits d'auteur et autres droits voisins.

Une autre différence est la disponibilité d'un document normalisé de Normes Communautaires avec le PDDL.
L'absence d'un tel document avec CC0 signifie que vous devez vous fier aux normes de la communauté, qui peuvent souvent être non parlées ou non écrites et peuvent varier d'une communauté à l'autre, pour assurer une juste attribution.
A comparison between the PDDL and CC0 is provided [here](https://opendatacommons.org/faq/).

(rr-licensing-data-options)=

## Autres options de licence

Il est également possible de choisir d'autres licences de données qui peuvent avoir été développées en pensant à un cas d'utilisation spécifique ou à une communauté ou qui ne sont pas dans une utilisation globale généralisée.
These include licenses that were developed by national governments, such as the [Norwegian License for Open Government Data](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`.
Souvent, de telles licences sont l'option de licence de données recommandée dans le pays correspondant, en particulier pour les données créées ou détenues par leurs organes publics.
Another example is the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) or OGL, which was developed by The National Archives, UK.

The [Data Curation Center (DCC) guide](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` on how to license research data expatiates on the licenses discussed in this chapter, and gives more information about [Prepared Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Bespoke Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Multiple Licensing](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) and [Mechanisms for Licensing Data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

If you would like to read more about the challenges and finer points of licensing, [this article](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3320472) is a great resource to get you started.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
