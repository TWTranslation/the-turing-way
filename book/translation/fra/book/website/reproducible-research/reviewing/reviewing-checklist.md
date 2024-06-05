(rr-checklist-for-code-review)=
# Liste de contrôle pour le processus de révision du code

Cette section présente quelques listes de contrôle pour le codeur et l’examinateur, dans le cadre d’un processus d’examen formel. Les listes de contrôle des réviseurs sont divisées en deux catégories : une pour l'ensemble du programme et une pour les fichiers individuels ou les modifications proposées.

Les listes sont créées en mettant l'accent sur de bonnes pratiques d'ingénierie logicielle et sont destinées à être une source d'inspiration. Lors de l'évaluation des listes de contrôle, il est recommandé de déterminer dans quelle mesure le point mentionné est implémenté. Certains éléments des listes peuvent ne pas s'appliquer à votre projet ou à votre langage de programmation, auquel cas ils devraient être ignorés.

Dans tous les cas, l'objectif est d'utiliser votre expérience de programmation pour trouver comment améliorer le code.

## Pour le codeur

- Est-ce que le nouveau code répond aux normes requises du projet? Les standards sont généralement écrits sous `les directives de contribution` du projet auquel vous contribuez.
- Y a-t-il [de la documentation](#documentation) qui répond aux normes requises du projet ?
- Suivez-vous un guide de style de {ref}`déclaré<rr-code-quality>` pour le projet ?
- Y a-t-il de nouveaux [tests](#tests) pour le nouveau matériau, basés sur les normes requises du projet ?
  - Ces tests sont-ils passés localement ?
  - Les tests dans le reste de la base de code sont-ils toujours passés localement ?
- Créer la pull request.
- Beaucoup de systèmes d'intégration continue (CI) de {ref}`<rr-ci>` vérifieront si les tests dans le projet principal passent automatiquement une fois que vous créez une pull request. Si le référentiel utilise une CI, assurez-vous que toutes les versions et les tests sont terminés. Consultez les rapports CI pour voir si votre code cause l'échec des tests dans le projet principal.
- Si nécessaire, demander officiellement un réexamen.

## Pour le relecteur

- Vérifiez les normes requises du projet. Les standards sont généralement écrits sous `lignes directrices de contribution` par le projet auquel vous contribuez.
- Vérifiez que le code rencontre le guide de style de base du projet {ref}`<rr-code-quality>`, si ce n'est pas automatiquement vérifié par {ref}`intégration continue (CI)<rr-ci>`.
- Les [tests](#tests) et [documentation](#documentation) sont-ils conformes aux standards ?
- Est-ce que tout le code est facilement compris ? Selon le langage, les fichiers peuvent contenir des interfaces, des classes ou d'autres définitions de type et des fonctions (voir [Architecture](#architecture)). Les concepts architecturaux essentiels peuvent être revus comme suit:
  - Vérifiez les listes [interfaces](#interfaces).
  - Vérifiez les listes de [classes et types](#classes-and-types).
  - Vérifiez la liste des [déclarations de fonction/méthodes](#function-method-declarations).
  - Vérifiez les listes [des définitions de fonctions/méthodes](#function-method-definitions).
- Les [tests](#tests) s'assurent-ils réellement que le code est robuste dans son utilisation prévue ?
  - Y a-t-il des bugs ou d'autres défauts?
- Les problèmes de [sécurité](#security) sont-ils traités correctement ?
  - Vérifiez la [sécurité des nouveaux codes](#security-of-new-codes).
- Est-ce que le nouveau code répond aux [exigences légales](#legal)?

## Liste de contrôle du niveau du programme

Voici une liste de choses à considérer lorsque vous regardez le programme dans son ensemble, plutôt que de regarder un fichier ou un changement individuel.

### Documentation

La documentation est une condition préalable pour utiliser, développer et examiner le programme. Quelqu'un qui n'est pas impliqué dans votre projet devrait comprendre ce que fait votre code, et quelle approche vous adoptez. Voici quelques choses à vérifier.

- Y a-t-il une description du but du programme ou de la bibliothèque ?
- Les exigences détaillées sont-elles répertoriées ?
- Les exigences sont-elles classées selon [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- L'utilisation et la fonction des bibliothèques tierces sont-elles documentées ?
- La structure/architecture du programme est-elle documentée ? (voir ci-dessous)
- Y a-t-il un manuel d'installation ?
- Y a-t-il un manuel d'utilisateur?
- Y a-t-il de la documentation sur la façon de contribuer?
  - Inclure comment soumettre les modifications
  - Inclure comment documenter vos modifications

### Architecture

Ces éléments sont principalement importants pour les programmes plus grands, mais peuvent quand même être de bon à considérer pour les petits aussi.

- Le programme est-il divisé en modules clairement séparés ?
- Ces modules sont-ils aussi petits qu'ils peuvent être ?
- Y a-t-il une structure de dépendance claire, hiérarchique ou calquée entre ces modules ?
  - Si ce n'est pas le cas, la fonctionnalité devrait être réarrangée, ou peut-être les modules interdépendants fortement devraient être combinés.
- Peut-on simplifier la conception ?

### Sécurité

Si vous faites des logiciels accessibles au monde extérieur (par exemple une application web ), la sécurité devient importante. Les problèmes de sécurité sont des défauts, mais tous les défauts ne sont pas des problèmes de sécurité. Une conception consciente de la sécurité peut aider à atténuer l'impact des défauts sur la sécurité.

- Quels modules traitent de la saisie de l'utilisateur ?
- Quels modules génèrent une sortie ?
- Les éléments d'entrée et de sortie sont-ils compartimentés ?
  - Sinon, envisagez de créer des modules séparés qui gèrent toutes les entrées et sorties, de sorte que la validation puisse avoir lieu à un seul endroit.
- Dans quels modules les données non fiables sont-elles présentes ?
  - Moins il y a de choses à faire.
- Les données non fiables sont-elles compartimentées ?
  - Idéalement, validez dans le module d'entrée et passez seulement données validées à d'autres parties.

### Mentions légales

En tant que développeur, vous devriez prêter attention aux droits légaux des créateurs du code que vous utilisez. Voici quelques choses à vérifier. En cas de doute dans , demandez conseil à une personne expérimentée dans le domaine de la licence.

- Les licences de toutes les modules/bibliothèques utilisées sont-elles documentées ?
- Les exigences fixées par ces licences sont-elles remplies?
  - Les licences sont-elles incluses lorsque nécessaire?
  - Les déclarations de copyright sont-elles incluses dans le code si nécessaire?
  - Les déclarations de droits d'auteur sont-elles incluses dans la documentation lorsque cela est nécessaire?
- Les licences de toutes les pièces sont-elles compatibles entre elles ?
- La licence de projet est-elle compatible avec toutes les bibliothèques ?

## Fichier/Modifier la liste de contrôle du niveau

Lorsque vous vérifiez des modifications individuelles ou des fichiers dans une demande de pull, le code lui-même devient l'objet d'un examen. Selon la langue, les fichiers peuvent contenir des interfaces, des classes ou d'autres définitions de type et des fonctions. Tous les doivent être vérifiés.

### Interfaces

- L'interface est-elle documentée ?
- Est-ce que le concept qu'il modèle a de sens?
- Peut-elle être scindée davantage? (Les interfaces doivent être aussi petites que possible)

Notez que la plupart des éléments suivants supposent un style de programmation orienté objet, qui peut ne pas être pertinent pour le code que vous regardez.

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

### Déclarations de fonction/méthode

- Y a-t-il des commentaires qui décrivent l'intention de la fonction ou de la méthode?
- Les entrées et sorties sont-elles documentées ? Y compris les unités ?
- Les conditions préalables et postales sont-elles documentées ?
- Les cas de pointe et les choses inhabituelles sont-elles commentées ?

### Définitions de fonction/méthode

- Les cas de pointe et les choses inhabituelles sont-elles commentées ?
- Y a-t-il un code incomplet ?
- Cette fonction peut-elle être divisée (n'est-ce pas trop long) ?
- Cela fonctionne-t-il? Effectuer la fonction prévue, logique correcte, ...
- Est-il facile à comprendre?
- Y a-t-il du code redondant ou dupliqué ? (DRY)
- Les boucles ont-elles une longueur définie et se terminent-elles correctement ?
- Le débogage ou le code de log peuvent-ils être supprimés ?
- Est-ce que le code peut être remplacé par des fonctions de bibliothèque ?

### Sécurité des nouveaux codes

- Si vous utilisez une bibliothèque, vérifiez-vous les erreurs qu'elle renvoie ?
- Toutes les entrées de données sont-elles vérifiées ?
- Les valeurs de sortie sont-elles vérifiées et encodées correctement ?
- Les paramètres invalides sont-ils traités correctement ?

### Tests

- Est-ce que les tests unitaires testent réellement ce à quoi ils sont censés servir?
- La vérification des limites est-elle en cours ?
- Un framework de test et/ou une bibliothèque sont-ils utilisés ?
