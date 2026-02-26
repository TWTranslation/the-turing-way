(rr-vcs-checklist)=

# Checklist

(rr-vcs-checklist-makeuseof)=

## Utiliser Git

- Make your project version controlled by initialising a Git repository in its directory using `git init`.
- Add and commit all your files to the repository using `git add .` then `git commit`.
- Continuez à ajouter et à valider les changements au fur et à mesure que votre projet progresse. Stage the changes in specific files to be committed with `git add filename`, and add messages to your commits.
  - Chaque commit devrait faire un simple changement.
  - Aucun fichier généré n'a été validé.
  - Les messages de commit sont significatifs, avec un résumé de ~50 caractères en haut.
  - Les messages de compromis sont dans la tension actuelle et impérative.
- Develop new features on their own branches, which you can create via `git checkout -b branch_name` and switch between via `git checkout branch_name`.
  - Assurez-vous que les branches ont des noms informatifs.
  - Assurez-vous que la branche principale est propre.
  - Assurez-vous que chaque branche a un seul but et que seules les modifications liées à cet objectif sont effectuées sur elle.
- Once features are complete, merge their branches into the main branch by switching to the feature branch and running `git merge main`.
  - Fusionner fréquemment les modifications apportées à votre travail.
  - Lorsque vous traitez de conflits de fusion, assurez-vous de bien comprendre les deux versions avant d'essayer de les résoudre.

(rr-vcs-checklist-contribute)=

## Contribuer au projet de quelqu'un d'autre

- Clone their project's repository from GitHub `git clone repository_url`.
- Effectuer et valider les modifications.
- Poussez vos modifications vers la version GitHub du projet.
- Utiliser les numéros pour discuter des modifications possibles à un projet.
- Faites des pull requests sur GitHub pour partager votre travail.
  - Expliquez clairement les changements que vous avez apportés (et pourquoi) dans votre pull request.

(rr-vcs-checklist-data)=

## Assurez-vous que vos données sont contrôlées par la version

- If your projects involve data, check whether [Git LFS](https://git-lfs.github.com/), [git-annex](https://git-annex.branchable.com/), or [DataLad](https://www.datalad.org/) fits your needs for version-controlling it.
- Partagez les données avec votre projet pour aider les autres à reproduire vos résultats.
