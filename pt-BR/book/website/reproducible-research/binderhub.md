(rr-binderhub)=

# BinderHub

## Nível de habilidade prévio/recomendado

| Pré-requisito                             | Importance       |
| ----------------------------------------- | ---------------- |
| {ref}`Version Control<rr-vcs>`            | Muito importante |
| {ref}`Reproducible Environments<rr-renv>` | Muito importante |

This chapter will discuss [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), which is the cloud technology powering [Binder](https://mybinder.readthedocs.io/en/latest/).
Abrangeremos as tecnologias e ferramentas que o BinderHub utiliza e os recursos necessários para configurar seu próprio BinderHub.

Este capítulo destina-se principalmente aos Engenheiros de Software de Pesquisa e Serviços de TI que desejam fornecer um serviço à BinderHub como um grupo de pesquisadores.
Embora qualquer um possa construir um BinderHub.

```{figure} ../../figures/binderhub.*
---
name: binderhub
alt: A representation of the BinderHub architecture that involves GitHub, repo2docker, docker, jupyterhub and shipping to clients in company.
---
Illustration about BinderHub architecture.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Motivação e Antecedentes

Reading this chapter will give you a clearer picture of how Binder services (such as [mybinder.org](https://mybinder.org)) operate, the technologies powering BinderHub and how they interact with one another.
Este capítulo também cobre razões pelas quais você pode construir seu próprio BinderHub, ao invés de usar o serviço público em mybinder.org.
