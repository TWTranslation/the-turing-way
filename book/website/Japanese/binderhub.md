(rr-binderhub)=
# BinderHub

## 前提条件/推奨スキルレベル

| 前提条件                          | 重要度   |
| ----------------------------- | ----- |
| {ref}`バージョン管理<rr-vcs>`  | とても重要 |
| {ref}`再現可能な環境<rr-renv>` | とても重要 |

この章では、 [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html)を動力とするクラウド技術である [BinderHub](https://mybinder.readthedocs.io/en/latest/) について説明します。 BinderHubが利用するテクノロジーとツール、および独自のBinderHubをセットアップするために必要なリソースについて説明します。

本章は、主に研究者グループへのサービスとしてBinderHubを提供したい研究ソフトウェアエンジニアとITサービスを対象としています。 誰でもBinderHubを構築できます。

```{figure} ../figures/binderhub.jpg
---
name: binderhub
alt: GitHub、repo2docker、docker、jupyterhub、および会社のクライアントへの配送を含む、BinderHubアーキテクチャの表現。
---
BinderHub アーキテクチャについての図.
_Scriberiaによるチューリング方法_プロジェクトのイラスト。 CC-BY 4.0ライセンスの下で使用される。 DOI: 10.5281/zenodo.3332807.
```

## モチビーション

Reading this chapter will give you a clearer picture of how Binder services (such as [mybinder.org](https://mybinder.org)) operate, the technologies powering BinderHub and how they interact with one another. この章では、mybinder.org で公開サービスを使用するのではなく、独自の BinderHub を構築する理由も説明します。
