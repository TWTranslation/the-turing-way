(rr-overview-barriers)=
# Obstacles à la reproductibilité

Jusqu'à présent, nous avons expliqué {ref}`ce que nous entendons par recherche reproductible<rr-overview-definitions>` et expliqué quelques-uns des {ref}`avantages supplémentaires<rr-overview-benefits>`.

Dans cette section, nous couvrons certaines des barrières (réelles et perçues) que vous pourriez rencontrer pour rendre votre travail reproductible.

```{figure} ../../figures/barriers-reproducibility.png
---
largeur : 500px
nom : barrières de reproductibilité
alt : Glissez de la présentation montrant les différentes barrières à la reproductibilité. Le texte au centre dit "Barrières à la recherche reproductible" et les barrières suivantes sont disposées dans le sens des aiguilles d'une montre autour de la diapositive - n'est pas considéré comme une promotion, Tenue à un niveau plus élevé que les autres, Publication biais vers de nouvelles conclusions, Plead the 5th, prend du temps, soutient des utilisateurs supplémentaires, nécessite des compétences supplémentaires.
---
Un diaporama décrivant certains des obstacles à la recherche reproductible de Kirstie Whitaker [parler de _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) à [csv,conf,v4](https://csvconf.com/2019) en mai 2019.
Utilisé sous une licence CC-BY 4.0.
DOI : [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Ce chapitre décrit certaines de ces barrières et quelques suggestions pour les contourner. Les obstacles à la recherche reproductible peuvent être décrits dans trois groupes principaux. Le premier, et le plus difficile à surmonter sont ceux qui ont trait à la structure d'incitation actuelle dans la recherche académique : {ref}`Des incitations limitées à fournir des preuves contre vous<rr-overview-barriers-incentives>` (ou "Promener le cinquième"), le biais connu de la publication {ref}`vers les découvertes nouvelles<rr-overview-barriers-publication>`, le fait que la recherche reproductible ou ouverte peut être {ref}`tenue selon des normes plus élevées que les autres<rr-overview-barriers-standards>`, et que tout cet effort est de {ref}`non pris en compte pour la promotion<rr-overview-barriers-promotion>`. Ensuite, il y a les défis techniques et théoriques de travailler avec {ref}`grandes données et infrastructure informatique complexe<rr-overview-barriers-infrastructure>` et de se rappeler que {ref}`être reproductible ne signifie pas que la réponse est bonne<rr-overview-barriers-notright>`. Nous terminons par trois obstacles compte tenu des pressions exercées sur les scientifiques de données individuelles: que ce travail peut être perçu à {ref}`prendre du temps supplémentaire<rr-overview-barriers-time>`, que vous soyez requis pour {ref}`supporter des utilisateurs supplémentaires<rr-overview-barriers-support>` (spoiler: vous n'êtes pas ! , et que vous et les membres de votre équipe pourriez {ref}`exigent des compétences supplémentaires<rr-overview-barriers-skills>`. La bonne nouvelle est que vous aider à apprendre ces compétences est exactement ce à quoi _The Turing Way_ est ici !

(rr-overview-barriers-incentives)=
## Des incitations limitées à fournir des preuves contre vous

Le [cinquième amendement](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) à la Constitution des États-Unis contient une clause selon laquelle personne "ne doit être obligé dans toute affaire criminelle d'être un témoin contre [them]sel[ves]". (Édité dans une langue neutre pour le genre.) « plaider la cinquième » signifie que quelqu'un choisit de ne pas donner de preuve qu'il aurait pu y avoir quelque chose de mal dans son comportement passé. Ils ont le droit de rester silencieux.

Nous savons que personne ne veut s'incriminer et que personne n'est infaillible. Mettre en ligne votre code et vos données peut être très révélateur et intimidant, et il fait partie de la condition humaine d'être nerveux d'être jugé par les autres. Bien qu'il n'y ait pas de _loi_ régissant la communication de la recherche reproductible - à moins que vous ne commettiez une fraude explicite dans votre travail - le partage d'erreurs que vous trouvez dans votre travail est fortement découragé.

```{figure} ../../figures/make-ok-to-be-human.jpg
---
hauteur : 500px
nom : make-ok-to-be-human
alt: Un dessin animé d'une femme tenant un dossier de fichiers et semblant inquiet. La bulle de pensée dit, si je partage mes données, les gens pourraient trouver des erreurs. La légende sur les images lit Besoin de le rendre ok pour être humain.
---
Une illustration de la "plaider la cinquième" barrière où notre culture actuelle décourage la reconnaissance et la correction des erreurs.
Illustration de The Ludic Group LLP de Kirstie Whitaker dans le cadre de la conférence scientifique de 2017.
Utilisé sous une licence CC-BY 4.0.
DOI : [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Donner des preuves contre vous, en particulier si vous trouvez des erreurs dans des documents publiés, est difficile et stressant. Mais nous devons équilibrer ce coût individuel par rapport au fait que la publication de code peut aider d'autres chercheurs à fournir des commentaires, apprendre et peut les aider dans leurs recherches. En fait, vous constaterez très certainement que la publication de votre code et de votre documentation de données vous motive à mener vos analyses à un niveau plus élevé. Être prudent à propos de ce que vous notez et documenter vos décisions peut aussi aider à générer de nouvelles idées pour vous-même et pour les autres.

Plus important encore, nous devons nous éloigner d'une culture où publier rien n'est plus sûr que publier _quelque chose_. _La Voie Turing_ est là pour vous aider à prendre de petites mesures pour être plus reproductible au fur et à mesure que votre carrière progresse. Nous ne voulons pas que quelqu'un se sente seul, ou "pas assez bien" au moment où il commence et continue son parcours de recherche ouvert.

(rr-overview-barriers-publication)=
## Biais de publication vers de nouvelles conclusions

Les nouveaux résultats ne sont pas nécessairement précis ou intéressants, mais ils sont récompensés dans le monde académique! Les papiers qui ne trouvent pas de relations statistiquement significatives sont difficiles à publier, en particulier si les résultats *ne* pas reproduire les conclusions publiées précédemment. (Cela comprend des conclusions statistiquement significatives qui vont dans la direction opposée aux travaux déjà publiés.) De même, un article pourrait être moins susceptible d'être accepté à un journal ou à une conférence s'il reproduit avec succès les résultats déjà publiés au lieu de produire un nouvel ensemble. Il y a de bonnes chances que les réviseurs diront "nous le savons déjà" et rejettent la soumission.

La tendance à la nouveauté dans la science des données signifie que de nombreux chercheurs sont dissuadés de faire le travail pour documenter, tester et partager leur code et leurs données. John Ioannidis a publié un article influent en 2005 intitulé "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` qui discute des nombreux facteurs qui contribuent au biais de la publication. Compte tenu de ces partis, il est très probable qu'il y ait beaucoup de travail en double dans la science des données. Trop de chercheurs différents posent la même question, ne pas obtenir la réponse qu'ils attendent ou veulent, et puis ne pas dire à quelqu'un ce qu'ils ont trouvé.

Cette barrière n'est pas spécifique à la reproductibilité de calcul telle que nous la définissons dans _The Turing Way_. Cependant, c'est un obstacle culturel majeur à la communication transparente de {ref}`<cm>`, et affecte {ref}`conception de projet<pd>`. _La communauté de Turing Way_ défend dans tous les endroits que nous pouvons, pour le changement de culture systémique qui est nécessaire pour démanteler la publication actuelle et le crédit académique vers la nouveauté sur la rigueur.

(rr-overview-barriers-standards)=
## Tenue à des normes plus élevées que les autres

Un chercheur qui rend son travail reproductible en partageant son code et ses données peut être tenu selon des normes plus élevées que les autres chercheurs. Si les auteurs ne partagent rien du tout, alors tous les lecteurs d'un manuscrit ou d'un document de conférence peuvent faire confiance (ou ne pas faire confiance) aux résultats.

Si le code et les données sont disponibles, les évaluateurs par les pairs peuvent aller chercher des différences dans la mise en œuvre. Ils peuvent revenir avec de nouvelles idées sur les façons d'analyser les données parce qu'ils ont pu expérimenter le travail. Il y a un risque qu'ils exigent des modifications supplémentaires de la part des auteurs du manuscrit soumis avant qu'il ne soit accepté pour examen par les pairs.

Comme nous l'avons décrit dans la section {ref}`"Propulsez la Cinquième"<rr-overview-barriers-incentives>` ci-dessus, la solution à ce défi est d'aligner les incitations à la carrière afin que faire ce qui est le mieux pour _science_ profite également aux personnes impliquées.

(rr-overview-barriers-promotion)=
## Non pris en compte pour la promotion

Dans le système académique actuel, la primauté de la promotion est la capacité éprouvée à recevoir des subventions et à recruter des étudiants. Tant les organismes de financement que les étudiants éventuels apprécient la nouveauté et ce comportement se reflète dans des papiers de préférence gratifiants avec un [facteur d'impact de journal élevé](https://en.wikipedia.org/wiki/Impact_factor). Il est probable qu'une partie de la condition humaine soit motivée par des choses nouvelles ou surprenantes, mais comme {ref}`discuté ci-dessus<rr-overview-barriers-publication>`, ce biais vers la nouveauté provoque un biais de publication systématique.

Plus largement, le système de promotion dans le milieu universitaire tend à récompenser les personnes qui se sont montrées différentes des autres dans leur domaine. Cela signifie que le partage de code et de données pour faciliter la tâche des "concurrents" finit par être découragé par la promotion et le financement des panneaux de sélection. Un bon exemple de ce biais est le prix Nobel qui ne s'adresse qu'à un petit nombre de chercheurs chaque année, et en tant que telle ["néglige beaucoup de ses contributeurs importants"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017). L'un des objectifs de _The Turing Way_ est d'attirer l'attention sur le déséquilibre du processus de mandat et de promotion avec la science des données collaboratives et reproductibles.

(rr-overview-barriers-infrastructure)=
## Grandes données et infrastructure informatique complexe

Les grandes données sont conceptualisées de différentes manières par différents chercheurs. Les données « Grandes » peuvent être complexes, provenant de diverses sources de données, sont importantes dans le volume de stockage et/ou sont diffusées à une très haute résolution temporelle. Bien qu'il y ait des moyens de définir des graines aléatoires et de prendre des instantanés d'un jeu de données à un moment donné dans le temps, il peut être difficile d'avoir des données identiques à travers différents parcours d'un pipeline d'analyse. C'est particulièrement important dans le contexte des outils pour l'informatique parallèle. Par exemple, certaines données telles que le suivi des vols ou le trafic Internet sont si importantes qu'il ne peut pas être stocké et doit être traité car il est diffusé en temps réel.

Un défi plus courant pour les chercheurs de "grandes données" est la variabilité des performances logicielles entre les systèmes d'exploitation et la rapidité avec laquelle les outils évoluent au fil du temps. Un écosystème en constante évolution des technologies de la science des données est disponible, ce qui signifie que la reproduction des résultats à l'avenir est hautement variable et dépend de l'utilisation d'outils parfaitement rétrocompatibles au fur et à mesure qu'ils se développent. Très souvent, les résultats des tests statistiques varient en fonction de la configuration de l'infrastructure utilisée dans chacune des expériences, ce qui rend très difficile la reproduction indépendante d'un résultat. Les expériences dépendent souvent de l'initialisation aléatoire pour les algorithmes itératifs et tous les logiciels ne comprennent pas la possibilité de corriger un nombre pseudoaléatoire sans limiter les capacités de parallélisation (par exemple dans Tensorflow). Ces outils peuvent nécessiter des compétences techniques approfondies qui ne sont pas largement disponibles pour les informaticiens. Le framework [Apache Hadoop](https://hadoop.apache.org/) , par exemple, est extrêmement complexe pour déployer des expériences de science des données sans connaissances solides en ingénierie logicielle et matérielle.

Même l'informatique « standard » de haute performance peut être difficile à mettre en place pour être parfaitement reproductible, en particulier à travers différents fournisseurs de cloud computing ou configurations institutionnelles. _Le Turing Way_ contient des chapitres pour aider les chercheurs de données à apprendre des compétences dans {ref}`environnements informatiques reproductibles<rr-renv>` y compris {ref}`conteneurs<rr-renv-containers>` tels que docker et des moyens de {ref}`version piloter vos bibliothèques logicielles<rr-renv-package>`. Nous sommes toujours [ouverts à plus de contributions](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) en tant que technologie pour soutenir la recherche reproductible dans de très grands ensembles de données ou pour la modélisation complexe évolue.

(rr-overview-barriers-notright)=
## Être reproductible ne veut pas dire que la réponse est juste

En rendant le code et les données utilisés pour produire un résultat ouvertement disponible pour les autres, nos résultats peuvent être **reproduits** mais les erreurs faites par l'auteur initial peuvent être réalisées. Obtenir la même réponse erronée à chaque fois est un pas dans la bonne direction, mais c'est toujours une **mauvaise réponse**!

Cette barrière n'est pas vraiment une barrière __ à la recherche reproductible autant qu'un avertissement selon lequel investir du temps dans la reproductibilité ne signifie pas nécessairement que vous faites de meilleures sciences. Vous pouvez considérer la reproductibilité de calcul comme nécessaire mais pas suffisante pour une recherche de haute qualité. Une approche critique est nécessaire, plutôt que d'utiliser naïvement des logiciels existants ou d'implémenter des méthodes statistiques sans comprendre ce qu'elles font. Voir, par exemple, [une discussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) en août 2019 sur la question de savoir si les paramètres par défaut de l'implémentation de la régression logistique par Scikit-learn sont trompeurs pour les nouveaux utilisateurs. L'interprétabilité et l'interopérabilité sont nécessaires pour évaluer correctement la recherche originale et pour renforcer les résultats.

(rr-overview-barriers-time)=
## Prend du temps

Faire une analyse reproductible prend du temps et des efforts, en particulier au début du projet. Cela peut inclure l'acceptation d'un framework de test {ref}`<rr-testing>`, mise en place du contrôle de version de {ref}`<rr-vcs>` tel qu'un dépôt Github et {ref}`intégration continue<rr-ci>`, et {ref}`gérant les données<rr-rdm>`. Tout au long du projet, le temps peut être nécessaire pour maintenir le pipeline reproductible.

On peut aussi passer du temps à communiquer avec des collaborateurs pour s'entendre sur les parties du projet pouvant être open source et sur la manière dont ces sorties sont partagées. Les chercheurs peuvent constater qu'ils ont besoin de « perfectionner » leurs collègues pour permettre à l'équipe de bénéficier d'outils de reproductibilité tels que git et GitHub, conteneurs, bloc-notes Jupyter ou bases de données.

```{figure} ../../figures/help-you-of-the-future.jpg
---
largeur: 500px
nom: aide-vous
alt: Un dessin animé d'une femme qui passe un dossier de documents à elle-même. La bulle de la parole dit que vous gardez principalement des enregistrements pour vous à l'avenir.
---
Bien que faire une documentation claire puisse avoir l'impression que ça prend beaucoup de temps en ce moment, vous aidez vos collaborateurs et vos collaborateurs à se souvenir de ce que vous avez fait pour qu'il soit facile de réutiliser le travail ou d'apporter des changements dans le futur.
Illustration de The Ludic Group LLP de Kirstie Whitaker dans le cadre de la conférence scientifique de 2017.
Utilisé sous une licence CC-BY 4.0.
DOI : [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Cependant, la communauté _The Turing Way_ soutient que cette fois est plus que compensée avant la fin du projet. Prenez comme expérience de pensée un examinateur pour demander « juste une analyse de plus » lorsque la publication a été soumise à une revue. Dans de nombreux cas, cette demande viendra de 6 à 12 mois après que l'équipe de recherche aura travaillé avec les données brutes. Il peut être très difficile de revenir dans le temps pour trouver la partie du gazoduc que le réviseur vous a demandé de changer. Si le travail est entièrement reproductible, y compris les données contrôlées par la version et le code générateur de chiffres, Cette analyse sera très rapide à exécuter et à incorporer dans le résultat final de la recherche. Le gazoduc d'analyse peut être facilement adapté au besoin en réponse aux demandes de coauteur et de réviseur. Il peut également être facilement réutilisé pour des projets de recherche futurs.

(rr-overview-barriers-support)=
## Soutenir des utilisateurs supplémentaires

Beaucoup de gens s'inquiètent qu'en rendant leur analyse reproductible, ils seront tenus de répondre à de nombreuses questions des futurs utilisateurs de leur code. Ces questions peuvent couvrir l'incompatibilité logicielle entre les systèmes d'exploitation et les dépendances qui évoluent au fil du temps (voir la barrière {ref}`Grandes données et infrastructure informatique complexe<rr-overview-barriers-infrastructure>` ci-dessus). Ils peuvent également inclure des questions sur la façon d'ajuster le code à un autre but.

Cette barrière se fonde en partie sur la fusion de la recherche "reproductible" avec la recherche "ouverte". _La définition de Turing Way_ {ref}`de "reproductible"<rr-overview-definitions>` ne demande pas aux auteurs de supporter l'expansion et la réutilisation des données et du code au-delà de l'exécution des analyses exactes qui génèrent les résultats publiés dans le manuscrit qui l'accompagne.

Dans presque tous les cas, faire du code et des données open source nécessite une meilleure documentation qu'un chercheur n'écrirait pour lui-même. Cela peut être comme une barrière supplémentaire, bien que - comme discuté dans la section précédente sur la recherche reproductible {ref}`prenant du temps supplémentaire<rr-overview-barriers-time>` il est probable que les principaux bénéficiaires du code bien commenté et testé avec la documentation détaillée sont l'équipe de recherche - en particulier l'enquêteur principal du projet - eux-mêmes.

(rr-overview-barriers-skills)=
## Nécessite des compétences supplémentaires

Comme vous pouvez le constater à partir du nombre croissant de chapitres dans _The Turing Way_, Le travail reproductif nécessite des compétences qui ne sont pas toujours enseignées dans les programmes de formation. Vous - ou quelqu'un de votre équipe - pourriez avoir besoin de développer une expertise en ingénierie des données, recherche en ingénierie logicielle, rédaction technique pour la documentation ou la gestion de projet sur GitHub. C'est une barrière majeure lorsque les structures d'incitation actuelles ne sont pas alignées sur l'apprentissage de ces compétences (voir les barrières sur {ref}`plaider le cinquième<rr-overview-barriers-incentives>`, {ref}`Biais de publication vers les nouveaux résultats<rr-overview-barriers-publication>`, {ref}`a respecté des normes plus élevées que les autres<rr-overview-barriers-standards>`, et {ref}`non pris en compte pour une promotion<rr-overview-barriers-promotion>`!) Cependant, c'est la barrière principale que nous à _The Turing Way_ travaillons à démanteler avec vous. Nous espérons que vous aimeriez apprendre ces compétences avec nous et que vous nous aiderez à améliorer le livre comme vous.

> "Un voyage de mille milles commence par une seule étape" (philosophe chinois [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Nous espérons qu'en nous efforçant de vous aider à acquérir certaines de ces compétences précieuses, nous démontons également certaines des barrières les plus structurelles à la recherche reproductible.

## Lectures supplémentaires et ressources supplémentaires

Vous pouvez regarder Kirstie Whitaker décrire certaines de ces barrières dans [son exposé sur _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) à [csv, onf,v4](https://csvconf.com/2019) en mai 2019. Vous pouvez utiliser et réutiliser ses diapositives sous licence CC-BY via Zenodo (doi : [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)). La section décrivant la diapositive ci-dessous commence environ 5 minutes dans la vidéo.
