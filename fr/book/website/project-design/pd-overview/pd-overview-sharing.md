(partage d'aperçu-pd)=

# Partagez votre travail de recherche

In order to make sure that (most) research outputs are available to everyone interested in analysing or reusing them, let's take some time to learn about how to share them.
Science can only progress when we build on each other's work.
Different digital research outputs or {ref}`research objects<cm-ro>`, such as data, software and code, protocols, reagents, and hardware, can be shared as open results on the web.
They should come with specific information such as licenses, documentation and source code (repository, online index or archive).

Sharing online is not enough - you should make sure that knowledge discovery and navigation process is clearly described.
You need to make sure that your research objects are **F**indable, **A**ccesible, **I**nteroperable and **R**eusable.
This is referred to as {ref}`FAIR Principles<rr-rdm-fair>` that provides guidelines to improve the Findability, Accessibility, Interoperability and Reusability of digital assets; all of which support research reproducibility.

This aspect is already considered when developing your {ref}`Data Management Plan (DMP)<rr-rdm-dmp>` (see {ref}`pd-overview-planning-dmp`).
Therefore, it is important to revisit your DMP to make sure that the guidelines are applied when making your results available.
You can learn more about this in a chapter on {ref}`making data FAIR<rr-rdm-fair>`).

(pd-overview-sharing-archive)=

## Share your data

When legally possible, your data should be archived in an open place, where people can access them.
If you have sensitive data, you will not be able to share the raw data, but there may be some data you can share.
A repository is a good place to store your data.

An overview of some repositories available for archiving your data can be found in [re3data.org](https://www.re3data.org/).

Another good resource where you can read more about this topic is the chapter on {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(pd-overview-sharing-protocols)=

## Partagez vos protocoles

L'une des raisons pour lesquelles la recherche reproductible est de fournir aux autres les outils nécessaires pour s'appuyer sur elle.
Si les détails des protocoles ne sont pas partagés, les chercheurs peuvent passer des mois à les optimiser avant de pouvoir commencer leurs projets.

A tool that can be used to avoid this is [protocols.io](https://www.protocols.io/).
Il fournit un moyen de s'assurer que vos protocoles sont ouvertement disponibles, vous permettant de les mettre à jour tout en gardant une trace des changements.
En outre, avoir vos protocoles en ligne les rend plus faciles à partager, ce qui leur donne la possibilité de contribuer.
You can also link protocol DOIs to related research outputs (datasets, papers) using connection metadata - see our [chapter on linking research outputs](#cm-citable-linking) for guidance on creating these connections.

The benefits of making protocols FAIR and citable extend beyond credit: searchable protocols help others find proven methods, DOIs enable impact tracking, and formal citations encourage rigorous protocol documentation.
Protocols.io provides [detailed guidance on protocol DOIs](https://www.protocols.io/help/dois), and Nature Protocols offers [best practices for protocol citation](https://www.nature.com/nprot/).
For more information on how DOIs work, see our [chapter on persistent identifiers](#rr-rdm-pid).

## Partage des scripts d'analyse et des logiciels de recherche

If you have been using a version control system with a public repository (see the {ref}`Version Control<rr-vcs>` chapter), you have already done most of the work.
You should now consider putting a snapshot of your code in a repository, so you can be sure it gets archived for a relatively long time, and it become citable.
Indeed, there is no guarantee that the repository will stay available for a long time.

Vous pouvez intégrer votre système de contrôle de version avec un référentiel d'usage général.
For example, when integrating GitHub or Gitlab with Zenodo (see {ref}`cm-citable-cite-software`), you can get Digital Object Identifiers or DOIs for your software.
Cela facilite automatiquement le partage et le rend citable.
You can read about DOIs in the chapter on {ref}`Making Research Components Citable<cm-citable>`.

## Share Research Hardware

In absence of better solution, you may deal with your hardware documentation with the same strategy as with your software: using version control  repositories during its development, and zenodo integration for archiving.
If your documentation is in the form of a website, try to provide a independent html build that can run without a server.

## Share reagents

Depending on your research domain, you may have produced reagents (genetic material or tissue for example).
If there is a specific bank for these products that can share them widely, you may consider using them.
Make sure a persistent identifier is given, an that the description of your reagents have enough metadata to make sharing useful.

## Collecter vos Recherches

Une fois votre recherche terminée, vous voudrez peut-être rassembler toutes les parties numériques de votre projet en un seul endroit.
Cela s'appelle un recueil de recherche.
Publier votre papier avec un compendium de recherche permet l'étendue de votre recherche : à partir de la conception du projet, grâce à la mémoire de données et à l'analyse et aux résultats obtenus.

Cela présente des avantages sans fin. Il rend votre travail partageable et reproductible, les autres peuvent s'appuyer sur lui et vous donner plus de visibilité.

You can read how to set up your research compendia, {ref}`this chapter<rr-compendia>`.

(pd-overview-sharing-Licence)=

## Ajouter une licence aux résultats de recherche

Même si vous avez obtenu une licence au début du projet, vous devez y réfléchir à nouveau lorsque vous partagez vos résultats et les résultats finaux - cela permet aux gens d'avoir l'information sur la façon dont votre recherche doit être réutilisée et partagée.

If you want more information about how to choose and add a license to your project you can check the {ref}`Licensing Chapter<rr-licensing>`.

(citation pd-overview) =

## Recevoir des Citations

Tout ce dur travail aura sa récompense. Après avoir publié toutes vos recherches, de la conception aux résultats, vous aurez plus de visibilité à votre travail et plus de possibilité d'obtenir du crédit.

Non seulement vos résultats peuvent être cités, mais vos méthodes et protocoles peuvent être réutilisés et votre conception peut être partagée.

Read {ref}`this chapter on ORCID<cm-citable-orcid>` for more information about how you can collect different research outputs in one place using ORCID and highlight them to get fair credit for your work.
