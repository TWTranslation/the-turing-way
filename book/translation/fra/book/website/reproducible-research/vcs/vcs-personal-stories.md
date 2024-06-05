(rr-vcs-personnal-histoires)=
# Histoires Personnelles

(rr-vcs-personnal-histoires-interiew)=
## Un entretien avec Adina sur Datalad

Le contrôle des données de la version peut être un défi. Adina le sait parce qu'elle fait partie d'une équipe qui développe DataLad et l'utilise pour résoudre les défis de la gestion des données. Kirstie l'interroge au sujet de son travail et pourquoi elle pense que les données de versioning sont essentielles.


**Kirstie**: Bonjour Adina, merci d'avoir contribué au chapitre sur le contrôle de version des données ! Je sais que vous êtes un développeur pour DataLad, et je suis heureux d'en savoir plus sur le projet. Pouvez-vous commencer par me dire sur qui vous êtes et sur quoi vous travaillez?

**Adina**: Hey Kirstie, merci de fournir un espace pour le thème du contrôle des versions ! Je suis un doctorat en neurosciences, et je fais partie du laboratoire qui développe DataLad. Outre le travail sur les questions neuroscientifiques, je travaille également sur les défis de la gestion des données qui sont typiques pour mon domaine, comme "J'ai 300 Go de données, comment puis-je éventuellement contrôler la version ou partager cela? , ou "Comment puis-je relier mes analyses à la version des données que j'ai utilisée?". En tant que neuroscientifique, j'ai le privilège de travailler dans un domaine avec de nombreux ensembles de données fantastiques et ouverts, mais il est aussi difficile de gérer, de partager et de garder une trace des données qui peuvent facilement être de plusieurs centaines de Go en taille.

**Kirstie**: Fabricant, donc comment DataLad vous aide dans votre travail ?

**Adina**: DataLad me permet de contrôler et de partager des données de n'importe quelle taille, et je l'utilise pour attacher des données dans des versions précises au code et aux manuscrits que je crée. Lorsque je fais des analyses de données et que les données sous-jacentes sont modifiées, je peux mettre à jour mes dépôts et recalculer mes scripts. Cela m'aide à évaluer si mes résultats sont reproductibles. Et tout comme Git, c'est un excellent moyen de se souvenir de ce que j'ai fait pour mes données. Il a quelques fonctions cool pour la capture de provenance, et je peux juste vérifier mon historique Git pour savoir à partir de quelles données une figure particulière a été créée, par exemple.


**Kirstie**: Cool, alors qu'est-ce qui rend DataLad mieux adapté à ce que vous faites que d'autres outils que les données de contrôle de version ?

**Adina**: J'aime personnellement DataLad, car en plus de la fonctionnalité que Git et `git-annex` fournissent, Il facilite la mise en relation et la réutilisation de parties modulaires de ma recherche. Quand je travaille sur une analyse, je publie les données, le code + les résultats, et le manuscrit en tant que dépôts Git séparés contrôlés par la version sur GitHub. Mais ces dépôts sont liés ensemble afin que quelqu'un qui lit mon manuscrit puisse retracer toutes les étapes qui ont été entreprises pour créer ce résultat, retour aux données originales. Je peux partager mon analyse sur GitHub et avoir des données, du code et même des environnements logiciels, pour permettre aux autres de reproduire mes résultats, et je trouve que c'est une fonctionnalité très puissante.

**Kirstie**: Et en tant que membre de l'équipe DataLad, comment contribuez-vous au logiciel ?

**Adina**: Ma principale motivation est de rendre le logiciel accessible aux utilisateurs de tous les arrière-plans. Si les scientifiques ne reçoivent aucune formation formelle en matière de contrôle des versions ou de gestion des données de recherche, il peut être difficile de travailler la reproduction. Je pense que si le logiciel est facile à utiliser et bien documenté, il peut aider les scientifiques à faire de meilleures sciences. Sage logiciel, je travaille donc sur les fonctionnalités d'aide et d'UX, et dans la documentation, je travaille sur des tutoriels qui sont adaptés aux utilisateurs indépendants du niveau de compétence ou d'arrière-plan.

**Kirstie**: Quel est le voyage de DataLad et comment en avez-vous fait partie ?

**Adina**: DataLad a été créé à l'origine par Michael Hanke et Yarik Halchenko en 2014. Ils voulaient avoir un outil qui leur permettait d'installer des données aussi facilement que les paquets logiciels et de suivre comment les données changent. `git-annex` existait déjà à ce stade, mais ils voulaient le construire pour le rendre plus facile à utiliser. Au fil des ans, cet outil est devenu un outil commun de contrôle de version et de gestion des données pour faciliter le partage des données, le suivi des révisions et les calculs reproductibles. J'ai rejoint le laboratoire il y a près de deux ans en tant qu'étudiant de maîtrise en psychologie clinique, excité pour des sciences ouvertes et reproductibles, mais au sens technologique complet du débutant : Je n'avais jamais entendu parler du contrôle de version, aucune expérience de programmation, et l'idée que les données sont dynamiques était perspicace, mais complètement nouvelle pour moi. Naturellement, lorsque j'ai commencé à utiliser DataLad, j'ai été complètement submergé. Heureusement, il y avait beaucoup de gens pour m'aider à commencer et me donner les informations de base nécessaires. Je sais, cependant, qu'un tel environnement d'apprentissage n'est pas la valeur par défaut, donc lorsque j'ai commencé mon doctorat, J'ai en fait créé la ressource dont j'aurais eu besoin pour commencer en tant qu'étudiant : [Le manuel de DataLad](http://handbook.datalad.org).

**Kirstie**: Merci beaucoup de nous avoir parlé de cet outil. Le manuel est donc là où les gens peuvent en savoir plus, s'ils le veulent?

**Adina**: Oui, je les orienterais vers [Le manuel DataLad](http://handbook.datalad.org). Il est conçu pour être un tutoriel accessible et code-along qui convient aux chercheurs indépendants de leurs antécédents - je pense que vous ne devriez pas avoir à être un crank Linux ou un informaticien pour les données de contrôle de version.
