(pd-overview-methods)=

# Méthodes de reproductibilité

Concevoir un projet commence par définir votre question de recherche et la méthodologie qui sera utilisée pour répondre à cette question.
When thinking about the methodology is necessary to think about how to make your research {ref}`open<rr-open>` and {ref}`reproducible<rr-overview>`:

- Comment vous allez collecter les données.
- Quelle analyse sera utilisée.
- Quels outils et quelles infrastructures sont nécessaires.

(pd-overview-methods-license)=

## Choisir une licence

L'obtention d'une licence est une étape cruciale dans la recherche ouverte.
La recherche ne doit pas nécessairement être menée à bien pour être utile aux autres.
Avoir une licence est le moyen de communiquer comment voulez-vous que vos recherches soient utilisées et partagées.

Il existe différents types de licences selon le type de projet et les préférences pour la réutilisation et le partage.
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.

To learn more about how to add a license to your project, read the {ref}`Licensing<rr-licensing>` chapter in the Guide for Reproducible Research.

(pd-overview-planning-dmp)=

## Plan de gestion des données

Les données collectées dans un projet de recherche ont une durée de vie plus longue que la recherche qui les crée.
Il est donc nécessaire de réfléchir à la manière dont les données seront utilisées, archivées et partagées.
La création d'un plan de gestion des données (PDD) est un moyen de prendre des décisions importantes sur la façon de gérer vos données tout en fournissant aux autres des renseignements à ce sujet.

Read the chapter on {ref}`DMP<rr-rdm-dmp>` To learn about what should be included in a Data Management Plan.
Comprehensive information on data management is available in the chapter {ref}`Research Data Management<rr-rdm>`.

(pd-overview-methods-comprepro)=

## Reproducibilité informatique

La réflexion sur les logiciels, outils et plateformes à utiliser affectera grandement la façon dont vous analysez et traitez les données, ainsi que la façon dont vous partagez vos résultats.

L'idée est de faciliter les autres, et vous-même, recréer le processus de mise en place nécessaire pour reproduire vos recherches.
Certains outils qui peuvent être utilisés pour les activer sont les suivants :

- **Dependency managers**: these keep dependencies updated and make sure the same version of dependencies you used in the development environment are used when reproducing a result.
- **Containers**: are a way to create environments that are isolated from other applications.
- **Notebooks**: a useful online environment where you can execute your scripts, and easily add notes and additional information.
  L'avantage supplémentaire est que vous n'aurez pas besoin d'installer quoi que ce soit.

To learn more about how to create a reproducible environment, the chapter on {ref}`Reproducible Environments<rr-renv>` is a good place to start.

(pd-overview-methods-docs)=

## Documenter la conception de votre étude

Après avoir décidé de collecter vos données, analysez-les et quels outils utiliser, un bon moyen de documenter ces décisions est de rédiger un rapport enregistré.

Un rapport enregistré souligne l'importance de la question de la recherche et des méthodes qui seront utilisées. Ils sont examinés par des pairs avant la recherche, ce qui permet de passer de l'examen des résultats à la substance des méthodes de recherche. You can find out more in our {ref}`Chapter on Registered Reports<cm-dif-articles-registered-reports>`.

(pd-overview-planning-help)=

## Collaborer et demander de l'aide

Vous n'avez pas à travailler seul. Faire collaborer les autres avec votre projet est la meilleure façon d'améliorer la reproductibilité et la qualité de votre travail.

If you don't know where to start, a good place would be the {ref}`Guide for Communication<cm>` and the {ref}`Guide for Collaboration<cl>`.

## Référence

Turkyilmaz-van der Velden, Y., Dintzner, N., Teperek, M., "Reproducibility Starts from You Today." Motifs, vol. 1, no 6, 11 septembre 2020, p. 100099, doi:10.1016/j.patter.2020.100099. [Read Online on Science Direct](https://www.sciencedirect.com/science/article/pii/S2666389920301331)
