(cl-maintain-review-merging)=
# Fusion des contributions
Les demandes d'ajout faites par les contributeurs peuvent être approuvées ou fusionnées par les responsables après l'examen. Il y a différentes façons de fusionner une pull request :
- *Fusionner la pull request*: Fusionne tous les commits vers la branche de base. Il maintient tous les commits faits dans la PR comme séparés et les fusionne comme ils le sont, à travers un seul commit de fusion vers la branche de base.
- *Squash et fusion*: Écarte tous les commits créés dans la demande d'ajout en un seul commit et les fusionne en un seul commit (avec l'aide d'un commit de fusion) dans la branche de base (voir ce [blog pour plus de détails](https://github.blog/2016-04-01-squash-your-commits/)).
- *Rebase et fusion*: Rebase toutes les commits individuellement sur la branche de base (intégrant les changements d'une branche à une autre) avant la fusion. Dans le message d'invitation, le responsable peut fournir un message de fusion avec les commentaires (le cas échéant) et ensuite appuyer sur le bouton « confirmer la fusion ».
