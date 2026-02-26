(rr-open-source)=

# Logiciel Open Source

(rr-open-source-whatis)=

## Qu'est-ce que le logiciel Open Source ?

When a software is open-source [{term}`def<Open Source Software>`], anybody can view, use, modify, and distribute its source code for any purpose.
These permissions are enforced through an {ref}`open-source licence<rr-licensing>`.
L'Open Source est puissant parce qu'il abaisse les barrières à l'adoption, permettant ainsi aux idées de se propager rapidement.
Dans sa forme la plus basique, ouvrir le logiciel signifie mettre votre code en ligne où il peut être consulté et réutilisé par d'autres.

La plupart des logiciels de recherche les plus utilisés sont les logiciels open source.
Perhaps the paradigmatic example is the scikit-learn Python package for machine learning {cite:ps}`pedregosa2012ScikitLearn`, which, in the space of just over five years, has attracted over 500 unique contributors, 20,000 individual code contributions, and 2,500 article citations.
La production d'un paquet comparable en utilisant une approche traditionnelle à code source fermé ne serait probablement pas réalisable.
Cela nécessiterait à tout le moins un budget de dizaines de millions de dollars.
While scikit-learn is an outlier, hundreds of other open-source packages that support much more domain-specific needs depend similarly on unsolicited community contributions; for example, the NIPY (neuroimaging in Python) group of projects in neuroimaging {cite:ps}`gorgolewski2016NIPY`).
Notamment, de telles contributions ne se traduisent pas seulement par de nouvelles fonctionnalités dont la communauté au sens large peut bénéficier, mais aussi régulièrement fournir à leurs auteurs respectifs une plus grande reconnaissance de la communauté, et conduire à de nouveaux projets et des opportunités d'emploi.

Les chercheurs qui utilisent des logiciels libres leur apportent souvent des modifications, comme l'ajout de fonctionnalités dont ils ont besoin pour leurs recherches ou la correction de bugs.
Ils pourront ensuite apporter ces améliorations au projet principal afin que la communauté au sens large puisse en profiter.

(rr-open-source-benefitsyou) =

## Comment l'exécution et la contribution aux projets logiciels Open-Source vous avantagent

- _Improve existing skills_: Whether it is coding, user interface design, graphic design, writing, or organizing, if you are looking for practice, there is a task for you on an open-source software project.
  De plus, l'open source nécessite un code plus propre et plus maintenable pour permettre une collaboration entre des milliers de personnes qui ne se rencontrent jamais.
  Cela aide à construire et à maintenir de bonnes habitudes de codage.
  Il ne faut pas sous-estimer les compétences des personnes que vous pouvez développer sur des projets de logiciels libres.
  L'Open Source offre des possibilités de pratiquer des compétences de leadership et de gestion, telles que la résolution de conflits, l'organisation d'équipes de personnes et la priorité du travail.
- _Advance your career_: By definition, all of your open source work is public, and this presents opportunities:
  - _Demonstrate technical ability_: Technical interviews traditionally involve working on a simulated problem that can be tackled in a set amount of time with little additional context.
    De telles simulations, par définition, ne sont pas des cas d'utilisation du monde réel et ne montrent pas non plus ce que pourrait être le travail avec un candidat.
    L'open source fournit une visibilité à la fois sur la façon dont un candidat résout les problèmes, et sur la façon dont il travaille avec les autres.
    Vous faites un employé beaucoup plus attrayant si un employeur peut voir la qualité de votre travail et vous voir travailler avec d'autres sur une longue période plutôt que de prendre une chance sur un seul brève, cas de stress élevé qui peut ne pas jouer à vos forces.
  - _Reputation_: Becoming an active member of the open source community can gain you a favourable reputation which may bolster future job prospects.
- _Meet people with similar interests_: Open source software projects with warm, welcoming communities keep people coming back for years, and many people form lifelong friendships through their participation in open source.
- _Find mentors and teach others_: Working with others on a shared project means you will have to explain how you do things, as well as ask other people for help. Les actes d’apprentissage et d’enseignement peuvent être une activité satisfaisante pour toutes les personnes impliquées.

### Rendre votre travail Open Source

- _Re-usability_: Making your work openly available for reuse makes it easier for others to incorporate into their research.
  If you make your software citeable, via a DOI [{term}`def<Digital Object Identifier>`] for example, this can increase your citations.
- _Contribution_: When you write closed source software, the only developers that can potentially detect, diagnose, triage, and resolve software bugs are those that have a copy of the code.
  Si votre projet est ouvert, le nombre de développeurs potentiels et donc le pool de connaissances potentiel sont des ordres de grandeur supérieure.
- _Feedback_: Making your work open enables you to get feedback and improve your project in a way you may never have thought of alone.
- _Accountability_: There is an argument that any software developed using government money should be open source by default; if the public has paid for its development they have a right to make use of it.
  Si votre travail est financé par le gouvernement, le faire ouvrir est une étape que vous pouvez franchir vers l'ouverture et la responsabilité du gouvernement.

### Contribuer aux projets de logiciels libres des autres

- _It is empowering to be able to make changes, even small ones_: You do not have to become a lifelong contributor to enjoy participating in open source.
  Avez-vous déjà vu une faute de frappe sur un site Web et souhaité que quelqu'un y remédie?
  Sur un projet de logiciels open source, vous pouvez le faire.
  L'Open Source aide les gens à se sentir agence au cours de leur vie et de la façon dont ils vivent le monde, et cela en soi est gratifiant.
- _It is fun_:
  Open source provides an endless, ever-changing set of Rubix cubes for you to solve on weekends. Tout comme les énigmes, les mots croisés et les jigsaws, l'open source fournit des échappements intellectuels de taille morte.

(rr-open-source-benefitsresearch)=

## Comment le logiciel libre bénéficie à la recherche

There are several ways in which open-source software benefits research:

(rr-open-source-benefitsresearch-reutilisable)=

### Reusable

Les projets de logiciels libres permettent aux chercheurs de tirer parti du travail de chacun.
Cela permet aux chercheurs d’appliquer leurs efforts à des travaux de grande valeur.
On dit parfois que « tous les problèmes faciles ont déjà été résolus ».
Blogging, gestion de contenu et systèmes d'exploitation sont tous des problèmes avec des solutions open-source établies (et traditionnelles) pour n'en citer que quelques-unes.
Alors que les développeurs pouvaient passer leur temps à réinventer des roues que la communauté open-source a déjà perfectionnées, Il est très préférable d’utiliser la meilleure roue du monde, surtout lorsque cette roue vous est offerte gratuitement.
Cela réduit la duplication des efforts et permet aux chercheurs de se concentrer sur les défis non résolus.

The {ref}`rr-code-reuse` provides a more in-depth list of different aspects to consider for making your code more reusable, whether this is a small script or a library.

(rr-open-source-benefitsresearch-checkable)=

### Vérifiable

Open-source projects allow the broader research community to read and test each others' code.
This way, bugs can be found more quickly, and other researchers can validate results.

(rr-open-source-benefitsresearch-collaborative)=

### Collaboratif

Working openly also allows any number of researchers to collaborate on projects that could not possibly be developed by single researchers/research groups.
Examples include [Linux](https://www.linux.org/) operating systems, Python packages such as [scipy](https://www.scipy.org/) and [numpy](http://www.numpy.org/), and the machine learning library [TensorFlow](https://www.tensorflow.org/).

(rr-open-source-run)=

## Comment exécuter votre projet de logiciel libre

You can open source an idea, a work in progress, or after years of being closed source.
At the most basic level, all you need to do is put your code online somewhere that is likely to last a long time.
You can make your code citeable by assigning it a DOI [{term}`def<Digital Object Identifier>`] (as discussed in the section on {ref}`rr-rdm-sharing`).
This helps ensure that you get proper credit if people use or build upon your work.

A popular place to make your code available is GitHub [{term}`def<Github>`] (see the chapter on {ref}`rr-vcs`).
You must include a license file stating that anyone has permission to use, copy, and modify your work. Without this, no one can legally use your work, and so it is not open source.
The {ref}`rr-licensing` chapter will help you to pick the best license for your project.
There are also a few other files you should include with your code, as described below.

(rr-open-source-run-readme)=

### Bienvenue aux utilisateurs en ajoutant des informations à votre README

You should include a README [{term}`def<README>`] file where you include useful information about what the project is, how to use it, and how to contribute to it. Here is a list of the main things a README should include:

- _The project name and what it is_: This will significantly help someone that comes across it to get an idea of the project. Inclure quelques points clés qui décrivent les principales caractéristiques du projet et les fonctionnalités que vous mettez en œuvre.
  Cela aide à comparer rapidement d'autres projets avec le vôtre et donne une idée de la raison pour laquelle le projet existe en premier lieu.
- _Instructions on how to install the project_: The installer might be a collaborator, someone that comes across and is interested in the project, or even you - if you get a new machine and need to re-install your project.
  Néanmoins, c'est un gaspillage total de vos ressources pour déterminer comment commencer le projet à partir de zéro.
  Les instructions devraient également inclure tous les prérequis nécessaires à l'exécution du projet.
  La meilleure chose que vous puissiez faire est d'écrire les instructions d'installation lorsque vous les faites vous-même, et vous économiserez rapidement des heures de travail dans le futur.
- _Instructions for how to run the code and any associated tests_: If you've been working on your project it may seem obvious how to run it, but this will likely not be the case for someone coming across it for the first time.
- _Links to related material_
- _List of authors/contributors to the project, possibly with contact information_
- _Acknowledgements_

Suppose you intend for other people to collaborate on your project (as opposed to just making your code available and considering it complete).
In that case, you should include Contributing Guidelines and most likely, a Code of Conduct.

(rr-open-source-run-guidelines)=

### Directives de contribution

Contributing Guidelines [{term}`def<Contributing Guidelines>`] tell your audience how to participate in your project. For example, you might include information on:

- Comment remplir un rapport de bogue
- Comment suggérer une nouvelle fonctionnalité
- Votre feuille de route ou votre vision du projet
- Comment les contributeurs devraient (ou ne devraient pas) entrer en contact avec vous

Using a warm, friendly tone and offering specific suggestions for contributions (such as writing documentation, or making a website) can go a long way in making newcomers feel welcomed and excited to participate.
For example, [Active Admin](https://activeadmin.info/index.html) starts its [contributing guide](https://github.com/activeadmin/activeadmin/blob/master/CONTRIBUTING.md) with: "First off, thank you for considering contributing to Active Admin. It’s people like you that make Active Admin such a great tool."

In the earliest stages of your project, your Contributing Guidelines file can be simple.
You should always explain how to report bugs or file issues, and any technical requirements (like tests) to make a contribution.
Over time, you might add other frequently asked questions here or in your readme file.
Writing down this information means fewer people will ask you the same questions over and over again.
It is also a good idea to link to your contributing guidelines file from your README, so more people see it.

(rr-open-source-run-conduct)=

### Code of Conduct

A Code of Conduct [{term}`def<Code of Conduct>`] helps set ground rules for behaviour for your project's participants.
This is especially valuable if you are launching an open-source project for a community or company.
A Code of Conduct empowers you to facilitate healthy, constructive community behaviour, which will reduce your stress as a maintainer.
It communicates how you expect participants to behave and describes who these expectations apply to, when they apply, and what to do if a violation occurs.

Much like open source licences, there are also emerging standards for codes of conduct, so you do not have to write your own. The [Contributor Covenant](https://contributor-covenant.org/) is a drop-in Code of Conduct that is used by [over 40,000 open source projects](https://www.contributor-covenant.org/adopters). No matter which text you use, you should be prepared to enforce your Code of Conduct when necessary.

Keep the file in your project's root directory, so it is easy to find, and link to it from your README.

(rr-open-source-contribute)=

## Comment contribuer à d'autres projets de logiciels libres

(rr-open-source-contribute-anatomy)=

### Anatomie d'un projet logiciel Open Source

Every open source community is different. That said, many open source software projects follow a similar organizational structure.
Understanding the different community roles and the overall process will help you get quickly oriented to any new project.

A typical open source software project has the following types of people:

- _Author_: The person/s or organization that created the project.
- _Owner_: The person/s who has administrative ownership over the organization or repository (not always the same as the original author).
- _Maintainers_: Contributors who are responsible for driving the vision and managing the organizational aspects of the project. They may also be authors and/or owners of the project.
- _Contributors_: Everyone who has contributed something back to the project.
- _Community Members_: People who use the project. Ils peuvent être actifs dans des conversations ou exprimer leur opinion sur la direction du projet.

Bigger projects may also have subcommittees or working groups focused on different tasks, such as tooling, triage, community moderation, and event organizing. Look on a project’s website for a “team” page, or in the repository for governance documentation, to find this information.

A great many open source projects are hosted on GitHub (see the chapter on version control for more detail), which has facilities such as:

- _Issue tracker_: Where people discuss issues related to the project.
- _Pull requests_: Where people discuss and review changes that are in progress.
- _Discussion forums or mailing lists_: Some projects may use these channels for conversational topics (for example, "How do I..." or "What do you think about..." instead of bug reports or feature requests). D'autres utilisent le traqueur de tickets pour toutes les conversations.
- _Synchronous chat channel_: Some projects use chat channels (such as Slack or IRC) for casual conversation, collaboration, and quick exchanges.

(rr-open-source-contribute-changes)=

### Contribuez à vos modifications

Say you have added a feature or fixed a bug and want to contribute this work to the main project.

1. _Read the documentation_: The main project may have contributing guidelines or information in a README instructing prospective contributors on how to supply their changes.
2. _Make sure your conventions match the style and structure of the main project_: For example, if all the variables in a project are named in some particular way yours should be too.
   Consistent conventions make it much easier for someone who has not seen your piece of the project before to understand it rather than having to figure out your particular set of conventions _and_ what the code is doing.
   Les conventions du projet peuvent être décrites dans sa documentation, ou peuvent simplement être évidentes lors de l'inspection du code lui-même.
3. _Break your changes up into manageable, well-defined chunks_: For example, if you have added two separate features, do not submit them together.
   Garder les choses « propres » de cette façon rend votre travail plus facile à comprendre et à évaluer.
4. _Test your changes_: If the project comes with tests, run them.
   Assurez-vous que vous testez avec une version à jour du projet car elle a pu évoluer considérablement au fil du temps. Écrivez des tests spécifiques pour vos changements et envoyez-les aussi.
5. _Do not just submit code, update relevant documentation too_: If your changes are incorporated, it will have to be updated. Si vous ne le faites pas, quelqu'un d'autre devra le faire.
6. _Ask questions_: If there are things you are unsure about, there is no harm in asking. De nombreux projets de plus grande envergure ont des forums dédiés ou d'autres lieux de questions et de discussions.
7. _Be clear_: When you submit your changes, clearly describe the changes you have made, why you have made them, and how they have been implemented.
   Il est ainsi plus facile pour quelqu'un de regarder votre travail et de décider s'il faut l'incorporer dans le projet principal pour le faire.
   In the likely case the main project is hosted on GitHub, you should put this in the pull request (see the chapter {ref}`rr-vcs` for more details).

(rr-open-source-contribute-looking)=

### À la recherche de projets à contribuer et comment y contribuer

You do not need to overthink what exactly your first contribution will be, or how it will look.
Instead, start by thinking about the projects you already use or want to use.
The projects you will actively contribute to are the ones you find yourself coming back to.
Within those projects, whenever you catch yourself thinking that something could be better or different, act on your instinct. You might scan a README and find a broken link or a typo.
Alternatively, you could be a new user and notice something is broken, or find an issue that you think should be in the documentation.
Instead of ignoring it and moving on, or asking someone else to fix it, see whether you can help out by pitching in. That is what open source is all about.

You can also use one of the following resources to help you discover and contribute to new projects:

- [Open Source Friday](https://opensourcefriday.com/)
- [First Timers Only](https://www.firsttimersonly.com/)
- [CodeTriage](https://www.codetriage.com/)

If you are not sure how to start, there are a few other ways you can go about it, such as finding an open issue to tackle or asking if you can help write a new feature.

A common misconception about contributing to open source is that you need to contribute code. In fact, it is often the other parts of a project that are most neglected or overlooked. You will do the project a huge favour by offering to pitch in with these types of contributions. You could:

- Examinez le code sur les soumissions d'autres personnes.
- Écrire et améliorer la documentation du projet.
- Organisez un dossier d'exemples montrant comment le projet est utilisé.
- Répondre aux questions sur le projet sur, par exemple, Stack Overflow,
- Garder les choses organisées, par exemple, sur GitHub par:
  - Lien vers les tickets dupliqués.
  - Suggérer de nouvelles étiquettes de tickets.
  - Passer en revue les questions ouvertes et suggérer de fermer les anciennes.
  - Posez des questions clarifiantes sur les questions récemment ouvertes pour faire avancer la discussion.

(rr-open-source-closed)=

## Logiciels fermés

What if you are working with people that do not use the open source model for their software?
This may initially seem an affront to all the principles discussed so far. However, there are usually very good reasons for why things are the way they are (for example legal, commercial, or security reasons).
Often, it will still be possible to use and contribute, but the details of how might be different.
The kinds of practices used in 'closed' software are generally the same, and the concepts and tools you can learn about in the Turing Way still apply.

Sometimes, however, there might not be good reasons for the closed source approach.
Different areas of research have different cultures which run against the grain of open principles and feel very frustrating.
Tackling this barrier can be very tricky as cultures can take years or decades to change.

Working with closed software can offer both opportunities and threats to your research.
In all cases, understanding and respecting other's perspectives offers the greatest chances of success.
