(rr-checklist-for-code-review)=

# Liste de contrôle pour le processus de révision du code

Cette section présente quelques listes de contrôle pour le codeur et l’examinateur, dans le cadre d’un processus d’examen formel.
Les listes de contrôle des réviseurs sont divisées en deux catégories : une pour l'ensemble du programme et une pour les fichiers individuels ou les modifications proposées.

Les listes sont créées en mettant l'accent sur de bonnes pratiques d'ingénierie logicielle et sont destinées à être une source d'inspiration.
Lors de l'évaluation des listes de contrôle, il est recommandé de déterminer dans quelle mesure le point mentionné est implémenté.
Certains éléments des listes peuvent ne pas s'appliquer à votre projet ou à votre langage de programmation, auquel cas ils devraient être ignorés.

Dans tous les cas, l'objectif est d'utiliser votre expérience de programmation pour trouver comment améliorer le code.

## Pour le codeur

- Does the new code meet the required standards of the project?
  The standards are typically written under `contributing guidelines` by the project you are contributing to.
- Is there [documentation](#rr-checklist-for-code-review:documentation) that meets the required standards of the project?
- Are you following any declared {ref}`style guide<rr-code-quality>` for the project?
- Are there new [tests](#rr-checklist-for-code-review:tests) for the new material, based on the required standards of the project?
  - Ces tests sont-ils passés localement ?
  - Les tests dans le reste de la base de code sont-ils toujours passés localement ?
- Créer la pull request.
- Many {ref}`continuous integration (CI)<rr-ci>` systems will check if the tests in the main project pass automatically once you create a pull request.
  Si le référentiel utilise une CI, assurez-vous que toutes les versions et les tests sont terminés.
  Consultez les rapports CI pour voir si votre code cause l'échec des tests dans le projet principal.
- Si nécessaire, demander officiellement un réexamen.

## Pour le relecteur

- Vérifiez les normes requises du projet. The standards are typically written under
  `contributing guidelines` by the project you are contributing to.
- Check the code meets basic project {ref}`style guide<rr-code-quality>`, if this is not automatically checked by {ref}`continuous integration (CI)<rr-ci>`.
- Do the [tests](#rr-checklist-for-code-review:tests) and [documentation](#rr-checklist-for-code-review:documentation) conform to the standards?
- Est-ce que tout le code est facilement compris ? Depending on the language, files may contain interfaces, classes or other type definitions, and functions (see [Architecture](#rr-checklist-for-code-review:architecture)).
  Les concepts architecturaux essentiels peuvent être revus comme suit:
  - Check the [interfaces](#rr-checklist-for-code-review:interfaces) lists.
  - Check the [classes and types](#rr-checklist-for-code-review:classes-and-types) lists.
  - Check the [function/method declarations](#functionmethod-declarations) lists.
  - Check the [function/method definitions](#functionmethod-definitions) lists.
- Do the [tests](#rr-checklist-for-code-review:tests) actually ensure the code is robust in its intended use?
  - Y a-t-il des bugs ou d'autres défauts?
- Are [security](#rr-checklist-for-code-review:security) issues handled correctly?
  - Check the [security of new code](#rr-checklist-for-code-review:security-new-code).
- Does the new code meet the [legal requirements](#rr-checklist-for-code-review:legal)?

## Liste de contrôle du niveau du programme

Voici une liste de choses à considérer lorsque vous regardez le programme dans son ensemble,
plutôt que de regarder un fichier ou un changement individuel.

(rr-checklist-for-code-review:documentation)=

### Documentation

La documentation est une condition préalable pour utiliser, développer et examiner le programme.
Quelqu'un qui n'est pas impliqué dans votre projet devrait comprendre ce que fait votre code,
et quelle approche vous adoptez. Voici quelques choses à vérifier.

- Y a-t-il une description du but du programme ou de la bibliothèque ?
- Les exigences détaillées sont-elles répertoriées ?
- Are requirements ranked according to [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- L'utilisation et la fonction des bibliothèques tierces sont-elles documentées ?
- La structure/architecture du programme est-elle documentée ? (voir ci-dessous)
- Y a-t-il un manuel d'installation ?
- Y a-t-il un manuel d'utilisateur?
- Y a-t-il de la documentation sur la façon de contribuer?
  - Inclure comment soumettre les modifications
  - Inclure comment documenter vos modifications

(rr-checklist-for-code-review:architecture)=

### Architecture

Ces éléments sont principalement importants pour les programmes plus grands, mais peuvent quand même être de bon
à considérer pour les petits aussi.

- Le programme est-il divisé en modules clairement séparés ?
- Ces modules sont-ils aussi petits qu'ils peuvent être ?
- Is there a clear, hierarchical or layered, dependency structure between
  these modules?
  - If not, the functionality should be rearranged, or perhaps heavily
    interdependent modules should be combined.
- Peut-on simplifier la conception ?

(rr-checklist-for-code-review:security)=

### Sécurité

Si vous faites des logiciels accessibles au monde extérieur (par exemple une application web
), la sécurité devient importante. Les problèmes de sécurité sont des défauts,
mais tous les défauts ne sont pas des problèmes de sécurité. Une conception consciente de la sécurité peut aider
à atténuer l'impact des défauts sur la sécurité.

- Quels modules traitent de la saisie de l'utilisateur ?
- Quels modules génèrent une sortie ?
- Les éléments d'entrée et de sortie sont-ils compartimentés ?
  - If not, consider making separate modules that manage all input
    and output, so validation can happen in one place.
- Dans quels modules les données non fiables sont-elles présentes ?
  - Moins il y a de choses à faire.
- Les données non fiables sont-elles compartimentées ?
  - Ideally, validate in the input module and pass only
    validated data to other parts.

(rr-checklist-for-code-review:legal)=

### Mentions légales

En tant que développeur, vous devriez prêter attention aux droits légaux des créateurs
du code que vous utilisez. Voici quelques choses à vérifier. En cas de doute dans
, demandez conseil à une personne expérimentée dans le domaine de la licence.

- Les licences de toutes les modules/bibliothèques utilisées sont-elles documentées ?
- Les exigences fixées par ces licences sont-elles remplies?
  - Les licences sont-elles incluses lorsque nécessaire?
  - Les déclarations de copyright sont-elles incluses dans le code si nécessaire?
  - Les déclarations de droits d'auteur sont-elles incluses dans la documentation lorsque cela est nécessaire?
- Les licences de toutes les pièces sont-elles compatibles entre elles ?
- La licence de projet est-elle compatible avec toutes les bibliothèques ?

## Fichier/Modifier la liste de contrôle du niveau

Lorsque vous vérifiez des modifications individuelles ou des fichiers dans une demande de pull, le code
lui-même devient l'objet d'un examen. Selon la langue, les fichiers
peuvent contenir des interfaces, des classes ou d'autres définitions de type et des fonctions. Tous les
doivent être vérifiés.

(rr-checklist-for-code-review:interfaces)=

### Interfaces

- L'interface est-elle documentée ?
- Est-ce que le concept qu'il modèle a de sens?
- Peut-elle être scindée davantage? (Les interfaces doivent être aussi petites que possible)

Notez que la plupart des éléments suivants supposent un style de programmation
orienté objet, qui peut ne pas être pertinent pour le code que vous regardez.

(rr-checklist-for-code-review:classes-and-types)=

### Classes et types

- La classe est-elle documentée ?
  - Les programmes externes sont-ils nécessaires à la classe documentés?
- A-t-elle une responsabilité unique? Peut-on le diviser?
- Si elle est conçue pour être étendue, est-ce possible?
- S'il n'est pas conçu pour être étendu, est-il protégé contre cela?
- Si elle est dérivée d'une autre classe, pouvez-vous remplacer un objet de cette classe par une de ses classes parentales ?
- La classe est-elle testable ?
  - Les dépendances sont-elles claires et explicites ?
  - A-t-elle un petit nombre de dépendances?
  - Cela dépend-il des interfaces, plutôt que des classes?

(functionmethod-declarations)=

### Déclarations de fonction/méthode

- Y a-t-il des commentaires qui décrivent l'intention de la fonction ou de la méthode?
- Les entrées et sorties sont-elles documentées ? Y compris les unités ?
- Les conditions préalables et postales sont-elles documentées ?
- Les cas de pointe et les choses inhabituelles sont-elles commentées ?

(functionmethod-definitions)=

### Définitions de fonction/méthode

- Les cas de pointe et les choses inhabituelles sont-elles commentées ?
- Y a-t-il un code incomplet ?
- Cette fonction peut-elle être divisée (n'est-ce pas trop long) ?
- Cela fonctionne-t-il? Effectuer la fonction prévue, logique correcte, ...
- Is it easy to understand?
- Y a-t-il du code redondant ou dupliqué ? (DRY)
- Les boucles ont-elles une longueur définie et se terminent-elles correctement ?
- Le débogage ou le code de log peuvent-ils être supprimés ?
- Est-ce que le code peut être remplacé par des fonctions de bibliothèque ?

(rr-checklist-for-code-review:security-new-code)=

### Sécurité des nouveaux codes

- Si vous utilisez une bibliothèque, vérifiez-vous les erreurs qu'elle renvoie ?
- Toutes les entrées de données sont-elles vérifiées ?
- Les valeurs de sortie sont-elles vérifiées et encodées correctement ?
- Les paramètres invalides sont-ils traités correctement ?

(rr-checklist-for-code-review:tests)=

### Tests

- Est-ce que les tests unitaires testent réellement ce à quoi ils sont censés servir?
- La vérification des limites est-elle en cours ?
- Un framework de test et/ou une bibliothèque sont-ils utilisés ?
