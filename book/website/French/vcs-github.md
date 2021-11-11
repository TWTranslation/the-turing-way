(rr-vcs-github)=
# Commandes Git pour travailler sur GitHub

À mesure que la recherche devient de plus en plus collaborative et que plusieurs personnes travaillent sur le même projet, il devient difficile de suivre les changements apportés par d'autres si ce n'est pas le cas systématiquement. De plus, il faut du temps pour incorporer manuellement le travail des différents participants à un projet, même si tous leurs changements sont compatibles. Héberger le projet sur un service d'hébergement de dépôts en ligne comme GitHub est bénéfique pour rendre les collaborations ouvertes et efficaces. Si vous commencez à collaborer via [GitHub](https://github.com), veuillez suivre le guide complet dans les sections précédentes.

Dans cette section, nous allons discuter comment utiliser les commandes Git pour travailler avec un dépôt Git en ligne.

Veuillez noter que les commandes listées dans ce chapitre (aussi bien dans ce sous-chapitres que précédents) ne sont PAS spécifiques à GitHub. Ils sont utilisés pour le travail collaboratif sur n'importe quel dépôt Git et pour interagir avec n'importe quel site d'hébergement de référentiels, qui peut être [GitHub](https://github.com/), mais aussi [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) ou [un dépôt Git nu auto-configuré sur un serveur web](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Par souci de simplicité, nous utiliserons GitHub comme exemple pour expliquer les commandes qui sont utilisées pour interagir avec les dépôts Git.

(rr-vcs-github-local)=
## Créer une copie locale d'un dépôt en ligne

Jusqu'à présent, toutes les commandes Git introduites dans ce chapitre concernent les dépôts Git locaux non connectés. Afin de collaborer avec d'autres, des services d'hébergement tels que GitHub, peut stocker un clone ** (une copie) de votre dépôt local et l'exposer à d'autres. Habituellement, vous aurez un dépôt local et un dépôt *distant*, hébergé sur le web. Votre dépôt local est connecté au clone basé sur le web. D'un point de vue technique, le clone basé sur le Web est une `distante` du dépôt local. Habituellement, cette télécommande est appelée "origine". Avoir une télécommande basée sur le Web vous permet de *envoyer* changements à votre projet en ligne. Il permet aux autres d'obtenir leur propre clone de votre dépôt (une copie de votre dépôt sur leur ordinateur local), apporter des modifications et soumettre une *pull request* qui vous permet d'intégrer leurs modifications. Par exemple, on peut créer une copie locale indépendante d'un projet en utilisant la commande Git suivante :

```
git clone <insert GitHub link of the repository here>
```

Les collaborateurs peuvent mettre à jour leur version locale d'un dépôt en ligne ou *tirez* le travail d'autres personnes dans leur copie en utilisant la commande :
```
git pull
```
De même, ils peuvent éditer les fichiers localement et mettre en place leurs mises à jour (`git add .`), livrer des modifications à une nouvelle version (`git commit`) et *pousser* changements dans le dépôt en ligne distant en utilisant la commande Git :
```
Git push
```
(rr-vcs-github-online)=
## Lier un projet local sur votre ordinateur à un dépôt en ligne

Pour lier un projet sur votre ordinateur à un nouveau dépôt GitHub (de préférence avec le même nom), vous devez suivre le workflow standard pour créer un dépôt Git (décrit dans le sous-chapitre {ref}`rr-vcs-workflow` ) en publiant l'ensemble de commandes suivant dans le terminal, un par un:

```
cd <your project folder>
git init
git add .
commit git
```
En supposant que vous ayez un dépôt GitHub que vous voulez connecter à ce projet, exécutez la commande suivante :

```
git remote add origin <GitHub repository link for your project>
```

Ensuite, *poussez* tous les fichiers sur votre ordinateur vers la version en ligne afin qu'ils correspondent :

```
Origine principale de git push -u
```

Vous pouvez ensuite faire plus de commits sur votre ordinateur. Quand vous voulez les pousser dans votre version en ligne, vous le faites aussi:

```
git pousser la branche d'origine_vous_voulez_to_push_to
```

Vous pouvez également apporter des modifications directement sur GitHub en modifiant le dépôt en ligne, et *pull* ces changements localement en utilisant la commande `git pull`.

D'autres peuvent également cloner le dépôt sur leur ordinateur en utilisant :

```
git clone git@github.com:your-github-username/repository_name
```

Ils peuvent apporter et valider des modifications au code sans affecter l'original, et envoyer leurs modifications sur *leur* compte GitHub en ligne en utilisant :

```
Origine principale de git push -u
```

La même procédure s'applique à vous si vous voulez cloner le dépôt de quelqu'un d'autre.

(rr-vcs-github-online-pull)=
### Demandes de tirage

Si vous travaillez sur une branche personnelle et que d'autres modifications ont été apportées dans la branche principale, vous pouvez *tirer* de ces modifications vers votre branche en utilisant la commande Git :
```
Git tirez l'origine principale
```

Quand tout le monde a une copie du projet sur sa propre branche (vérifier votre branche avec `git checkout branche`), ils peuvent *pousser* leurs changements dans leur branche en utilisant la commande suivante :

```
Git push le nom de la branche d'origine
```

Cependant, si vous ne pouvez pas éditer directement le référentiel (lorsque vous n'êtes pas un propriétaire ou un administrateur du projet), vous serez en mesure de partager votre travail avec l'aide de *pull requests*. Une pull request permet à un contributeur d'obtenir l'intégration des changements proposés depuis sa branche ou son dépôt dans la branche principale du projet. Il est également possible de faire des demandes de fusion via la ligne de commande (voir la documentation GitLab [ici](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributing)=
## Contribuer à d'autres projets

Lorsque vous créez une copie locale d'un référentiel, vous ne conservez que les versions des fichiers qui sont dans le référentiel au moment de la création de cette copie. Si des modifications sont apportées par la suite dans le référentiel original, votre copie sera désynchronisée par désynchronisation. Cela peut entraîner des problèmes tels que des conflits de contenu de fichier lors d'une demande d'ajout ou de fusion de modifications de votre branche vers le dépôt principal. Par conséquent, lorsque vous travaillez sur différentes branches ou forks d'un référentiel, c'est une bonne pratique de les maintenir à jour avec le référentiel principal et en synchronisation avec le référentiel d'origine.

(rr-vcs-github-contributing-workflow)=
### Un flux de travail pour contribuer à d'autres projets Github via `git`:

En utilisant le bouton fork sur le dépôt GitHub auquel vous souhaitez contribuer, créez une copie du dépôt dans votre compte. Le dépôt principal que vous avez créé sera appelé le dépôt « amont ».

Vous pouvez maintenant travailler sur votre copie en utilisant la ligne de commande, via les étapes suivantes (assurez-vous de remplacer le nom d'utilisateur et le nom du référentiel):

1. Clonez-le sur votre machine locale:

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. Ajouter le dépôt « amont » à la liste des dépôts distants en utilisant la commande `git remote`:

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. Vérifiez le nouveau dépôt 'amont du serveur distant' :

    ```
    git remote -v
    ```

4. Mettez à jour votre fork avec les dernières modifications en amont, en récupérant d'abord les branches du dépôt amont et les dernières livraisons pour les intégrer dans votre dépôt :

    ```
    git récupère en amont
    ```

5. Voir toutes les branches, y compris celles en amont :

    ```
    git branch -va
    ```

Assurez-vous que vous êtes sur votre branche principale localement, si ce n'est pas le cas, alors achetez votre branche principale en utilisant la commande `git checkout main`

6. Gardez votre fork à jour en fusionnant ces commits (récupérés depuis le stream) vers votre propre branche principale locale.

    ```
    Fusion git amont / principal
    ```

Maintenant, votre branche principale locale est à jour avec tout ce qui a été modifié en amont. S'il n'y a pas de commits uniques sur la branche principale locale, git se contentera de réaliser une avance rapide.

*Note : L'amont est le principal du dépôt original auquel vous souhaitez contribuer, alors que l'origin/principal fait référence au dépôt que vous avez cloné dans votre machine locale après avoir été forked sur GitHub.*

Une fois que votre fork est synchronisé avec le dépôt principal amont, vous pouvez toujours synchroniser votre dépôt cloné local avec l'origine (fork dans ce cas) en utilisant :

```
git checkout main
git pull git
```

La commande `git pull` combine deux autres commandes, `git fetch` et `git merge`. Lorsque vous utilisez `git fetch`, les commits résultants sont stockés comme la branche distante vous permet de revoir les changements avant de fusionner.

De même, si vous avez créé plus de branches autres que les branches principales, vous pouvez également les garder en synchronisation avec votre main, une fois qu'il est synchronisé avec le dépôt amont.

```
git checkout mon-autre branche
git pull origine main
```

Lorsque tout est à jour, vous pouvez travailler sur votre branche et valider des changements.

Lorsque vous êtes prêt à envoyer vos commits locaux dans votre dépôt forked (origine), utilisez la commande suivante.

```
git push origine forked_repository
```

Maintenant vous pouvez faire une demande de pull !

(rr-vcs-github-contributing-practice)=
### Bonnes pratiques

Avant de créer une branche, assurez-vous d'avoir toutes les modifications en amont de la branche originale/principale.


**Un mot de prudence sur la commande `rebase`**: En essayant de garder vos branches en synchronisation, vous pouvez rencontrer la commande `rebase`. Il a tendance à réécrire l'histoire et pourrait être gênant s'il n'est pas communiqué avec d'autres qui travaillent sur la même branche. Essayez d'éviter d'utiliser la commande `rebase` , et à la place utiliser `pull` ou `fetch`+`merge`, comme décrit dans cette section. Vous pouvez trouver plus de détails sur [Fusionner vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).


## Lecture ultérieure
- Un article [sur la synchronisation d'un fork d'un dépôt](https://help.github.com/en/articles/syncing-a-fork) pour le tenir à jour avec le dépôt amont.
- Instructions si vous souhaitez le faire tout [dans le navigateur lui-même](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
