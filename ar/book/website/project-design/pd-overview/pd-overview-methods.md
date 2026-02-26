(pd-overview-methods)=

# طرق قابلية التكرار (Reproducibility)

يبدأ تصميم المشروع بتحديد سؤال البحث الخاص بك والمنهجية التي سيتم استخدامها للإجابة على هذا السؤال،
When thinking about the methodology is necessary to think about how to make your research {ref}`open<rr-open>` and {ref}`reproducible<rr-overview>`:

- كيف ستقوم بجمع البيانات.
- ما هو التحليل الذي سيتم استخدامه.
- ما هي الأدوات والبنية الأساسية المطلوبة.

(pd-overview-methods-license)=

## اختر الترخيص المناسب

يعد الحصول على ترخيص خطوة حاسمة في البحث المفتوح،
وليس من الضروري أن تكتمل البحوث لكي تكون مفيدة للآخرين،
ويعد الحصول على ترخيص وسيلة لإيصال كيف تريد للآخرين استخدام بحثك ومشاركته.

هناك أنواع مختلفة من التراخيص وفقا لنوع المشروع والتفضيلات لإعادة الاستخدام والمشاركة،
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.

To learn more about how to add a license to your project, read the {ref}`Licensing<rr-licensing>` chapter in the Guide for Reproducible Research.

(pd-overview-planning-dmp)=

## خطة إدارة البيانات  (data management)

البيانات التي يتم جمعها في أي مشروع بحثي لها عمر أطول من البحث الذي ينتجها،
لذلك ، من الضروري النظر في كيفية استخدام هذه البيانات وأرشفتها ومشاركتها،
ويعد إنشاء خطة لإدارة البيانات (DMP) طريقة لاتخاذ قرارات مهمة حول كيفية إدارتها مع تزويد الآخرين بمعلومات عنها.

Read the chapter on {ref}`DMP<rr-rdm-dmp>` To learn about what should be included in a Data Management Plan.
Comprehensive information on data management is available in the chapter {ref}`Research Data Management<rr-rdm>`.

(pd-overview-methods-comprepro)=

## الحوسبة القابلة التكرار (Reproducibility)

سيؤثر التفكير في البرامج والأدوات والمنصات التي سيتم إستخدامها بشكل كبير على كيفية تحليل البيانات ومعالجتها، فضلا عن كيفية مشاركة النتائج التي توصلت إليها.

والفكرة هي أن تسهل على الآخرين ، وعلى نفسك إعادة إنشاء عملية الإعداد اللازمة لقابلية تكرار (Reproduce) بحوثك،
وفيما يلي بعض الأدوات التي يمكن إستخدامها لتمكين هذه العملية:

- **Dependency managers**: these keep dependencies updated and make sure the same version of dependencies you used in the development environment are used when reproducing a result.
- **Containers**: are a way to create environments that are isolated from other applications.
- **Notebooks**: a useful online environment where you can execute your scripts, and easily add notes and additional information.
  وتتمثل الميزة الإضافية في أنك لن تحتاج إلى تنصيب أي شيء.

To learn more about how to create a reproducible environment, the chapter on {ref}`Reproducible Environments<rr-renv>` is a good place to start.

(pd-overview-methods-docs)=

## توثيق تصميم الدراسة الخاصة بك

بعد أن تكون قد قررت كيفية جمع بياناتك وتحليلها وأي الأدوات ستستخدم، فإن الطريقة الجيدة لتوثيق هذه القرارات هي بكتابة تقرير مسجل.

ويبرز التقرير المسجل أهمية مسألة البحث والأساليب التي سيتم استخدامها، ويتم مراجعتها من قبل النظراء قبل إجراء البحوث ، وتحويل تركيز المراجعة من النتائج إلى جوهر طرق البحث.
You can find out more in our {ref}`Chapter on Registered Reports<cm-dif-articles-registered-reports>`.

(pd-overview-planning-help)=

## التعاون وطلب المساعدة

ليس عليك العمل بمفردك، فإشراك الآخرين في مشروعك هو أفضل طريقة لتحسين قابلية تكرار عملك وجودته.

If you don't know where to start, a good place would be the {ref}`Guide for Communication<cm>` and the {ref}`Guide for Collaboration<cl>`.

## المرجع

Turkyilmaz-van der Velden, Y., Dintzner, N., Teperek, M., "Reproducibility Starts from You Today." Patterns, vol. 1, no. 6, 11 Sept. 2020, p. 100099, doi:10.1016/j.patter.2020.100099. [Read Online on Science Direct](https://www.sciencedirect.com/science/article/pii/S2666389920301331)
