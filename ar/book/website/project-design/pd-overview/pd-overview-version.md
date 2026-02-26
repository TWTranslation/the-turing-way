(pd-overview-version)=

# برنامَج إدارة الإصدارات (version control) والتوثيق (documentation)

Once the project is designed, it is important to keep track of all the changes.
فهذا سيوفر عليك الكثير من الوقت، كما أنه يساعد الآخرين على فهم بحوثك وإعادة إستخدامها - لديك تسجيل لأفضل شيء نجح ومعلومات لفهم سبب نجاحها.

(pd-overview-version-experiments)=

## العمل التجريبي

من الضروري تدوين كل التفاصيل حول عملك التجريبي،
This allows future readers, a colleague and your future self to understand and reproduce all the experimental work related to your project.

A useful tool to do this is {ref}`Electronic Lab Notebooks<rr-open-notebooks>` (ELNs).
ELNs are digital versions of paper notebooks, with the added advantage of searchability, secure storage and remote access.
كما أنه من السهل مشاركتها بين أعضاء الفريق والمتعاونين.

ومن المهم توثيق وتبادل المنهجية والتحليل والإجراءات المستخدمة، فضلا عن المعلومات الخاصة بالبيانات.

(pd-overview-version-comp)=

## العمل الحاسوبي

In the active phase of a project it is important to keep consistency in your code (read this chapter on {ref}`code quality<rr-code-quality>`), as well as documenting and creating tests for it.

توثيق النص البرمجي (code) الخاص بك سوف يساعد الآخرين على فهم عملك،
وهذه بعض الأدوات التي ستساعدك على توثيق نصك البرمجي بسهولة أكبر :

- "دوك سترينغ (Docstring)" في لغة الآر (R) أو البايثون (Python).
- صيغة "جافا دوك (Javadoc) " في لغة الجافا (Java).
- بيئة التطوير المتكاملة (Integrated software development)  (آر ستوديو (RStudio) ، إكليبس (Eclipse) ، فيجوال ستوديو كود (VS Code)) تسهل عملية كتابة التعليق وإنشاء الوثائق.

يساعد إنشاء الاختبارات على توفير الوقت والمال،
من خلال توفير طريقة لمعرفة ما إذا كان نصك البرمجي يعمل أم لا ،فإنه من الممكن معالجة الأخطاء بسهولة من قبلك ومن قبل الآخرين.

To read more about code testing go to the {ref}`Code Testing chapter<rr-testing>`.

(pd-overview-version-vcs)=

## برنامَج إدارة الإصدارات (version control)

يعد تسجيل جميع التغييرات التي تم إجراؤها أثناء البحث جزءًا أساسيًا من القيام ببحث قابل  للتكرار (reproducible)،
فهو يساعدك والآخرين على فهم القرارات المتخذة ويجعل العمل قابلاً للتكرار، حيث ستحصل على كافة المعلومات حول الخطوات المتخذة.

إذا كان العمل على مشروع تعاوني، فإن ذلك سيساعد أيضا على تتبع من قام بكل تغيير.

والميزة المضافة هي أن كل شيء سيكون منظما تنظيما دقيقا، مع سهولة الوصول إلى النسخة الحالية من مشروعك وطرق البحث عن التغييرات التي تم إجراؤها في الماضي.

بعض أنظمة برامج إدارة الإصدارات هي:

- جيت (git).
- مير كيريال (Mercurial).
- سيبب فيرجن (Subversion).

There is an extensive chapter about {ref}`Version Control System<rr-vcs>` in the Guide for Reproducible Research that can be helpful at this stage.
