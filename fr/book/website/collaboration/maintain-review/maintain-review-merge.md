(cl-maintain-review-merging)=

# Fusion des contributions

Les demandes d'ajout faites par les contributeurs peuvent être approuvées ou fusionnées par les responsables après l'examen.
Il y a différentes façons de fusionner une pull request :

- _Merge pull request_: Merges all commits to base branch.
  Il maintient tous les commits faits dans la PR comme séparés et les fusionne comme ils le sont, à travers un seul commit de fusion vers la branche de base.
- _Squash and merge_: Squashes all commits created in the pull request into one commit and merges them as a single commit (with the help of a merge commit) to the base branch (see this [blog for details](https://github.blog/2016-04-01-squash-your-commits/)).
- _Rebase and merge_: Rebases all commits individually to base branch (integrating changes from one branch to other) before merging.
  Dans le message d'invitation, le responsable peut fournir un message de fusion avec les commentaires (le cas échéant) et ensuite appuyer sur le bouton « confirmer la fusion ».
