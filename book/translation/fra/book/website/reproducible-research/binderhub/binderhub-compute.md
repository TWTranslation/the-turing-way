(rr-binderhub-compute)=
# Ressources de calcul

BinderHub est neutre sur le nuage, ce qui signifie qu'il peut être déployé sur n'importe quelle plate-forme cloud. Par conséquent, le minimum requis est un abonnement à une plateforme cloud de votre choix.

En fait, BinderHub ne dépend pas du tout de l'hébergement sur le cloud et peut être déployé sur un système informatique sur site.

## Kubernetes

[Kubernetes](https://kubernetes.io/) est un système pour automatiser le déploiement, la mise à l'échelle (faire plus ou moins de copies), et la gestion des conteneurs à travers un cluster de calcul (il n'a pas besoin d'être basé sur le cloud). BinderHub utilise Kubernetes pour gérer les ressources demandées par les utilisateurs du service Binder et pour supporter les outils qui construisent les environnements.

## Heaume

[Helm](https://helm.sh/) est un gestionnaire de paquets pour Kubernetes. Les paquets se présentent sous la forme de *Cartes* qui sont un ensemble d'instructions à déployer, mettre à jour et gérer les applications fonctionnant sur une grappe de serveurs Kubernetes. Ils peuvent rendre l'installation et la gestion d'applications Kubernetes beaucoup plus facile et des graphiques spécifiques pour des projets peuvent être publiés en ligne. Par exemple, le heaume pour BinderHub est disponible [ici](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## Dépo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) est un outil qui construit automatiquement une image Docker à partir d'un dépôt de code donné un fichier de configuration. Cette image Docker contiendra tout le code, les données et les ressources qui sont listées dans le référentiel. Tous les logiciels nécessaires pour exécuter le code seront également préinstallés à partir du fichier de configuration.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) est un serveur multi-utilisateur pour les ordinateurs portables Jupyter et les conteneurs. Dans le contexte de Binder, le rôle principal de JupyterHub est de connecter le navigateur de l'utilisateur à l'instance BinderHub fonctionnant sur le cluster Kubernetes. Cependant, le JupyterHub peut être plus personnalisé pour assurer un meilleur contrôle du fonctionnement du BinderHub.

BinderHub peut être considéré comme une couche mince qui se trouve au-dessus du repo2docker et de JupyterHub, en orchestrant leurs interactions et en résolvant des URL.

## Que se passe-t-il lorsqu'un lien de liaison est cliqué ?

1. Le lien vers le référentiel est résolu par BinderHub.
2. BinderHub recherche une image Docker relative à la référence fournie (par exemple, git commit hash, branche ou tag).
3. **Si une image Docker n'est pas trouvée**, BinderHub demande des ressources de la grappe Kubernetes pour exécuter repo2docker pour faire ce qui suit :
   - Récupérer le référentiel,
   - Construire une image Docker contenant le logiciel demandé dans le fichier de configuration,
   - Poussez cette image dans le registre Docker.
4. BinderHub envoie l'image Docker à JupyterHub.
5. JupyterHub demande des ressources de la grappe de serveurs Kubernetes pour servir l'image Docker.
6. JupyterHub connecte le navigateur de l'utilisateur à l'environnement Docker en cours d'exécution.
7. JupyterHub surveille l'activité du conteneur et la détruit après une période d'inactivité.
