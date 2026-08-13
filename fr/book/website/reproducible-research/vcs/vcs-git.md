(rr-vcs-git)=

# Commencer avec Git

Pour commencer, assurez-vous que Git est installé sur votre ordinateur.
Instructions for installing Git on Linux, Windows and Mac machines are available [here](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git).
Once the installation is complete, go to your project directory via terminal or command-line interface (for example, `cd my-project-folder`).
Votre dossier de projet contient tous vos fichiers, y compris les sous-répertoires.

Lorsque vous travaillez sur un projet, vous apporterez de nombreuses modifications à vos fichiers au fur et à mesure que vous progressez.
Parfois, vous aurez besoin d'annuler les modifications, de jeter un autre coup d'œil aux versions antérieures, ou de comparer les versions.
Saving each version individually (such as `version_1.py` and `version_2.py`) is messy and quickly becomes impractical.

Les commits servent de points de contrôle lorsque des fichiers individuels ou un projet entier peuvent être restaurés en toute sécurité lorsque cela est nécessaire.
En faisant des commits, vous pouvez enregistrer des versions de votre code et basculer entre eux et les comparer facilement sans encombrer votre répertoire.

Pour démarrer avec votre dépôt Git, exécutez la commande Git suivante dans le terminal pour créer/initialiser votre dépôt Git :

```
git init
```

Cela ne doit être fait qu'une seule fois par projet.

Considérez le dépôt comme un lieu où l'histoire est stockée.
When you first initialise a repository with `git init`, all of the files in your project would not be added to the Git repository as they are  untracked by Git by default.
Par conséquent, l'étape suivante est d'ajouter vos fichiers au dépôt Git et de permettre à Git de les suivre.

Exécutez la commande suivante pour ajouter tous les fichiers dans le dossier courant :

```
git add .
```

OR run the following command to add only a specific file (called 'your_file_name' in this example):

```
git add your_file_name
```

This command puts your newly added files or any other changes into what is called the "staging" area.

```{figure} ../../../figures/change-stage-repo.*
---
name: change-stage-repo
alt: An illustration of the `git add` and git commit Commands.
---
How `git add` and `git commit` works
```

Si vous ne savez jamais quels fichiers ont été ajoutés, quels fichiers ont été modifiés, ou quels fichiers ne sont pas suivis, vous pouvez exécuter ce qui suit pour savoir :

```
git status
```

L'étape suivante est de « valider » tous les changements stockés dans votre zone de pré-production afin qu'ils soient enregistrés dans votre dépôt.

```
git commit
```

Félicitations, vous avez terminé la configuration de votre dépôt !

You will learn more about `git commit` in the next chapter.
