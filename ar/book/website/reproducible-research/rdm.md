(rr-rdm)=

# إدارة بيانات البحث (Research Data Management)

(rr-rdm-prerequisites)=

## المتطلبات الأساسية

توفر الأقسام التالية في هذا الكتيب محتوى مفيد ومعلومات تكميلية لهذا الفصل:

| المتطلبات الأساسية | الأهمية |
| ------------------ | ------- |
| {ref}`rr-vcs`      | مفيدة   |
| {ref}`rr-open`     | مفيدة   |

(rr-rdm-summary)=

## ملخص توضيحي لإنشاء سجلات المشروع

Research Data Management (RDM) [{term}`def<Research Data Management>`] covers how research data can be stored, described and reused.
التي نستخدمها هنا كمصطلح عام لتشمل جميع العناصر الرقمية،
وبالتالي تعد إدارة بيانات البحث (RDM) جزءًا حيويًا لتمكين البحث ليكون قابل للتكرار (reproducible)،
RDM ensures efficiency in research workflows, and also greater reach and impact, as data become {ref}`FAIR <rr-rdm-fair>` (Findable, Accessible, Interoperable and Reusable).
ويجب تخزين هذه البيانات في مواقع متعددة ونسخها احتياطيًا بانتظام لمنع فقدانها أو تلفها،
ويضمن وصفها بوضوح باستخدام الوثائق والبيانات الوصفية أن يعرف الآخرون كيفية الوصول إلىها واستخدامها وإعادة استخدامها ، كما يتيح أيضا تحديد شروط مشاركة البيانات ونشرها.

```{figure} ../../figures/data-ecosystem.*
---
height: 400px
name: data-ecosystem
alt: >
  A blue and grey scale cartoon.
  Private data is shown as an underground reservoir of water under a well with an open padlock representing access to that data.
  Above the well a person with a ponytail says confidentiality and consent indicating the mechanisms by which the private data can be accessed.
  A pipeline fountain is spurting 1s and 0s forming a cloud labelled public data, which is raining 1s and 0s onto a field of bar chats and pie charts being tended by people, indicating the provement of public knowledge and scientific progress through public data.
  A wheelbarrow of pie charts labelled public benefit at the front of the image reinforces this idea. 
---
Open and closed data for reproducibility.
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. http://doi.org/10.5281/zenodo.3695300. 
```

(rr-rdm-useful)=

## الحافواز والخلفية

```{figure} ../../figures/rdm-storage.*
---
height: 400px
name: rdm-storage
alt: A cartoon woman standing in front of a very messy closet. She is looking for data that she generated last year. Behind her a person is watching doubtfully, unsure whether she can find it in this mess.
---
Research Data Management: making it possible to retrieve data from last year.
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. http://doi.org/10.5281/zenodo.3695300. 
```

- {ref}`Managing your data <rr-rdm-storage-organisation>` allows you to always find your data and ensure the quality of scientific practice.
- {ref}`Storing your data properly <rr-rdm-storage>` and backing-up regularly prevents data loss.
- It can help with {ref}`recognition <cm-citable-orcid>` for all research outputs.
- It stimulates **collaboration** with others, who will find it easier to {ref}`understand and reuse your data <rr-rdm-metadata>`.
- RDM is cost/time efficient (see [Why Does Data Need to be Managed?](https://www.youtube.com/watch?v=C7RZ2t3Cpig)), especially if {ref}`shared publicly <rr-rdm-sharing>`, as you will always be able to find and use your data.
