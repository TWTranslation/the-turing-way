(pd-overview)=

# Overview of Project Design

## ملخص توضيحي لإنشاء سجلات المشروع

Project design techniques can help researchers clearly identify and communicate their project goals, skill requirements and resource available to them.
It ensures that all stakeholders can work together efficiently, apply reproducibility methods and communicate their work effectively with their target audience.
A project design requires project leads, managers and organisers to be deliberate and clear about their expectations from the beginning of their projects to ensure successful implementation of their plans at all stages of research.

```{figure} ../../figures/project-design-overview.*
---
height: 500px
name: project-design-overview
alt: This illustration shows a stage with a trophy labeled as 'reproducible research trophy'. A diverse team of four people are helping each other take staircase towards the trophy. The staircase has three sets of labels indicating research stages as (1) before, that includes 'team, funding, question, methodology, approval, license', (2) during that includes version control and documentation, and (3) after that includes archiving and publishing steps.
---
Illustration of project design overview. _The Turing Way_ project illustration by Scriberia.
Used under a CC-BY 4.0 licence.
DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```

In this chapter, we have curated good practices to ensure that we maintain good communication (and avoid miscommunication), create opportunities for collaboration and ultimately ensure reproducibility at different stages of the project.

## Background & Motivation

Everyone applies various design concepts to their project formally or informally.
However, often we think about these concepts retrospectively, when the project is over and we gain a better understanding of design mistakes that could have been avoided with better planning and organisation.

This lack of planning contributes to the fact that most research work can not be directly and independently reproduced, and that communication and collaboration style across different groups differ and hence are challenging.

To help learn good practices, _The Turing Way_ provides various chapters for {ref}`reproducibility<rr>`, {ref}`communication<cm>` and {ref}`collaboration<cl>` that we consider essential for research reproducibility.
Although publications{cite:ps}`Turkyilmaz-vanderVelden2020projectdesign` and _The Turing Way_ chapters on specific methods, tools and practices exist it can be overwhelming to know which chapters to read if you don't already know about the concepts.

In this chapter, we have curated essential practices and recommendations and linked them to individual chapters across different guides.

```{note}
There are many chapters that we don't link here to avoid overwhelming readers who are new to reproducible project design.
We invite you to contribute to this chapter by adding important tools or practices that have not been mentioned here.
```

In the different subchapters we discuss how you can {ref}`start planning<pd-overview-planning>` for project design, the {ref}` communication and collaboration<pd-overview-repro>` aspect for ensuring reproducibility, {ref}`tools and methods<pd-overview-methods>` for reproducibility, {ref}`version control and documentation<pd-overview-version>` aspects and {ref}`sharing your research<pd-overview-sharing>`.

(pd-overview-mistakes)=

## Learning from Mistakes

> "البناء يأخذ الكثير والكثير من الأخطاء."
>
> \-- Becky Chambers, [The Long Way to a Small, Angry Planet](https://www.goodreads.com/work/quotes/42270825)

يمكننا التعلم من أخطاء التصاميم السابقة حيث تعطينا بصيرة في ما يمكن أن نفعله بشكل مختلف لتفادي هذه الاخطاء في المستقبل،
ولقد طلبنا من مجموعة من الباحثين مشاركة ما ندموا عليه أثناء القيام بتصميم مشروعهم ، والذي لخصناه هنا:

- عدم الدعوة إلى أهداف ومعايير نجاح أكثر وضوحا من البداية.
- عدم توصيل رؤية المشروع بوضوح / غالبًا بشكل كافٍ لأعضاء الفريق الآخرين.
- عدم التأكد من أن جميع الأطراف الفاعلة كانوا على دراية كاملة بطبيعة المشروع.
- عدم فهم أن تصميم المشروع يتعلق بالاشخاص أولاً، فالتصميم يحفز الأطراف الفاعلة ويسمح بالتعاون والإدماج.
- أعتقد أنني كتبت هذه على أنها إجراءات كنت أتمنى أن أكون قد قمت بها بشكل أفضل - عدم وضع الانجازات قصيرة وطويلة الأجل ، والتواصل وتطبيق معايير لمشاركة المتعاونين ، وتفويض العمل ومهام إدارة المشروع.
- عدم وجود وثائق بجانب التقارير النهائية، عندما يُسأل عن النص البرمجي (code) أو  مجموعة البيانات (Dataset) (الأولية والمعالجة) ، فإن العملية تتم خطوة بخطوة من إعداد البيانات إلى الحصول على النتائج ، وعدم وجود إرشادات موثقة في مكان واحد جعل من الصعب تتبع المشروع مع جميع أعضاء الفريق (و هذه مشكلة كلاسيكية).
- عدم الأخذ في الاعتبار بشكل صحيح درجة تغير المتطلبات في المشروع بأكمله - وتأثير ذلك على التصميمات التي تحتاج أيضًا إلى التغيير.
- محاولة التخطيط كثيرًا في البداية وعدم البدء أبدًا.
- أشعر وكأنني دائمًا ما أتبع نهجًا خاصا لتخطيط المشروع ثم أحس أنني أقضي الكثير من الوقت في الجانب التنظيمي له لأنني لا أملك سير عمل محدد للتعامل مع تخطيطه وتصميمه، Also, not knowing how project planning fits into project design.
- استخدام برنامج إكسل (Excel) فوضوي للغاية لتخزين / معالجة البيانات ، يعتبر شيئا مخزي!
- المبالغة في هندسة تصميم لخاصيات لم يتم تنفيذها في نهاية المطاف (في الحياة قبل الأوساط الأكاديمية!)
- عدم تطبيق جيت فلو (Git flow) وهو إستخدام خاصيات الفروع لجيت من البداية ، وعدم تعليم المتعاونين كيفية استخدامه.
- عدم تطوير الاختبارات إلا بعد كتابة قدر كبير من النصوص البرمجية (code).
- عدم إجراء مراجعات للنصوص البرمجية (code).
- لم يتم تحديد سيناريوهات الاستخدام للبرمجيات منذ البداية، بمعنى أننا لم نول اهتماما كافيا لمدخلات البيانات ومخرجاتها.
- الفترة طويلة جداً قبل الانتقال إلى تصميم أفضل موضوعي (لا سيما الترجمة من نص برمجي أساسي (codebase) وظيفي بدرجة كبيرة إلى   ذو نمط كائنية التوجُّه (object-oriented)).
- التعامل مع الخيارات "الأريح" لأعضاء الفريق  (على سبيل المثال، إستخدام لغات قديمة أو منصات تعتمد على محول برمجي (compiler) )، بدلا من تعليم أعضاء الفريق مهارات جديدة، وهذا يجعل الحياة أكثر صعوبة على المدى الطويل.
- تحديد أسلوب الإدارة في مراحل مختلفة من المشروع أو التخطيط المحتمل للسيناريوهات لمعرفة كيف يمكن أن يتغير أسلوب الإدارة مع توسع المشروع  أن يكبر/أن يصغر/يكسب مستخدمين جدد وما إلى ذلك.
- عدم التفكير في المجتمع منذ البداية ، بدءًا بمدونة قواعد السلوك ، والتفكير في اتفاقية ترخيص المساهمة (الملكية الفكرية) ، وما هي العمليات التي سيتم استخدامها وكيف ستعمل ، وكيف ستؤثر على المساهمين المستقبليين وعلى المشروع ككل.

_This section summarises participants' notes from a short workshop called "Good Practices for Designing Software Development Projects (The Turing Way)" at the [Collaboration Workshop 2021](https://www.software.ac.uk/cw21) hosted by [Software Sustainability Institute](https://www.software.ac.uk). وقدم الورشة مالفيكا شاران (Malvika Sharan) وإيما كارون (Emma Karoune) وبتول المرزوق (Batool Almarzouq) في 31 مارس 2021، زينودو (Zenodo) DOI: [10.5281/zenodo.4650221](https://doi.org/10.5281/zenodo.4650221)._
