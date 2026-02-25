(rr-overview-barriers)=

# (Reproducibility Barriers) عوائق قابلية إعادة الإنتاج

So far we have explained {ref}`what we mean<rr-overview-definitions>` by reproducible research and explained some of the {ref}`additional benefits<rr-overview-benefits>`.

في هذا القسم نغطي بعض العوائق (الحقيقية والمتصورة) التي قد تواجهك في جعل عملك قابلاً للتكرار.

```{figure} ../../../figures/barriers-reproducibility.*
---
width: 500px
name: reproducibility-barriers
alt: Slide from the presentation showing the different barriers to reproducibility. The text in the center says 'Barriers to reproducible research' and the following barriers are arranged clockwise around the slide - Is not considered for promotion, Held to a higher standard than others, Publication bias towards novel findings, Plead the 5th, Takes time, Support additional users, Requires additional skills.
---
A slide outlining some of the barriers to reproducible research from Kirstie Whitaker's [talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
Used under a CC-BY 4.0 license.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

يوضح هذا الفصل بعض تلك العوائق و بضعة الاقتراحات لتجاوزها،
يمكن تصنيف العوائق التي تحول دون قابلية إعادة إنتاج البحث إلى ثلاث فئات رئيسية،
The first, and hardest to overcome are those relating to the current incentive structure in academic research: {ref}`Limited incentives to give evidence against yourself<rr-overview-barriers-incentives>` (or "Plead the fifth"), the known {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, the fact that reproducible or open research may be {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and that all this effort is {ref}`not considered for promotion<rr-overview-barriers-promotion>`.
Then there are the technical and theoretical challenges of working with {ref}`big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` and remembering that {ref}`being reproducible does not mean the answer is right<rr-overview-barriers-notright>`.
We finish with three barriers considering the pressures on individual data scientists: that this work can be perceived to {ref}`take extra time<rr-overview-barriers-time>`, that you may be required to {ref}`support additional users<rr-overview-barriers-support>` (spoiler: you aren't!), and that you and members of your team might {ref}`require additional skills<rr-overview-barriers-skills>`.
The good news is that helping you learn those skills is exactly what _The Turing Way_ is here for!

(rr-overview-barriers-incentives)=

## حوافز محدودة لتقبل النقد و كشف الأخطاء

The [Fifth Amendment](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) to the United States Constitution includes a clause that no one "shall be compelled in any criminal case to be a witness against themselves".
(معدلة للغة محايدة بين الجنسين)،
يعني مصطلح "التمسك بالتعديل الخامس" أن شخصاً ما يختار عدم تقديم دليل على احتمال وجود خطأ ما في سلوكه السابق،
و يحق لهم التزام الصمت،

نحن نعلم أنه لا أحد يريد أن يورط نفسه، كما أنه لا أحد معصوم من الخطأ،
فوضع برمجِيَّاتِكَ و بياناتك على الإنترنت يمكن أن يكون أمرا فاضحا و مرهبا، و من الطبيعي للإنسان أن يخشى نقد الآخرين،
Although there is no _law_ governing the communication of reproducible research - unless you commit explicit fraud in your work - sharing errors that you find in your work is heavily disincentivised.

```{figure} ../../../figures/make-ok-to-be-human.*
---
height: 500px
name: make-ok-to-be-human
alt: A cartoon of a woman holding a folder of files and looking worried. Thought bubble says, If I share my data people might find mistakes. The caption on the images reads Need to make it ok to be human.
---
An illustration of the "plead the fifth" barrier where our current culture disincentivises acknowledging and correcting mistakes.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

إن كشف نفسك للنقد، خاصة إذا ما وجدت أخطاء في الأعمال المنشورة، أمر صعب ومجهد،
لكننا بحاجة إلى موازنة هذه التكلفة الفردية مقابل واقع أن نشر البرمجيات يمكن أن يسمح للباحثين الآخرين بالإدلاء بملاحظات، ناهيك عن التعلم و إمكانية مساعدتهم في بحثهم،في الواقع، يمكن الجزم تقريبا أن نشر كودك و بياناتك الموثقة الخاصة بك سيحفزك على إجراء تحليلاتك على مستوى أعلى،
إضافة إلى أن توخي الحذر بشأن ما تكتبه و توثقه من قراراتك يمكن أن يساهم في توليد أفكار جديدة لك و لغيرك،

Most importantly, we need to move away from a culture where publishing nothing is safer than publishing _something_.
_The Turing Way_ is here to help you take little steps towards being more reproducible as your career progresses.
نحن لا نريد لأي شخص أن يشعر أنه وحيد، أو "ليس بالكفاءة المطلوبة" عندما يبدأ  رحلته في العلوم المفتوحة،

(rr-overview-barriers-publication)=

## انحياز الناشرين نحو الاكتشافات المبتكرة

النتائج المبتكرة ليست بالضرورة دقيقة أو مثيرة للاهتمام و لكنها تكافأ في العالم الأكاديمي،
Papers that do not find statistically significant relationships are hard to publish, particularly if the results _do not_ reproduce previously published findings.
(و ذلك يشمل الاكتشافات ذات الدلالات الإحصائية التي لها نتائج مناقضة للأعمال المنشورة مسبقًا)
و بصورة مماثلة فإن المقال الذي ينجح في إعادة إنتاج نتائج أعمال قد نشرت مسبقًا بدلا عن إنتاج مجموعة جديدة من النتائج، له احتمال ضئيل في أن يقبل للنشر في مجلة محكمة أو في مؤتمر علمي،
حيث إن الاحتمال الأكبر هو أن المراجعين سيقولون  بأنهم يعرفون هذا فعلًا و يرفضون طلب التقديم.

إن الانحياز نحو الابتكار في علم البيانات يعني أن العديد من الباحثين مثبطَون عن  توثيق، اختبار و مشاركة برمجياتهم و بياناتهم،
John Ioannidis published an influential paper in 2005 titled "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` which discusses the many factors that contribute to publication bias.
و بالنظر إلى هذه التحيزات فإن الأرجح أنه يوجد الكثير من الأعمال المكررة في مجال علم البيانات.
يقوم مختَلف الباحثين بطرح نفس السؤال و لكنهم لا يحصلون على الإجابة التي يتوقعونها أو يريدونها فيمتنعون عن الكشف عن ما وجدوه لأي أحد،

This barrier is not specific to computational reproducibility as we define it in _The Turing Way_.
However, it is a major cultural barrier to {ref}`transparent communication<cm>`, and affects {ref}`project design<pd>`.
_The Turing Way_ community are advocating in all the places we are able, for the systemic culture change that is required to dismantle the current publication and academic credit biases towards novelty over rigour.

(rr-overview-barriers-standards)=

## الخضوع للتقييم وفق مقاييس أعلى من الآخرين

قد يخضع الباحث الذي يجعل عمله قابلا لإعادة الإنتاج من خلال مشاركة برمجياته و بياناته إلى التقييم وفق معايير أعلى من الباحثين الآخرين،
و لكن إذا لم يقم المؤلفون بنشر أي شيء على الإطلاق فإن كل ما يستطيع فعله من يقرأ المخطوطة أو المقالة بحثية المقدمة في مؤتمر هو أن يثق (أو لا يثق) في النتائج،

و إن كانت الشفرة و البيانات متاحة فإن الناقدين قد يتوجهون للبحث عن اختلافات في التطبيق
فيعودون بأفكار جديدة حول سبل تحليل البيانات لأنهم تمكنوا من ممارسة التجارِب على العمل،
مما يؤدي الى خطر أنهم قد يطالبون المؤلف الذي قدم مخطوطة البحث للقيام بتغييرات إضافية قبل قبولها للتقييم من قبل نظراء الباحثين،

As we described in the {ref}`"Plead the Fifth"<rr-overview-barriers-incentives>` section above, the solution to this challenge is to align career incentives so that doing what is best for _science_ also benefits the individuals involved.

(rr-overview-barriers-promotion)=

## ليس مرجحا للمكافأة

في النظام الأكاديمي الحالي يكون الترجيح الرئيسي لمكافئة القدرة على التحصل على المنح و انتداب الطلاب،
Both funding bodies and prospective students value novelty and this behaviour is reflected in preferentially rewarding papers with a high [journal impact factor](https://en.wikipedia.org/wiki/Impact_factor).
It is likely part of the human condition to be motivated by things that are new or surprising, but as {ref}`discussed above<rr-overview-barriers-publication>`, this bias towards novelty causes a systematic publication bias.

وعلى نطاق أوسع ، يميل نظام الترقية في الأوساط الأكاديمية إلى مكافأة الأفراد الذين أظهروا اختلافهم عن الآخرين في مجالهم،
و هذا يعني مشاركة الشفرة و البيانات ليسهل "للمنافسين" القيام بنفس العمل فينتهي به المطاف مثبطا من قبل لجان المكافآة و التمويل،
A good example of this bias is the Nobel Prize award which only goes to a small number of researchers each year, and as such ["overlooks many of its important contributors"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017).
One of the goals of _The Turing Way_ is to draw attention to the misalignment of the tenure and promotion process with collaborative and reproducible data science.

(rr-overview-barriers-infrastructure)=

## بيانات ضخمة و بنية حاسوبية أساسية معقدة

تُفسَّر البيانات الضخمة بطرق مختلفة من قبل مختلف الباحثين،
يمكن للبيانات "الضخمة" أن تكون معقدة،و تأتي من مصادر بيانات متعددة، و تحتل مساحة تخزين كبيرة و / أو تُبث بدقة زمنية عالية،
و بالرغم من أنه يوجد طرق لتحديد نقاط انطلاق عشوائية (random seeds) و أخذ لمحات على حالة مجموعة البيانات في لحظة معينة من الزمن، و قد يكون من الصعب التحصل على بيانات متطابقة عبر مختلف عمليات التشغيل لخط تحليل البيانات،
و هذا و بشكل خاص وثيق الصلة بموضوع وسائل الحوسبة المتوازية،
و على سبيل المثال بعض البيانات مثل تعقب رحَلات الطائرات أو حركة البيانات على الإنترنت تكون ضخمة لدرجة عدم إمكان تخزينها و ضرورة معالجتها حِينيًا أثناءَ بثِّها.

من التحديات الأكثر شيوعا لباحثي "البيانات الضخمة" هو عدم استقرار أداء البرامج عبر أنظمة التشغيل و سرعة تغير الأدوات بمرور الوقت،
إنًّ النظام التفاعلي (ecosystem)  مستمِرُّ التغيير من ناحية تقنيات علوم البيانات المتاحة، ممَّا يعني أنَّ إعادة إنتاج النتائج مستقبليَّا متغيِّر بدرجة كبيرة و معتمِد تمامًا على استخدام أدوات متوافقة مع الإصدارات السابقة،
و غالبًا فإن نتائج الإختبارات الإحصائية ستكون متعددة وفقًا لإعدادات البنية الأساسية التي استعملت في كل تجربة، ممَّا يجعل إعادة إنتاج النتيجة فرديًّا أمرًا صعبا جدًّا،
و  في أغلب الأحيان ما تكون التجارب معتمِدة على تهيئات عشوائية للخوارزميات التكرارية و لكن ليست كل البرامج قادرة على تثبيت رقم شبه عشوائي بدون الحدّ من إمكانيات المعالجة الموزَّعة (مثلاً في مكتبة تانسور فلو (Tensorflow))،
و قد تتطلب هذه الأدوات مهارات تقنية عالية و التي ليست متاحة عموما لعلماء البيانات،
The [Apache Hadoop](https://hadoop.apache.org/) framework, for instance, is extremely complex to deploy data science experiments without strong software and hardware engineering knowledge.

حتى الحوسبة ذات الأداء العالي "المعيارية"، يمكن أن تكون صعبة الإعداد لتكون قابلة لإعادة الإنتاج بشكل مثالي، خصوصا عبر مختَلف موفِّري الحوسبة السحابيَّة  أو الإعدادات المؤسسية،
_The Turing Way_ contains chapters to help data scientists learn skills in {ref}`reproducible computational environments<rr-renv>` including {ref}`containers<rr-renv-containers>` such as docker and ways to {ref}`version control your software libraries<rr-renv-package>`.
We are always [open to more contributions](#ch-contributing) as the technology to support reproducible research in very large datasets or for complex modelling evolves.

(rr-overview-barriers-notright)=

## حقيقة أن قابلية إعادة الإنتاج لا تعني أن النتائج صحيحة

By making the code and data used to produce a result openly available to others, our results may be **reproduced** but mistakes made by the initial author can be carried through.
Getting the same wrong answer each time is a step in the right direction, but still very much a **wrong** answer!

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science.
يمكنك اعتبار الحوسبة القابلة لإعادة الإنتاج أمرًا ضروريًا ولكنه غير كافٍ لإنجاز بحث عالي الجودة،
هناك حاجة إلى نهج نقدي، عوضا عن استخدام البرامج الموجودة أو توظيف الأساليب الإحصائية بسذاجة دون فهم طريقة عملهم،
See, for example, [a discussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) in August 2019 about whether the default settings for Scikit-learn's implementation of logistic regression are misleading to new users.
إنَّ قابلية التفسير و قابلية التشغيل المتبادلة ضرورية لتقييم البحث الأصلي بشكل سليم و لتعزيز النتائج،

(rr-overview-barriers-time)=

## يستغرق وقتا طويلا

يستغرق جعل التحليل قابلا لإعادة الإنتاج وقتًا و جهدًا،خصوصا في بداية المشروع،
This may include agreeing upon a {ref}`testing framework<rr-testing>`, setting up {ref}`version control<rr-vcs>` such as a Github repository and {ref}`continuous integration<rr-ci>`, and {ref}`managing data<rr-rdm>`.
و طوال فترة المشروع قد تأخذ مراقبة و صيانة خط البيانات القابل لإعادة الإنتاج زمنا طويلا،

يمكن أيضًا استغراق الوقت في النقاش مع المتعاونين للاتفاق على أي أجزاء من المشروع قد تكون مفتوحة المصدر و متى و كيف تتم مشاركة هذه المخرجات،
قد يجد الباحثون أنفسَهم في حاجة إلى "رفع مستوى مهارات" زملائهم ليتمكن الفريق من الاستفادة من أدوات قابلية إعادة الإنتاج ، نذكر منها جيت (git) و جيت هاب (GitHub)، الحاويات (containers)، دفاتر جوبيتر (Jupyter notebooks) أو قواعد البيانات،

```{figure} ../../../figures/help-you-of-the-future.*
---
width: 500px
name: help-you-of-the-future
alt: A cartoon of a woman passing a folder of documents back to herself. Speech bubble says You're mainly keeping records for you in the future.
---
Although making clear documentation may feel like it is taking a lot of time at the moment, you are helping yourself and your collaborators remember what you have done so it is easy to reuse the work or make changes in the future.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

However, _The Turing Way_ community advocates that this time is more than made up for by the end of the project.
لنفترض أنَّ مراجعًا طلب "مجرد تحليل آخر فقط" إثر تقديم البحث للنشر في المجلة،
في أغلب الحالات، يأتي هذا الطلب بعد 6 إلى 12 شهرًا من عمل فريق البحث على البيانات الأولية،
و قد تكون العودة إلى الوراء للعثور على ذلك الجزء المعيَّن من خط البيانات الذي طلب المراجع تغييره أمرا شديد الصعوبة،
لكن إذا كان البحث قابلا لإعادة الإنتاج كلِّيا، بما في ذلك البيانات الخاضعة للتحكم في الإصدارات و برنامج توليد الشفرات، فإنَّ تنفيذ هذا التحليل سيَتِمُّ في غاية السرعة و يقع دمجه في مُخرجات البحث النهائي،
يمكن مُلائمة خط تحليل البيانات بسهولة  للاستجابةً لطلبات المشاركين في التأليف و المراجعين،
و يمكن أيضًا إعادة استخدامها بسهولة في مشاريع بحث مستقبلية.

(rr-overview-barriers-support)=

## توفير دعم للمستخدمين الجدد

يشعر العديد من الأشخاص بالقلق من أنَّ جعل تحليلهم قابلاً لإعادة الإنتاج سيجعلهم مطالبين بالإجابة على العديد من الأسئلة من قبل المستخدمين المستقبليين لبمرجيَّاتهم،
These questions may cover software incompatibility across operating systems and the dependencies changing over time (see the {ref}`Big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` barrier above).
قد تتضمن أيضًا تساؤلات حول كيفية تعديل الشفرة لتلبية أغراض مختلفة.

إن هذا الحاجز ناتج في جزء ما في الخلط بين البحث "القابل لإعادة الإنتاج" والبحث "المفتوح"،
The _Turing Way_ {ref}`definition of "reproducible"<rr-overview-definitions>` doesn't require authors to support the expansion and reuse of the data and code beyond running the exact analyses that generate the published results in the accompanying manuscript.

في أغلب الحالات، يتطلب جعل البرمجيات و البيانات مفتوحة المصدر توثيقًا أفضل مما قد يكتبه الباحث لنفسه،
This can feel like an additional barrier, although - as discussed in the previous section on reproducible research {ref}`taking extra time<rr-overview-barriers-time>` it is likely that the primary beneficiaries of well commented and tested code with detailed documentation are the research team - particularly the principal investigator of the project - themselves.

(rr-overview-barriers-skills)=

## الحاجة إلى مهارات إضافية

As you can tell from the ever-growing number of chapters in _The Turing Way_, working reproducibly requires skills that aren't always taught in training programmes.
قد تحتاج أنت - أو أي شخص في فريقك - إلى تطوير خبرة في هندسة البيانات، هندسة البرامج البحثية، الكتابة التقنية لغرض التوثيق أو إدارة المشاريع على منصة جيت هاب (GitHub)،
That is a major barrier when the current incentive structures are not aligned with learning these skills (see the barriers on {ref}`plead the fifth<rr-overview-barriers-incentives>`, {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and {ref}`not considered for a promotion<rr-overview-barriers-promotion>`!)
However, this is the primary barrier that we at _The Turing Way_ are working to dismantle with you.
نأمل أن تستمتع بتعلم هذه المهارات معنا وأن تساعدنا على تحسين الكتاب بينما تفعل ذلك،

> "A journey of a thousand miles begins with a single step" (Chinese philosopher [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

نأمل أنه من خلال العمل من أجل مساعدتك على تعلم بعض هذه المهارات القيمة، فإننا نقوم أيضا بتفكيك بعض الحواجز الهيكلية التي تحول دون إجراء البحوث القابلة للتكرار.

## لمزيد من القراءة و الموارد الإضافية

You can watch Kirstie Whitaker describe some of these barriers in [her talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
You can use and reuse her slides under a CC-BY licence via Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)).
القسم الذي يصف الشريحة (السلايد) أدناه يبدأ بعد حوالي 5 دقائق من بداية الفيديو،
