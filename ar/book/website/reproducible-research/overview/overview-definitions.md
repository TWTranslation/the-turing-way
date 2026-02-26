(rr-overview-definitions)=

# التعاريف العلمية:

The most common definition of reproducibility (and replication) was first noted by Claerbout and Karrenbach in 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibility` and has been used in computational science literature since then.
Another popular definition has been introduced in 2013 by the Association for Computing Machinery (ACM) {cite:ps}`Ivie2018SciComp`, which swapped the meaning of the terms 'reproducible' and 'replicable' compared to Claerbout and Karrenbach.

The following table contrasts both definitions {cite:ps}`Heroux2018Reproducibility`.

| المصطلح العلمي       | Claerbout & Karrenbach                                                                                                                       | تعريف آ سي أم (ACM)                                                                                                                                                                                                                                                                                                                      |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| قابلة لإعادة الإنتاج | يوفر المؤلفون جميع البيانات اللازمة و رموز الكمبيوتر لتشغيل التحليل مرة أخرى ، وإعادة إنشاء النتائج.                                             | (فريق مختلف ، إعداد تجريبي مختلف)  يمكن الحصول على القياس بدقة محددة بواسطة فريق مختلف، و نظام قياس مختلف، في موقع مختلف على تجارب متعددة، بالنسبة للتجارب الحسابية ، هذا يعني أنه يمكن لمجموعة مستقلة الحصول على نفس النتيجة باستخدام الآثار التي يطورونها بشكل مستقل تمامًا.                                           |
| قابلة للتكرار        | دراسة تتوصل إلى نفس النتائج العلمية التي تتوصل إليها دراسة أخرى، تجمع بيانات جديدة (ربما بطرق مختلفة) و تستكمل تحليلات جديدة. | (فريق مختلف ، نفس الإعداد التجريبي) و يمكن أن يحصل فريق مختلف على القياس بدقة محددة باستخدام نفس إجراء القياس، نفس نظام القياس، في نفس ظروف التشغيل، في نفس الموقع أو في مكان مختلف في محاكمات متعددة، بالنسبة للتجارب الحسابية ، هذا يعني أنه يمكن لمجموعة مستقلة الحصول على نفس النتيجة باستخدام القطع الأثرية للمؤلف. |

Barba (2018) {cite:ps}`Barba2018Reproducibility` conducted a detailed literature review on the usage of reproducible/replicable covering several disciplines.
تستخدم معظم الأوراق و التخصصات المصطلحات على النحو المحدد من قبل كلاربوت و كارينباخ ، في حين أن علم الأحياء الدقيقة و المناعة و علوم الكمبيوتر تميل إلى اتباع استخدام آ سي أم  لقابلية إعادة الإنتاج و التكرار،
في أدبيات العلوم السياسية و الاقتصاد ، يتم استخدام كلا المصطلحين بالتبادل.

بالإضافة إلى هذه التعريفات عالية المستوى لقابلية إعادة الإنتاج ، يقدم بعض المؤلفين مزيدًا من الفروق التفصيلية،
Victoria Stodden {cite:ps}`Victoria2014Reproducibility`, a prominent scholar on this topic, has for example identified the following further distinctions:

- _Computational reproducibility_: When detailed information is provided about code, software, hardware and implementation details.

- _Empirical reproducibility_: When detailed information is provided about non-computational empirical scientific experiments and observations. في الممارسة العملية ، يتم تمكين ذلك من خلال إتاحة البيانات و التفاصيل الخاصة بكيفية جمعها مجانًا.

- _Statistical reproducibility_: When detailed information is provided, for example, about the choice of statistical tests, model parameters, and threshold values. يتعلق هذا في الغالب بالتسجيل المسبق لتصميم الدراسة لمنع قرصنة القيمة و غيرها من التلاعبات.

(rr-overview-definitions-reproducibility)=

## جدول تعاريف قابلية إعادة الإنتاج

At _The Turing Way_, we define **reproducible research** as work that can be independently recreated from the same data and the same code that the original team used.
تختلف قابلية إعادة الإنتاج عن قابلة للتكرار بكونها قوية و قابلة للتعميم كما هو موضح في الشكل أدناه.

```{figure} ../../../figures/reproducible-matrix.*
---
name: reproducible-matrix
alt: Kirstie's definition of reproducible research.
---
How the Turing Way defines reproducible research
```

الأبعاد المختلفة للبحث القابل لإعادة الإنتاج الموضحة في المصفوفة أعلاه له التعريفات التالية:

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Replicable:** A result is replicable when the _same_ analysis performed on _different_ datasets produces qualitatively similar answers.
- **Robust:** A result is robust when the _same_ dataset is subjected to _different_ analysis workflows to answer the same research question (for example one pipeline written in R and another written in Python) and a qualitatively similar or identical answer is produced.
  تظهر النتائج القوية أن العمل لا يعتمد على خصوصيات اللغة البرمجية المختارة لإجراء التحليل.
- **Generalisable:** Combining replicable and robust findings allow us to form generalisable results.
  Note that running an analysis on a different software implementation and with a different dataset does not provide _generalised_ results.
  سيكون هناك العديد من الخطوات لمعرفة مدى تطبيق العمل على جميع الجوانب المختلفة لسؤال البحث،
  التعميم هو خطوة مهمة نحو فهم أن النتيجة لا تعتمد على مجموعة بيانات معينة و لا نسخة معينة من خط بيانات التحاليل.

More information on these definitions can be found in "Reproducibility vs. Replicability: A Brief History of a Confused Terminology" by Hans E. Plesser {cite:ps}`Plesser2018Reproducibility`.

```{figure} ../../../figures/reproducible-definition-grid.*
---
name: reproducible-definition-grid.*
alt: "Grid with the characteristics of: Reproducible; same data, same analysis. Replicable; different data, same analysis. Robust; same data, different analysis. And generalisable; different data, different analysis; Research"
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-reproducible)=

## قابلة لإعادة الإنتاج و لكن ليست مفتوحة

_The Turing Way_ recognises that some research will use sensitive data that cannot be shared and this handbook will provide guides on how your research can be reproducible without all parts necessarily being open.
