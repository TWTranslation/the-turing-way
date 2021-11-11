(ch-consistcy-language)=
# Langue

La langue se préoccupe de la manière dont les concepts et les idées dans _La Voie Turing_ sont exprimés. Un langage cohérent garantit que _The Turing Way_ est clair et compréhensible.

(ch-consistcy-language-hr)=
## Exigences difficiles

Les vérifications dures qui traitent du langage _The Turing Way's_ incluent :

(ch-consistcy-language-hr-grammaire)=
### Vérification 1 : Assurer une grammaire correcte et une tonalité homogène dans le livre

Une grammaire correcte et un ton cohérent aideraient les lecteurs de tous les horizons, de toutes les connaissances et de tous les niveaux de compétences pour mieux comprendre le contenu de _The Turing Way_.

En plus d'être distrayante, une grammaire incorrecte pourrait enlever ce qu'un texte tente de communiquer.

Des outils tels que [Grammarly](https://grammarly.com), [Grammar Ginger](https://gingersoftware.com/grammarcheck), et [Reverso Speller](https://reverso.net/spell-checker/english-spelling-grammar/) peut aider à attraper des erreurs grammaticales présentes dans un morceau de texte. Ces outils peuvent être utilisés pour évaluer la grammaire dans les nouvelles contributions et le contenu existant de _The Turing Way_. En outre, lors de la levée de PRs pour de nouveaux contenus, invitez les examinateurs à vérifier également la grammaire. Cela pourrait aider à minimiser le nombre d'erreurs grammaticales qui le rendent à la version finale de _The Turing Way_.

En ce qui concerne le ton, assurez-vous que les chapitres adhèrent à un style formel d'écriture et que les phrases sont faciles à digérer. Une règle à considérer est que si une phrase doit être lue plus d'une fois pour être comprise, alors il doit probablement être reformulé.

#### Démo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/Prv23kGekVY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistcy-language-hr-language)=
### Vérifier 2 : Assurez-vous que les chapitres utilisent un langage cohérent
`{note} La langue, dans ce contexte, fait référence aux variantes américaines et britanniques de la langue anglaise.`

Avec les contributeurs du monde entier, _The Turing Way_ ne restreint pas le langage utilisé pour écrire des chapitres. Cela rend plus facile pour les contributeurs d'apporter leurs points de vue en écrivant du contenu pour _The Turing Way_. La recommandation est plutôt que si un chapitre est écrit dans un style (par exemple, l'anglais britannique), il devrait rester cohérent tout au long de la procédure. Cela rend _la voie de Turing_ moins distrayante et plus facile à lire.

(-cohérence-language-hr-abréviations)=
### Vérification 3 : Assurez-vous que les abréviations latines ne sont pas utilisées pour écrire des chapitres

Lors de l'écriture de contenu pour _The Turing Way_, l'utilisation des abréviations latines est déconseillée. Cela est dû au fait que les lecteurs d'écran peuvent les lire à haute voix d'une manière qui est confuse pour ceux qui comptent sur de tels appareils.

De plus, comme décrit dans le guide de style {ref}`<ch-style>`, les contributions qui contiennent des abréviations latines vont échouer le flux de travail d'intégration continue du dépôt _The Turing Way_.

Veuillez vous référer au guide de style de {ref}`<ch-style>` pour des recommandations sur la façon d'éviter les abréviations latines courantes dans votre écriture.
