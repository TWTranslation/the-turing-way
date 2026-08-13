(rr-rdm-sharing)=

# مشاركة وأرشفة البيانات

(rr-rdm-sharing-motivations)=

## دوافع مشاركة البيانات

هناك العديد من الأسباب لمشاركة بياناتك البحثية للعموم وسنقوم بالتطرق الى بعض منها.

1. للسماح بإمكانية قابلية التكرار (Reproduce) لدراسة علمية بشكل كامل.
2. لمنع ازدواجية الجهود وتسريع التقدم العلمي،
   اذ أن مبالغ كبيرة من الأموال البحثية ومهن الباحثين يمكن أن تهدر في مشاركة جزء صغير فقط من البحث في شكل منشورات.
3. لتسهيل التعاون وزيادة تأثير ونوعية البحث العلمي.
4. لإتاحة نتائج بحثية مفتوحة للمصلحة العامة، نظرًا لأن البحث غالبًا ما يتم تمويله من القطاع العام.

You can read more about why data should be available, and why some data should remain closed, in the {ref}`Open Data section <rr-open-data>`.

```{figure} ../../../figures/birds-of-open-data.*
---
height: 400px
name: birds-of-open-data.*
alt: Two birds in a fountain of open data. One asks "You mind if I reuse this data?" The other answers "Go ahead! We can even work together on it!"
---
Birds of Open Data. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. [](doi:10.5281/zenodo.3332807).
```

(rr-rdm-sharing-steps)=

## خطوات لمشاركة بياناتك

### الخطوة 1: حدد البيانات التي تريد مشاركتها

Not all data can be made openly available, due to ethical and commercial concerns (see the {ref}`Open Data section <rr-open-data>`), and you may decide that some of your intermediate data is too large to share.
على هذا النحو ، تحتاج أولاً إلى تحديد البيانات التي تحتاج أن تشاركها مع الاخرين حتى يتمكنوا من تكرار (Reproduce) بحثك.

### الخطوة 2: اختر سجل بيانات (data repository) أو منصة مشاركة أخرى

Data should be shared in a formal, open, and indexed data repository [{term}`def<Repository>`] where possible so that it will be accessible in the long run.
Suitable data repositories by subject, content type or location can be found at [Re3data.org](https://www.re3data.org/), and in [FAIRsharing](https://fairsharing.org/databases) where you can also see which standards (metadata and identifier) the repositories implement and which journal/publisher recommend them.
Pay attention to whether a repository assigns DOI.
See our [chapter on persistent identifiers](#rr-rdm-pid) to learn more about how you can link your data to other research objects.

A few public data repositories are [Zenodo](https://zenodo.org/), [Figshare](https://figshare.com/), [Harvard Dataverse](https://dataverse.harvard.edu/), [4TU.ResearchData](https://data.4tu.nl/info/en), and [Dryad](https://datadryad.org/).
See the [NIH list of Generalist Repositories](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/generalist-repositories) for more data repositories.

### الخطوة 3: اختر ترخيصًا (Licence) واربطه بورقتك ونصك البرمجي (code)

So that others know what they can do with your data, you need to apply a licence [{term}`def<License>`] to your data.
The most commonly used licences are [Creative Commons](https://creativecommons.org/choose/), [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), or an [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/index.html).
و للحصول على فائدة أكبر أثناء مشاركة البيانات ، تأكد من ارتباط كل من ورقتك و نصك البرمجي (code) ببياناتك ، والعكس صحيح ، للسماح للآخرين بفهم مشروعك بشكل أفضل.
See {ref}`rr-licensing` for more information.

### الخطوة 4: قم بتحميل بياناتك ووثائقك

In line with the {ref}`FAIR principles <rr-rdm-FAIR>`, upload the data in open formats as much as possible and include sufficient documentation and metadata so that someone else can understand your data.
ومن الضروري أيضًا التفكير في تنسيقات الملفات التي يتم توفير المعلومات بها،
كما يجب تقديم البيانات في تنسيقات منظمة وموحدة لدعم قابلية التشغيل البيني وإمكانية التتبع وإعادة الاستخدام الفعال،
وفي كثير من الحالات ، سيتضمن ذلك توفير البيانات بتنسيقات متعددة وموحدة ، بحيث يمكن معالجتها بواسطة أجهزة الكمبيوتر واستخدامها من قبل الأشخاص.

(rr-rdm-sharing-resources)=

## مصادر إضافية لمشاركة البيانات

- '[How can you make research data accessible?](https://www.software.ac.uk/how-can-you-make-research-data-accessible)': a blog that contains five steps to make your data more accessible
- The European Commission's [data guidelines](https://open-research-europe.ec.europa.eu/for-authors/data-guidelines)
- Videos on [Data sharing and reuse](https://www.youtube.com/watch?v=4igGBCggU0Y) & [Data Preservation and Archiving](https://www.youtube.com/watch?v=J76yTp8XE-0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- [Webinar: Why share your data?](https://www.ebi.ac.uk/training/online/courses/bringing-data-life-data-management-biomolecular-sciences/why-share-your-data/)
- [Webinar: Publishing and citing data in practice by Jez Cope](https://youtu.be/PpMOkTnBMlI)
- Coursera Videos from [Research Data Management and Sharing](https://www.coursera.org/learn/data-management) on the [Benefits of Sharing](https://www.coursera.org/lecture/data-management/benefits-of-sharing-IPZ0h), [Why Archive Data?](https://www.coursera.org/lecture/data-management/why-archive-data-lcQ2m), and [Why is Archiving Data Important?](https://www.coursera.org/lecture/data-management/why-is-archiving-data-important-04Gji)
- [Blog: Ask not what you can do for open data; ask what open data can do for you](http://blogs.nature.com/naturejobs/2017/06/19/ask-not-what-you-can-do-for-open-data-ask-what-open-data-can-do-for-you/)
- {cite:ps}`Levenstein2018sharing`

(rr-rdm-data-availability-statement)=

## بيان توفر البيانات

بمجرد أن تكون بياناتك متاحة ، من المهم التأكد من أن الأشخاص يمكنهم العثور عليها عند قراءة المقالة المرتبطة بها،
كما يجب عليك الاستشهاد بمجموعة البيانات الخاصة بك مباشرةً في المقالة بحثية في الأماكن التي تكون ذات صلة بها ، وتضمين اقتباسًا في قائمة المراجع الخاصة بك ، بالإضافة إلى تضمين بيان توفر البيانات في نهاية المقالة بحثية (على غرار قسم الإعتراف و شكر)،
See {ref}`cm-citable-cite-data` for some examples.

