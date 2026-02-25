(rr-binderhub)=

# BinderHub

## Prérequis / Niveau de compétence recommandé

| Prerequisite                              | Importance     |
| ----------------------------------------- | -------------- |
| {ref}`Version Control<rr-vcs>`            | Très important |
| {ref}`Reproducible Environments<rr-renv>` | Très important |

This chapter will discuss [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), which is the cloud technology powering [Binder](https://mybinder.readthedocs.io/en/latest/).
Nous couvrirons les technologies et les outils que BinderHub utilise et les ressources dont vous aurez besoin pour configurer votre propre BinderHub.

Ce chapitre s'adresse principalement aux ingénieurs de logiciels de recherche et aux services informatiques qui souhaitent fournir un service à un groupe de chercheurs un BinderHub.
Bien que n'importe qui puisse construire un BinderHub.

```{figure} ../../figures/binderhub.*
---
name: binderhub
alt: A representation of the BinderHub architecture that involves GitHub, repo2docker, docker, jupyterhub and shipping to clients in company.
---
Illustration about BinderHub architecture.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Motivation and Background

Reading this chapter will give you a clearer picture of how Binder services (such as [mybinder.org](https://mybinder.org)) operate, the technologies powering BinderHub and how they interact with one another.
Ce chapitre couvre également les raisons pour lesquelles vous pourriez construire votre propre BinderHub, plutôt que d'utiliser le service public sur mybinder.org.
