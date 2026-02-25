(rr-rdm-storage)=

# تخزين وتنظيم البيانات

قد يكون فقدان البيانات كارثيا لمشروعك البحثي وقد يحدث كثيرًا،
ولكن يمكنك منع فقدان البيانات عن طريق انتقاء حلول تخزين مناسبة ونسخ بياناتك إحتياطيا بشكل متكرر.

```{figure} ../../../figures/version-control.*
---
height: 500px
name: version-control
alt: Two images are shown to represent the benefits of using version control. On the left, there is an image of two people rummaging through a blue box on top of a table. The box is full of jumbled documents and the people look confused and frustrated. The documents are named "final 2" and "let this be the final". On the right, the same two people look happy and are searching through files organised clearly in a blue filing cabinet. There are "V1, V2, V3 and V4" separations organising the files.
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-storage-where)=

## مكان تخزين البيانات

- Most institutions will provide a _network drive_ that you can use to store data.
- _Portable storage media_ such as memory sticks (USB sticks) are more risky and vulnerable to loss and damage.
- _Cloud storage_ provides a convenient way to store, backup and retrieve data.
  يجب عليك التحقق من شروط الاستخدام قبل استخدامها لبيانات البحث الخاصة بك.

خاصة إذا كنت تتعامل مع بيانات شخصية أو حساسة، فأنت تحتاج إلى التأكد من أن خيار السحابة متوافقة مع أي قواعد لحماية البيانات التي تكون مرتبطة بها،
ولإضافة طبقة أمان إضافية، يجب تشفير الأجهزة والملفات عند الحاجة.

قد توفر مؤسستك حلول تخزين محلية وسياسات أو إرشادات تقيد ما يمكنك إستخدامه،
لذلك ، نوصيك بالتعرف على سياساتك وتوصياتك المحلية.

When you are ready to release the data to the wider community, you can also search for the appropriate databases and repositories in [FAIRsharing](https://fairsharing.org/databases), according to your data type, and type of access to the data.
Learn more about this in the {ref}`rr-rdm-sharing` subchapter.

(rr-rdm-storage-organisation)=

## تنظيم البيانات

To organise your data, you should use a clear folder structure to ensure that you can find your files.
We encourage you to use an existing template.
An open source project created a quite complete one at https://github.com/tonic-team/Tonic-Research-Project-Template

```{figure} ../../../figures/file-management-manual.jpg
---
name: Folder structure for research data

alt: A protagonist has a file with "readme" written on it and brings it to another person standing in front of a filing cabinet. The cabinet has three drawers labelled "data", "code", and "results".
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

- تأكد من أن لديك ما يكفي من الملفات (الفرعية) بحيث يمكن تخزين الملفات في الملف الصحيح ولا يتم توزيعها في ملفات لا تنتمي اليها، أو يتم تخزينها بكميات كبيرة في ملف واحد.
- أستخدم بنية ملف واضحة،
  يمكنك هيكلة الملفات استنادا إلى الشخص الذي قام بإنشاء البيانات/الملف، من حيث التسلسل الزمني (شهر، سنة، جلسات)، لكل مشروع (كما تم في المثال أدناه)، أو بناء على أسلوب/معدات التحليل أو نوع البيانات.
- Avoid overlapping or vague folder names, and do not use personal data in folder/file names.

(rr-rdm-storage-organisation-examples)=

### أمثلة على تنظيم البيانات

- Download [this](http://nikola.me/folder_structure.html) folder structure by Nikola Vukovic
- You can pull/download folder structures using GitHub:
  [This template](https://github.com/bvreede/good-enough-project) by Barbara Vreede, based on [cookiecutter](https://github.com/cookiecutter/cookiecutter), follows recommended practices for scientific computing by [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- See [this template](https://osf.io/4sdn3/) by Chris Hartgerink for file organisation on the [Open Science Framework](https://osf.io/).
- [How to Organize Your Digital Files](https://www.nytimes.com/wirecutter/guides/how-to-organize-your-digital-files/) by Melanie Pinola.
- [Project structure videos by Danielle Navarro](https://www.youtube.com/watch?v=u6MiDFvAs9w&list=PLRPB0ZzEYegPiBteC2dRn95TX9YefYFyy&index=1) (with [slides](https://slides.djnavarro.net/project-structure/#1)).

### More Information on Data Organisation

- [How to organise your data and code](https://renebekkers.wordpress.com/2021/04/02/how-to-organize-your-data-and-code) by Rene Bekkers.

(rr-rdm-storage-conventions)=

## اتفاقيات تسمية الملفات

قم بهيكلة أسماء ملفاتك وإعداد نموذج لها،
For example, it may be advantageous to start naming your files with the date each file was generated (such as `YYYYMMDD`).
مما سيؤدي إلى فرز الملفات الخاصة بك زمنيا وإنشاء معرف فريد لكل ملف،
تكون الأداة المساعدة لهذه العملية واضحة عندما تقوم بإنشاء ملفات متعددة في نفس اليوم والتي قد تحتاج إلى إصدار لتجنب الكتابة فوق بعضها البعض.
File names should be friendly to both machines and humans.

بعض النصائح الأخرى لتسمية الملف:

- Use the date or date range of the experiment: `YYYYMMDD`
- استخدم نوع الملف
- استخدم اسم الباحث / الأحرف الأولى من اسمه
- استخدم رقم إصدار الملف (v001 ، v002) أو اللغة المستخدمة في المستند (ENG)
- لا تجعل أسماء الملفات طويلة جدًا (قد يؤدي ذلك إلى تعقيد عمليات نقل الملفات)
- Avoid special characters `()?\!@\*%{[<>` and spaces
- Hyphens `-` and underscores `_` can be used to separate related and unrelated chunks, respectively
- Keep in mind that some operating systems are case-sensitive, some are not
- Avoid personal data in file names

يمكنك تفسير إتفاقية تسمية الملف في ملف اقرأني ( README.txt) بحيث يصبح أيضا واضحا للآخرين ما تعنيه أسماء الملفات.

For further guidance on file naming:

- [Jenny Bryan’s ‘naming things’ presentation](https://speakerdeck.com/jennybc/how-to-name-files) (or watch the [5 minute summary](https://youtu.be/ES1LTlnpLMk))
- [MIT's recommendations on File naming and folder hierarchy](https://libraries.mit.edu/data-management/store/organize/)
- [8 step guide on how to set up your file naming convention](https://resolver.caltech.edu/CaltechAUTHORS:20200601-161923247)
- [Project structure slides by Danielle Navarro](https://djnavarro.net/slides-project-structure/#9)

(rr-rdm-storage-renaming)=

### File renaming tools

If you want to change your file names you have the option to use bulk renaming tools.
Be careful with these tools, because changes made with bulk renaming tools may be too rigorous if not carefully checked!

Some bulk file renaming tools include:

- [Bulk Rename Utility](http://www.bulkrenameutility.co.uk/Main_Intro.php), [WildRename](http://www.cylog.org/utilities/wildrename.jsp), and [Ant Renamer](http://www.antp.be/software/renamer) (for Windows)
- [Renamer](https://renamer.com/) (for MacOS)
- [PSRenamer](http://www.cylog.org/utilities/wildrename.jsp) (for MacOS, Windows, Unix, Linux)

(rr-rdm-storage-backups)=

## النسخ الاحتياطية

لتجنب فقدان البيانات، يجب اتباع الممارسات الجيدة للنسخ الاحتياطي.

- يجب أن يكون لديك نسختان أو ثلاث نسخ من ملفاتك
- يجب أن تخزن في على ما لا يقل عن 2 وسائط تخزين مختلفة
- يجب أن تخزن في مواقع مختلفة

Backups are ideally done automatically and should take into consideration your institute's guidelines.
كلما زادت أهمية البيانات وكلما في كثير من الأحيان تغيرت مجموعتها، كلما توجب عليك نسخها،
إذا كانت ملفاتك تشغل مساحة كبيرة وثبت أن نسخها إحتياطيا لها تحديات أو تكاليف باهظة، فقد ترغب في إنشاء مجموعة من المعايير عندما تقوم بالنسخ الاحتياطي لهذه البيانات،
This can be part of your {ref}`Data Management Plan<rr-rdm-dmp>`.

Watch this video on [Safe data storage and backup](https://www.youtube.com/watch?v=bgbbToXHgW0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).



