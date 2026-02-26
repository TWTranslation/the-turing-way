(rr-open-data)=

# (Open Data) البيانات المفتوحة

يشهد العالم تحولاً عالمياً كبيراً تيسره التكنولوجيا ووسائط الإعلام الرقمية، وتغذيه البيانات والمعلومات،
وينطوي هذا التحول على إمكانات هائلة لتشجيع إجراء بحوث أكثر شفافية، ومساءلة، وكفاءة، واستجابة، وفعالية،
ولا تُنشر سوى نسبة ضئيلة جداً من البيانات الأصلية في المجلات التقليدية،
وعلى الرغم من السياسات القائمة بشأن أرشفة البيانات، فإن بيانات الممارسة اليوم تُخزن في المقام الأول في ملفات خاصة، وليس في مستودعات مؤسسية آمنة، لا يتمكن احد من الوصول لها أو الاطلاع عليها (وفي كثير من الأحيان حتى الباحث الذي أصدر البيانات)،

ويُشكّل هذا النقص في (Data Sharing) مشاركة البيانات عقبةً أمام البحوث الدولية (سواء أكانت أكاديمية، أو حكومية، أو تجارية) لسببين رئيسين هما:

1. من الصعب أو من المستحيل عموماً (Reproduce) إعادة إنتاج دراسة دون البيانات الأصلية،
2. و لا يمكن للباحثين الآخرين إعادة استخدام البيانات أو إدماجها في أعمال جديدة إذا لم يتمكنوا من الوصول إليها،

وبناءاً على ذلك، هناك ثورة عالمية جارية في مجال البيانات تسعى إلى تعزيز التعاون وإنشاء وتوسيع برامج بحوث فعالة تَتَّسم بالكفاءة.
Open data [{term}`def<Open data>`] is crucial to meeting these objectives.
وهي متاحة مجاناً على الإنترنت.
Any user is permitted to download, copy, analyse, re-process, and reuse it for any other purpose with minimal financial, legal, and technical barriers.

وهذا يمثل تحولاً حقيقياً في كيفية عمل البحوث. Funders are starting to require researchers to make their data available and submit data management plans {ref}`Data Management Plans<rr-rdm-dmp>` as part of project proposals.
وفي الوقت الراهن، كثيراً ما يتعيَّن على أي شخص يرغب في استخدام بيانات من أحد الباحثين أن يتصل بذلك الباحث وأن يقدم طلباً،
وإذا كان الوصول إلى البيانات مقيداً، لأسباب أمنية على سبيل المثال، فينبغي توضيح مبررات ذلك،
وإذا كان الوصول إلى البيانات مقيداً، لأسباب أمنية على سبيل المثال، فينبغي توضيح مبررات ذلك،
Free access to and subsequent use of data is of [significant value to society and the economy and also has benefits to researchers](https://blog.datadryad.org/2025/07/24/benefits-of-open-data/).
ولذلك ينبغي أن تكون تلك البيانات مفتوحة بشكل تلقائي وألا تكون مغلقة إلا عند الضرورة،

You can find more about the practical steps to make your data available in the section describing {ref}`Steps to Share your Data <rr-rdm-sharing-steps>` in the subchapter: {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(rr-open-data-barriers)=

## عوائق (Data Sharing) مشاركة البيانات

ويجد العديد من الأكاديميين أن مشاركة البيانات أمر صعب.
Recent surveys {cite:ps}`Stuart2018sharing` conducted amongst researchers list the following reasons:

- تنظيم البيانات بطريقة قابلة للعرض ومفيدة يُعدّ أمراً صعباً (كما ذكر 46 في المائة من الأشخاص)
- الباحثون غير متيقِّنين من حقوق النشر والتأليف والترخيص (كما ذكر 37 في المائة من الأشخاص)،
- كما انه لا يعرف الباحثون أي مستودع يمكن استخدامه لأنواع مختلفة من البيانات (كما ذكر 33 في المائة)

وهذه تحديات ثقافية يمكن التصدي لها في الممارسة المتغيرة التي تمضي قدماً.
بَيد أن هناك أيضاً أسباباً قانونية أو أخلاقية أو تعاقدية تحول أحياناً دون إتاحة البيانات للجمهور بكاملها أو حتى أجزاء منها،
بَيد أن هناك أيضاً أسباباً قانونية أو أخلاقية أو تعاقدية تحول أحياناً دون إتاحة البيانات للجمهور بكاملها أو حتى أجزاء منها،

```{figure} ../../../figures/data-privacy.*
---
height: 500px
name: data-privacy
alt: An image detailing why private data should be used. A person stands next to a well with 'private data' written on it and a padlock around it. It is black and white and blue. The text lists that 'people deserve - dignity, agency, privacy, rights, confirmed consent.'
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barriers-privacy)=

### الخصوصية و (Data Protection) حماية البيانات

تنطوي العديد من مجالات البحث على العمل بالبيانات الشخصية الحساسة، علماً بأن البحوث الطبية هي أوضح مثال على ذلك.
Please see the {ref}`sensitive data<pd-sdp>` chapter for more information about different types of sensitive data.
You can check the {ref}`Managing Sensitive Data Projects<pd-sdpm>` chapter on how you should manage these data.
Particularly the {ref}`Data Privacy Strategies<pd-sdpm-privacy>` section can help you to safely manage and protect sensitive personal data.

(rr-open-data-barriers-consent)=

### الموافقة القانونية

ولكي تُتاح بيانات البحث المجهولة لإعادة الاستخدام في المستقبل، يجب أن تشمل استمارات الموافقة مشاركة هذه البيانات مع باحثين آخرين،
Research so far suggests that study participants are usually less concerned about the data being archived and shared than researchers think {cite:ps}`Kuula2010archiving`.
وينبغي أن تتضمن أوراق المعلومات المقدّمة من المشاركين واستمارات الموافقة كيفية تخزين البيانات البحثية، وحفظها واستخدامها في الأمد الطويل، وكيفية حماية السرية عند الحاجة.

(rr-open-data-barriers-national)=

### البيانات الوطنيَّة والتجاريَّة الحسَّاسة

في كثير من الحالات، يكون من المفهوم أن الشركات لا ترغَب في نشر الكثير من بياناتها،
ويذهب المنطق إلى أنه إذا تم الكشف عن معلومات حسّاسة تجارياً لشركة ما، فإن ذلك من شأنه أن يضّر بالمصالح التجارية للشركة ويُقوِّض قدرتها التنافسية،
ويستند ذلك إلى الاعتقاد بأن الابتكار في الأسواق التنافسيّة لن يحدث إلا بقدر من الحماية للمعلومات،
وإذا ما أنفقت الشركة وقتاً وأموالاً لتطوير شيء جديد، تُعلن تفاصيله بعد ذلك. ثم يستطيع منافسوها نسخه بسهولة دون أن يضطروا إلى استثمار نفس الموارد،
والنتيجة أنه لن يبتكر أحد في المقام الأول،
وعلى نحو مماثل، وفيما يتعلق بمخاوف السلامة العامة، فإن الحكومات غالبًا ما تكون غير مستعدة لنشر البيانات التي تتعلق بقضايا مثل الأمن القومي.
وفي مثل هذه الحالات، قد لا يكون من الممكن جَعل البيانات مفتوحة، أو قد يكون من الممكن فقط مشاركة مجموعات البيانات الجزئية / المحجوبة،

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
