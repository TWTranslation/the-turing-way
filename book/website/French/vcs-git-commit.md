(rr-vcs-git-commit)=
# La commande `git commit`

Chaque fois que vous 'ajoutez' des changements (nouveaux fichiers ou fichiers existants avec quelques modifications) et 'commit' ceux de votre dépôt Git, vous créez une version de votre projet qui est stockée dans l'historique de votre projet et est accessible à tout moment.

Valider les modifications avec une instruction de sens sur les modifications faites dans une version, utiliser `git commit` avec un drapeau `-m` (m pour le message) :

```
git commit -m 'instruction utile sur le changement ici'
```

Vous pouvez voir le journal de vos précédentes livraisons en utilisant

```
log git
```

Dans le rapport de log de votre terminal, vous verrez que chaque version est automatiquement taguée avec une chaîne unique de chiffres et de lettres, appelée SHA. Vous pouvez identifier, accéder et comparer différentes versions en utilisant leur SHA correspondant. Voici un exemple de commit dans le journal Git : La SHA est dans la toute première ligne, et en dehors de cette SHA, le journal contient également des informations sur la date, l'heure et l'auteur du changement, ainsi que le message de commit ("correction mineure de la faute de frappe").

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Auteur : Malvika Sharan <some@email.com>
Date: mer 6 mai 18:22:40 2020 +0100

    correction de faute mineure

```

(rr-vcs-commit-messages)=
## En savoir plus sur les messages de commit

Au fur et à mesure que vous travaillez sur votre projet, vous ferez de plus en plus d'engagements. Sans aucune autre information, il peut être difficile de se rappeler dans quelle version de votre projet est dans laquelle. Stocker les anciennes versions est inutile si vous ne pouvez pas les comprendre, et déterminer ce qu'ils contiennent en inspectant le code est frustrant et prend un temps précieux.

Lorsque vous validez, vous avez la possibilité d'écrire un message de commit décrivant ce qu'est le commit et ce qu'il fait, et vous devriez toujours, *toujours,* **_toujours_** le faire. Un message de commit est attaché à la livraison, donc si vous la regardez en arrière (par exemple, via `git log`), il s'affiche. La création de messages de commit perspicaces et descriptifs est l'une des meilleures choses que vous puissiez faire pour tirer le meilleur parti du contrôle de version. Il permet aux gens (et à votre futur lui-même quand vous avez oublié depuis longtemps ce que vous faisiez et pourquoi) de comprendre rapidement ce que contient les mises à jour d'une commit sans avoir à lire attentivement le code et perdre du temps à le trouver. Les bons messages de commit améliorent la qualité de votre code en réduisant drastiquement les mauvaises hypothèses des gens sur les raisons pour lesquelles certains changements ont été apportés.

Lorsque vous validez via `git commit` sans l'option `-m` ou `--message` un champ apparaît (soit dans le terminal, soit dans un éditeur de texte) où un message de commit peut être écrit. Vous pouvez écrire une instruction significative et enregistrer (et fermer si vous écrivez le message via l'éditeur de texte). Vous pouvez définir votre éditeur préféré par défaut en exécutant une requête comme celle-ci :

```
git config --global core.editor "votre_éditeur préféré"
```

Pour éviter d'écrire ce message de commit dans un éditeur, vous pouvez utiliser la commande `git commit -m "votre message ici"`, comme expliqué plus haut.

(rr-vcs-commit-messages-pratique)=
### Bonne pratique

La règle numéro un est : **la rendre significative**. Un message de commit comme « Correction d'un bug » laisse à la personne le soin de comprendre ce que cela signifie (encore une fois, cette personne peut très bien être vous quelques mois à l'avenir quand vous avez oublié ce que vous faisiez). Cela peut finir par perdre votre temps ou celui d'autres personnes à déterminer quel était le bogue, quels changements ont été faits et comment un bogue a été corrigé. Ainsi, un bon message de commit devrait *expliquer ce que vous avez fait, pourquoi vous l'avez fait, et ce qui est impacté par les changements*. Comme pour les commentaires, vous devriez décrire ce que le code est "faire" plutôt que le code lui-même. Par exemple, il n'est pas évident de ce que "Changer N_sim à 10" fait réellement, mais "Changer le nombre de simulations exécutées par le programme à 10" est clair.

**Résumez les modifications que votre commit contient**. Ceci doit être écrit dans la première ligne (en 50 caractères maximum), puis laissez une ligne vide avant de continuer avec la description ou le corps du message. La première ligne est la version raccourcie qui apparaît comme un résumé lorsque vous utilisez la commande :

```
log git
```

Cela facilite grandement la recherche rapide à travers un grand nombre d'engagements. C'est aussi une bonne pratique de **utiliser la tension actuelle impérative** dans ces messages. Par exemple, au lieu de "J'ai ajouté des tests pour" ou "Ajouter des tests pour", utilisez "Ajouter des tests pour".

Voici un bon exemple de structure de message de commit :

```
Courte (50 caractères. ou moins) résumé des modifications

Texte explicatif plus détaillé, si nécessaire. Enveloppez-le à
environ 72 caractères environ. Dans certains contextes, la première ligne
est traitée comme le sujet d'un e-mail et le reste du texte
comme le corps. The blank line separating the
summary from the body is critical (unless you omit the body
entirely); tools like rebase can get confused if you run
the two together.

D'autres paragraphes viennent après des lignes vides.

  - Les points de balle sont corrects, trop

  - Typiquement, un trait d'union ou un astérisque est utilisé pour la puce,
    précédée d'un espace unique, avec des lignes vides en
    entre-temps, mais les conventions varient ici
```
(rr-vcs-commit-summary)=
## Git commit : Résumé

En engageant vos changements tout au long du développement de votre projet dans des unités significatives avec des messages de commit descriptifs et clairs, vous pouvez créer une histoire facilement compréhensible. Cela vous aidera ainsi que les autres à comprendre les progrès de votre travail. En outre, comme le montrera la section suivante, il vous permettra également de visualiser facilement les versions antérieures de votre historique ou de revenir en arrière que vous avez apportées.
