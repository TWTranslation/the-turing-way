(rr-binderhub)=

# BinderHub

## 前提条件/推奨スキルレベル

| Prerequisite                              | Importance |
| ----------------------------------------- | ---------- |
| {ref}`Version Control<rr-vcs>`            | とても重要      |
| {ref}`Reproducible Environments<rr-renv>` | とても重要      |

This chapter will discuss [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), which is the cloud technology powering [Binder](https://mybinder.readthedocs.io/en/latest/).
BinderHubが利用するテクノロジーとツール、および独自のBinderHubをセットアップするために必要なリソースについて説明します。

本章は、主に研究者グループへのサービスとしてBinderHubを提供したい研究ソフトウェアエンジニアとITサービスを対象としています。
誰でもBinderHubを構築できます。

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
この章では、mybinder.org で公開サービスを使用するのではなく、独自の BinderHub を構築する理由も説明します。
