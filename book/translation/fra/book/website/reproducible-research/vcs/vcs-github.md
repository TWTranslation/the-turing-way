(rr-vcs-github)=

# Commandes Git pour travailler sur GitHub

À mesure que la recherche devient de plus en plus collaborative et que plusieurs personnes travaillent sur le même projet, il devient difficile de suivre les changements apportés par d'autres si ce n'est pas le cas systématiquement.
De plus, il faut du temps pour incorporer manuellement le travail des différents participants à un projet, même si tous leurs changements sont compatibles.
Héberger le projet sur un service d'hébergement de dépôts en ligne comme GitHub est bénéfique pour rendre les collaborations ouvertes et efficaces.
If you are new to collaboration through [GitHub](https://github.com), please follow the comprehensive guide in the previous sections.

Dans cette section, nous allons discuter comment utiliser les commandes Git pour travailler avec un dépôt Git en ligne.

Veuillez noter que les commandes listées dans ce chapitre (aussi bien dans ce sous-chapitres que précédents) ne sont PAS spécifiques à GitHub.
They are used for collaborative work on any Git repositories and to interact with any repository hosting site/servers, which can be [GitHub](https://github.com/), but also [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) or a [self-set-up bare Git repository on a web server](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Par souci de simplicité, nous utiliserons GitHub comme exemple pour expliquer les commandes qui sont utilisées pour interagir avec les dépôts Git.

(rr-vcs-github-local)=

## Créer une copie locale d'un dépôt en ligne

Jusqu'à présent, toutes les commandes Git introduites dans ce chapitre concernent les dépôts Git locaux non connectés.
In order to collaborate with others, hosting services, such as GitHub, can store a _clone_ (a copy) of your local repository and expose it to others.
Usually, you will have a local repository and a _remote_, web-hosted repository.
Votre dépôt local est connecté au clone basé sur le web.
In technical terms, the web-based clone is a `remote` of the local repository. Habituellement, cette télécommande est appelée "origine".
Having a web-based remote allows you to _push_ changes to your project online.
It enables others to obtain their own clone of your repository (a copy of your repository to their local computer), make changes, and submit a _pull request_ that allows you to integrate their changes.
Par exemple, on peut créer une copie locale indépendante d'un projet en utilisant la commande Git suivante :

```
git clone <insert GitHub link of the repository here>
```

Collaborators can update their local version of an online repository or _pull_ other's work into their copy using the command:

```
git pull
```

Similarly, they can edit files locally and stage their updates (`git add .`), commit changes to a new version (`git commit`) and _push_ changes to the remote online repository using the Git command:

```
git push
```

(rr-vcs-github-online)=

## Lier un projet local sur votre ordinateur à un dépôt en ligne

To link a project on your computer to a new GitHub repository (preferably with the same name), you need to follow the standard workflow for creating a Git repository (described in the {ref}`rr-vcs-workflow` subchapter) by issuing the following set of commands in the terminal, one by one:

```
cd <your project folder>
git init
git add .
git commit
```

En supposant que vous ayez un dépôt GitHub que vous voulez connecter à ce projet, exécutez la commande suivante :

```
git remote add origin <GitHub repository link for your project>
```

Then, _push_ all the files on your computer to the online version so they match:

```
git push -u origin main
```

Vous pouvez ensuite faire plus de commits sur votre ordinateur.
Quand vous voulez les pousser dans votre version en ligne, vous le faites aussi:

```
git push origin branch_you_want_to_push_to
```

You can also make changes directly on GitHub by editing the online repository, and _pull_ those changes locally by using the `git pull` command.

D'autres peuvent également cloner le dépôt sur leur ordinateur en utilisant :

```
git clone git@github.com:your-github-username/repository_name
```

They can make and commit changes to the code without impacting the original, and push their changes to _their_ online GitHub account using:

```
git push -u origin main
```

La même procédure s'applique à vous si vous voulez cloner le dépôt de quelqu'un d'autre.

(rr-vcs-github-online-pull)=

### Demandes de tirage

If you are working on a personal branch and some other changes were made in the main branch, you can _pull_ those changes down to your branch using the Git command:

```
git pull origin main
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can _push_ their changes to their branch using the following command:

```
git push origin branch-name
```

However, if you can not directly edit the repository (when you are not an owner or admin of the project), you will be able to share your work with the help of _pull requests_.
Une pull request permet à un contributeur d'obtenir l'intégration des changements proposés depuis sa branche ou son dépôt dans la branche principale du projet.
It is also possible to make pull requests via the command line (see the GitLab documentation [here](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributing)=

## Contribuer à d'autres projets

Lorsque vous créez une copie locale d'un référentiel, vous ne conservez que les versions des fichiers qui sont dans le référentiel au moment de la création de cette copie.
If any changes are made in the original repository afterwards, your copy will get out of sync.
Cela peut entraîner des problèmes tels que des conflits de contenu de fichier lors d'une demande d'ajout ou de fusion de modifications de votre branche vers le dépôt principal.
Par conséquent, lorsque vous travaillez sur différentes branches ou forks d'un référentiel, c'est une bonne pratique de les maintenir à jour avec le référentiel principal et en synchronisation avec le référentiel d'origine.

(rr-vcs-github-contributing-workflow)=

### A Workflow to Contribute to Others Github Projects via `git`:

En utilisant le bouton fork sur le dépôt GitHub auquel vous souhaitez contribuer, créez une copie du dépôt dans votre compte.
Le dépôt principal que vous avez créé sera appelé le dépôt « amont ».

Vous pouvez maintenant travailler sur votre copie en utilisant la ligne de commande, via les étapes suivantes (assurez-vous de remplacer le nom d'utilisateur et le nom du référentiel):

1. Clonez-le sur votre machine locale:

   ```
   git clone git@github.com:your-github-username/repository_name
   ```

2. Add the 'upstream' repository to the list of remote repositories using the `git remote` command:

   ```
   git remote add upstream git@github.com:upstream-github-username/repository_name
   ```

3. Vérifiez le nouveau dépôt 'amont du serveur distant' :

   ```
   git remote -v
   ```

4. Mettez à jour votre fork avec les dernières modifications en amont, en récupérant d'abord les branches du dépôt amont et les dernières livraisons pour les intégrer dans votre dépôt :

   ```
   git fetch upstream
   ```

5. Voir toutes les branches, y compris celles en amont :

   ```
   git branch -va
   ```

Make sure that you are on your main branch locally, if not, then checkout your main branch using the command `git checkout main`

6. Gardez votre fork à jour en fusionnant ces commits (récupérés depuis le stream) vers votre propre branche principale locale.

   ```
   git merge upstream/main
   ```

Maintenant, votre branche principale locale est à jour avec tout ce qui a été modifié en amont.
S'il n'y a pas de commits uniques sur la branche principale locale, git se contentera de réaliser une avance rapide.

_Note: The upstream/main is the original repository's main which you wish to contribute to, whereas origin/main refers to the repository you cloned in your local machine after it was forked on GitHub._

Une fois que votre fork est synchronisé avec le dépôt principal amont, vous pouvez toujours synchroniser votre dépôt cloné local avec l'origine (fork dans ce cas) en utilisant :

```
git checkout main
git pull
```

The `git pull` command combines two other commands, `git fetch` and `git merge`.
When using `git fetch`, the resulting commits are stored as the remote branch allows you to review the changes before merging.

De même, si vous avez créé plus de branches autres que les branches principales, vous pouvez également les garder en synchronisation avec votre main, une fois qu'il est synchronisé avec le dépôt amont.

```
git checkout my-other-branch
git pull origin main
```

Lorsque tout est à jour, vous pouvez travailler sur votre branche et valider des changements.

Lorsque vous êtes prêt à envoyer vos commits locaux dans votre dépôt forked (origine), utilisez la commande suivante.

```
git push origin forked_repository
```

Maintenant vous pouvez faire une demande de pull !

(rr-vcs-github-contributing-practice)=

### Good Practice

Avant de créer une branche, assurez-vous d'avoir toutes les modifications en amont de la branche originale/principale.

**A word of caution on the `rebase` command**: While trying to keep your branches in sync, you may come across the `rebase` command.
Il a tendance à réécrire l'histoire et pourrait être gênant s'il n'est pas communiqué avec d'autres qui travaillent sur la même branche. Try to avoid using the `rebase` command, and instead use `pull` or `fetch`+`merge`, as discussed in this section.
You can find more details about [Merging vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).

## Further reading

- An [article on syncing a fork of a repository](https://help.github.com/en/articles/syncing-a-fork) to keep it up-to-date with the upstream repository.
- Instructions if you wish to do it all [in the browser itself](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
