(rr-rdm-sharing)=

# Partage et archivage des données

(rr-rdm-sharing-motivations) =

## Motivations pour le partage des données

Il y a de nombreuses raisons de partager publiquement vos données de recherche.

1. Permettre la possibilité de reproduire complètement une étude scientifique.
2. Empêcher la duplication des efforts et accélérer les progrès scientifiques.
   De grandes sommes de fonds de recherche et de carrières de chercheurs peuvent être gaspillées en ne partageant qu'une petite partie de la recherche sous forme de publications.
3. Faciliter la collaboration et accroître l'impact et la qualité de la recherche scientifique.
4. Pour rendre les résultats de la recherche ouvertement accessibles en tant que bien public, puisque la recherche est souvent financée par le public.

You can read more about why data should be available, and why some data should remain closed, in the {ref}`Open Data section <rr-open-data>`.

```{figure} ../../../figures/birds-of-open-data.*
---
height: 400px
name: birds-of-open-data.*
alt: Two birds in a fountain of open data. One asks "You mind if I reuse this data?" The other answers "Go ahead! We can even work together on it!"
---
Birds of Open Data. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. [](doi:10.5281/zenodo.3332807).
```

(rr-rdm-sharing-steps)=

## Étapes pour partager vos données

### Étape 1 : Sélectionnez les données que vous souhaitez partager

Not all data can be made openly available, due to ethical and commercial concerns (see the {ref}`Open Data section <rr-open-data>`), and you may decide that some of your intermediate data is too large to share.
À ce titre, vous devez d'abord décider quelles données vous devez partager pour que d'autres puissent reproduire vos recherches.

### Étape 2 : Choisissez un référentiel de données ou une autre plateforme de partage

Data should be shared in a formal, open, and indexed data repository [{term}`def<Repository>`] where possible so that it will be accessible in the long run.
Suitable data repositories by subject, content type or location can be found at [Re3data.org](https://www.re3data.org/), and in [FAIRsharing](https://fairsharing.org/databases) where you can also see which standards (metadata and identifier) the repositories implement and which journal/publisher recommend them.
Pay attention to whether a repository assigns DOI.
See our [chapter on persistent identifiers](#rr-rdm-pid) to learn more about how you can link your data to other research objects.

A few public data repositories are [Zenodo](https://zenodo.org/), [Figshare](https://figshare.com/), [Harvard Dataverse](https://dataverse.harvard.edu/), [4TU.ResearchData](https://data.4tu.nl/info/en), and [Dryad](https://datadryad.org/).
See the [NIH list of Generalist Repositories](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/generalist-repositories) for more data repositories.

### Étape 3 : Choisissez une licence et un lien vers votre papier et votre code

So that others know what they can do with your data, you need to apply a licence [{term}`def<License>`] to your data.
The most commonly used licences are [Creative Commons](https://creativecommons.org/choose/), [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), or an [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/index.html).
Pour obtenir un maximum de valeur grâce au partage de données, assurez-vous que votre papier et code les deux liens vers vos données, et vice versa, pour permettre aux autres de mieux comprendre votre projet.
See {ref}`rr-licensing` for more information.

### Étape 4 : Téléchargez vos données et votre documentation

In line with the {ref}`FAIR principles <rr-rdm-FAIR>`, upload the data in open formats as much as possible and include sufficient documentation and metadata so that someone else can understand your data.
Il est également essentiel de réfléchir aux formats de fichiers dans lesquels l'information est fournie.
Les données devraient être présentées dans des formats structurés et normalisés pour soutenir l'interopérabilité, la traçabilité et la réutilisation efficace.
Dans de nombreux cas, cela comprendra la fourniture de données dans des formats multiples et normalisés, de sorte qu'il puisse être traité par des ordinateurs et utilisé par des personnes.

(rr-rdm-sharing-resources)=

## Ressources supplémentaires sur le partage de données

- '[How can you make research data accessible?](https://www.software.ac.uk/how-can-you-make-research-data-accessible)': a blog that contains five steps to make your data more accessible
- The European Commission's [data guidelines](https://open-research-europe.ec.europa.eu/for-authors/data-guidelines)
- Videos on [Data sharing and reuse](https://www.youtube.com/watch?v=4igGBCggU0Y) & [Data Preservation and Archiving](https://www.youtube.com/watch?v=J76yTp8XE-0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- [Webinar: Why share your data?](https://www.ebi.ac.uk/training/online/courses/bringing-data-life-data-management-biomolecular-sciences/why-share-your-data/)
- [Webinar: Publishing and citing data in practice by Jez Cope](https://youtu.be/PpMOkTnBMlI)
- Coursera Videos from [Research Data Management and Sharing](https://www.coursera.org/learn/data-management) on the [Benefits of Sharing](https://www.coursera.org/lecture/data-management/benefits-of-sharing-IPZ0h), [Why Archive Data?](https://www.coursera.org/lecture/data-management/why-archive-data-lcQ2m), and [Why is Archiving Data Important?](https://www.coursera.org/lecture/data-management/why-is-archiving-data-important-04Gji)
- [Blog: Ask not what you can do for open data; ask what open data can do for you](http://blogs.nature.com/naturejobs/2017/06/19/ask-not-what-you-can-do-for-open-data-ask-what-open-data-can-do-for-you/)
- {cite:ps}`Levenstein2018sharing`

(rr-rdm-data-availability-statement)=

## Déclaration de disponibilité des données

Une fois que vous avez mis vos données à disposition, il est important de vous assurer que les gens peuvent les trouver lorsqu'ils lisent l'article associé.
Vous devriez citer votre jeu de données directement dans le document dans les endroits où il est pertinent, et inclure une citation dans votre liste de références, en plus d'inclure un énoncé de disponibilité des données à la fin du document (similaire à la section de reconnaissance).
See {ref}`cm-citable-cite-data` for some examples.

