(r-make-examples-learnmake)=
# تعلم "صنع" عن طريق الأمثلة

(r-make-examples-makefiles)=
## ماكيفيلز

أحد الأشياء التي قد تثني أحدهم عن استخدام صنع هو أن Makefiles الموجودة يمكن أن تبدو معقدة جداً، وقد يبدو أنه من الصعب تكييف واحد لاحتياجاتك الخاصة. في هذا البرنامج التعليمي العملي سننشئ Makefile من الصفر لمشروع تحليل البيانات الحقيقي. الفكرة هي شرح ميزات مختلفة لصنع بتكرار عدة إصدارات من Makefile لهذا المشروع. نأمل أن تسمح لك التجربة التي تكسبها من هذا البرنامج التعليمي بإنشاء Makefiles لمشاريعك الخاصة.

سنقوم بإنشاء `Makefile` لخط أنابيب لتحليل البيانات. The task is as follows:

> **المهام: نظراً لبعض مجموعات البيانات، أنشئ تقرير موجز (في pdf) يحتوي على الرسوم البيانية لمجموعات البيانات هذه.**

(بالطبع مهمة البيانات هذه بسيطة جدا للتركيز على كيفية استخدام Make.)

*خلال الكتل البرمجية للدرس التعليمي التي تبدأ باشارة دولار (`$`) يقصد أن تكتب في المحطة.*

(r-make-examples-settingup)=
### إعداد

لقد قمنا بإنشاء مستودع أساسي لهذه المهمة، والذي يحتوي بالفعل على كل ما نحتاجه (*باستثناء ماكيفيل للدورة!* للبدء، استنسخ المستودع الأساسي باستخدام بواسطة:

```bash
$ git نسخة https://github.com/alan-turing-institute/IntroToMake
```

يحتوي هذا المستودع الأساسي على جميع التعليمات البرمجية التي سنحتاجها في هذا البرنامج التعليمي، وينبغي أن يحتوي على هذا المحتوى:

```text
.
├── data/
│   ├── input_file_1.csv
│   └── input_file_2.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

- **البيانات**: الدليل مع مجموعتين من البيانات التي سنقوم بتحليلها
- **التقرير**: دليل الإدخال للتقرير
- **البرامج النصية**: دليل البرنامج النصي للتحليل
- **المخرجات**: دليل الإخراج للأرقام والتقرير

ستلاحظ أن هناك مجموعتين من البيانات في دليل **** (`input_file_1.csv` و `input_file_2. sv`) وأن هناك بالفعل نص بايثون الأساسي في **البرامج النصية** وتقرير أساسي ملف LaTeX في **التقرير**.

إذا كنت ترغب في المتابعة، تأكد من أن لديك `matplotlib` و `numpy` مثبت:

```bash
$ pip install matplotlib numpy
```

ستحتاج أيضًا إلى نسخة عمل من `pdflatex` وبالطبع `تصنع`.

للحصول على تعليمات التثبيت لـ Make، راجع {ref}`rr-make-appendix-instx-`.

(r-make-examples-makefile1)=
### ماكيفيلي رقم 1 (الأساسيات)

دعونا ننشئ أول ماكيفيلي. في المحطة الطرفية، انتقل إلى مستودع `مقدمة` الذي استنسخته للتو:

```bash
$ cd مقدمة
```

باستخدام المحرر المفضل لديك، قم بإنشاء ملف يسمى `Makefile` مع المحتوى التالي:

```makefile
# تقرير Makefile لتحليل

خرج/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

خرج/figure_2.png: data/input_file_2.csv scripts/generate_histogram. y
    نصوص python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report. الناتج السابق/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
العين في كل وصفة هو ***علامات التبويب***، لا تقبل Makefiles الدخول مع المسافات.

يجب أن تكون الآن قادراً على الكتابة:

```bash
$ صنع الناتج/report.pdf
```

إذا كان كل شيء يعمل بشكل صحيح، سيتم إنشاء الرقمين وسيتم بناء تقرير pdf

دعونا نمر عبر ماكيفيلي بمزيد من التفصيل. لدينا ثلاث قواعد، اثنتان للأرقام وواحدة للتقرير. دعونا ننظر إلى القاعدة لـ `خرج/figure_1.png` أولا. هذه القاعدة لها هدف `خرج/figure_1.png` الذي يحتوي على شرطين أساسيين: `data/input_file_1.csv` و `scripts/generate_histogram.py`. من خلال إعطاء ملف الإخراج هذه المتطلبات المسبقة سيتم تحديثها إذا تغير أي من هذه الملفات. هذا هو واحد من الأسباب التي أدت إلى إنشاء الإنشاء: لتحديث ملفات الإخراج عندما تتغير ملفات المصدر .

ستلاحظ أن خط الوصفة يستدعي Python باسم البرنامج النصي ويستخدم أعلام خط الأوامر (`-i` و `-o`) لوضع علامة على إدخال و إخراج النص النصي. هذا ليس مطلوبا لاستخدام المايك، لكنه يجعل من السهل رؤية أي ملف هو مدخل إلى البرنامج النصي وأي هو المخرج.

القاعدة الخاصة بتقرير PDF متشابهة جداً، ولكن لديها ثلاثة شروط مسبقة (مصدر لاتيكس وكلا الرقمين). لاحظ أن الوصفة تغير دليل العمل قبل الاتصال بـ LaTeX كما تنقل ملف PDF الذي تم إنشاؤه إلى دليل الخروج. نحن نفعل ذلك للحفاظ على الملفات الوسيطة لاتيكس في دليل التقرير ومع ذلك، من المهم تمييز القاعدة المذكورة أعلاه عن ما يلي:

```makefile
# لا تفعل هذا
الناتج/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

وتضع هذه القاعدة الأوامر الثلاثة على خطوط منفصلة. ومع ذلك، **اجعل ينفذ كل سطر بشكل مستقل** في قطعة فرعية منفصلة، لذلك تغيير دليل العمل في السطر الأول ليس له أي تأثير على الثاني، ولن يمنع الفشل في السطر الثاني من تنفيذ الخط الثالث. لذلك، نجمع الأوامر الثلاثة في وصفة واحدة أعلاه.

هذا ما تبدو عليه شجرة التبعية لهذا ماكيفيلي:

![DAG لماكيفيلي رقم 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;"> الرسم البياني للتبعية لأول ماكيفيل، تم إنشاؤه باستخدام [makefile2graph](https://github.com/lindenb/makefile2graph). لاحظ التشابه مع الشكل {ref}`في المقدمة<rr-make-summary>`!</small>

(r-make-examples-makefile2)=
### ماكيفيلي رقم 2 (الكل والنظيف)

في أول ماكيفيلي لدينا القواعد الأساسية. يمكننا أن نتمسك بـ إذا أردنا ذلك، ولكن هناك بعض التحسينات التي يمكننا إدخالها:

1. يجب علينا الآن أن نتصل صراحةً بـ `صنع المخرجات/report.pdf` إذا أردنا إعداد التقرير.

2. ليس لدينا طريقة للتنظيف والبدء في البداية.

دعونا نعالج هذا بإضافة هدفين جديدين: `كل` و `نظيف`. في محرر الخاص بك، قم بتغيير محتويات Makefile لإضافة `جميع` و `نظيف` كـ :

```makefile
# Makefile لتقرير التحليل

كل: خرج/report.pdf

خرج/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o خرج/figure_1.png

خرج/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report ex && mv report.pdf ../output/report. df

التنظيف:
    rm -f خرج/report.pdf
    rm -f خرج /figure_*.png
```

لاحظ أننا أضفنا هدف `كل` إلى الجزء العلوي من الملف. نحن نقوم بهذا لأن جعل تنفيذ الهدف *أول* </em> عندما لا يتم تحديد هدف صريح.  إذاً يمكنك الآن كتابة `جعل` على سطر الأوامر وسوف تقوم بنفس الشيء كما `تصنع كل`.  لاحظ أيضا أننا أضفنا التقرير فقط كشرط مسبق من `كل` لأن هذا هو المخرجات المطلوبة لدينا والقواعد الأخرى تساعد في بناء هذا المخرج. إذا كان لديك العديد من المخرجات، يمكنك إضافة هذه كشروط أخرى إلى `جميع` الهدف. تسمية الهدف الرئيسي `الكل` هي اتفاقية ماكيفيليس التي يتبعها العديد من الناس.

قاعدة `نظيف` عادة ما تكون في الأسفل، ولكن هذا أسلوب أكثر من متطلبات . لاحظ أننا نستخدم علم `-f` إلى `rm` للتأكد من أنه لا يشكو عندما لا يوجد ملف لإزالته.

يمكنك تجربة Makefile الجديدة عن طريق التشغيل:

```bash
$ اجعل
دولارات نظيفة
```

يجب إزالة الإخراج والملفات الوسيطة بعد الأمر الأول، وإنشاءها مرة أخرى بعد الثانية.

(r-make-examples-makefile3)=
### ماكيفيلي رقم 3 (أهداف الهاتف)

عادة `كل` و `نظيف` يتم تعريفها على أنها ما يسمى [الهواتف الأهداف](https://www.gnu.org/software/make/manual/make.html#Phony-Targets). هذه هي الأهداف التي لا تخلق في الواقع ملفا للمخرج. إذا لم يتم وضع علامة كـ `. هـ` هذه الأهداف سوف يتم تشغيلها دائماً إذا ظهرت في تبعية، ولكن لن يتم تشغيله بعد الآن إذا تم إنشاء دليل/ملف يسمى `كل` أو `نظيف`. لذلك نحن نضيف سطراً في الجزء العلوي من ماكيفيلي لتعريف هذين النوعين كأهداف صوتية :

```makefile
# Makefile للحصول على تقرير التحليل

.PHONY: جميع

نظيف: خرج/report.pdf

خرج/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv - o خرج/figure_1.png

خرج/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report ex && mv report.pdf ../output/report. df

تنظيف:
    rm -f خرج/report.pdf
    rm -f خرج /figure_*.png
```

أهداف الهاتف مفيدة أيضا عندما تريد استخدامها بشكل متكرر. في هذه الحالة ستحدد الدلائل الفرعية كأهداف صوتية. يمكنك قراءة المزيد حول [الأهداف الصوتية في الوثائق](https://www.gnu.org/software/make/manual/make.html#Phony-Targets)، ولكن حتى الآن يكفي أن نعرف أن `كل` و `نظيف` عادة يعلن عنها كصوت.

> سيدينو: هدف آخر هو عادة الصوت هو اختبار ****، في حال كان لديك دليل اختبارات تسمى **اختبار** وتريد أن يكون لديك هدف لتشغيلها وهو ما يسمى أيضًا **اختبار**.

(r-make-examples-makefile4)=
### Makefile رقم 4 (المتغيرات التلقائية وقواعد النمط)

ليس هناك أي خطأ في ماكيفيلي لدينا الآن، لكنه معجب نوعا ما لأننا أعلنا جميع الأهداف صراحة باستخدام قواعد منفصلة. يمكننا تبسيط هذا باستخدام [تلقائي المتغيرات](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) و [نمط القواعد](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(r-make-examples-automaticvar)=
#### المتغيرات التلقائية.

مع المتغيرات التلقائية يمكننا استخدام أسماء الشروط المسبقة والأهداف في الوصفة. إليك كيف يمكننا أن نفعل ذلك من أجل قواعد الأرقام :

```makefile
# Makefile للحصول على تقرير تحليلي

.PHONY: جميع

نظيف: خرج/report.pdf

خرج/figure_1.png: data/input_file_1.csv scripts/generate_histogram. y
    نصوص python scripts/generate_histogram.py -i $< - o $@

خرج/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i $< -o $@

خرج/report.pdf: report/report.tex output/figure_1. ng خرج/figure_2.png
    cd report && pdflatex report ex && mv report.pdf ../output/report. df

تنظيف:
    rm -f خرج/report.pdf
    rm -f خرج /figure_*.png
```

لقد استبدلنا أسماء الملفات المدخلة والمخرجة في الوصفات على التوالي ب `$<`، الذي يشير إلى شرط *الأول* و `$ @` الذي يشير إلى هدف **. يمكنك تذكر `$<` لأنه مثل السهم الذي يشير إلى البداية (*أولاً* شرط)، ويمكنك تذكر `$@` (الدولار *في*) [كهدف كنت تستهدفه *في*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/).

هناك المزيد من المتغيرات التلقائية التي يمكنك استخدامها، راجع [الوثائق ](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).

(r-make-examples-patternes)=
#### قواعد النمط

لاحظ أن وصفات الأرقام قد أصبحت متطابقة!  لأننا لا نود تكرار أنفسنا، يمكننا دمج قاعدتي في قاعدة واحدة باستخدام *قواعد النمط*. قواعد النمط تسمح لك باستخدام رمز `%` كبطاقة برية ودمج القاعدتين في واحد:

```makefile
# Makefile للحصول على تقرير تحليلي

.PHONY: جميع

نظيف: خرج/report.pdf

خرج/figure_%.png: data/input_file_%. sv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< - o $@

خرج/تقرير. df: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report df ../output/report.pdf

النظيفة:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

رمز `%` هو الآن بطاقة برية (في حالتن) تأخذ القيمة `1` أو `2` بناء على ملفات الإدخال في `دليل البيانات`. يمكنك التحقق من أن كل شيء لا يزال يعمل بتشغيل `جعل` نظيفة يتبعها `اجعله`.

ميزة لهذا هو أنه إذا كنت ترغب الآن في إضافة مجموعة بيانات أخرى، قل `input_file_3`، ثم ستحتاج فقط إلى إضافة ذلك إلى قاعدة تقرير !

(r-make-examples-makefile5)=
### ماكيفيلي رقم 5 (البطاقات البرية والمسارات)

عندما يصبح Makefiles أكثر تعقيدا، قد ترغب في استخدام المزيد من الميزات المتقدمة مثل مخرجات البناء لجميع الملفات في دليل الإدخال. بينما قواعد النمط ستجعلك طريقا طويلا، اجعل لديه أيضا ميزات للبطاقات البرية والتلاعب بالسلسلة أو المسار عندما تكون قواعد النمط غير كافية.

بينما تم ترقيم ملفات الإدخال الخاصة بنا سابقا، سنقوم الآن بالتبديل إلى سيناريو حيث لديهم أسماء ذات مغزى. دعونا نتحول إلى فرع `كبير` :

```bash
$ git الخروج من البيانات الكبيرة# الخروج من فرع البيانات الكبير
```

يبدو هيكل الدليل الآن هكذا:

```text
<unk> <unk> <unk> ', data/
<unk> <unk> <unk> <unk> <unk> ', action.csv
<unk> <unk> <unk> <unk> <unk> ', ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
│   └── western.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

كما ترون، يحتوي دليل بيانات **** الآن على ملفات إضافية للمدخلات التي تم تسميتها بشكل أكثر معنى (البيانات هي تصنيفات أفلام IMBD حسب نوع الجنس). أيضًا ، تم تحديث ملف **report.tex** للعمل مع الأرقام المتوقعة.

سنقوم بتكييف Makefile لإنشاء رقم في دليل المخرجات يسمى `histogram_{genre}. ng` لكل `{genre}csv` ملف، مع استبعاد `input_file_{N}csv` الملفات.

> سيدينو: إذا كان علينا إزالة ملفات `input_file_{N}.csv` ، نمط ستكون كافية هنا. هذا يسلط الضوء على أنه في بعض الأحيان يجب تطوير بنية الدليل الخاص بك و Makefile جنبا إلى جنب.

قبل تغيير Makefil، قم بتشغيل

```bash
نظف $
```
لإزالة ملفات الإخراج.

سوف نعرض Makefile بالكامل أولاً ثم نصف الخطوط المختلفة في المزيد من التفاصيل. الملف الكامل هو:

```makefile
# Makefile للتقرير التحليلي
#

ALL_CSV = $(Wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*. sv)
DATA = $(تصفية $(INPUT_CSV)،$(ALL_CSV))
FIGURES = $(بيانات براءة الاختراع/input_file_%. sv,output/figure_%.png,$(DATA))

.PHONY: جميع

كل: خرج/report.pdf

$(FIGURES): خرج/figure_%. ng: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< - o $@

خرج/report.pdf: report/report. ex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report df ../$@

نظيف:
    rm -f خرج/report.pdf
    rm -f $(FIGURES)
```

أولاً، نحن نستخدم دالة `Wildcard` لإنشاء متغير يسرد كل ملفات CSV في دليل البيانات و واحد يسرد فقط القديم`input_file_{N}. ملفات sv`:

```makefile
ALL_CSV = $(Wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

اتفاقية التعليمات البرمجية لـ Makefiles هي استخدام جميع العواصم للأسماء المتغيرة و تعريفها في الجزء العلوي من الملف.

بعد ذلك، نحن ننشئ متغير لقائمة فقط ملفات البيانات التي نحن مهتمون بها عن طريق تصفية `INPUT_CSV` من `ALL_CSV`:

```makefile
DATA = $(تصفية $(INPUT_CSV)،$(ALL_CSV))
```

يستخدم هذا السطر [`عامل التصفية`](https://www.gnu.org/software/make/manual/make.html#index-filter) لإزالة العناصر التي لا تتطابق مع متغير `INPUT_CSV` من `ALL_CSV` المتغير.  لاحظ أننا نستخدم بناء الجملة `$( ... )` للدوال و المتغيرات. أخيرا، سوف نستخدم متغير `DATA` لإنشاء متغير `FGURES` مع المخرج المطلوب:

```makefile
FGURES = $(بيانات براءة الاختراع/%.csv,output/figure_%.png,$(DATA))
```

هنا استخدمنا الدالة [`براءات الاختراع`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) لتحويل الإدخال في متغير `DATA` (الذي يتبع `البيانات/{genre}. sv` pattern) إلى أسماء الملفات المطلوبة (باستخدام `خرج/figure_{genre}.png`). لاحظ أن حرف `%` يشير إلى الجزء من اسم الملف الذي سيكون نفسه في كل من الإدخال والناتج.

ونحن نستخدم الآن هذه المتغيرات في قاعدة توليد الأرقام على النحو التالي:

```makefile
$(FIGURES): خرج/figure_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@
```

تطبق هذه القاعدة مرة أخرى نمط: إنها تأخذ قائمة من الأهداف (`$(FIGURES)`) التي تتبع جميعها نمطا معينا (`خرج/figure_%. ng`) واستنادا إلى ذلك ينشئ شرطا أساسيا (`البيانات/%.csv`). قاعدة النمط هذه هي مختلفة قليلاً عن القاعدة التي رأيناها من قبل لأنها تستخدم رمزين `:` رموز. إنها تسمى قاعدة [النمط الثابت ](https://www.gnu.org/software/make/manual/make.html#Static-Pattern).

بالطبع علينا تحديث قاعدة `report.pdf` أيضًا:

```makefile
خرج/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

وقاعدة `نظيف`:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

إذا قمت بتشغيل هذه الماكيفيل، سوف تحتاج إلى بناء 28 رقما. قد ترغب في استخدام علامة `-j` إلى `جعل` لبناء هذه الأهداف **بالتوازي!**

```bash
$ اصنع -ي-ي4
```

القدرة على بناء الأهداف بالتوازي مفيدة جدا عندما يكون لمشروعك العديد من التبعيات!

ملف PDF الناتج يجب أن يبدو مثل هذا:

![تقرير مع جميع الأنواع](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">عرض مضغوط للتقرير مع الهستوغرام لجميع الأنواع.</small>
