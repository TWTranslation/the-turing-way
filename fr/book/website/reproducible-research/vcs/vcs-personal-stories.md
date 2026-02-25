(rr-vcs-personnal-histoires)=

# Histoires Personnelles

(rr-vcs-personnal-histoires-interiew)=

## Un entretien avec Adina sur Datalad

Le contrôle des données de la version peut être un défi. Adina le sait parce qu'elle fait partie d'une équipe qui développe DataLad et l'utilise pour résoudre les défis de la gestion des données.
Kirstie l'interroge au sujet de son travail et pourquoi elle pense que les données de versioning sont essentielles.

**Kirstie**: Hi Adina, thank you for contributing the chapter on version control for data!
Je sais que vous êtes un développeur pour DataLad, et je suis heureux d'en savoir plus sur le projet.
Pouvez-vous commencer par me dire sur qui vous êtes et sur quoi vous travaillez?

**Adina**: Hey Kirstie, thanks a lot for providing a space for the topic of version-controlling data!
Je suis un doctorat en neurosciences, et je fais partie du laboratoire qui développe DataLad.
Outre le travail sur les questions neuroscientifiques, je travaille également sur les défis de la gestion des données qui sont typiques pour mon domaine, comme "J'ai 300 Go de données, comment puis-je éventuellement contrôler la version ou partager cela? , ou "Comment puis-je relier mes analyses à la version des données que j'ai utilisée?".
En tant que neuroscientifique, j'ai le privilège de travailler dans un domaine avec de nombreux ensembles de données fantastiques et ouverts, mais il est aussi difficile de gérer, de partager et de garder une trace des données qui peuvent facilement être de plusieurs centaines de Go en taille.

**Kirstie**: Fab, so how does DataLad help with your work?

**Adina**: DataLad lets me version control and share data of any size, and I use this to attach data in precise versions to code and manuscripts I create.
Lorsque je fais des analyses de données et que les données sous-jacentes sont modifiées, je peux mettre à jour mes dépôts et recalculer mes scripts.
Cela m'aide à évaluer si mes résultats sont reproductibles.
Et tout comme Git, c'est un excellent moyen de se souvenir de ce que j'ai fait pour mes données.
Il a quelques fonctions cool pour la capture de provenance, et je peux juste vérifier mon historique Git pour savoir à partir de quelles données une figure particulière a été créée, par exemple.

**Kirstie**: Cool, so what makes DataLad better suited for what you do than other tools that version control data?

**Adina**: I personally like DataLad, because on top of the functionality that Git and `git-annex` provides, it makes linking and reusing modular parts of my research easy.
Quand je travaille sur une analyse, je publie les données, le code + les résultats, et le manuscrit en tant que dépôts Git séparés contrôlés par la version sur GitHub.
Mais ces dépôts sont liés ensemble afin que quelqu'un qui lit mon manuscrit puisse retracer toutes les étapes qui ont été entreprises pour créer ce résultat, retour aux données originales.
Je peux partager mon analyse sur GitHub et avoir des données, du code et même des environnements logiciels, pour permettre aux autres de reproduire mes résultats, et je trouve que c'est une fonctionnalité très puissante.

**Kirstie**: And as a part of the DataLad team, how do you contribute to the software?

**Adina**: My main motivation is to make the software accessible for users of all backgrounds.
Si les scientifiques ne reçoivent aucune formation formelle en matière de contrôle des versions ou de gestion des données de recherche, il peut être difficile de travailler la reproduction.
Je pense que si le logiciel est facile à utiliser et bien documenté, il peut aider les scientifiques à faire de meilleures sciences.
Sage logiciel, je travaille donc sur les fonctionnalités d'aide et d'UX, et dans la documentation, je travaille sur des tutoriels qui sont adaptés aux utilisateurs indépendants du niveau de compétence ou d'arrière-plan.

**Kirstie**: What is the journey of DataLad, and how did you get to be a part of it?

**Adina**: DataLad was originally created by Michael Hanke and Yarik Halchenko in 2014.
Ils voulaient avoir un outil qui leur permettait d'installer des données aussi facilement que les paquets logiciels et de suivre comment les données changent.
`git-annex` already existed at this point, but they wanted to build upon it to make it easier to use.
Au fil des ans, cet outil est devenu un outil commun de contrôle de version et de gestion des données pour faciliter le partage des données, le suivi des révisions et les calculs reproductibles.
J'ai rejoint le laboratoire il y a près de deux ans en tant qu'étudiant de maîtrise en psychologie clinique, excité pour des sciences ouvertes et reproductibles, mais au sens technologique complet du débutant : Je n'avais jamais entendu parler du contrôle de version, aucune expérience de programmation, et l'idée que les données sont dynamiques était perspicace, mais complètement nouvelle pour moi.
Naturellement, lorsque j'ai commencé à utiliser DataLad, j'ai été complètement submergé.
Heureusement, il y avait beaucoup de gens pour m'aider à commencer et me donner les informations de base nécessaires.
I know, however, that such a learning environment is not the default, so when I started my PhD, I actually created the resource that I would have needed to get started as a student: [The DataLad Handbook](http://handbook.datalad.org).

**Kirstie**: Thanks a lot for telling us about this tool.
Le manuel est donc là où les gens peuvent en savoir plus, s'ils le veulent?

**Adina**: Yes, I would point them to [The DataLad Handbook](http://handbook.datalad.org).
Il est conçu pour être un tutoriel accessible et code-along qui convient aux chercheurs indépendants de leurs antécédents - je pense que vous ne devriez pas avoir à être un crank Linux ou un informaticien pour les données de contrôle de version.
