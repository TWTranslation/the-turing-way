(rr-binderhub)=
# BinderHub

## Prerrequisitos / nivel de habilidad recomendado

| Prerrequisito                                | Importancia    |
| -------------------------------------------- | -------------- |
| {ref}`Control de versiones<rr-vcs>`    | Muy importante |
| {ref}`Entornos Reproducibles<rr-renv>` | Muy importante |

Este capítulo discutirá [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), que es la tecnología en la nube que potencia [Binder](https://mybinder.readthedocs.io/en/latest/). Cubriremos las tecnologías y herramientas que utiliza BinderHub y los recursos que necesitará para configurar su propio BinderHub.

Este capítulo está dirigido principalmente a Ingenieros de Software de Investigación y Servicios de TI que desean proporcionar un BinderHub como un servicio a un grupo de investigadores. Aunque cualquiera puede construir un BinderHub.

```{figure} ../figures/binderhub.jpg
---
name: binderhub
alt: Una representación de la arquitectura BinderHub que involucra a GitHub, repo2docker, docker, jupyterhub y envío a clientes en empresa.
---
Illustración sobre la arquitectura BinderHub.
_The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: 10.5281/zenodo.3332807.
```

## Motivación

Leer este capítulo te dará una imagen más clara de cómo los servicios de Binder (como [mybinder. rg](https://mybinder.org)) operan, las tecnologías que potencian BinderHub y cómo interactúan entre sí. Este capítulo también cubre las razones por las que podría construir su propio BinderHub, en lugar de usar el servicio público en mybinder.org.
