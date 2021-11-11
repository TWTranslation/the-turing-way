(rr-binderhub)=
# 绑定Hub

## 前提条件/推荐的技能水平

| 前提条件：                        | 重要性   |
| ---------------------------- | ----- |
| {ref}`版本控制<rr-vcs>`    | 非常重要的 |
| {ref}`可复现的环境<rr-renv>` | 非常重要的 |

本章将讨论 [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), 它是云技术动力 [Binder](https://mybinder.readthedocs.io/en/latest/)。 我们将涵盖BinderHub 使用的技术和工具以及您设置自己的 BinderHub 所需要的资源。

本章主要针对希望向一组研究人员提供BinderHub 服务的研究软件工程师和信息技术服务。 虽然任何人都可以建造一个绑定枢纽。

```{figure} ../figures/binderhub.jpg
---
name: binderhub
alt: A representation of the BinderHub architecture that involves GitHub, repo2docker, docker, jupyterhub and shipping to clients in company.
---
关于 BinderHub 架构的插图。
Stereteria的绘画线路项目示例。 在 CC-BY 4.0 许可下使用。 DOI：10.5281/zenodo.3332807。
```

## B. 动机。

阅读本章将使你更清楚地了解Binder服务的方式(例如 [mybinder)。 (rg](https://mybinder.org)) 运转，增强BinderHub 能力的技术以及它们如何相互作用。 本章还阐述了您可以建立自己的 BinderHub 而不是使用在 mybinder.org上的公共服务的原因。
