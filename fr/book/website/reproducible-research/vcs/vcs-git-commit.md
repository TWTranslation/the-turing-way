(rr-vcs-git-commit)=

# The `git commit` Command

Chaque fois que vous 'ajoutez' des changements (nouveaux fichiers ou fichiers existants avec quelques modifications) et 'commit' ceux de votre dépôt Git, vous créez une version de votre projet qui est stockée dans l'historique de votre projet et est accessible à tout moment.

To commit changes with a meaning statement about changes made in a version, use `git commit` with a `-m` (m for message) flag:

```
git commit -m 'helpful statement about the change here'
```

Vous pouvez voir le journal de vos précédentes livraisons en utilisant

```
git log
```

Dans le rapport de log de votre terminal, vous verrez que chaque version est automatiquement taguée avec une chaîne unique de chiffres et de lettres, appelée SHA.
Vous pouvez identifier, accéder et comparer différentes versions en utilisant leur SHA correspondant.
Voici un exemple de commit dans le journal Git :
La SHA est dans la toute première ligne, et en dehors de cette SHA, le journal contient également des informations sur la date, l'heure et l'auteur du changement, ainsi que le message de commit ("correction mineure de la faute de frappe").

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Author: Malvika Sharan <some@email.com>
Date:   Wed May 6 18:22:40 2020 +0100

    minor typo fix

```

(rr-vcs-commit-messages)=

## En savoir plus sur les messages de commit

Au fur et à mesure que vous travaillez sur votre projet, vous ferez de plus en plus d'engagements.
Sans aucune autre information, il peut être difficile de se rappeler dans quelle version de votre projet est dans laquelle.
Stocker les anciennes versions est inutile si vous ne pouvez pas les comprendre, et déterminer ce qu'ils contiennent en inspectant le code est frustrant et prend un temps précieux.

When you commit, you have the chance to write a commit message describing what the commit is and what it does, and you should always, _always,_ **_always_** do so.
A commit message gets attached to the commit, so if you look back at it (for example, via `git log`), it will show up.
La création de messages de commit perspicaces et descriptifs est l'une des meilleures choses que vous puissiez faire pour tirer le meilleur parti du contrôle de version.
Il permet aux gens (et à votre futur lui-même quand vous avez oublié depuis longtemps ce que vous faisiez et pourquoi) de comprendre rapidement ce que contient les mises à jour d'une commit sans avoir à lire attentivement le code et perdre du temps à le trouver.
Les bons messages de commit améliorent la qualité de votre code en réduisant drastiquement les mauvaises hypothèses des gens sur les raisons pour lesquelles certains changements ont été apportés.

When you commit via `git commit` without the `-m` or `--message` option, a field appears (either within the terminal or in a text editor) where a commit message can be written.
Vous pouvez écrire une instruction significative et enregistrer (et fermer si vous écrivez le message via l'éditeur de texte).
Vous pouvez définir votre éditeur préféré par défaut en exécutant une requête comme celle-ci :

```
git config --global core.editor "your_preferred_editor"
```

To avoid writing this commit message in an editor, you can use the command `git commit -m "your message here"`, as discussed earlier.

(rr-vcs-commit-messages-pratique)=

### Good practice

The number one rule is: **make it meaningful**.
Un message de commit comme « Correction d'un bug » laisse à la personne le soin de comprendre ce que cela signifie (encore une fois, cette personne peut très bien être vous quelques mois à l'avenir quand vous avez oublié ce que vous faisiez).
Cela peut finir par perdre votre temps ou celui d'autres personnes à déterminer quel était le bogue, quels changements ont été faits et comment un bogue a été corrigé.
As such, a good commit message should _explain what you did, why you did it, and what is impacted by the changes_.
Comme pour les commentaires, vous devriez décrire ce que le code est "faire" plutôt que le code lui-même. Par exemple, il n'est pas évident de ce que "Changer N_sim à 10" fait réellement, mais "Changer le nombre de simulations exécutées par le programme à 10" est clair.

**Summarise the changes your commit contains**.
Ceci doit être écrit dans la première ligne (en 50 caractères maximum), puis laissez une ligne vide avant de continuer avec la description ou le corps du message.
La première ligne est la version raccourcie qui apparaît comme un résumé lorsque vous utilisez la commande :

```
git log
```

Cela facilite grandement la recherche rapide à travers un grand nombre d'engagements.
It is also a good practice to **use the imperative present tense** in these messages.
Par exemple, au lieu de "J'ai ajouté des tests pour" ou "Ajouter des tests pour", utilisez "Ajouter des tests pour".

Voici un bon exemple de structure de message de commit :

```
Short (50 chars. or less) summary of changes

More detailed explanatory text, if necessary. Wrap it to
about 72 characters or so. In some contexts, the first
line is treated as the subject of an email and the rest of
the text as the body. The blank line separating the
summary from the body is critical (unless you omit the body
entirely); tools like rebase can get confused if you run
the two together.

Further paragraphs come after blank lines.

  - Bullet points are okay, too

  - Typically, a hyphen or asterisk is used for the bullet,
    preceded by a single space, with blank lines in
    between, but conventions vary here
```

(rr-vcs-commit-summary)=

## Git commit : Résumé

En engageant vos changements tout au long du développement de votre projet dans des unités significatives avec des messages de commit descriptifs et clairs, vous pouvez créer une histoire facilement compréhensible.
Cela vous aidera ainsi que les autres à comprendre les progrès de votre travail.
En outre, comme le montrera la section suivante, il vous permettra également de visualiser facilement les versions antérieures de votre historique ou de revenir en arrière que vous avez apportées.
