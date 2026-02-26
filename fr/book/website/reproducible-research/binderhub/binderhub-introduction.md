(rr-binderhub-inntroduction)=

# Introduction à BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) is a cloud-based technology that can launch a repository of code (from GitHub, GitLab, and others) in a browser window such that the code can be executed and interacted with.
Une URL unique est générée permettant de partager facilement le code interactif.

Le but de ces instances de Binder est de promouvoir la reproductibilité des projets de recherche en encourageant les chercheurs à documenter leurs dépendances logicielles et à produire du plaisir, environnements interactifs !

Lier en tant qu'interface utilisateur est utile pour la reproductibilité car le code doit être contrôlé par la version et l'environnement informatique doit être documenté afin de pouvoir bénéficier de la fonctionnalité de Binder.
Chaque changement dans le dépôt de code force également une nouvelle version de l'instance Binder.
Cela sert de proxy pour une intégration continue de l'environnement de calcul car l'instance Binder se cassera si le fichier de configuration n'est pas mis à jour.

Learn more about Continuous Integration {ref}`here<rr-ci>`.

## Comment fonctionne BinderHub?

BinderHub s'appuie sur différents outils et ressources pour créer et lancer les instances de Binder.

For more information, see this [high-level explanation of the BinderHub architecture](https://binderhub.readthedocs.io/en/latest/overview.html).
