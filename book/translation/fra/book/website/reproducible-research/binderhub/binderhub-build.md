(rr-binderhub-build)=
# Construisez votre propre BinderHub

[mybinder.org](https://mybinder.org/) est le BinderHub gratuit et public qui héberge près de 100k lancements Binder par semaine. Pourquoi voulez-vous construire la vôtre?

Binder [{term}`def<Binder>`] est un projet open source maintenu par des bénévoles et en tant que tel ils demandent que les utilisateurs restent dans certaines limites de calcul afin de maintenir les coûts de fonctionnement aussi bas que possible tout en fournissant un service utilisable. En hébergeant votre propre BinderHub, vous pouvez offrir à vos utilisateurs des ressources beaucoup plus souples et personnalisées.

Ces personnalisations pourraient inclure :

- authentification,
- plus de ressources de calcul par utilisateur,
- sur mesure les piles et les paquets de la bibliothèque,
- autoriser l'accès aux dépôts privés,
- stockage persistant pour les utilisateurs,
- restreindre le partage au sein d'une institution ou d'une équipe donnée.

## Problèmes que vous pouvez rencontrer lors du déploiement d'un BinderHub

BinderHubs est de plus en plus populaire parmi les universités et les instituts de recherche. C'est parce qu'ils peuvent faciliter plusieurs instances d'un même ensemble de blocs-notes à utiliser dans un tutoriel ou dans un atelier.

Si vous déployez un BinderHub hébergé sur le cloud au nom de votre organisation, vous pourriez avoir besoin d'autorisations spécifiques sur l'abonnement à la plateforme cloud de votre organisation. Les autorisations dont vous avez besoin varient en fonction de la plateforme cloud à laquelle vous avez accès et de vos politiques de services informatiques. Au minimum, vous devrez être en mesure d'affecter [le contrôle d'accès basé sur les rôles (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) à vos ressources afin qu'ils puissent agir de manière autonome afin de gérer le trafic utilisateur.
