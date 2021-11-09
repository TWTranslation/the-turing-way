(بدولارات الولايات المتحدة) =
# سير عمل المساهمة

سواء كنت تقوم بكتابة محتوى جديد أو مراجعة المحتوى الموجود، مما يسهم في _طريق التوفيق_ يشمل بشكل عام الخطوات التي نوقشت في هذا الفرع. ويمكنكم أن ترجعوا إلى التوصيات هنا للتأكد من أنكم أعدتم إسهامكم على نحو ملائم لاستعراضه. ويرجى ملاحظة أن ترتيب هذه التوصيات ليس صارما، ونحن نشجعكم على اتباع النهج الذي يناسبكم على أفضل وجه.

(ch-contribution flow-template)=
## حدد قالب

بمجرد أن تكون قد قررت نوع المحتوى الذي تريد المساهمة به في _طريق التوريق_، استخدم القالب [ذي الصلة](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) لإعداد مساهمتك.

```{note}
ويرجى ملاحظة أننا نرحب بالمساهمات الجديدة في النماذج النموذجية.
إذا كانت قوالب الفصل أو دراسة الحالة لا تناسب احتياجاتك، يرجى فتح طلب سحب مع اقتراحات لتحسينها.
إذا كنت ترغب في المساهمة بالمحتوى الذي لا يوجد له قالب مقابل، يتم تشجيعك أيضًا على إنشاء القالب الناقص وإضافته إلى مجموعة القالب.
```

(بدولارات الولايات المتحدة)
## وضع الملفات والمجلدات الجديدة في المواقع المناسبة

_طريق التوفير_مستودع Github للملفات يتبع بنية شاملة للملفات حيث تكون الأدلة مجلدات والفصول هي مجلدات فرعية داخلها. وبالمثل، توجد دراسات الحالة داخل مجلد فرعي `دراسات حالة` داخل مجلدات الدليل. جميع المجلدات موجودة داخل دليل [`كتاب/موقع الويب`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website).

عند كتابة محتوى جديد، تأكد من أن الملفات والمجلدات الجديدة التي قمت بإنشائها موضوعة بشكل مناسب للحفاظ على _بنية ملف الطريق_.

على سبيل المثال، تم وضع الفصل [التحكم في الإصدار](https://the-turing-way.netlify.app/reproducible-research/vcs.html) في دليل البحوث القابلة للتكاثر على النحو التالي:

````{admonition} Adding new files and folders
:class: قائمة منسدلة
```
كتاب\الموقع
<unk>
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> reproducible-Research <---- (مجلد لدليل البحوث القابلة للتنقيح)
<unk> reproducible-Research. (د) <---- (صفحة هبوط الدليل)
<unk> <unk> vcs. (د) <---- (صفحة الدخول لفصل التحكم في الإصدار)
<unk> New chapter <---- (صفحة الدخول لفصل جديد)
<unk>
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> vcs (مجلد الفصل)
<unk> <unk> <unk> <unk> vcs-workflow. (د)
<unk> <unk> <unk> <unk> <unk> vcs-git. (د)
<unk> <unk> <unk> <unk> vcs-git-commit.md
<unk> <unk> <unk> <unk> ...
<unk> <unk> <unk> vcs-personal-stories.md
<unk> <unk> <unk> <unk> vcs-checklist (د)
<unk> <unk> <unk> <unk> <unk> vcs-resources. d
<unk>
<unk>
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> : فصل جديد (مجلد جديد للفصل الجديد)
<unk> <unk> ...
<unk>    
<unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> <unk> project-design <---- (مجلد لدليل تصميم المشروع)
    <unk> project-design.md
    <unk> ...
```
````

ينبغي إضافة فصول جديدة في دليل البحوث القابلة للتكاثر مثل `فصل جديد` في المثال أعلاه.

(ع-المساهمة - تسمية تدفق العمل)=
## اسم الملفات/المجلدات بشكل مناسب

الرجاء اتباع _اتفاقيات طريق اللارجح_ لتسمية الملفات. مع أسماء الملفات الصحيحة، يمكن للمساهمين الآخرين التعرف بسهولة على الغرض من الملفات الخاصة بك وموقعها وإضافتها أو تحسينها إذا لزم الأمر.

(بآلاف دولارات الولايات المتحدة)
## اتبع المبادئ التوجيهية للأسلوب والاتساق

أثناء كتابة الفصل الخاص بك، ابقي _نمط المسار_ [](https://the-turing-way.netlify.app/community-handbook/style.html) و [الاتساق](https://the-turing-way.netlify.app/community-handbook/consistency.html) توصيات في الاعتبار. هذا يضمن أن المحتوى الجديد الخاص بك يمكن الوصول إليه، ويناسب النمط العام للكتاب وهيكله وتنسيقه.

(بدولارات الولايات المتحدة)
## أضف ملفاتك الجديدة إلى جدول المحتويات في الكتاب

يوجد جدول المحتويات على مستوى الكتاب في ملف `_toc.yml` [](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml). هذا الملف هياكل _طريق التوفير_ ويحدد الترتيب الذي تظهر به الفصول . يجب إضافة ملفات الفصل الخاص بك إلى `_toc.yml` حسب الاقتضاء.

على سبيل المثال، لأن دراسة الحالة [مخطوطة الأساليب الإحصائية](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) تنتمي إلى دليل البحوث القابلة للتناثر، وقد أضيف إلى قائمة المحتويات على النحو التالي:

````{admonition} Updating the book-wide table of contents
:class: القائمة المنسدلة
```

- الملف: البحث التجريلي/البحث
  الأقسام:
...

  - title: Case Studies
    file: reproducible-research/case-studies
    sections:
    - title: A Statistical Methods Manuscript
      file: reproducible-research/case-studies/statistical-methods-manuscript
```

````

(بدولارات الولايات المتحدة)
## المصادر الخارجية المرجعية المناسبة

تأكد من أن المصادر الخارجية قد تم الرجوع إليها بشكل صحيح وإدراجها في _الطريق الوشيك_ ملف bibtex المركزي كما هو موصى به في دليل الطراز [](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html)

(بآلاف دولارات الولايات المتحدة)
## تحديث المسرد على مستوى الكتاب

_طريقة التورينج_ تحتفظ بمسرد على نطاق الكتاب موجود في [كلمة ما بعد](https://the-turing-way.netlify.app/afterword/glossary.html). عند كتابة الفصل الخاص بك، [قم بتحديث المسرد على نطاق الكتابة](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) مع المصطلحات الرئيسية في الفصل الخاص بك التي ينبغي للقراء أن يتذكروها.

(المتبرع - التدقيق في سير العمل)=
## التحقق من طلب السحب الخاص بك

محتوى القوالب مقصود فقط لتوجيه وتنظيم الكتابة الخاصة بك. الرجاء إزالة جميع عناصر القالب، والنصائح، والاقتراحات من الفصل الخاص بك قبل أن تقوم بإرسال كلمة المرور الخاصة بك للمراجعة.
