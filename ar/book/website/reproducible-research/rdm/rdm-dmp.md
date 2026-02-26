(rr-rdm-dmp)=

# خطة إدارة البيانات

خطة إدارة البيانات (DMP) ، أو خطة إدارة المخرجات ، هي  وثيقة تصف كيفية إنشاء وتخزين واستخدام ومشاركة مخرجات بحثك داخل مشروعك،
فهي تعد وثيقة حية ، حيث يمكن تحديثها في جميع مراحل المشروع البحثي حسب الحاجة.

خطة إدارة البيانات هي خارطة طريق لإدارة بياناتك بكفاءة وأمان،
مما يمنع فقدانها أو اختراقها،
ويمكن التخطيط المسبق لكيفية إدارة بياناتك باستمرار أن يوفر لك الوقت لاحقًا! It can also make it easier to {ref}`share<rr-rdm-sharing>` your data with others and therefore make the data more {ref}`FAIR<rr-rdm-fair>`

```{figure} ../../../figures/data-management-plan.*
---
name: data-management-plan
alt: There are two women in the illustration. The left one is looking distressed and says 'Oh no, my computer crashed! I lost all the data!' The right woman is holding a map which says DMP (Data Management Plan) and is looking happy. She is saying 'Good thing I had a plan! The data is all backed up! 

---
Data Management Plan. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

## A Data Management Plan should provide information on six main topics:

### 1. الأدوار والمسؤوليات

- من المهم مناقشة من هو المسؤول عن المهام المختلفة خلال دورة حياة مشروع البحث،
  وبالتالي ستمنع الارتباك و سوء التواصل لاحقًا في المشروع.
- يجب عليك التحقق من توصيات خطة إدارة البيانات (DMP) ومتطلبات مؤسستك والممول،
  فعادةً ما يكون فريق دعم البحث في المكتبات التابع لمعهدك والموقع الإلكتروني للممول أماكن جيدة للعثور على المعلومات والمساعدة،
  وقد يطلب منك بعض الممولين استخدام قالب خطة إدارة البيانات (DMP) الخاصة بهم،
  You can check if your funder or institute has a DMP using [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. نوع وحجم البيانات التي تم جمعها وتوثيق/البيانات الوصفية التي تم إنشاؤها

- هنا، يمكنك سرد تنسيقات الملفات التي ستستخدمها لتجميع بياناتك ومعالجتها وعرضها،
  فإذا كنت تريد مشاركة نتائج بحثك لاحقا، يفضل إستخدام تنسيقات الملفات المعيارية بدون ترخيص خاص للبرنامج،
  وللتأكد من ذلك، يجب عليك تهيئ ملفاتك أو بدء العمل بهذه التنسيقات في وقت مبكر.
- يمكن التمييز بين أنواع مختلفة من البيانات التي يمكن وصفها في الخطة بشكل منفصل:
  - البيانات الأصلية/الأولية: البيانات التي تم جمعها من المصدر  (احتفظ دائما بنسخة للقراءة فقط من البيانات الأولية حتى تتمكن من العودة إليها لاحقا!).
  - البيانات المعالجة: إصدار من البيانات التي تم تعديلها للتحليل أو المحاكاة الافتراضية.
  - Finalised data: data that is ready to be shared in a publication or data repository (see {ref}`Sharing and archiving data section <rr-rdm-sharing>` for more information).
    Some data repositories, such as [Zenodo](https://zenodo.org/), allow versioning of datasets so that you can update your finalised dataset if you want to release another version.
- All of these types of data will have to be described to be placed into context by using metadata (see the {ref}`Documentation and metadata section<rr-rdm-metadata>`) and adequate documentation which will allow future you, and anyone in your team, to interpret the data.
- من المفيد معرفة الحجم التقريبي للبيانات (ضمن مدى ميغابايت (MB) أو جيجابايت (GB) أو تيرابايت (TB) أو بيتابايت (PB)) في هذه المراحل المختلفة لأن ذلك سيؤثر على حلول التخزين المتاحة لك (ستتم مناقشته في النقطة التالية).

### 3. نوع تخزين البيانات المستخدمة وإجراءات النسخ الاحتياطي المعمول بها

- Check the {ref}`data storage and organisation section<rr-rdm-storage>` for storage and back-up solutions and ways to organise your files
- إن تتبع الأشخاص الذين أجروا تغييرات معينة على بياناتك/نصك البرمجي سيكون مهما، لا سيما بالنسبة للنص البرمجي،
  See the {ref}`Version Control chapter<rr-vcs>` for more information.
- حدد من لديه حق الوصول إلى البيانات ومن يمنح الحق لهذا الوصول،
  حيث يجب أن يكون لدى شخص آخر على الأقل حق الوصول إلى بياناتك ، مثل مشرفك (supervisor)/ الباحث الرئيسي (PI) / رئيس القسم،
  فإذا كنت تدير بيانات حساسة شخصية / تجاريًا ، فيجب منح الوصول فقط للأفراد الذين يتعين عليهم التعامل مع هذه البيانات.

### 4. المحافظة على مخرجات البحث بعد المشروع

- ضع في اعتبارك فيما إذا كان من الممكن أن تصبح مخرجات بحثك متاحة للعموم،Personal data or research outputs needed to apply for patents cannot be publicly shared, see the {ref}`Open data section<rr-open-data>`
  If data cannot be made publicly available you will still have to preserve it for several years, depending on the policies of your country, institute and funder.
- يمكنك الاستعانة بمصادر خارجية لحفظ بياناتك على المدى الطويل في سجل البيانات (data repository)،You can find more information on how to select an appropriate repository in {ref}`sharing and archiving data<rr-rdm-sharing>` section
  - Select repositories using, for example, [FAIRsharing](https://fairsharing.org/) or [Nature's recommended repository list](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), that provide a persistent identifier such as a DOI for your research output.

اذ يجب أن يحتوي السجل على سياسة حفظ تحدد المدة التي سيتم خلالها تنسيق مخرجاتك،وفي حالة الشك ، اتصل بفريق دعم بيانات الأبحاث في المكتبة للحصول على مزيد من المعلومات حول سجلات البيانات.

- For digital preservation, ensure that the research data can be discovered, accessed, used and understood now and in future.
  This requires that you address the technological changes, changing user behavior and new requirements on the computer-aided processing of research data as well as evolving organisational.

### 5. إعادة استخدام مخرجات بحثك من قبل الآخرين

- Select a license when you make your output available on a repository (see the Licensing subchapters on {ref}`data<rr-licensing-data>` and {ref}`software<rr-licensing-floss>` for more information).
  ومن خلال تحديد الترخيص ، فإنك تخبر الآخرين كيف يمكنهم إعادة استخدام بياناتك،
  وفي حالة عدم تحديد ترخيص، لن يتمكن الآخرون من إعادة إستخدام بياناتك دون طلب الإذن منك.
- يمكنك وضع مخرجات البحث في السياق باستخدام نص المقدمة ، مثل ملف اقرأني ( README.txt).
  - See the {ref}`documentation and metadata section<rr-rdm-metadata>`

### 6. Costs

- Check if there are any costs associated with your project
  - Preferred storage solution (during and after the project, see #3-4)
  - تكاليف الموظفين (إذا كنت تحتاج إلى مدير بيانات لإدارة كميات أكبر أو أكثر حساسية من البيانات).
  - Software licenses (such as Electronic Lab Notebooks, see the {ref}`Open notebooks section<rr-open-notebooks>`)
  - Or [indirect costs](https://labrigger.com/blog/2025/02/12/indirect-costs-are-research-costs/) that need to be covered.
  - You can use this [checklist for costs](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) as a guidance, or the [Framework for Costing Research Data Management](https://doi.org/10.5281/zenodo.15465412).

You can use this [checklist](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) to see if you have everything covered in your Data Management Plan.

(rr-rdm-dmp-citable)=

## DMPs as Citable Research Objects

Many funders now encourage or require DMP as part of their open science policies.
Publishing your DMP also allows you to create a living document - you can update it during the project and deposit new versions with new DOIs while maintaining all previous versions.
This creates a traceable record of how your data management evolved throughout the research lifecycle.
See [](#cm-citable-steps-object) for more information on how to make your DMP citable.

(rr-rdm-dmp-tools)=

## DMP tools

There are several platforms or tools that you can use to set up your Data Management Plan:

- [ARGOS](https://argos.openaire.eu/home)
- [DMPonline](https://dmponline.dcc.ac.uk)
- [DMPtool](https://dmptool.org)

See [activeDMPs](https://activedmps.org/) for a full overview.

## Additional Resources

- [UK Data Services data management information](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft Research Data Management portal](https://www.tudelft.nl/en/library/research-data-management)
- [Research Data Management](https://www.scienceeurope.org/our-priorities/research-data/research-data-management/) by Science Europe
- Books
  - {cite:ps}`Briney2015dmp`
- Articles
  - {cite:ps}`Briney2020dmp`
  - {cite:ps}`Hart2016dmp`
  - {cite:ps}`Michener2015dmp`
- Videos
  - [Videos (3-7 min) on data management by Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
  - Video on [elements of a DMP](https://commons.esipfed.org/node/1442).
  - [3 min video on Roles and Responsibilities](https://www.youtube.com/watch?v=Ry0OA9mDTCc)
  - [DMPs by DTU Bibliotek](https://www.youtube.com/watch?v=tvs5_X5rn8w) (20 minutes)
  - [Areas of a Data Management Plan](https://www.youtube.com/watch?v=L3LPv2sB-IE) (7 minute video by Moore Library)
- Definition of [Long Term Preservation](https://www.gesis.org/en/research/research-data-management/long-time-preservation) from the Leibniz Institute of Social Science.
- Planning by [DataOne](https://dataoneorg.github.io/Education/bp_step/plan/) & [USGS](https://www.usgs.gov/data-management/planning)


