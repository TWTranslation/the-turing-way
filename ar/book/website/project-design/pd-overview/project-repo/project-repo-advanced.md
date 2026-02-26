(pd-overview-repo-advanced)=

# الهياكل المتقدمة لتحليل البيانات

## المتطلبات الأساسية / مستوى المهارة الموصى به

| المتطلبات الأساسية                        | الأهمية | الملاحظات                                                                                        |
| ----------------------------------------- | ------- | ------------------------------------------------------------------------------------------------ |
| {ref}`Version Control<rr-vcs>`            | مفيدة   | معرفة استخدام جيت (git) لإدارة الإصدارات (version control) |
| {ref}`Open Research<rr-open>`             | مفيدة   | المكونات هي جزء من الملخص التفصيلي (compendium)                               |
| {ref}`Reproducible Environments<rr-renv>` | مفيدة   | يمكن استخدامها لجعل الملخص التفصيلي قابل للتكرار (reproducible)               |

## ملخص توضيحي لإنشاء سجلات المشروع

عند التخطيط لدراسة بحثية ، فإن أحد المكونات المهمة والتي غالبًا ما يتم نسيانها هو إعداد سجل (repository)،
وفي هذا القسم، سيتم توضيح الفوائد والاعتبارات المتعلقة بتصميم هذا سجل، بالإضافة إلى مثال للهيكل ومصادر إضافية لتوجيه سير العمل الخاص بك.

يمكن أن تختلف المتطلبات الأساسية لهذا الفصل اعتمادًا على الاحتياجات التنظيمية للمشروع، فقد يتطلب إنشاء سجل بتخطيط مشروع بحثي بسيط الحد الأدنى من المعرفة التقنية (مثل إدارة بيانات المدخلات ونتائج المخرجات فقط)، وفي الوقت نفسه ، يمكن أن تكون تخطيطات المستودعات المتقدمة مطلوبة للمشاريع الأكثر تعقيدًا (مثل المشاريع ذات برامج يعتمد عليها البرنامج الأصلي (dependencies) لمشاريع أخرى ).

## المعلومات الأساسية للهياكل المتقدمة

السجل (repository) (أو "ريبو (repo)") هو موقع تخزين لمشروعك البحثي، يمكن أن يحتوي على مجموعة من المكونات الرقمية ويمكن استخدامه لتخزين مشروعك باستخدام منصات عبر الإنترنت مثل جيت هاب (GitHub)، والهدف منه هو تنظيم مشروعك بطريقة يسهل على الآخرين الوصول إليها وتكون فعالة في الاستخدام.

حتى الآن ، رأينا المستندات الأساسية التي يجب على المرء إضافتها عند بدء أو إعداد سجل (repository) للمشروع،
وإذا كنت تتابع، فيجب أن يحتوي مشروعك على الملفات التالية:

```
Project Folder/
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── LICENSE                  <- software license
├── ...                      <- any other files that you may have added for your project
└── README.md                <- information about the repo
```

في هذا الفصل الفرعي, نحدد فوائد واعتبارات تصميم السجل (repository), جنبا إلى جنب مع مثال للهيكل ومصادر إضافية لتوجيه سير عملك.

```{note}
The main benefit of designing your repository by intentionally adding documentation, resources and relevant information allows creating an infrastructure for ethical, open and high-quality research from the get-go.
```

## الاعتبارات الرئيسية

عند مشاركة مصادرك عبر السجل الخاص بك ، ضع في اعتبارك الجوانب التالية لقابلية التكرار (Reproducibility) في بحثك:

- الشفافية والانفتاح
- نظام برنامَج إدارة الإصدارات (version control) (لا مزيد من الملفات مثل final_v1_FINAL.R ، final_v2_FINAL.R ، ...)
- اجعل من السهل التنقل بينها حتى توفر الوقت لجميع المعنيين
- Consider {ref}`pd-overview-repro` aspects
- تأكد من تقديم تفاصيل كافية حتى يتمكن الآخرون من البناء على عملك

## التوصيات الرئيسية

ضع في اعتبارك دائمًا أن تصمم مشروعك قائما على التعاون عن طريق إضافة المستندات الرئيسية التي تصف أهداف المشروع ورؤيته وخارطة الطريق والمساهمات وعملية التواصل (كما هو موضح في الفصول الفرعية السابقة).

- Include details in {ref}`README file<pd-project-repo-readme>` describing _what_ the repository is for and _how_ to navigate it
- Provide vision, goals and roadmap wherever possible (see [Kamran Ahmed's developer roadmap](https://github.com/kamranahmedse/developer-roadmap) for example)
- يجب أن يفصل الهيكل العام المدخلات (البيانات) والأساليب (البرامج النصية) والمخرجات (النتائج والأرقام والمخطوطات)
- Specify what shouldn't be tracked in the `.gitignore` file, such as sensitive/private files, large dataset or personal notes
- Include information on your computational environment {ref}`Reproducible Environments<rr-renv>` to ensure reproducibility (this can also be specified in the README)

## مثال على هيكل السجل (repository)

### مثال لمشروع بحثي

فيما يلي اقتراح للملفات والمجلدات التي يجب أن يحتوي عليها المشروع البحثي.

```
Project Folder/
├── docs                     <- documentation
│   └── codelist.txt 
│   └── project_plan.txt
│   └── ...
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

يوضح هذا المثال الملفات ودليل/مجلد مختلفين يمكن أن يحتوي عليها المشروع عند إنشاء تطبيق برمجي أو أدوات هندسية بحثية.

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

## المصادر الإضافية (Resources)

### حزم الآر (R) و بايثون (Python)

| الآر (R)                                       | بايثون (Python)                           |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [template](https://github.com/Pakillo/template)                   | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [remake](https://github.com/richfitz/remake)                      |                                                              |

### أمثلة محصورة لسجلات جيت هاب (GitHub)

- [_The Turing Way_ project repo](https://github.com/the-turing-way/the-turing-way)
- [Jupyter Book project repo](https://github.com/executablebooks/jupyter-book)
- [Pandas Package repo](https://github.com/pandas-dev/pandas)
- [Atom Text Editor repo](https://github.com/atom/atom)

For more details, please follow {ref}`project-repo-recommendations-advanced`.
