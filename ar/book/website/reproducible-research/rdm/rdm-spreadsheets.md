(rr-rdm-spreadsheets)=

# تنظيم البيانات في جداول البيانات

Spreadsheets, such as Microsoft Excel files, google sheets, and their Open Source alternative [(for instance) LibreOffice](https://www.libreoffice.org), are commonly used to collect, store, manipulate, analyse, and share research data.
وتعد هذه الجداول أدوات مريحة وسهلة الاستخدام لتنظيم المعلومات في نماذج سهلة الكتابة والقراءة للبشر،
ومع ذلك ، يجب على المرء استخدامها بحذر ، اذ يعتبر استخدام جدول بيانات غير مناسب السبب الرئيسي للوقوع في الأخطاء إثر سير عمل تحليل البيانات،
See for example the [loss of COVID19 data in England due to poor use of Excel](https://www.bbc.com/news/technology-54423988).
There is a collection of [horror-stories](https://eusprig.org/research-info/horror-stories/) that tells how the use of spreadsheets can ruin analysis-based studies due to unexpected behaviour of the spreadsheet or error-prone editing processes.
Some of these mishaps are not unique to spreadsheets, but many, such as [Gene name errors](https://doi.org/10.1186/s13059-016-1044-7) (and another [Gene name error example](https://doi.org/10.1186/1471-2105-5-80)), are.

لحسن الحظ ، يمكن تجنب معظم المشاكل بالتوصيات التالية:

- إستخدام جدول بيانات بتنسيق نصي فقط (.csv أو .tsv).
- إنشاء جداول بيانات مرتبة.
- جعل جداول البيانات متسقة (مع بعضها البعض) وتنفيذ قواعد لإدخالات البيانات.
- تجنب معالجة البيانات وتحليلها في برنامج جداول البيانات (بما في ذلك النسخ واللصق).

تعد جداول البيانات أداة قوية فقط إذا تم جمع مجموعة البيانات وتنظيمها في تنسيقات محددة يمكن استخدامها لكل من أجهزة الكمبيوتر والباحثين.

(rr-rdm-spreadsheets-nondata)=

## 1. تجنب المحتوى الذي لا يحتوي بيانات

تُستخدم جداول البيانات لتنظيم البيانات في شكل جدول،
حيث يتم تحويل الموضوع وجوهره والعلاقة بينهم إلى صفوف وخلايا وأعمدة، على التوالي،
For example, the subject: `experiment`, relationship: `was performed on the date`, and the object: `2020-06-06` gives one row for each experiment, one column for `date of experiment`, and the value `2020-06-06` in the cell.
ولكن لسوء الحظ ، تسمح لك برامج جداول البيانات بإضافة أنواع أخرى من المحتويات لهذا ، مثل لون لخلايا معينة،
While it may help the researchers at some point, one needs to remember that this kind of **cell modification should not be considered as data**, primarily because they cannot be exported to other software.

كقاعدة بسيطة ، يمكن اعتبار ما يمكن تصديره بتنسيق نصي فقط أو قيم مفصولة بفواصل (سي أس في (CSV)) أو قيم مفصولة بعلامات جدولة (تي أس في (TSV)) بمثابة البيانات،
كما ينبغي أيضا تجنب الوظائف الأخرى عند استخدام هذه البرامج في بيانات البحوث،
وهذا يشمل:

- cell formatting, such as changing font, color or borders,
- استخدام الوظائف.
- دمج الخلايا (هذه مشكلة بشكل خاص).
- استخدام صيغ خلايا محددة (خاصة التواريخ، راجع أدناه).

كاختبار لتوافق جدول البيانات الخاص بك مع البحث القابل للتكرار ، قم بتصدير بياناتك من جدول البيانات إلى تنسيق سي أس في (CSV) وأعد فتحه،
إذا كان لا يزال بإمكانك الحصول على جميع المعلومات التي قمت بتخزينها في جدول البيانات الخاص بك ، فستكون بياناتك على ما يرام.

```{tip}
If you want to use color to help with a rapid highlight in your document, create a new column to indicate which cells are highlighted (it becomes a part of your data).
In addition to the visual feedback, you can now also use this information to filter or sort your data and get the highlighted cells quickly.
```

(rr-rdm-spreadsheets-format)=

## 2. تنسيق منظم لجداول البيانات

If [the spreadsheet is poorly organised](https://luisdva.github.io/pls-don't-do-this/), then it may be difficult for collaborators to easily {ref}`read-in and reuse <rr-rdm-fair>` your data for further analysis.

في الواقع ، يتمثل جزء كبير من عمل علماء البيانات (data scientists) في تحويل البيانات إلى شكل يمكن للحاسوب من قراءته،
ومع ذلك ، فإن هذا يستغرق وقتًا طويلاً بشكل لا يصدق عندما يتم تقسيم المعلومات بين عدة جداول بيانات وعندما لا تكون هناك خطط لتحويل بيانات محددة قبل الحصول عليها.

There are very simple rules to facilitate data use, which go into the concept of [**tidy data**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815) {cite:ps}`Wickham2014tidydata`.
حيث ان هذه الاخيرة تسمح بتصفية البيانات وفرزها بسهولة في برنامج جداول البيانات.

باختصار:

- عمود واحد = متغير واحد (لا أكثر ولا أقل ، وهذا يعني أن اثنين من أسماء رأس الجدول لا يمكن أن يكونا متطابقين).
- صف واحد = عينة واحدة.
- خلية واحدة = معلومات واحدة.
- **The first row is the header**
- يجب ألا تتضمن أسماء رأس الجدول (header) حرفًا خاصًا (بما في ذلك المسافة) أو أن تبدأ برقم.

```{figure} ../../../figures/tidy-1.*
---
name: tidy-1
alt: >
  Three images depicting visual representations of the descriptions mentioned previously.
  In the first image on the left, variables are demonstrated with double headed arrows going up and down the columns.
  In the middle image, double headed arrows go along rows, demonstrating observations.
  In the right hand image, black circles over each cell demonstrate values.
---
An illustration of tidy data.
```

ثلاث قواعد تجعل مجموعة البيانات مرتبة:

1. يجب أن يكون لكل متغير عمود خاص به.
2. يجب أن يكون لكل ملاحظة صف خاص بها.
3. يجب أن يكون لكل قيمة خليتها الخاصة.

There are data validation tools available, like [Frictionless Data](https://frictionlessdata.io/)'s [Python package](https://framework.frictionlessdata.io/) or [GitHub Action](https://repository.frictionlessdata.io/), that allow you to automatically check whether your spreadsheets are tidy.

(rr-rdm-spreadsheets-consistent)=

## 3. قيم ثابتة

عندما تعمل باستخدام جداول بيانات متعددة أو مع فريق أثناء جمع البيانات، فمن المهم التأكد من إدخال نفس المعلومات بنفس المصطلح، وأن نفس المصطلح يوضح دائما نفس المعلومات،
In the example of iris data, if some people use different terms to record information for a specific column - such as naming the column `species` instead of `Species` or using `iris setosa`, `set.` or `i.setosa` instead of `setosa` - the creation of a reproducible workflow will be more difficult, and errors may even be overlooked.  
Discrepancies often lead to errors, especially when the same terms could mean different things depending on who is entering the data.
For example, indicating date as `02-03` will mean February the 3<sup>rd</sup> in the USA, but March the 2<sup>nd</sup> in Europe.

It is good practice to implement a `data dictionary` or a `taxonomy` of accepted terms and document the convention used in a README file.
واعتمادًا على البرنامج الذي تستخدمه ، قد تتمكن من تقييد القيم المقبولة في أعمدة معينة،
فإذا كان علم التصنيف (taxonomy) أو علم الوجود (ontology) متاحًا ، فقد يسمح لك استخدامه (ولغيرك) باستخدام البيانات جنبًا إلى جنب مع مجموعات البيانات الأخرى،
For example, you may use the generic `male` and `female` term for the sex of an animal (without capitals, and without using abbreviation), as many ontologies use these terms.
بالإضافة إلى ذلك ، قد ترغب في استخدام بعض الأدوات الإضافية للتحقق من صحة جداول البيانات قبل دمجها في التحاليل.

(rr-rdm-spreadsheets-missing)=

### Missing data points

يجب أن يكون لديك أيضًا قواعد واضحة حول نقاط البيانات المفقودة،
Using `NA`, `NULL`, or empty cells is not trivial and may have different meanings (impossible data point, not recorded, or lost data point).
تخيل أن باحثًا يريد تسجيل الوقت الذي يقضيه قبل رؤية ملقِّح يهبط على زهرة قزحية ، ولم يُشاهد أي مُلقِّح خلال التجربة التي استغرقت 10 دقائق،
Suppose the researcher reports `600` (the duration of the experiment in seconds).
In that case, there will be no way to distinguish a scenario where no pollinator was seen, and one when a pollinator was seen at the end of the experiment (and you may forget that rule and treat `600` as a normal value).

If `NA` is reported, one may interpret this value as a non-existing data point (the experiment had not been performed).
An elegant solution is to have a second column stating whether a pollinator was seen during the experiment, where `TRUE`, `FALSE` and `NA` values are accepted.

أخيرًا ، يجب أيضًا أن تكون على دراية بالسلوك الافتراضي لبرنامج جداول البيانات الخاص بك ، حيث قد يختلف باختلاف البرامج والإصدارات المختلفة من نفس البرنامج،
على سبيل المثال ، عادةً ما يشار إلى العلامة العشرية بفاصلة في الإصدارات الفرنسية أو الألمانية من إكسل (Excel)،
In the English versions, a dot is used since the comma has no meaning (`9,000` will be translated into `9000` or `9` depending on the version you are using).

(rr-rdm-spreadsheets-manipulation)=

## 4. معالجة البيانات وتحليلها

When you manually manipulate data in a spreadsheet program, you will need to record all the steps that you took.
This can be time consuming and can be avoided by manipulating and analysing the data with automatic analyses or programmes such as [Open Refine](https://openrefine.org/) that will record the data manipulation steps for you.

OpenRefine can be used for tabular data (for example in [social sciences](https://datacarpentry.org/openrefine-socialsci/), [ecology](https://datacarpentry.org/OpenRefine-ecology-lesson/) and [history](https://programminghistorian.org/en/lessons/cleaning-data-with-openrefine).
OpenRefine can help you to get an overview of large datasets, identify and correct inconsistencies, and integrate datasets.
It automatically records these processes, saving a script of the steps involved.
OpenRefine uses your web browser as a graphical interface, but the software runs only locally so it is safe to use for sensitive data.

Automatic manipulation will also help with data validation, as software may return error messages if data is manipulated incorrectly.

(rr-rdm-spreadsheets-validation)=

## 5. Data validation

- [Excel support page on data validation](https://support.office.com/en-us/article/Apply-data-validation-to-cells-29FECBCC-D1B9-42C1-9D76-EFF3CE5F7249)
- Check manually whether your data is consistent, complete and correct:
- If a column should contain only numeric values or characters, check that there are no non-numeric values or non-character
- Check for consistency in names, unit of measurements, data type and so on
- Check if there are any empty cells and replace them with your chosen null value (see {ref}`above <rr-rdm-spreadsheets-missing>`)
- Remove redundant data (while keeping in mind what could be reused in the future!)

(rr-rdm-spreadsheets-accessibility)=

## 6. Accessibility

Comma- or Tab-Separated Value (CSV/TSV) formats are not only best for preservation, but for accessibility as well.
For more information:

- [Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md#tabular)
- [Make your Excel documents accessible to people with disabilities](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593) (Microsoft Office)
- [Excel Tips](https://accessibility.psu.edu/microsoftoffice/excel/) (Accessibility and Usability at Penn State)
- [Create Accessible Spreadsheets](https://www.section508.gov/create/spreadsheets/) (General Services Administration of the 49 U.S. - focused on Excel)

(rr-rdm-spreadsheets-tips)=

## إرشادات أخرى

(rr-rdm-spreadsheets-tips-time)=

### التعامل مع معلومات الوقت

While dates should be written as `yyyy-mm-dd`, Excel and other software tend to transform this data into their own date formats (even during data import from a CSV file).
والطريقة الوحيدة الآمنة 100٪ للتعامل مع هذا هي إنشاء أعمدة مختلفة لسنوات وشهور وأيام وإعادة إنشاء البيانات في البرنامج المستخدم للتحليل، Time entered with `hh:mm:ss` normally works.

(rr-rdm-spreadsheets-tips-several)=

### العمل مع العديد من النسخ

غالبًا ما نستخدم عدة نسخ لبيانات تكون مختلفة ولكنها ذات صلة،
It is a handy tool indeed, especially when one wants to share the complete dataset with colleagues.  
On the other hand, CSV files only save one sheet at a time.
Though most data analysis software have several ways to import `xlsx` files, the practical solution is to work with the `xlsx` format while making sure that the information is available in CSV format for each sheet.
ويتمثل الحل الأفضل ، خاصة للتخزين طويل المدى ، بحفظ كل النسخ بشكل منفصل في ملف سي أس في (CSV) وضغطها معًا،
ويسمح هذا الحل أيضًا بتضمين وثائق إضافية يمكن أن تكون بصيغ مختلفة (على سبيل المثال ، ملف نصي يشرح معنى رؤوس الجداول والوحدة المختارة).

(rr-rdm-spreadsheets-tips-design)=

### تصميم جداول البيانات

غالبًا ما يتم جمع البيانات يدويًا على ورقة،
لتحقيق أقصى قدر من الكفاءة وتجنب الأخطاء ، فمن الأفضل جمع البيانات بنفس الصيغة التي سيتم تحويلها إليه رقميًا،
أي أنه يجب على المرء تصميم جدول بيانات يمكن قراءته بالحاسوب ليتم طباعته لجمع البيانات،
حيث يطرح هذا بعض الأسئلة حول التصميم ، خاصة بالنسبة للمعلومات التي تنفرد بها تجربة واحدة (ورقة علمية واحدة) ولكنها قد تتغير بين التجارب (على سبيل المثال ، التجريبية أو درجة حرارة الغرفة)،
أنت بالفعل تريد هذه المعلومات في عمود واحد ، لكنك ترغب في إدخالها مرة واحدة فقط أثناء الحصول على البيانات (خاصة في النسخة الورقية)،
ويتمثل أحد الحلول في نقل هذه الأعمدة إلى صفحة ثانية (غير مطبوعة) في جدول البيانات وضبط الرؤوس (headers) والتذييلات (footers) لإدخال المعلومات في النسخة الورقية،
والتأكد من إدخال المعلومات في العمود أثناء الرقمنة.

قد تختلف طريقة إدخال المعلومات (أي الطريقة التي تصمم بها رؤوس  الأعمدة (headers) ومحتوى الخلية) بناءً على التحليل الذي تريد إجراؤه،
فيجب على المرء أن يحاول دائمًا أن يكون عامًا وموضوعيًا قدر الإمكان والتفكير في أي تحليلات إضافية قد يرغب المرء في إجرائها.

على سبيل المثال ، دعنا نفترض أنك مهتم بتصوير ما إذا كانت النسبة المئوية للزهور التي يزيد طولها عن 6 مم مختلفة في ثلاثة أنواع من القزحية،
You may be inclined to record a true or false column `is-sepal-longer-than-6cm`, but this will restrict the analysis you can perform.
الحل الأفضل هو تسجيل طول سيبال وهي الجزء الخارجي من الزهرة (بال مم) وإنشاء التصنيف تلقائيا في وقت لاحق.

إذا كنت تستخدم لغة الآر (R) ، فيمكنك حينئذٍ رسم ما تريد باستخدام:

```
iris %>% ## the iris dataset is included in R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal.Length >6, TRUE, FALSE)) %>% ## this create the new column
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Species)) + ggplot2::geom_bar() ## this plots the data
```

يجب اختيار أسماء رؤوس الأعمدة بعناية ، فعندما لا يكون من الواضح ما معناها وما المقصود من الوحدة المستخدمة ، قد ترغب في إضافة بعض الشرح في وثيقة خارجية،
كما يمكنك أيضًا مشاركة نموذج جدول بياناتك مع زميل لك لتلقي تعليقات حول ما مدى فهم الآخرين لجدولك.

وثمة بديل آخر يتمثل في إضافة بعض التفسيرات إلى النسخة في الصف الأول قبل الرؤوس،
وهي من خلال الاحتفاظ بالمعلومات التي يمكن قراءتها في الجزء العلوي من الملف ،إذ يمكن للمرء أن يفهم بشكل أفضل البيانات التي تبدأ في صفوف رأس العمود،
كما يمكن أن تساعد هذه المعلومات في تحليل تلك البيانات ، والتأكد من أن البرامج النصية تتجاهل سطور التفسير ولا تأخذها في الاعتبار إلا أثناء التحليل،
ومع ذلك ، فإن الملف الجيد الذي يحتوي على أعمدة وصفوف مرتبة لا يحتاج إلى شرح إضافي.

أما بالنسبة لأسماء رؤوس الأعمدة، فإن حجم الرؤوس ليس مشكلة لأجهزة الحاسوب،
ومع ذلك ، لتكون القراءة سهلتا للبشر من الأفضل إبقائها مختصرة (حتى 32 حرفًا).

لا يتعين عليك التفكير في ترتيب الأعمدة للتحليل ، حيث لا أهمية لها في برامج تحليل البيانات،
لذلك ، يمكنك تحسين هذه المعلمة تماما لخطوة جمع البيانات.

(rr-rdm-spreadsheets-tips-versioning)=

### المقاييس وإدارة الإصدارات

يحتوي تصميم جدول البيانات الجيد على أسماء رؤوس تكون مفيدة وبديهية ، فتسهل جمع البيانات وتحليلها،
ويعد بناء مثل هذا التصميم لجداول البيانات أمرًا صعبًا لأنه يستغرق وقتًا وتكرارات متعددة وتوافقًا في الآراء،
لذلك من المفيد البحث عن جدول بيانات وفق معايير محددة قبل تصميم جدولك الخاص ومشاركة تصميمك بشكل مفتوح بمجرد إنشائه،
كما ينبغي للمرء أن يستخدم تاريخ إصدار جدول البيانات (حيث أنها ستتطور)، وينبغي للنص التحليلي أن يذكر رقم الإصدار هذا الجدول،
ويمكن أن يكون توثيق جدول البيانات وتاريخ إصداره وعلم الوجود المرتبطة به مفيدًا للمستخدمين في المستقبل.

(rr-rdm-spreadsheets-tips-team)=

### Working In A Team

إذا كنت تعمل مع فريق على جمع البيانات ، فتأكد من:

- أن يستخدم الجميع نفس البرنامج (وإصدار البرنامج) لإدخال البيانات.
- أن يستخدم الجميع الإصدار نفسه من نموذج جدول البيانات.
- أن يفهم الجميع ما يمثله كل عمود والوحدة التي يجب استخدامها.
- أن يحتوي كل عمود على معيار محدد حول كيفية إدخال البيانات فيه أو تصنيف المصطلحات التي يمكن للفرد استخدامها.
- شخص واحد مسؤول عن الإجابة على الأسئلة المفترضة أثناء جمع البيانات.
- يتم التحقق من صحة كل جدول بيانات قبل الدخول في سير عمل التحليل ، وبأسرع وقت ممكن.

(rr-rdm-spreadsheets-summary)=

## ملخص توضيحي للجداول البيانية

في حين أن جداول البيانات يمكن أن تكون طريقة سهلة الاستخدام للغاية لجمع البيانات ومشاركتها ، إلا أنها يمكن أن تكون أيضًا مصدرًا للأخطاء في حالة إساءة استخدامها،
عند السعي إلى تطوير سير العمل القابل للتكرار للقيام بالتحليلات ، يجب على المرء تصميم جدول بيانات يكون قابلا للقراءة والفهم لكل من الكمبيوتر و البشر، وحتى قبل البدء في جمع البيانات ، يجب عليهم التفكير في ما يجعل تحليل البيانات الخاصة بهم سهلا،
ومن الأفضل تجنب معالجة البيانات وتحليلها في جداول البيانات ، على وجه الخصوص ، لأنها تؤدي أن يكون سير العمل غير قابل للتكرار،
ويعد استخدام برنامَج إدارة الإصدارات (version control) وجعل البيانات للقراءة فقط من ممارسات إدارة البيانات الإضافية التي يمكن أن تمنع وقوع الحوادث.

Use a README [{term}`def<README>`] file and and other structure choices to explain naming conventions.
هذا سيوضح للآخرين ما تعنيه أسماء الملفات والرؤوس ، وما هي المعايير التي يجب مراعاتها عند تصميم سير عمل التحليل،
إذا كنت تعمل في فريق ، فيجب أن تهتم بشكل خاص بالاتفاقيات وتأكد من اتباع الجميع لها.

To learn more about data organisation in spreadsheets, you may have a look at the Data Carpentry lessons for [Social Scientists](https://datacarpentry.org/spreadsheets-socialsci/) and [Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/).

To read about recommended practices, see {cite:ps}`Broman2018data`

See also a blogpost with [resources for using spreadsheets in research and moving onto other tools](https://www.software.ac.uk/blog/2021-11-05-resources-using-spreadsheets-research-and-moving-other-tools).

