# الهيكل المتقدم لتحليل البيانات

## الشروط/مستوى المهارة الموصى بها

| الشروط المسبقة                            | الأهمية | الحواشي                                            |
| ----------------------------------------- | ------- | -------------------------------------------------- |
| {ref}`التحكم في الإصدار<rr-vcs>`    | مساعدة  | معرفة استخدام git للتحكم في الإصدار                |
| {ref}`بحث مفتوح<rr-open>`           | مساعدة  | المكونات جزء من الخلاصة الوافية                    |
| {ref}`بيئات قابلة للتكرار<rr-renv>` | مساعدة  | يمكن استخدامه لجعل الخلاصة الوافية قابلة للاستنساخ |

## Summary

وعند التخطيط لدراسة بحثية، يتمثل أحد المكونات الحاسمة التي كثيرا ما تكون منسية في إنشاء مستودع. وفي هذا الفرع، ستعرض الفوائد والاعتبارات المتعلقة بتصميم المستودع، جنبا إلى جنب مع نموذج هيكلي وموارد إضافية لتوجيه سير العمل الخاص بك.

ويمكن أن تختلف الشروط المسبقة لهذا الفصل تبعاً للاحتياجات التنظيمية للمشروع. ويمكن أن يتطلب إنشاء مستودع ذي تصميم مشروع بحثي بسيط أدنى قدر من المعرفة التقنية (مثل إدارة بيانات المدخلات فقط ونتائج النواتج). وفي غضون ذلك، يمكن أن تكون هناك حاجة إلى مخططات مستودعات متقدمة لمشاريع أكثر تعقيدا (مثل المشاريع التي تعتمد على مشاريع أخرى).

## الخلفية

المستودع (أو "repo") هو موقع تخزين لمشروع بحثك. يمكن للمستودع أن يحتوي على مجموعة من الكائنات الرقمية ويمكن استخدامه لتخزين مشروعك باستخدام المنصات عبر الإنترنت مثل GitHub. الهدف من المستودع هو تنظيم مشروعك بطريقة يمكن للآخرين الوصول إليها وكفؤة لاستخدامها.

وحتى الآن، رأينا الوثائق الرئيسية التي ينبغي للمرء إضافتها عند بدء أو إنشاء مستودع للمشروع. إذا كنت تتابع، فيجب أن يحتوي مشروعك على الملفات التالية:

```
مجلد المشروع/
<unk> <unk> <unk> <unk> ', CODE_OF_CONDUCT          <- مدونة قواعد السلوك لمشاريع المجتمع
<unk> <unk> ', CONTRIBUTING             <- مبدأ توجيهي للمساهمات للمتعاونين
<unk> <unk> <unk> <unk> <unk> <unk> ', LICENSE                  <- رخصة البرمجيات
<unk> <unk> A/C. .                      <- أي ملفات أخرى قد تكون قمت بإضافتها لمشروعك
<unk> <unk> <unk> <unk> -- README. (د)                <- معلومات عن المستودع
```

وفي هذا الفصل الفرعي، نوجز الفوائد والاعتبارات المتعلقة بتصميم المستودع، إلى جانب هيكل نموذجي وموارد إضافية لتوجيه سير العمل لديك.

```{note}
الميزة الرئيسية لتصميم مستودعك عن طريق إضافة الوثائق عمدا، وتسمح الموارد والمعلومات ذات الصلة بإنشاء بنية تحتية للبحوث الأخلاقية والمفتوحة وذات الجودة العالية انطلاقا من مبادرة الوصول إلى الأسواق.
```

## الاعتبارات الرئيسية

عند مشاركة مواردك عبر المستودع الخاص بك، ضع في اعتبارك الجوانب التالية من قابلية التكرار في بحثك:

- الشفافية والانفتاح
- نظام التحكم في الإصدار (لا مزيد من الملفات مثل final_v1_FINAL.R, final_v2_FINAL.R, ...)
- اجعل من السهل التنقل بحيث توفر الوقت لكل المعنيين
- النظر في {ref}`pd-Overview-repro` الجوانب
- تأكد من أنك تقدم تفاصيل كافية حتى يتمكن الآخرون من البناء على عملك

## التوصيات الرئيسية

التفكير دائماً في تصميم مشروعك للتعاون بإضافة وثائق رئيسية تصف أهداف المشروع ورؤيته وخريطة الطريق ومساهمته وعملية الاتصال (على النحو المبين في الفصول الفرعية السابقة).
- قم بتضمين التفاصيل في {ref}`ملف README<pd-project-repo-readme>`وصف _ما هو_ المستودع له و _كيف_ للتنقل
- توفير الرؤية، الأهداف وخريطة الطريق كلما كان ذلك ممكنا (انظر [خريطة طريق مطور كامران أحمد](https://github.com/kamranahmedse/developer-roadmap) على سبيل المثال)
- وينبغي أن يكون الهيكل العام منفصلا بين المدخلات (البيانات) والأساليب (البرامج النصية) والناتج (النتائج والأرقام والمخطوط)
- حدد ما لا ينبغي تعقبه في ملف `.gitignore` مثل الملفات الحساسة/الخاصة أو مجموعة البيانات الكبيرة أو الملاحظات الشخصية
- قم بتضمين معلومات عن البيئة الحسابية الخاصة بك {ref}`البيئات القابلة للتكرار<rr-renv>` لضمان قابلية التكرار (يمكن تحديد هذا أيضا في README)

## مثال على هيكل المستودع

### مثال لمشروع بحثي

فيما يلي اقتراح بملفات ومجلدات يجب أن يكون لمشروع بحث.

```
مجلد المشروع/
<unk> <unk> <unk> <unk> <unk> ', docs                     <- Documents
<unk> <unk> <unk> <unk> <unk> <unk> <unk> ', codelist.txt 
<unk> <unk> <unk> <unk> ', project_plan.txt
<unk> <unk> <unk> <unk> <unk> ', ...
│   └── deliverables.txt
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── analysis                 <- scripts
│   └── my_script.R
├── results                  <- analysis output     
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── install.R                <- environment setup
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── LICENSE                  <- software license
├── README.md                <- information about the repo
└── report.md                <- report of project
```

### مثال مع كل مجلد ممكن

هذا المثال يظهر ملفات ودليل مختلف يمكن أن يحتوي عليه المشروع عند إنشاء تطبيق برمجي أو أدوات هندسية بحثية.

```
Project Folder/                        
├── analysis                 <- scripts
│   └── my_script.R
├── build                    <- built files, Makefile
|   ├── debug
|   └── release
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── docs                     <- documentation
│   └── codelist.txt 
├── project-management       <- project management related documents
│   └── communication.md
│   └── people.md
│   └── project-report.md
│   └── tools.md
├── res                      <- static resources (images and audio files)
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── lib                      <- dependencies (shared components that can be used across an application or across projects, code that supports the core application)
├── logs.txt                 <- history of all major updates like feature release, bug fix, updates
├── example                  <- example code application
├── LICENSE                  <- software license
├── environment.yml          <- anaconda environment setup   
├── install.R                <- R environment setup
├── requirements.txt         <- python environment setup
├── runtime.txt              <- R in binder setup
├── report.md                <- report of analysis
├── README.md                <- information about the repo
├── src                      <- source files
└── test                     <- unit tests  
```

## الموارد

### حزم R و بايثون

| ر                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [قالب](https://github.com/Pakillo/template)                       | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [خلاصة](https://github.com/FRBCesab/rcompendium)                  |                                                              |
| [إعادة](https://github.com/richfitz/remake)                       |                                                              |

### أمثلة محصورة لمستودعات GitHub

- [_طريق التورنج_ رد المشروع](https://github.com/alan-turing-institute/the-turing-way)
- [مستودع مشروع كتاب المشتري](https://github.com/executablebooks/jupyter-book)
- [حزمة بانداس](https://github.com/pandas-dev/pandas)
- [تعديل محرر النص](https://github.com/atom/atom)

للمزيد من التفاصيل، يرجى اتباع {ref}`المشروع -repo-recommendations-المتقدمة`.
