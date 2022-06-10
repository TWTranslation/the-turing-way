(rr-vcs-git)=
# Commencer avec Git

Pour commencer, assurez-vous que Git est installé sur votre ordinateur. Les instructions d'installation des machines Git sur Linux, Windows et Mac sont disponibles [ici](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git). Une fois l'installation terminée, allez dans votre répertoire de projet via le terminal ou l'interface en ligne de commande (par exemple, `cd mon-dossier-projet-`). Votre dossier de projet contient tous vos fichiers, y compris les sous-répertoires.

Lorsque vous travaillez sur un projet, vous apporterez de nombreuses modifications à vos fichiers au fur et à mesure que vous progressez. Parfois, vous aurez besoin d'annuler les modifications, de jeter un autre coup d'œil aux versions antérieures, ou de comparer les versions. Enregistrer chaque version individuellement (comme `version_1.py` et `version_2.py`) est désordonné et devient rapidement impraticable.

Les commits servent de points de contrôle lorsque des fichiers individuels ou un projet entier peuvent être restaurés en toute sécurité lorsque cela est nécessaire. En faisant des commits, vous pouvez enregistrer des versions de votre code et basculer entre eux et les comparer facilement sans encombrer votre répertoire.

Pour démarrer avec votre dépôt Git, exécutez la commande Git suivante dans le terminal pour créer/initialiser votre dépôt Git :

```
git init
```

Cela ne doit être fait qu'une seule fois par projet.

Considérez le dépôt comme un lieu où l'histoire est stockée. Lorsque vous initialisez pour la première fois un dépôt avec `git init`, tous les fichiers de votre projet ne seraient pas ajoutés au dépôt Git car ils ne sont plus suivis par Git par défaut. Par conséquent, l'étape suivante est d'ajouter vos fichiers au dépôt Git et de permettre à Git de les suivre.

Exécutez la commande suivante pour ajouter tous les fichiers dans le dossier courant :
```
git add .
```
OU exécutez la commande suivante pour n'ajouter que les fichiers ('your_file_name' dans cet exemple) :
```
git ajoutez votre_nom_de_fichier
```

Cette commande place vos nouveaux fichiers ou tout autre changement dans ce que l'on appelle l'état de « staging ».

```{figure} ../../figures/change-stage-repo.png
---
name : change-stage-repo
alt: Une illustration des commandes `git add` et git commit Commands.
---
Comment fonctionne `git add` et `git commit`
```

Si vous ne savez jamais quels fichiers ont été ajoutés, quels fichiers ont été modifiés, ou quels fichiers ne sont pas suivis, vous pouvez exécuter ce qui suit pour savoir :

```
git status
```

L'étape suivante est de « valider » tous les changements stockés dans votre zone de pré-production afin qu'ils soient enregistrés dans votre dépôt.

```
commit git
```
Félicitations, vous avez terminé la configuration de votre dépôt !

Vous en apprendrez plus sur `git commit` dans le chapitre suivant.
