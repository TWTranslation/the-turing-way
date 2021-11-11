(rr-binderhub)=
# BinderHub

## Nível de habilidade prévio/recomendado

| Pré-requisito                                | Importância      |
| -------------------------------------------- | ---------------- |
| {ref}`Controle de Versão<rr-vcs>`      | Muito importante |
| {ref}`Ambientes Reproduíveis<rr-renv>` | Muito importante |

Este capítulo vai discutir o [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), que é a tecnologia da nuvem que alimenta [Binder](https://mybinder.readthedocs.io/en/latest/). Abrangeremos as tecnologias e ferramentas que o BinderHub utiliza e os recursos necessários para configurar seu próprio BinderHub.

Este capítulo destina-se principalmente aos Engenheiros de Software de Pesquisa e Serviços de TI que desejam fornecer um serviço à BinderHub como um grupo de pesquisadores. Embora qualquer um possa construir um BinderHub.

```{figure} ../figures/binderhub.jpg
---
nome: binderhub
alt: Uma representação da arquitetura do BinderHub que envolve GitHub, repo2docker, docker, jupyterhub e envio para clientes na empresa.
---
Ilustração sobre a arquitetura de BinderHub.
_O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: 10.5281/zenodo.3332807.
```

## Motivação

Ao ler este capítulo, você terá uma imagem mais clara de como os serviços de Binder (tais como [mybinder. rg](https://mybinder.org)) operam, as tecnologias que ligam BinderHub e como eles interagem entre si. Este capítulo também cobre razões pelas quais você pode construir seu próprio BinderHub, ao invés de usar o serviço público em mybinder.org.
