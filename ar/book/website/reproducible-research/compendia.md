(rr-compendia)=

# ملخص تفصيلي (Compendia) للبحث العلمي

## المتطلبات الأساسية

| المتطلبات الأساسية                        | الأهمية | الملاحظات                                                                          |
| ----------------------------------------- | ------- | ---------------------------------------------------------------------------------- |
| {ref}`Version Control<rr-vcs>`            | مفيدة   | يمكن استخدامها لإصدار الملخص التفصيلي (compendium)              |
| {ref}`Open Research<rr-open>`             | مفيدة   | المكونات هي جزء من الملخص التفصيلي (compendium)                 |
| {ref}`Reproducible Environments<rr-renv>` | مفيدة   | يمكن استخدامها لجعل الملخص التفصيلي قابل للتكرار (reproducible) |
| {ref}`Binder Hub<rr-binderhub>`           | مفيدة   | يمكن استخدامها لنشر الملخص التفصيلي (compendium)                |
| {ref}`Make<rr-make>`                      | مفيدة   | يمكن استخدامها للتشغيل الآلي (automation) في الملخص التفصيلي    |

## ملخص توضيحي لإنشاء سجلات المشروع

الملخص التفصيلي (compendium) للبحث عبارة عن مجموعة من جميع الأجزاء الرقمية للمشروع البحثي بما في ذلك البيانات والنص البرمجي والنصوص (البروتوكولات والتقارير والاستبيانات والبيانات الوصفية)،
The collection is created in such a way that reproducing all results is straightforward {cite:ps}`Nuest2017compendia,Gentleman2007statistical`.

يحتوي هذا الفصل على العديد من المتطلبات الأساسية لأنه يأخذ جميع المكونات الرقمية للمشروع معًا في حزمة بحث قابلة للتكرار (reproducible)،
ومع ذلك: يمكن إنشاء ملخص تفصيلي (compendium) بحثي بأقل قدر من المعرفة التقنية،
والغرض الرئيسي هو أن يتم نشر كل عناصر المشروع معا، بحيث يكون هيكل الملف الأساسي الذي يجمع كل المكونات كافيا.

```{figure} ../../figures/research-compendium.*
---
height: 500px
name: research-compendium
alt: An illustration showing a person churning a big machine that takes scientific information from multiple papers and gives one output of readable file.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## الحافز لإنشاء سجلات المشروع

A research compendium [{term}`def<Research Compendia>`] combines all elements of your project, allowing others to reproduce your work, and should be the final product of your research project.
ويتيح نشر ورقة البحث الخاصة بك جنبًا إلى جنب مع الملخص التفصيلي (compendium) للآخرين الوصول إلى مدخلاتك ، واختبار تحليلك ، وإذا كان الملخص التفصيلي قابل للتنفيذ ، فعليك إعادة تشغيلها لتقييم النتيجة،
لا يؤدي هذا الأمر إلى غرس الثقة في أبحاثك فحسب، بل يمكنه أيضا أن يمنحك المزيد من الوضوح،
Others may use your research in unexpected ways, some of which are discussed below (refer to section: {ref}`Using a research compendium<rr-compendia-using>`).

## المعلومات الأساسية للملخص التفصيلي (compendium)

الملخص التفصيلي (compendium) للبحث في أبسط صوره هو مجموعة شاملة من الملفات التي تجمع بين جميع مكونات المشروع،
ويمكن تنزيل هذا الملخص وتشغيله محليًا على جهازك لإعادة إنشاء العمل المنجز ، أو يمكن أن يحتوي على عناصر تسمح بتنفيذه على سيرفر عن بعد (remote server)،
يهدف الملخص التفصيلي للبحث القابل للتنفيذ إلى جعل الجزء الحسابي من المنشور العلمي قابلاً للتكرار من خلال توفير جميع الأجزاء الأساسية المتاحة وإعطاء وصف لكيفية قيام المستخدم بتنفيذ النص البرمجي المتضمن.

### هيكل الملخص التفصيلي للبحوث  (compendium)

Three principles should be kept in mind when constructing a research compendium {cite:ps}`Marwick2018compendia`.

- يجب تنظيم الملفات في مجلد وفق بنية مألوفة.
- يجب فصل البيانات والأساليب والمخرجات بصورة واضحة.
- يجب تحديد البيئة الحسابية.

مع هذه المبادئ ، يمكن الحصول على مجموعة متنوعة من الملخصات التفصيلية (Compendia)،
لنبدأ بالإصدار الأساسي.

#### الملخص التفصيلي (compendium) الأساسي

يتبع الملخص التفصيلي الأساسي هذه المبادئ الثلاثة،
حيث يفصل البيانات والأساليب في بنية مجلد تقليدية ، ويصف البيئة الحسابية في ملف معين،
علاوة على ذلك ، يجب أن يحتوي أي ملخص تفصيلي (compendium) على صفحة في شكل وثيقة اقرأني (README).

```text
compendium/
├── data
│   ├── my_data.csv
├── analysis
│   └── my_script.R
├── DESCRIPTION
└── README.md
```

#### الملخص التفصيلي (compendium) القابل للتنفيذ

يمكن اعتبار المجلد التالي ملخص تفصيلي بحثي (compendium) قابل للتنفيذ،
إذ يحتوي على جميع الأجزاء الرقمية للمشروع البحثي (النص البرمجي (code) ، البيانات ، النصوص ، الأرقام) وجميع المعلومات الخاصة بكيفية الحصول على النتائج،
The computing environment is described in the `Dockerfile`, the dependencies of files and how to automatically generate the results are described in the `Makefile`.
Additionally we have a `README.md` describing what the compendium is about and a `LICENSE` file with info on how it can be used.

```text
compendium/
├── CITATION
├── code
│   ├── analyse_data.R
│   └── clean_data.R
├── data_clean
│   └── data_clean.csv
├── data_raw
│   ├── datapackage.json
│   └── data_raw.csv
├── Dockerfile
├── figures
│   └── flow_chart.jpeg
├── LICENSE
├── Makefile
├── paper.Rmd
└── README.md
```

#### الفصل بين الطرق والبيانات والمخرجات

تنص مبادئ الملخص التفصيلي (compendium) للبحوث على ضرورة فصل كل من الأساليب والبيانات والمخرجات بوضوح،
بصياغة مختلفة ، هذا يعني أننا يجب أن نميز بين ثلاثة أنواع من الملفات والمجلدات:

- **Read-only**: raw data (`data_raw\`), metadata (`datapackage.json`, `CITATION`)
- **Human-generated**: code (`clean_data.R`, `analyse_data.R`), paper (`paper.Rmd`), documentation (`README.md`)
- **Project-generated**: clean data (`data_clean\`, figures (`figures\`), other output

The examples mentioned here are not exhaustive and some may first be "human-generated" and at some point become "read-only" (for example a human may generate the data metadata `datapackage.json`, but once that is done it may become something not to be touched).
وبعبارة أخرى، قد يعتمد ما إذا كان المجلد يحتوي على ملفات في أي من هذه الفئات على دورة حياة المشروع.

### إنشاء الملخص التفصيلي (compendium)

إذا كنت تستخدم بالفعل بعض الأدوات الموجودة في هذا الكتاب - مثل برنامَج إدارة الإصدارات (version control)، مايك فايل (Makefile) و / أو بيئة قابلية التكرار (reproducible) - فقد يكون من الطبيعي أن تقوم بإنشاء ملخص تفصيلي (compendium) بحثي،
وذلك لأن سجل برنامَج إدارة الإصدارات يمكن أن يكون ملخص تفصيلي للأبحاث ؛ومايك فايل يجعله قابلاً للتنفيذ ؛والبيئة القابلة للتكرار تجعلها قابل للتكرار،
To create a research compendium, we recommend to first think about _what the components of your project are_ and create the folder structure accordingly.
واستخدام أسماء الملفات والمجلدات التي تسهل على الآخرين فهم محتوياتها،
إنها لفكرة جيدة أن تفكر في هذا الأمر في وقت مبكر من عملية البحث وأن تبدأ مشروعك بالعقلية التي تقول بأن المخرجات في النهاية هي ملخص تفصيلي بحثي وليست مجرد ورقة بحثية.

### نشر الملخص التفصيلي (compendium)

هناك عدة خيارات لنشر ملخص تفصيلي (compendium) للأبحاث:

- على منصة إدارة الإصدارات مثل جيت هاب (GitHub) أو جيت لاب (GitLab) (من المحتمل أن يكون له رابط إلى بيندر (Binder)).
- على أرشيف البحوث مثل زينودو (Zenodo) أو إطار عمل العلوم المفتوحة (OSF).
- كمادة تكميلية لمنشور ورقي.

للحصول على أمثلة ، راجع التسمية / الوسم / المجتمع "الملخص التفصيلي البحثي" (مطبقة على جيت هاب (GitHub) ، زينودو (Zenodo) ، إطار عمل العلوم المفتوحة (OSF)) أو كإجراء احتياطي لمصطلح "الملخص التفصيلي البحثي" في وصف (المستخدمة في الجيت لاب (GitLab))، For more info, see also [Research Compendium](https://research-compendium.science).

في المستقبل ، قد يكون الملخص التفصيلي (compendium) البحثي هو المنشور نفسه الذي يسمح بمراجعة النظراء لمشروع البحث بأكمله.

(rr-compendia-using)=

### استخدام الملخص التفصيلي (compendium)

يمكن استخدام الملخص التفصيلي (compendium) البحثي بعدة طرق ، بما في ذلك (على سبيل المثال لا الحصر):

- مراجعة الأقران: إذا تمكن الزملاء من التحقق مما قمت به ، فيمكنهم مراجعته بشكل اكمل.
- فهم البحث: إذا كنت تريد حقًا فهم ما فعله شخص ما في مشروعه البحثي ، فإن الملخص التفصيلي (compendium) البحثي هو ما تحتاج إلى إلقاء نظرة عليه.
- التدريس: يمكن أن يكون الملخص التفصيلي (Compendia) البحثي مثال جيد لاستخدامه في التدريس.
- دراسات قابلية التكرار (Reproducibility) / اختراقات إعادة الإنتاج: يسمح الملخص التفصيلي (compendium) البحثي للباحثين الآخرين بمحاولة (ونأمل أن ينجحوا) في إعادة حساباتك.

## القائمة المرجعية (Checklist)

لإنشاء ملخص تفصيلي (compendium) بحثي ، اتبع الخطوات التالية:

- فكر في بنية جيدة للمجلد (انظر المثال أعلاه).
- إنشاء بنية المجلد (الدليل الرئيسي والأدلة الفرعية).
- اختياري: قم بتحويل الملخص التفصيلي (compendium) في سجل جيت (git repository).
- إضافة جميع الملفات اللازمة لقابلية تكرار (Reproduce) نتائج المشروع.
- حاول أن تجعل الملخص التفصيلي (compendium) نظيفًا وسهل الاستخدام قدر الإمكان عند الإعلان عنه ليستخدمه الآخرون.
- اختياري: اطلب من أحد الأقران التحقق من الملخص التفصيلي (compendium) ومعرفة ما إذا كان يعمل بشكل صحيح.
- انشر ملخصك التفصيلي (compendium)

See the [EMNLP 2020 reproducibility checklist](https://2020.emnlp.org/call-for-papers#new-reproducibility-criteria) or the [AGILE reproducible checklist](https://doi.org/10.17605/OSF.IO/CB7Z8) for conference submission checklists.

## مصادر إضافية للقراءة

- The website [Research Compendium](https://research-compendium.science) contains links to further resources and publications on research compendia as well as links to examples.
