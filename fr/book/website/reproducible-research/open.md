(rr-open)=

# Recherche ouverte

(rr-open-prerequisites)=

## Prerequisites

| Prerequisite  | Importance | Notes                                               |
| ------------- | ---------- | --------------------------------------------------- |
| {ref}`rr-vcs` | Helpful    | L'expérience avec GitHub est particulièrement utile |

```{figure} ../../figures/evolution-open-research.*
---
name: evolution-open-research-rr
alt: This image shows a researcher evolving their research practices to move towards the era of open research. The image starts with the person looking anxious about engaging with open science, slowly they take a few steps, feel comfortable about sharing their work, and finally start to collaborate with others.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=

## Summary

La recherche ouverte vise à transformer la recherche en la rendant plus reproductible, transparente, réutilisable, collaborative, responsable et accessible à la société. Il pousse au changement dans la manière dont la recherche est menée et diffusée par des outils numériques. One definition of open research, [as given by the Organisation for Economic Co-operation and Development (OECD)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), is the practice of making "the primary outputs of publicly funded research results – publications and the research data – publicly accessible in a digital format with no or minimal restriction." Pour parvenir à cette ouverture de la recherche, chaque élément du processus de recherche devrait :

- _Be publicly available_: It is difficult to use and benefit from knowledge hidden behind barriers such as passwords and paywalls.
- _Be reusable_: Research outputs need to be licensed appropriately, so that prospective users know any limitations on reuse.
- _Be transparent_: With appropriate metadata to provide clear statements of how research output was produced and what it contains.

Schematically, the research process has the following form: data are collected and then analysed (often using software). Ce processus peut impliquer l'utilisation de matériel spécialisé. Les résultats de la recherche sont ensuite publiés. Throughout the process, it is good practice for researchers to document their work. This can happen in notebooks or other forms of documentation. For experimental studies, Electronic Lab Notebooks are common. La recherche ouverte vise à ouvrir chacun de ces éléments:

- _Open Data_: Documenting and sharing research data openly for reuse.
- _Open Source Software_: Documenting research code and routines, and making them freely accessible and available.
- _Open Hardware_: Documenting designs, materials, and other relevant information related to hardware, and making them freely accessible and available.
- _Open Access_: Making all published outputs freely accessible for maximum use and impact.
- _Open Notebooks_: An emerging practice, documenting and sharing the experimental process of trial and error.

See the [Open Definition](https://opendefinition.org/) for a set of principles that define “openness” in relation to data and content. The above elements are expanded upon in this chapter.

Open scholarship [{term}`def<Open Scholarship>`] is a concept that extends open research further. Il s'agit de rendre accessibles au public d'autres aspects de la recherche scientifique, par exemple:

- _Open educational resources_: Making educational resources publicly available to be re-used and modified.
- _Equity, diversity, inclusion_: Ensuring scholarship is open to anyone without barriers based on factors such as race, background, gender, and sexual orientation.
- _Citizen science_: The inclusion of members of the public in scientific research.

Ces éléments sont également discutés en détail dans ce chapitre.

(rr-open-useful)=

## Motivation and Background

Il y a cinq grandes écoles de pratiques ouvertes qui motivent la pensée au profit de la recherche :

| École          | Croyance                                                                                                           | Visée                                                                                                            |
| -------------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| Infrastructure | Une recherche efficace dépend des outils et des applications disponibles.                          | Créer des plates-formes, des outils et des services ouvertement disponibles pour les chercheurs. |
| Pragmatique    | La création de connaissances pourrait être plus efficace si les chercheurs travaillaient ensemble. | Ouverture du processus de création de connaissances.                                             |
| Mesure         | Les contributions universitaires d'aujourd'hui ont besoin de mesures d'impacts alternatives.       | Développer un système métrique alternatif pour l'impact de la recherche.                         |
| Démocratique   | L'accès à la connaissance est inégalement distribué.                                               | Rendre les connaissances disponibles gratuitement pour tout le monde.                            |
| Publique       | La recherche doit être rendue accessible au public.                                                | Rendre la recherche accessible aux citoyens.                                                     |

Les pratiques ouvertes profitent également aux chercheurs qui les diffusent.
For example, there is evidence {cite:t}`McKiernan2016Open` that open access articles are cited more often, as shown by the metastudy presented in the figure below.

```{figure} ../../figures/open-access-citations.*
---
height: 500px
name: open-access-citations
alt: A plot of the relative citation rate (OA divided by non-OA), in the x axis, for 19 different areas of knowledge, in the y axis. The areas of knowledge are organized from the highest to the lowest Relative Citation Rate in the following order - Agricultural Studies, Physics/Astronomy, Medicine, Computer Science, Sociology/Social Sciences, Psychology, Political Science, Management, Law, Economics, Mathematics, Health, Engineering, Philosophy, Education, Business, Communications Studies, Ecology, and Biology. The highest mean values are around 3.2 for Agricultural Studies, and the lowest are around 1.2 for Biology.
---
The relative citation rate (OA: non-OA) in 19 fields of research. This rate is defined as the mean citation rate of OA articles divided by the mean citation rate of non-OA articles. Multiple points for the same discipline indicate different estimates from the same study or estimates from several studies. (See {cite:ps}`McKiernan2016Open`.)
```

Un autre avantage de l'ouverture est que, même si les collaborations de recherche sont essentielles pour faire progresser les connaissances, identifier et établir des liens avec des collaborateurs appropriés n'est pas négligeable. Des pratiques ouvertes peuvent faciliter la connexion des chercheurs en augmentant la visibilité et la capacité de découverte du travail, faciliter l'accès rapide aux nouvelles données et aux nouvelles ressources logicielles et créer de nouvelles possibilités d'interaction avec les projets communautaires en cours et de contribution.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
