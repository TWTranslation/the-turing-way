(rr-vcs-checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## Utiliser Git

- Rend la version de votre projet contrôlée en initialisant un dépôt Git dans son répertoire en utilisant `git init`.
- Ajouter et valider tous vos fichiers au dépôt en utilisant `git add .` puis `git commit`.
- Continuez à ajouter et à valider les changements au fur et à mesure que votre projet progresse. Étapez les changements dans des fichiers spécifiques pour être validés avec `git add filename`, et ajoutez des messages à vos commits.
  - Chaque commit devrait faire un simple changement.
  - Aucun fichier généré n'a été validé.
  - Les messages de commit sont significatifs, avec un résumé de ~50 caractères en haut.
  - Les messages de compromis sont dans la tension actuelle et impérative.
- Développer de nouvelles fonctionnalités sur leurs propres branches, que vous pouvez créer via `git checkout -b branch_name` et basculer entre `git checkout branch_name`.
  - Assurez-vous que les branches ont des noms informatifs.
  - Assurez-vous que la branche principale est propre.
  - Assurez-vous que chaque branche a un seul but et que seules les modifications liées à cet objectif sont effectuées sur elle.
- Une fois les fonctionnalités terminées, fusionnez leurs branches dans la branche principale en passant à la branche de fonctionnalité et en exécutant `git merge main`.
  - Fusionner fréquemment les modifications apportées à votre travail.
  - Lorsque vous traitez de conflits de fusion, assurez-vous de bien comprendre les deux versions avant d'essayer de les résoudre.

(rr-vcs-checklist-contribute)=
## Contribuer au projet de quelqu'un d'autre

- Cloner le dépôt de leur projet à partir de GitHub `git clone repository_url`.
- Effectuer et valider les modifications.
- Poussez vos modifications vers la version GitHub du projet.
- Utiliser les numéros pour discuter des modifications possibles à un projet.
- Faites des pull requests sur GitHub pour partager votre travail.
  - Expliquez clairement les changements que vous avez apportés (et pourquoi) dans votre pull request.

(rr-vcs-checklist-data)=
## Assurez-vous que vos données sont contrôlées par la version

- Si vos projets impliquent des données, vérifiez si [Git LFS](https://git-lfs.github.com/), [git-annex](https://git-annex.branchable.com/), ou [DataLad](https://www.datalad.org/) répond à vos besoins de contrôle de version.
- Partagez les données avec votre projet pour aider les autres à reproduire vos résultats.
