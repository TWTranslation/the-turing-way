(rr-open)=

# البحوث المفتوحة

(rr-open-prerequisites)=

## المتطلبات الأساسية

| المتطلبات الأساسية | الأهمية | الملاحظات                      |
| ------------------ | ------- | ------------------------------ |
| {ref}`rr-vcs`      | مفيدة   | تجربة مع GitHub مفيدة بشكل خاص |

```{figure} ../../figures/evolution-open-research.*
---
name: evolution-open-research-rr
alt: This image shows a researcher evolving their research practices to move towards the era of open research. The image starts with the person looking anxious about engaging with open science, slowly they take a few steps, feel comfortable about sharing their work, and finally start to collaborate with others.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=

## ملخص توضيحي لإنشاء سجلات المشروع

وتهدف البحوث المفتوحة إلى تحويل البحوث عن طريق جعلها أكثر قابلية للتكرار، وشفافية، وقابلية لإعادة الاستخدام، وتعاونية، وخاضعة للمساءلة، وميسورة أمام المجتمع. إنه يدفع باتجاه التغيير في الطريقة التي يتم بها إجراء البحوث ونشرها بواسطة الأدوات الرقمية. One definition of open research, [as given by the Organisation for Economic Co-operation and Development (OECD)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), is the practice of making "the primary outputs of publicly funded research results – publications and the research data – publicly accessible in a digital format with no or minimal restriction." ولتحقيق هذا الانفتاح في البحوث، ينبغي لكل عنصر من عناصر عملية البحث أن يقوم بما يلي:

- _Be publicly available_: It is difficult to use and benefit from knowledge hidden behind barriers such as passwords and paywalls.
- _Be reusable_: Research outputs need to be licensed appropriately, so that prospective users know any limitations on reuse.
- _Be transparent_: With appropriate metadata to provide clear statements of how research output was produced and what it contains.

Schematically, the research process has the following form: data are collected and then analysed (often using software). وقد تنطوي هذه العملية على استخدام أجهزة متخصصة. ومن ثم تنشر نتائج البحث. Throughout the process, it is good practice for researchers to document their work. This can happen in notebooks or other forms of documentation. For experimental studies, Electronic Lab Notebooks are common. تهدف البحوث المفتوحة إلى جعل كل عنصر من هذه العناصر مفتوحة:

- _Open Data_: Documenting and sharing research data openly for reuse.
- _Open Source Software_: Documenting research code and routines, and making them freely accessible and available.
- _Open Hardware_: Documenting designs, materials, and other relevant information related to hardware, and making them freely accessible and available.
- _Open Access_: Making all published outputs freely accessible for maximum use and impact.
- _Open Notebooks_: An emerging practice, documenting and sharing the experimental process of trial and error.

See the [Open Definition](https://opendefinition.org/) for a set of principles that define “openness” in relation to data and content. The above elements are expanded upon in this chapter.

Open scholarship [{term}`def<Open Scholarship>`] is a concept that extends open research further. يتعلق الأمر بجعل جوانب البحث العلمي الأخرى مفتوحة للجمهور ، على سبيل المثال:

- _Open educational resources_: Making educational resources publicly available to be re-used and modified.
- _Equity, diversity, inclusion_: Ensuring scholarship is open to anyone without barriers based on factors such as race, background, gender, and sexual orientation.
- _Citizen science_: The inclusion of members of the public in scientific research.

تمت مناقشة هذه العناصر أيضًا بالتفصيل في هذا الفصل.

(rr-open-useful)=

## الحافواز والخلفية

وهناك خمس مدارس فكرية رئيسية تحفز الممارسات المفتوحة للاستفادة من البحوث:

| المدرسة        | المعتقد                                                                      | الهدف                                                                |
| -------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| البنية التحتية | وتتوقف البحوث الفعالة على الأدوات والتطبيقات المتاحة.        | إنشاء منصات وأدوات وخدمات متاحة بشكل مفتوح للباحثين. |
| براغماتية      | يمكن أن يكون تكوين المعرفة أكثر كفاءة إذا عمل الباحثون معًا. | فتح عملية توليد المعارف.                             |
| القياسات       | تحتاج المساهمات الأكاديمية اليوم إلى قياسات تأثير بديلة.     | • وضع نظام قياس بديل لتأثير البحوث.                  |
| الديمقراطية    | يتم توزيع الوصول إلى المعرفة بشكل غير متساو.                 | جعل المعرفة متاحة مجانا للجميع.                      |
| الجمهور        | ينبغي أن تكون البحوث متاحة للجمهور.                          | جعل البحث في متناول المواطنين.                       |

كما تفيد الممارسات المفتوحة الباحثين الذين ينشرون هذه الممارسات.
For example, there is evidence {cite:t}`McKiernan2016Open` that open access articles are cited more often, as shown by the metastudy presented in the figure below.

```{figure} ../../figures/open-access-citations.*
---
height: 500px
name: open-access-citations
alt: A plot of the relative citation rate (OA divided by non-OA), in the x axis, for 19 different areas of knowledge, in the y axis. The areas of knowledge are organized from the highest to the lowest Relative Citation Rate in the following order - Agricultural Studies, Physics/Astronomy, Medicine, Computer Science, Sociology/Social Sciences, Psychology, Political Science, Management, Law, Economics, Mathematics, Health, Engineering, Philosophy, Education, Business, Communications Studies, Ecology, and Biology. The highest mean values are around 3.2 for Agricultural Studies, and the lowest are around 1.2 for Biology.
---
The relative citation rate (OA: non-OA) in 19 fields of research. This rate is defined as the mean citation rate of OA articles divided by the mean citation rate of non-OA articles. Multiple points for the same discipline indicate different estimates from the same study or estimates from several studies. (See {cite:ps}`McKiernan2016Open`.)
```

ومن الفوائد الأخرى للانفتاح أنه في حين أن التعاون في مجال البحوث ضروري لتعزيز المعرفة، فإن تحديد المتعاونين المناسبين والاتصال بهم ليس بالأمر الهين. ويمكن للممارسات المفتوحة أن تجعل من الأيسر على الباحثين الاتصال عن طريق زيادة إمكانية اكتشاف العمل وإبرازه. و تيسير الوصول السريع إلى البيانات الجديدة وموارد البرمجيات، وإيجاد فرص جديدة للتفاعل مع المشاريع المجتمعية الجارية والمساهمة فيها.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
