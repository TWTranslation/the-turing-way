(rr-overview-barriers)=

# Obstacles à la reproductibilité

So far we have explained {ref}`what we mean<rr-overview-definitions>` by reproducible research and explained some of the {ref}`additional benefits<rr-overview-benefits>`.

Dans cette section, nous couvrons certaines des barrières (réelles et perçues) que vous pourriez rencontrer pour rendre votre travail reproductible.

```{figure} ../../../figures/barriers-reproducibility.*
---
width: 500px
name: reproducibility-barriers
alt: Slide from the presentation showing the different barriers to reproducibility. The text in the center says 'Barriers to reproducible research' and the following barriers are arranged clockwise around the slide - Is not considered for promotion, Held to a higher standard than others, Publication bias towards novel findings, Plead the 5th, Takes time, Support additional users, Requires additional skills.
---
A slide outlining some of the barriers to reproducible research from Kirstie Whitaker's [talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
Used under a CC-BY 4.0 license.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Ce chapitre décrit certaines de ces barrières et quelques suggestions pour les contourner.
Les obstacles à la recherche reproductible peuvent être décrits dans trois groupes principaux.
The first, and hardest to overcome are those relating to the current incentive structure in academic research: {ref}`Limited incentives to give evidence against yourself<rr-overview-barriers-incentives>` (or "Plead the fifth"), the known {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, the fact that reproducible or open research may be {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and that all this effort is {ref}`not considered for promotion<rr-overview-barriers-promotion>`.
Then there are the technical and theoretical challenges of working with {ref}`big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` and remembering that {ref}`being reproducible does not mean the answer is right<rr-overview-barriers-notright>`.
We finish with three barriers considering the pressures on individual data scientists: that this work can be perceived to {ref}`take extra time<rr-overview-barriers-time>`, that you may be required to {ref}`support additional users<rr-overview-barriers-support>` (spoiler: you aren't!), and that you and members of your team might {ref}`require additional skills<rr-overview-barriers-skills>`.
The good news is that helping you learn those skills is exactly what _The Turing Way_ is here for!

(rr-overview-barriers-incentives)=

## Des incitations limitées à fournir des preuves contre vous

The [Fifth Amendment](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) to the United States Constitution includes a clause that no one "shall be compelled in any criminal case to be a witness against themselves".
(Édité dans une langue neutre pour le genre.)
« plaider la cinquième » signifie que quelqu'un choisit de ne pas donner de preuve qu'il aurait pu y avoir quelque chose de mal dans son comportement passé.
Ils ont le droit de rester silencieux.

Nous savons que personne ne veut s'incriminer et que personne n'est infaillible.
Mettre en ligne votre code et vos données peut être très révélateur et intimidant, et il fait partie de la condition humaine d'être nerveux d'être jugé par les autres.
Although there is no _law_ governing the communication of reproducible research - unless you commit explicit fraud in your work - sharing errors that you find in your work is heavily disincentivised.

```{figure} ../../../figures/make-ok-to-be-human.*
---
height: 500px
name: make-ok-to-be-human
alt: A cartoon of a woman holding a folder of files and looking worried. Thought bubble says, If I share my data people might find mistakes. The caption on the images reads Need to make it ok to be human.
---
An illustration of the "plead the fifth" barrier where our current culture disincentivises acknowledging and correcting mistakes.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Donner des preuves contre vous, en particulier si vous trouvez des erreurs dans des documents publiés, est difficile et stressant.
Mais nous devons équilibrer ce coût individuel par rapport au fait que la publication de code peut aider d'autres chercheurs à fournir des commentaires, apprendre et peut les aider dans leurs recherches.
En fait, vous constaterez très certainement que la publication de votre code et de votre documentation de données vous motive à mener vos analyses à un niveau plus élevé.
Être prudent à propos de ce que vous notez et documenter vos décisions peut aussi aider à générer de nouvelles idées pour vous-même et pour les autres.

Most importantly, we need to move away from a culture where publishing nothing is safer than publishing _something_.
_The Turing Way_ is here to help you take little steps towards being more reproducible as your career progresses.
Nous ne voulons pas que quelqu'un se sente seul, ou "pas assez bien" au moment où il commence et continue son parcours de recherche ouvert.

(rr-overview-barriers-publication)=

## Biais de publication vers de nouvelles conclusions

Les nouveaux résultats ne sont pas nécessairement précis ou intéressants, mais ils sont récompensés dans le monde académique!
Papers that do not find statistically significant relationships are hard to publish, particularly if the results _do not_ reproduce previously published findings.
(Cela comprend des conclusions statistiquement significatives qui vont dans la direction opposée aux travaux déjà publiés.)
De même, un article pourrait être moins susceptible d'être accepté à un journal ou à une conférence s'il reproduit avec succès les résultats déjà publiés au lieu de produire un nouvel ensemble.
Il y a de bonnes chances que les réviseurs diront "nous le savons déjà" et rejettent la soumission.

La tendance à la nouveauté dans la science des données signifie que de nombreux chercheurs sont dissuadés de faire le travail pour documenter, tester et partager leur code et leurs données.
John Ioannidis published an influential paper in 2005 titled "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` which discusses the many factors that contribute to publication bias.
Compte tenu de ces partis, il est très probable qu'il y ait beaucoup de travail en double dans la science des données.
Trop de chercheurs différents posent la même question, ne pas obtenir la réponse qu'ils attendent ou veulent, et puis ne pas dire à quelqu'un ce qu'ils ont trouvé.

This barrier is not specific to computational reproducibility as we define it in _The Turing Way_.
However, it is a major cultural barrier to {ref}`transparent communication<cm>`, and affects {ref}`project design<pd>`.
_The Turing Way_ community are advocating in all the places we are able, for the systemic culture change that is required to dismantle the current publication and academic credit biases towards novelty over rigour.

(rr-overview-barriers-standards)=

## Tenue à des normes plus élevées que les autres

Un chercheur qui rend son travail reproductible en partageant son code et ses données peut être tenu selon des normes plus élevées que les autres chercheurs.
Si les auteurs ne partagent rien du tout, alors tous les lecteurs d'un manuscrit ou d'un document de conférence peuvent faire confiance (ou ne pas faire confiance) aux résultats.

Si le code et les données sont disponibles, les évaluateurs par les pairs peuvent aller chercher des différences dans la mise en œuvre.
Ils peuvent revenir avec de nouvelles idées sur les façons d'analyser les données parce qu'ils ont pu expérimenter le travail.
Il y a un risque qu'ils exigent des modifications supplémentaires de la part des auteurs du manuscrit soumis avant qu'il ne soit accepté pour examen par les pairs.

As we described in the {ref}`"Plead the Fifth"<rr-overview-barriers-incentives>` section above, the solution to this challenge is to align career incentives so that doing what is best for _science_ also benefits the individuals involved.

(rr-overview-barriers-promotion)=

## Non pris en compte pour la promotion

Dans le système académique actuel, la primauté de la promotion est la capacité éprouvée à recevoir des subventions et à recruter des étudiants.
Both funding bodies and prospective students value novelty and this behaviour is reflected in preferentially rewarding papers with a high [journal impact factor](https://en.wikipedia.org/wiki/Impact_factor).
It is likely part of the human condition to be motivated by things that are new or surprising, but as {ref}`discussed above<rr-overview-barriers-publication>`, this bias towards novelty causes a systematic publication bias.

Plus largement, le système de promotion dans le milieu universitaire tend à récompenser les personnes qui se sont montrées différentes des autres dans leur domaine.
Cela signifie que le partage de code et de données pour faciliter la tâche des "concurrents" finit par être découragé par la promotion et le financement des panneaux de sélection.
A good example of this bias is the Nobel Prize award which only goes to a small number of researchers each year, and as such ["overlooks many of its important contributors"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017).
One of the goals of _The Turing Way_ is to draw attention to the misalignment of the tenure and promotion process with collaborative and reproducible data science.

(rr-overview-barriers-infrastructure)=

## Grandes données et infrastructure informatique complexe

Les grandes données sont conceptualisées de différentes manières par différents chercheurs.
Les données « Grandes » peuvent être complexes, provenant de diverses sources de données, sont importantes dans le volume de stockage et/ou sont diffusées à une très haute résolution temporelle.
Bien qu'il y ait des moyens de définir des graines aléatoires et de prendre des instantanés d'un jeu de données à un moment donné dans le temps, il peut être difficile d'avoir des données identiques à travers différents parcours d'un pipeline d'analyse.
C'est particulièrement important dans le contexte des outils pour l'informatique parallèle.
Par exemple, certaines données telles que le suivi des vols ou le trafic Internet sont si importantes qu'il ne peut pas être stocké et doit être traité car il est diffusé en temps réel.

Un défi plus courant pour les chercheurs de "grandes données" est la variabilité des performances logicielles entre les systèmes d'exploitation et la rapidité avec laquelle les outils évoluent au fil du temps.
Un écosystème en constante évolution des technologies de la science des données est disponible, ce qui signifie que la reproduction des résultats à l'avenir est hautement variable et dépend de l'utilisation d'outils parfaitement rétrocompatibles au fur et à mesure qu'ils se développent.
Très souvent, les résultats des tests statistiques varient en fonction de la configuration de l'infrastructure utilisée dans chacune des expériences, ce qui rend très difficile la reproduction indépendante d'un résultat.
Les expériences dépendent souvent de l'initialisation aléatoire pour les algorithmes itératifs et tous les logiciels ne comprennent pas la possibilité de corriger un nombre pseudoaléatoire sans limiter les capacités de parallélisation (par exemple dans Tensorflow).
Ces outils peuvent nécessiter des compétences techniques approfondies qui ne sont pas largement disponibles pour les informaticiens.
The [Apache Hadoop](https://hadoop.apache.org/) framework, for instance, is extremely complex to deploy data science experiments without strong software and hardware engineering knowledge.

Même l'informatique « standard » de haute performance peut être difficile à mettre en place pour être parfaitement reproductible, en particulier à travers différents fournisseurs de cloud computing ou configurations institutionnelles.
_The Turing Way_ contains chapters to help data scientists learn skills in {ref}`reproducible computational environments<rr-renv>` including {ref}`containers<rr-renv-containers>` such as docker and ways to {ref}`version control your software libraries<rr-renv-package>`.
We are always [open to more contributions](#ch-contributing) as the technology to support reproducible research in very large datasets or for complex modelling evolves.

(rr-overview-barriers-notright)=

## Être reproductible ne veut pas dire que la réponse est juste

By making the code and data used to produce a result openly available to others, our results may be **reproduced** but mistakes made by the initial author can be carried through.
Getting the same wrong answer each time is a step in the right direction, but still very much a **wrong** answer!

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science.
Vous pouvez considérer la reproductibilité de calcul comme nécessaire mais pas suffisante pour une recherche de haute qualité.
Une approche critique est nécessaire, plutôt que d'utiliser naïvement des logiciels existants ou d'implémenter des méthodes statistiques sans comprendre ce qu'elles font.
See, for example, [a discussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) in August 2019 about whether the default settings for Scikit-learn's implementation of logistic regression are misleading to new users.
L'interprétabilité et l'interopérabilité sont nécessaires pour évaluer correctement la recherche originale et pour renforcer les résultats.

(rr-overview-barriers-time)=

## Prend du temps

Faire une analyse reproductible prend du temps et des efforts, en particulier au début du projet.
This may include agreeing upon a {ref}`testing framework<rr-testing>`, setting up {ref}`version control<rr-vcs>` such as a Github repository and {ref}`continuous integration<rr-ci>`, and {ref}`managing data<rr-rdm>`.
Tout au long du projet, le temps peut être nécessaire pour maintenir le pipeline reproductible.

On peut aussi passer du temps à communiquer avec des collaborateurs pour s'entendre sur les parties du projet pouvant être open source et sur la manière dont ces sorties sont partagées.
Les chercheurs peuvent constater qu'ils ont besoin de « perfectionner » leurs collègues pour permettre à l'équipe de bénéficier d'outils de reproductibilité tels que git et GitHub, conteneurs, bloc-notes Jupyter ou bases de données.

```{figure} ../../../figures/help-you-of-the-future.*
---
width: 500px
name: help-you-of-the-future
alt: A cartoon of a woman passing a folder of documents back to herself. Speech bubble says You're mainly keeping records for you in the future.
---
Although making clear documentation may feel like it is taking a lot of time at the moment, you are helping yourself and your collaborators remember what you have done so it is easy to reuse the work or make changes in the future.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

However, _The Turing Way_ community advocates that this time is more than made up for by the end of the project.
Prenez comme expérience de pensée un examinateur pour demander « juste une analyse de plus » lorsque la publication a été soumise à une revue.
Dans de nombreux cas, cette demande viendra de 6 à 12 mois après que l'équipe de recherche aura travaillé avec les données brutes.
Il peut être très difficile de revenir dans le temps pour trouver la partie du gazoduc que le réviseur vous a demandé de changer.
Si le travail est entièrement reproductible, y compris les données contrôlées par la version et le code générateur de chiffres, Cette analyse sera très rapide à exécuter et à incorporer dans le résultat final de la recherche.
Le gazoduc d'analyse peut être facilement adapté au besoin en réponse aux demandes de coauteur et de réviseur.
Il peut également être facilement réutilisé pour des projets de recherche futurs.

(rr-overview-barriers-support)=

## Soutenir des utilisateurs supplémentaires

Beaucoup de gens s'inquiètent qu'en rendant leur analyse reproductible, ils seront tenus de répondre à de nombreuses questions des futurs utilisateurs de leur code.
These questions may cover software incompatibility across operating systems and the dependencies changing over time (see the {ref}`Big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` barrier above).
Ils peuvent également inclure des questions sur la façon d'ajuster le code à un autre but.

Cette barrière se fonde en partie sur la fusion de la recherche "reproductible" avec la recherche "ouverte".
The _Turing Way_ {ref}`definition of "reproducible"<rr-overview-definitions>` doesn't require authors to support the expansion and reuse of the data and code beyond running the exact analyses that generate the published results in the accompanying manuscript.

Dans presque tous les cas, faire du code et des données open source nécessite une meilleure documentation qu'un chercheur n'écrirait pour lui-même.
This can feel like an additional barrier, although - as discussed in the previous section on reproducible research {ref}`taking extra time<rr-overview-barriers-time>` it is likely that the primary beneficiaries of well commented and tested code with detailed documentation are the research team - particularly the principal investigator of the project - themselves.

(rr-overview-barriers-skills)=

## Nécessite des compétences supplémentaires

As you can tell from the ever-growing number of chapters in _The Turing Way_, working reproducibly requires skills that aren't always taught in training programmes.
Vous - ou quelqu'un de votre équipe - pourriez avoir besoin de développer une expertise en ingénierie des données, recherche en ingénierie logicielle, rédaction technique pour la documentation ou la gestion de projet sur GitHub.
That is a major barrier when the current incentive structures are not aligned with learning these skills (see the barriers on {ref}`plead the fifth<rr-overview-barriers-incentives>`, {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and {ref}`not considered for a promotion<rr-overview-barriers-promotion>`!)
However, this is the primary barrier that we at _The Turing Way_ are working to dismantle with you.
Nous espérons que vous aimeriez apprendre ces compétences avec nous et que vous nous aiderez à améliorer le livre comme vous.

> "A journey of a thousand miles begins with a single step" (Chinese philosopher [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Nous espérons qu'en nous efforçant de vous aider à acquérir certaines de ces compétences précieuses, nous démontons également certaines des barrières les plus structurelles à la recherche reproductible.

## Lectures supplémentaires et ressources supplémentaires

You can watch Kirstie Whitaker describe some of these barriers in [her talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
You can use and reuse her slides under a CC-BY licence via Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)).
La section décrivant la diapositive ci-dessous commence environ 5 minutes dans la vidéo.
