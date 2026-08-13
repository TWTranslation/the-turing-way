(rr-rdm-metadata)=

# التوثيق (documentation) والبيانات الوصفية (metadata)

لا فائدة من توفر البيانات إذا كان لا يمكن فهمها، فبدون بيانات وصفية (metadata) لتوفير المصدر والسياق لا يمكن استخدام هذه البيانات بفعالية،
فعلى سبيل المثال، يكون جدول الأرقام عديم الفائدة إذا لم تصف العناوين ما تحتويه الأعمدة/الصفوف.
ولذلك ينبغي أن تتأكد من أن مجموعات البيانات المفتوحة تتضمن بيانات فوقية متسقة، أي معلومات عن البيانات حتى يتم وصف البيانات وصفا كاملا.
ويتطلب ذلك أن يتم تسجيل المعلومات المصاحبة للبيانات في الوثائق والبيانات الوصفية.

(rr-rdm-metadata-documentation)=

## التوثيق (documentation)

يوفر التوثيق سياقا لعملك،
فهو يسمح لك في المستقبل و للمتعاونين والزملاء بفهم ما تم القيام به ولماذا،

اذ ان عملية توثيق البيانات يمكن ان تتم على مستويات مختلفة،
فيجب كتابة جميع الوثائق المصاحبة للبيانات بلغة واضحة و بسيطة،
كما يسمح التوثيق لمستخدمي هذه البيانات بالحصول على معلومات كافية لفهم المصدر ونقاط القوة والضعف والقيود التحليلية لها حتى يتمكنوا من اتخاذ قرارات مستنيرة عند استخدامها.

```{figure} ../../../figures/documentation.*
---
name: documentation
alt: The figure goes through a dark wood setting lights along the way. The lights are blocks of text - one can see that these are pieces of documentation. They make it easy for colleagues to find their way. In the darkness one sees another figure - someone got lost in the woods where no documentation was available.
---
Illustration about peer review.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

(rr-rdm-metadata-metadata)=

## البيانات الوصفية (metadata)

البيانات الوصفية هي معلومات حول البيانات والواصفات التي تسهل فهرستها واكتشافها،
و غالبًا ما تكون البيانات الوصفية مخصصة للقراءة الآلية،

فعند إرسال هذه البيانات إلى سجل بيانات (data repository) موثوق به ، يتم إنشاء البيانات الوصفية المقروءة آليًا بواسطة هذا السجل،
وإذا لم تكن البيانات في السجل ، فيمكن إضافة ملف نصي يحتوي على بيانات وصفية يمكن قراءتها آليًا كجزء من التوثيق.

- يؤثر نوع البحث وطبيعة البيانات على نوع التوثيق الضروري.
- The level of documentation and metadata [{term}`def<Metadata>`] will vary according to the project, and the range of people the data needs to be understood by.
- Examples of documentation may include items like [data dictionaries](https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary) (see [here for a template](https://data.nal.usda.gov/data-dictionary-blank-template)) or codebooks, protocols, logbooks or lab journals, README files, research logs, analysis syntax, algorithms and code comments.
- يجب تعريف المتغيرات وشرحها باستخدام قواميس البيانات أو كتب النص البرمجي.
- يجب تخزين البيانات في ملفات ذو هياكل هرمية و منطقية، مع استخدام ملف اقرأني (README) لوصف الهيكل،
  The README file is helpful for others and will also help you find your data in the future {cite:ps}`Fuchs2018documentation`.
  See the [README template from Cornell](https://cornell.app.box.com/v/ReadmeTemplate) for an example.
- من أفضل الممارسات استخدام معايير تعريف بيانات المجتمع المعترف بها لتسهيل دمج  مجموعة البيانات (Dataset).

(rr-rdm-metadata-standards)=

### معايير المجتمع - البيانات الوصفية (metadata)

يعد استخدام المعايير التي يحددها المجتمع للبيانات الوصفية (metadata) أمرًا مهما للبحث القابل للتكرار (reproducible) ويسمح بمقارنة البيانات غير المتجانسة من مصادر ومجالات وتخصصات متعددة.
كما أن معايير البيانات الفوقية هي أيضا معايير محددة التخصصات.
For example, for brain data, the [Brain Imaging Data Structure](https://doi.org/10.25504/FAIRsharing.rd1j6t) is the standard to use.
بيد أنه لا يجوز لكل تخصص أن يستخدم معايير البيانات الفوقية.
You can see if your discipline uses metadata standards through [FAIRsharing](https://fairsharing.org/), a resource to identify and cite the metadata or identifier schemas, databases or repositories that exist for your data and discipline.

In this case, a text file with discipline specific metadata can be added as part of the documentation.

Want to learn more about Metadata and Metadata Standards? Watch an [introduction video](https://commons.esipfed.org/node/1422).

(rr-rdm-metadata-pid)=

### PID Metadata

{abbr}`PID (Persistent Identifier)` metadata is metadata submitted to PID registration agencies, most repositories handle PID metadata automatically through API integration, it enables your work to be discoverable across disciplines and platforms.

PID metadata includes core properties like:

- Creator names and affiliations
- Title and description
- Publication date and resource type
- Relationships to other research outputs (such as citations or dataset-paper links)

Unlike domain-specific metadata (such as the Brain Imaging Data Structure for neuroimaging data), PID metadata follows standardized schemas that are discipline agnostic.
Both types of metadata are valuable - PID metadata enables broad discoverability while domain-specific metadata captures the detailed context needed for reuse within your field.

Learn about how repositories generate PID metadata and the distinction between these metadata types in our [chapter on persistent identifiers](#rr-rdm-pid-metadata).

(rr-rdm-readme)=

## README for datasets

A README file provides information about data (or software) and is intended to help ensure that the data can be correctly interpreted and used, by yourself or others.
A README file is generally shared together with an open dataset, or can be the [landing page of your software/project repository](#pd-project-repo-readme).

README text files should describe the methods used for data collection and analysis and include data/software-specific information (parameters, variables, column headings, symbols used).
See [Make a README](https://www.makeareadme.com/) for more information on why README files are important and how you can set up your own README files.

### README tips and examples

- Create one README file for each dataset
- Name the file README
- Use plain text file (README.txt or README.md). Or use README.pdf when text formatting is important for your file.

Example templates:

- [Cornell Template](https://cornell.app.box.com/v/ReadmeTemplate)
- [4TU.ResearchData’s guidelines for readme files](https://data.4tu.nl/s/documents/Guidelines_for_creating_a_README_file.pdf) (pdf)

(rr-rdm-metadata-tagging)=

## Tagging

Tags are keywords assigned to files, and a way to add metadata to a file to organise them more flexibly.
While a file can only be in one folder at a time, it can have an unlimited number of tags.

Some tips include:

- Use short tag names (one or two words)
- Be consistent with tags
- Not all file formats allow tags, and when files are transferred tags may be stripped

See [Tagging and Finding Your Files by MIT libraries](https://libguides.mit.edu/metadataTools)) for more information.

(rr-rdm-metadata-resources)=

## Additional Resources

- Videos on [Data Description](https://www.youtube.com/watch?v=sg3P_V8PIes) & [Documentation and Data Quality](https://www.youtube.com/watch?v=3ByfQWDcavg) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- Example of data documentation by {cite:ps}`Larsen2021Documentation`
- [Webinar: The Data You Document are the Data We Love](https://youtu.be/SoFxBN-Jnbg?t=1133)
- [Slides: FAIRify your data: data documentation and metadata](https://osf.io/wbr7t/)
- [Controlled vocabularies for the social sciences: what they are, and why we need them](https://odissei-data.nl/en/2022/10/controlled-vocabularies-for-the-social-sciences-what-they-are-and-why-we-need-them/)
- [Research Data Management: Metadata](https://libguides.ucd.ie/data/metadata)
- Data dictionaries and codebooks by {cite:ps}`Buchanan2021dictionaries`.
