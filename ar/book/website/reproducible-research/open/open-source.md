(rr-open-source)=

# البرمجيات مفتوحة المصدر (open source software)

(rr-open-source-whatis)=

## ما هي البرمجيات مفتوحة المصدر (open source software)؟

When a software is open-source [{term}`def<Open Source Software>`], anybody can view, use, modify, and distribute its source code for any purpose.
These permissions are enforced through an {ref}`open-source licence<rr-licensing>`.
البرمجيات مفتوحة المصدر (open source) تعد قوية لأنها تقلل من الحواجز التي تحول دون التبني ، مما يسمح للأفكار بالانتشار بسرعة،
في أبسط أشكاله ،فتح مصدر برنامجك يعني وضع التعليمات البرمجية الخاصة بك على الإنترنت حيث يمكن للآخرين مشاهدتها و إعادة استخدامها.

العديد من برامج البحث الأكثر استخدامًا هي مفتوحة المصدر،
Perhaps the paradigmatic example is the scikit-learn Python package for machine learning {cite:ps}`pedregosa2012ScikitLearn`, which, in the space of just over five years, has attracted over 500 unique contributors, 20,000 individual code contributions, and 2,500 article citations.
من المحتمل ألا يكون إنتاج حزمة قابلة للمقارنة باستخدام نهج تقليدي مغلق المصدر أمرًا ممكنًا،
و سيتطلب ذلك ، على أقل تقدير ، ميزانية تبلغ عشرات الملايين من الدولارات،
While scikit-learn is an outlier, hundreds of other open-source packages that support much more domain-specific needs depend similarly on unsolicited community contributions; for example, the NIPY (neuroimaging in Python) group of projects in neuroimaging {cite:ps}`gorgolewski2016NIPY`).
و الجدير بالذكر أن هذه المساهمات لا تؤدي فقط إلى وظائف جديدة يمكن أن يستفيد منها المجتمع الأوسع ، ولكنها أيضًا تزود مؤلفيهم بانتظام بتقدير أكبر من المجتمع ، وتؤدي إلى مشروع جديد و فرص عمل.

غالبًا ما يقوم الباحثون الذين يستخدمون البرامج مفتوحة المصدر بإجراء تغييرات عليها ، مثل إضافة الميزات التي يحتاجونها لأبحاثهم ، أو إصلاح الأخطاء،
يمكنهم بعد ذلك المساهمة بهذه التحسينات مرة أخرى في المشروع الرئيسي حتى يتمكن المجتمع الأوسع من الاستفادة منها.

(rr-open-source-benefitsyou)=

## كيف تستفيد من المساهمة في برامج مفتوحة المصدر

- _Improve existing skills_: Whether it is coding, user interface design, graphic design, writing, or organizing, if you are looking for practice, there is a task for you on an open-source software project.
  علاوة على ذلك ، يتطلب المصدر المفتوح نص برمجي نظيف و قابل للصيانة لتمكين التعاون بين آلاف الأشخاص الذين قد لا يلتقون أبدًا،
  و هذا يساعدك على بناء و الحفاظ على عادات لصياغة نصوص برمجية جيدة،
  لا ينبغي الاستهانة بمهارات الأشخاص التي يمكنك تطويرها في مشاريع البرامج مفتوحة المصدر،
  حيث يوفر المصدر المفتوح عديد الفرص لممارسة مهارات القيادة و الإدارة ، مثل حل النزاعات و تنظيم فرق الأفراد و تحديد أولويات العمل.
- _Advance your career_: By definition, all of your open source work is public, and this presents opportunities:
  - _Demonstrate technical ability_: Technical interviews traditionally involve working on a simulated problem that can be tackled in a set amount of time with little additional context.
    مثل هذه المحاكاة تعرف، بانها لا تستخدم في العالم الحقيقي ، و لا تُظهر كيف سيكون العمل بها مع مقدم الطلب،
    توفر البرمجيات مفتوحة المصدر رؤية واضحة لكيفية حل المرشح للمشاكل و كيفية العمل مع الآخرين،
    هذا يجعلك كموظف أكثر جاذبية إذا كان بإمكان صاحب العمل رؤية جودة عملك و رؤيتك تعمل مع الآخرين على مدى فترة طويلة بدلاً من المخاطرة بقضية واحدة قصيرة عالية الضغط و التي قد لا تلعب دورًا في اضهار نقاط قوتك.
  - _Reputation_: Becoming an active member of the open source community can gain you a favourable reputation which may bolster future job prospects.
- _Meet people with similar interests_: Open source software projects with warm, welcoming communities keep people coming back for years, and many people form lifelong friendships through their participation in open source.
- _Find mentors and teach others_: Working with others on a shared project means you will have to explain how you do things, as well as ask other people for help. يمكن أن تكون أعمال التعلم والتعليم نشاطًا مُرضيًا لجميع المعنيين.

### جعل عملك مفتوح المصدر

- _Re-usability_: Making your work openly available for reuse makes it easier for others to incorporate into their research.
  If you make your software citeable, via a DOI [{term}`def<Digital Object Identifier>`] for example, this can increase your citations.
- _Contribution_: When you write closed source software, the only developers that can potentially detect, diagnose, triage, and resolve software bugs are those that have a copy of the code.
  إذا كان مشروعك مفتوحًا ، فسيزداد عدد المطورين المساهمين فيه و بالتالي تكون المعرفة اهم.
- _Feedback_: Making your work open enables you to get feedback and improve your project in a way you may never have thought of alone.
- _Accountability_: There is an argument that any software developed using government money should be open source by default; if the public has paid for its development they have a right to make use of it.
  إذا كان عملك ممولًا من الحكومة ، فإن جعله مفتوحًا هو خطوة يمكنك اتخاذها نحو انفتاح الحكومة و مساءلتها.

### المساهمة في مشاريع البرمجيات مفتوحة المصدر للآخرين

- _It is empowering to be able to make changes, even small ones_: You do not have to become a lifelong contributor to enjoy participating in open source.
  هل سبق لك أن رأيت خطأً مطبعيًا على أحد مواقع الويب ، و تمنيت أن يقوم أحد بإصلاحه؟
  في مشاريع البرمجيات مفتوحة المصدر ، يمكنك فعل ذلك بالضبط،
  فهي تساعد الأشخاص على الشعور بالقدرة على التحكم في حياتهم و كيفية تجربتهم للعالم ، وهذا بحد ذاته ممتع.
- _It is fun_:
  Open source provides an endless, ever-changing set of Rubix cubes for you to solve on weekends. تمامًا مثل الألغاز ، سواء الكلمات المتقاطعة أو بانوراما ، توفر البرمجيات مفتوحة المصدر هروبًا فكريًا.

(rr-open-source-benefitsresearch)=

## كيف تستفيد البرمجيات مفتوحة المصدر من البحث

هناك عدة طرق لتستفيد البرامج مفتوحة المصدر من البحث:

(rr-open-source-benefitsresearch-reusable)=

### Reusable

تسمح مشاريع البرمجيات مفتوحة المصدر للباحثين بالاستفادة من عمل بعضهم البعض،
وهذا يمكّنهم من تطبيق جهودهم على الأعمال عالية القيمة،
يقال أحيانًا أن "جميع المشكلات السهلة قد تم حلها بالفعل"،
التدوين و إدارة المحتوى و أنظمة التشغيل كلها مشاكل راسخة (و سائدة) حلت مع البرمجيات مفتوحة المصدر ، على سبيل المثال لا الحصر،
بينما يمكن للمطورين أن يقضوا وقتهم في إعادة اختراع العجلات التي أتقنها مجتمع المصادر المفتوحة بالفعل ، فمن الأفضل للغاية استخدام أفضل عجلة في العالم ، خاصة عندما تكون هذه العجلة مجانية بالنسبة لك،
هذا يقلل من ازدواجية الجهود و يسمح للباحثين بالتركيز على التحديات التي لم يتم حلها بعد.

The {ref}`rr-code-reuse` provides a more in-depth list of different aspects to consider for making your code more reusable, whether this is a small script or a library.

(rr-open-source-benefitsresearch-checkable)=

### قابل للتحقق

تسمح مشاريع برمجيات مفتوحة المصدر مجتمع البحث الأوسع بقراءة و اختبار النص البرمجي لبعضهم البعض،
بهذه الطريقة ، يمكن العثور على الأخطاء بشكل أسرع ، و يمكن للباحثين الآخرين التحقق من صحة النتائج.

(rr-open-source-benefitsresearch-collaborative)=

### التعاونيه

يتيح العمل بشكل مفتوح أيضًا لأي عدد من الباحثين التعاون في مشاريع لا يمكن تطويرها بواسطة باحثين فرديين / مجموعات بحثية،
Examples include [Linux](https://www.linux.org/) operating systems, Python packages such as [scipy](https://www.scipy.org/) and [numpy](http://www.numpy.org/), and the machine learning library [TensorFlow](https://www.tensorflow.org/).

(rr-open-source-run)=

## كيفية تشغيل مشروع البرمجيات مفتوحة المصدر الخاص بك

يمكنك فتح برمجية مفتوحة المصدر لفكر , عمل قيد التنفيذ أو بعد سنوات من كونه مصدرًا مغلقًا،
على المستوى الأساسي ، كل ما عليك فعله هو وضع النص البرمجي الخاص بك على الإنترنت في مكان من المحتمل أن يبقى لفترة طويلة،
You can make your code citeable by assigning it a DOI [{term}`def<Digital Object Identifier>`] (as discussed in the section on {ref}`rr-rdm-sharing`).
وهذا يساعد على ضمان أن تحصل على الائتمان السليم إذا كان الناس قد استخدموا أو بنوا على عملك.

A popular place to make your code available is GitHub [{term}`def<Github>`] (see the chapter on {ref}`rr-vcs`).
يجب عليك تضمين ملف ترخيص ينص على أن أي شخص لديه إذن لاستخدام عملك و نسخه و تعديله، بدون هذا ، لا يمكن لأحد استخدام عملك بشكل قانوني ، و بالتالي فهو ليس مفتوح المصدر،
The {ref}`rr-licensing` chapter will help you to pick the best license for your project.
هناك أيضًا بعض الملفات الأخرى التي يجب عليك تضمينها مع التعليمات البرمجية الخاصة بك ، كما هو موضح أدناه.

(rr-open-source-run-readme)=

### الترحيب بالمستخدمين عن طريق إضافة معلومات إلى ملف اقرأني الخاص بك

You should include a README [{term}`def<README>`] file where you include useful information about what the project is, how to use it, and how to contribute to it. و هنا لائحة من الأشياء الرئيسية التي يجب أن تشمل ملف اقرأني:

- _The project name and what it is_: This will significantly help someone that comes across it to get an idea of the project. و قم بتضمين بعض النقاط الأساسية التي تصف السمات الرئيسية للمشروع و الميزات التي تقوم بتنفيذها،
  يساعد هذا في مقارنة المشاريع الأخرى بمشروعك بسرعة و يعطي فكرة عن سبب وجود المشروع في المقام الأول.
- _Instructions on how to install the project_: The installer might be a collaborator, someone that comes across and is interested in the project, or even you - if you get a new machine and need to re-install your project.
  ومع ذلك ، فإن معرفة كيفية البدء في المشروع من الصفر يعد إهدارًا كاملاً لمواردك،
  يجب أن تتضمن التعليمات أيضًا أي متطلبات أساسية ستكون مطلوبة لتشغيل المشروع،
  أفضل شيء يمكنك القيام به هو كتابة تعليمات التثبيت عندما تقوم بها بنفسك لأول مرة ، و ستوفر بسرعة ساعات من العمل في المستقبل.
- _Instructions for how to run the code and any associated tests_: If you've been working on your project it may seem obvious how to run it, but this will likely not be the case for someone coming across it for the first time.
- _Links to related material_
- _List of authors/contributors to the project, possibly with contact information_
- _Acknowledgements_

لنفترض أنك تنوي لأشخاص آخرين التعاون في المشروع الخاص بك (بدلا من مجرد جعل التعليمات البرمجية المتاحة و النظر في أنها كاملة)،
في هذه الحالة ، يجب عليك تضمين إرشادات المساهمة و على الأرجح مدونة قواعد السلوك.

(rr-open-source-run-guidelines)=

### إرشادات المساهمة

Contributing Guidelines [{term}`def<Contributing Guidelines>`] tell your audience how to participate in your project. على سبيل المثال ، يمكنك تضمين معلومات حول:

- كيفية تقديم تقرير حول خطأ.
- كيفية اقتراح ميزة جديدة.
- خارطة الطريق أو الرؤية الخاصة بك للمشروع.
- كيف يجب على المساهمين (أو لا ينبغي) التواصل معك.

إن استخدام لهجة ودية و تقديم اقتراحات محددة للمساهمات (مثل كتابة الوثائق أو إنشاء موقع ويب) يمكن أن يقطع شوطًا طويلاً في جعل الوافدين الجدد يشعرون بالترحيب و الحماس للمشاركة،
For example, [Active Admin](https://activeadmin.info/index.html) starts its [contributing guide](https://github.com/activeadmin/activeadmin/blob/master/CONTRIBUTING.md) with: "First off, thank you for considering contributing to Active Admin. إن الأشخاص مثلك هم الذين يجعلون المشرف الناشط أداة رائعة ".

في المراحل الأولى من مشروعك ، يمكن أن يكون ملف "إرشادات المساهمة" بسيطًا،
يجب عليك دائمًا شرح كيفية الإبلاغ عن الأخطاء أو مشكلات الملف و أي متطلبات فنية (مثل الاختبارات) لتقديم مساهمة،
بمرور الوقت ، يمكنك إضافة أسئلة أخرى متكررة هنا أو في ملف اقرأني الخاص بك،
تدوين هذه المعلومات يعني أن عددًا أقل من الأشخاص سيطرحون عليك نفس الأسئلة مرارًا و تكرارًا،
من الجيد أيضًا توفير رابط ملف إرشادات المساهمة الخاص بك في ملف اقرأني الخاص بك ، حتى يراه المزيد من الأشخاص.

(rr-open-source-run-conduct)=

### القواعد السلوكية

A Code of Conduct [{term}`def<Code of Conduct>`] helps set ground rules for behaviour for your project's participants.
يعد هذا ذا قيمة خاصة إذا كنت تطلق مشروعًا مفتوح المصدر لمجتمع أو شركة،
فهي ستخول لك بناء سلوك صحي للمجموعة, و التي سوف تقلل من التوتر الخاص بك كمشرف،
فهو يوضح كيف تتوقع أن يتصرف المشاركون و يصف من تنطبق عليهم هذه التوقعات ، و متى يتقدمون ، و ماذا يفعلون في حالة حدوث انتهاك.

مثل الكثير من التراخيص مفتوحة المصدر ، هناك أيضًا معايير ناشئة لقواعد السلوك ، لذلك لا يتعين عليك كتابة ما يخصك، The [Contributor Covenant](https://contributor-covenant.org/) is a drop-in Code of Conduct that is used by [over 40,000 open source projects](https://www.contributor-covenant.org/adopters). بغض النظر عن النص الذي تستخدمه ، يجب أن تكون مستعدًا لتطبيق مدونة قواعد السلوك الخاصة بك عند الضرورة.

احتفظ بالملف في الدليل الجذر لمشروعك ، بحيث يسهل العثور عليه و الارتباط به من ملف اقرأني الخاص بك.

(rr-open-source-contribute)=

## كيفية المساهمة في مشاريع البرمجيات مفتوحة المصدر للآخرين

(rr-open-source-contribute-anatomy)=

### شرح مشروع برمجيات مفتوح المصدر

كل مجتمع مفتوح المصدر مختلف، ومع ذلك ، فإن العديد من مشاريع البرمجيات مفتوحة المصدر تتبع هيكلًا تنظيميًا مشابهًا،
سيساعدك فهم أدوار المجتمع المختلفة و العملية الشاملة على التوجّه سريعًا إلى أي مشروع جديد.

يحتوي مشروع البرمجيات مفتوحة المصدر النموذجي على الأنواع التالية من الأشخاص:

- _Author_: The person/s or organization that created the project.
- _Owner_: The person/s who has administrative ownership over the organization or repository (not always the same as the original author).
- _Maintainers_: Contributors who are responsible for driving the vision and managing the organizational aspects of the project. قد يكونوا أيضًا مؤلفين و / أو مالكي المشروع.
- _Contributors_: Everyone who has contributed something back to the project.
- _Community Members_: People who use the project. قد يكونون نشيطين في المحادثات أو يعبرون عن رأيهم في اتجاه المشروع.

قد يكون للمشاريع الأكبر أيضًا لجان فرعية أو مجموعات عمل تركز على مهام مختلفة ، مثل الأدوات ، و الفرز ، و الاعتدال المجتمعي ، و تنظيم الأحداث، ابحث في موقع الويب الخاص بالمشروع عن صفحة "فريق" ، أو في مستودع وثائق الحوكمة ، للعثور على هذه المعلومات.

يتم استضافة العديد من مشاريع البرمجيات مفتوحة المصدر على جيت هاب (GitHub)(راجع الفصل الخاص بالتحكم في الإصدار لمزيد من التفاصيل) ، والذي يحتوي على مرافق مثل:

- _Issue tracker_: Where people discuss issues related to the project.
- _Pull requests_: Where people discuss and review changes that are in progress.
- _Discussion forums or mailing lists_: Some projects may use these channels for conversational topics (for example, "How do I..." or "What do you think about..." instead of bug reports or feature requests). يستخدم الآخرون متعقب المشكلة لجميع المحادثات.
- _Synchronous chat channel_: Some projects use chat channels (such as Slack or IRC) for casual conversation, collaboration, and quick exchanges.

(rr-open-source-contribute-changes)=

### المساهمة في التغييرات

لنفترض أنك أضفت ميزة أو أصلحت الخلل و تريد المساهمة بهذا العمل في المشروع الرئيسي.

1. _Read the documentation_: The main project may have contributing guidelines or information in a README instructing prospective contributors on how to supply their changes.
2. _Make sure your conventions match the style and structure of the main project_: For example, if all the variables in a project are named in some particular way yours should be too.
   Consistent conventions make it much easier for someone who has not seen your piece of the project before to understand it rather than having to figure out your particular set of conventions _and_ what the code is doing.
   و قد يتم تحديد اتفاقيات المشروع في وثائقه ، أو قد تكون واضحة فقط من فحص النص البرمجي نفسه.
3. _Break your changes up into manageable, well-defined chunks_: For example, if you have added two separate features, do not submit them together.
   الحفاظ على الأشياء "نظيفة" بهذه الطريقة يجعل عملك أسهل للفهم و المراجعة.
4. _Test your changes_: If the project comes with tests, run them.
   تأكد من أنك تختبر نسخة محدثة من المشروع لأنها قد تكون قد تطورت بشكل كبير بمرور الوقت، اكتب اختبارات محددة للتغييرات الخاصة بك و أرسلها أيضا.
5. _Do not just submit code, update relevant documentation too_: If your changes are incorporated, it will have to be updated. إذا لم تفعل ذلك ، فسيتعين على شخص آخر القيام بذلك.
6. _Ask questions_: If there are things you are unsure about, there is no harm in asking. العديد من المشاريع الكبيرة لديها منتديات مخصصة أو أماكن أخرى للأسئلة و المناقشة.
7. _Be clear_: When you submit your changes, clearly describe the changes you have made, why you have made them, and how they have been implemented.
   هذا يجعل الأمر أسهل على أي شخص ينظر إلى عملك و يقرر ما إذا كان يريد إدراجه في المشروع الرئيسي للقيام بذلك،
   In the likely case the main project is hosted on GitHub, you should put this in the pull request (see the chapter {ref}`rr-vcs` for more details).

(rr-open-source-contribute-looking)=

### البحث عن مشاريع للمساهمة فيها و كيفية المساهمة فيها

لا تحتاج إلى الإفراط في التفكير في ماهية مساهمتك الأولى بالضبط ، أو كيف ستبدو،
بدلاً من ذلك ، ابدأ بالتفكير في المشاريع التي تستخدمها بالفعل أو تريد استخدامها،
و التي ستساهم فيها بنشاط هي تلك التي تجد نفسك تعود إليها،
ضمن هذه المشاريع ، كلما وجدت نفسك تعتقد أن شيئًا ما يمكن أن يكون أفضل أو مختلفًا ، تصرف وفقًا لغريزتك، قد تفحص ملف اقرأني و تجد روابط معطل أو خطأ إملائي،
بدلاً من ذلك ، يمكن أن تكون مستخدمًا جديدًا و تلاحظ أن شيئًا ما معطل ، أو تجد مشكلة تعتقد أنها يجب أن تكون في الوثائق،
بدلاً من تجاهلها و المضي قدمًا ، أو مطالبة شخص آخر بإصلاحها ، انظر ما إذا كان يمكنك المساعدة من خلال المشاركة، هذا ما يدور حوله المصدر المفتوح.

يمكنك أيضًا استخدام أحد الموارد التالية لمساعدتك في اكتشاف المشاريع الجديدة و المساهمة فيها:

- [Open Source Friday](https://opensourcefriday.com/)
- [First Timers Only](https://www.firsttimersonly.com/)
- [CodeTriage](https://www.codetriage.com/)

إذا لم تكن متأكدًا من كيفية البدء ، فهناك بعض الطرق الأخرى التي يمكنك اتباعها ، مثل البحث عن مشكلة مفتوحة لمعالجتها أو السؤال عما إذا كان بإمكانك المساعدة في كتابة ميزة جديدة.

من المفاهيم الخاطئة الشائعة حول المساهمة في المصدر المفتوح أنك بحاجة إلى المساهمة في التعليمات البرمجية، في الواقع ، غالبًا ما تكون الأجزاء الأخرى من المشروع هي الأكثر إهمالًا أو تجاهلًا، سوف تقدم خدمة كبيرة للمشروع من خلال عرض تقديم هذه الأنواع من المساهمات، يمكنك:

- قم بمراجعة النص البرمجي في تقديمات الأشخاص الآخرين.
- كتابة و تحسين و ثائق المشروع.
- قم بتنظيم ملف من الأمثلة يوضح كيفية استخدام المشروع.
- أجب عن الأسئلة المتعلقة بالمشروع ، على سبيل المثال ، ستاك أوفرفلو (Stack Overflow) .
- حافظ على تنظيم الأشياء ، على سبيل المثال ، على جيت هاب (GitHub) من خلال:
  - ربط قضايا مكررة.
  - اقتراح تسميات مشكلة جديدة.
  - مراجعة القضايا المفتوحة و اقتراح إغلاق القديمة.
  - اطرح أسئلة توضيحية حول القضايا التي تم فتحها مؤخرًا لتحريك المناقشة إلى الأمام.

(rr-open-source-closed)=

## البرمجيات المغلقة

ماذا لو كنت تعمل مع أشخاص لا يستخدمون نموذج المصدر المفتوح لبرامجهم؟
قد يبدو هذا في البداية إهانة لجميع المبادئ التي تمت مناقشتها حتى الآن، ومع ذلك ، عادة ما تكون هناك أسباب جيدة جدًا لكون الأشياء على ما هي عليه (على سبيل المثال الأسباب القانونية أو التجارية أو الأمنية)،
في كثير من الأحيان ، سيظل من الممكن استخدامه و المساهمة فيه ، و لكن قد تكون تفاصيل كيف ستكون مختلفة،
أنواع الممارسات المستخدمة في البرامج "المغلقة" هي نفسها بشكل عام ، و لا تزال المفاهيم و الأدوات التي يمكنك التعرف عليها في منهج تورينج (The Turing Way) سارية.

في بعض الأحيان ، ومع ذلك ، قد لا تكون هناك أسباب وجيهة لنهج المصدر المغلق،
فمجالات البحث المختلفة لها ثقافات مختلفة تتعارض مع اتجاه المبادئ المفتوحة و تشعر بالإحباط الشديد،
قد يكون التعامل مع هذا الحاجز أمرًا صعبًا للغاية لأن الثقافات قد تستغرق سنوات أو عقودًا حتى تتغير.

يمكن أن يوفر العمل مع البرامج المغلقة فرصًا و تهديدات لبحثك،
في جميع الحالات ، يوفر فهم و احترام وجهات نظر الآخرين أكبر فرص النجاح.
