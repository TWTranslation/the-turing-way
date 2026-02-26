(rr-vcs-git-summary)

# Tableau sommaire des commandes Git

| Commandes                       | Utiliser                                                                                               |
| ------------------------------- | ------------------------------------------------------------------------------------------------------ |
| `git init`                      | Initialise un dépôt Git dans ce répertoire                                                             |
| `git add .`                     | Ajoute toutes les modifications à la zone de pré-production à valider                                  |
| `git add file_name`             | Ajoute des modifications au fichier spécifié dans la zone de pré-production à valider                  |
| `git commit`                    | Commet des changements en étape et vous permet d'écrire un message de commit                           |
| `git checkout SHA`              | Vérifie un commit passé avec la SHA donnée                                                             |
| `git checkout SHA -- file_name` | Vérifie la version passée d'un fichier depuis le commit avec la SHA donnée                             |
| `git checkout -b branch_name`   | Crée et passe à une nouvelle branche                                                                   |
| `git checkout branch_name`      | Bascule vers la branche spécifiée                                                                      |
| `git merge branch_name`         | Fusionne la branche sur laquelle vous êtes dans la branche spécifiée                                   |
| `git log`                       | Affiche un journal des commits passés avec leurs messages de commit                                    |
| `git status`                    | Statut des sorties, y compris la branche sur laquelle vous êtes et quels changements sont mis en scène |
| `git diff`                      | Affiche les différences entre le répertoire de travail et le dernier commit                            |
| `git diff thing_a thing_b`      | Affiche les différences entre deux choses, telles que les commits et les branches                      |
| `git clone URL`                 | Fait un clone du dépôt à l'URL spécifiée                                                               |
| `git remote add origin URL`     | Lier un dépôt local et un dépôt en ligne à l'URL spécifiée                                             |
| `git push origin branch_name`   | Pousse les changements locaux dans la branche spécifiée du référentiel en ligne                        |
| `git pull origin branch_name`   | Retirer les modifications du dépôt en ligne vers le dépôt local                                        |
