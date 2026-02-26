(rr-binderhub)=

# BinderHub

## الشروط الأولية/مستوى المهارة الموصى بها

| المتطلبات الأساسية                        | الأهمية |
| ----------------------------------------- | ------- |
| {ref}`Version Control<rr-vcs>`            | مهم جدا |
| {ref}`Reproducible Environments<rr-renv>` | مهم جدا |

This chapter will discuss [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html), which is the cloud technology powering [Binder](https://mybinder.readthedocs.io/en/latest/).
سنغطي التقنيات والأدوات التي يستخدمها BinderHub والموارد التي ستحتاج إليها لإعداد BinderHub الخاص بك.

يهدف هذا الفصل في المقام الأول إلى مهندسي البرمجيات البحثية وخدمات تكنولوجيا المعلومات الذين يرغبون في تقديم BinderHub كخدمة لمجموعة من الباحثين.
على الرغم من أنه يمكن لأي شخص إنشاء BinderHub.

```{figure} ../../figures/binderhub.*
---
name: binderhub
alt: A representation of the BinderHub architecture that involves GitHub, repo2docker, docker, jupyterhub and shipping to clients in company.
---
Illustration about BinderHub architecture.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## الحافواز والخلفية

Reading this chapter will give you a clearer picture of how Binder services (such as [mybinder.org](https://mybinder.org)) operate, the technologies powering BinderHub and how they interact with one another.
يغطي هذا الفصل أيضا الأسباب التي تجعلك تنشئ BinderHub الخاص بك ، بدلا من استخدام الخدمة العامة في mybinder.org.
