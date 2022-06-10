(rr-binderhub)=
# BinderHub

## Prérequis / Niveau de compétence recommandé

| Pré-requis                                          | Importance     |
| --------------------------------------------------- | -------------- |
| {ref}`Contrôle de version<rr-vcs>`            | Très important |
| {ref}`Environnements reproductibles<rr-renv>` | Très important |

Ce chapitre discutera de [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), qui est la technologie du cloud alimentant [Binder](https://mybinder.readthedocs.io/en/latest/). Nous couvrirons les technologies et les outils que BinderHub utilise et les ressources dont vous aurez besoin pour configurer votre propre BinderHub.

Ce chapitre s'adresse principalement aux ingénieurs de logiciels de recherche et aux services informatiques qui souhaitent fournir un service à un groupe de chercheurs un BinderHub. Bien que n'importe qui puisse construire un BinderHub.

```{figure} ../figures/binderhub.jpg
---
nom: binderhub
alt : Une représentation de l'architecture BinderHub qui implique GitHub, repo2docker, docker, jupyterhub et la livraison aux clients de l'entreprise.
---
Illustration à propos de l'architecture BinderHub.
Illustration du projet _Turing Way_ par Scriberia. Utilisé sous licence CC-BY 4.0. DOI : 10.5281/zenodo.3332807.
```

## Motivation

La lecture de ce chapitre vous donnera une image plus claire de la façon dont les services de Binder (comme [mybinder. rg](https://mybinder.org)) fonctionne, les technologies qui alimentent BinderHub et la façon dont ils interagissent entre eux. Ce chapitre couvre également les raisons pour lesquelles vous pourriez construire votre propre BinderHub, plutôt que d'utiliser le service public sur mybinder.org.
