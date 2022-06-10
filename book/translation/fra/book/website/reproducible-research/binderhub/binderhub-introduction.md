(rr-binderhub-inntroduction)=
# Introduction à BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) est une technologie basée sur le nuage qui peut lancer un dépôt de code (à partir de GitHub, GitLab, et d’autres) dans une fenêtre de navigateur de telle sorte que le code puisse être exécuté et interagi. Une URL unique est générée permettant de partager facilement le code interactif.

Le but de ces instances de Binder est de promouvoir la reproductibilité des projets de recherche en encourageant les chercheurs à documenter leurs dépendances logicielles et à produire du plaisir, environnements interactifs !

Lier en tant qu'interface utilisateur est utile pour la reproductibilité car le code doit être contrôlé par la version et l'environnement informatique doit être documenté afin de pouvoir bénéficier de la fonctionnalité de Binder. Chaque changement dans le dépôt de code force également une nouvelle version de l'instance Binder. Cela sert de proxy pour une intégration continue de l'environnement de calcul car l'instance Binder se cassera si le fichier de configuration n'est pas mis à jour.

En savoir plus sur l'intégration continue {ref}`ici<rr-ci>`.

## Comment fonctionne BinderHub?

BinderHub s'appuie sur différents outils et ressources pour créer et lancer les instances de Binder.

Pour plus d'informations, voir cette [explication de haut niveau de l'architecture BinderHub](https://binderhub.readthedocs.io/en/latest/overview.html).
