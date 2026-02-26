(rr-licensing-data)=

# ترخيص البيانات (Data Licenses)

مثل ترخيص البرمجيات (software license) ،ترخيص البيانات (data license) تمكن لشخص آخر التصرف بالبيانات التي تنشئها أو تمتلكها والتي تجعلها متاحة للآخرين من خلال ، على سبيل المثال ،سجل البيانات (data repository)،
تختلف تراخيص البيانات بناءً على معايير مختلفة ، مثل:

- الإسناد إلى المالك الأصلي.
- الإذن لإعادة توزيع أو تعديل الأصل.
- إدراج نفس الترخيص مع المشتقات أو إعادة التوزيع.

ونتيجة لذلك ، تتأثر إمكانية الوصول إلى بياناتك بترخيص البيانات الذي تختاره.

(rr-licensing-data-cc)=

## تراخيص المشاع الإبداعي (Creative Commons)

CC licenses, although not tailored for data, can be used as data licenses in some cases, such as CC0 for public domain data.
The Creative Commons website provides a [summary page](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` outlining all the available licenses, explained with visual symbols as discussed in {ref}`rr-licensing-documentation`.

(rr-licensing-data-cc-cc0)=

### تكريس عملك للعموم مع المشاع الإبداعي صفر (CC0)

يعمل المشاع الإبداعي صفر (CC0) كآلية تفاني عامة ، حيث تتنازل عن جميع حقوق النشر لبياناتك،
هذا يعني أنه يمكن لأي شخص تعديل عملك أو إعادة توزيعه أو البناء عليه،
علاوة على ذلك ، باستخدام المشاع الإبداعي صفر (CC0)، فإنك تفقد الحق في الإسناد،
بدلاً من ذلك ، عليك الاعتماد على معايير مثل ممارسات الاستشهاد الجيدة في المجتمعات الأكاديمية حتى يتم الاعتراف بك كمنشئ،
و قد اختارت العديد من المنظمات ، مثل المتاحف والهيئات الحكومية والناشرين العلميين ، المشاع الإبداعي صفر (CC0) للوصول إلى جزء على الأقل من بياناتهم،
In many instances, data repositories maintained by universities recommend CC0 as the default option, such as the [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=

## رخصة قاعدة البيانات المفتوحة  (Open Data Commons)

توفر رخصة قاعدة البيانات المفتوحة  (Open Data Commons) ثلاثة تراخيص يمكن تطبيقها على البيانات تحديدًا،
The [webpages](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` of each of these licenses include human-readable summaries, with the ramifications of the legalese explained in a concise format.

(rr-licensing-data-odc-pddl)=

### تكريس الملك العام والترخيص (PDDL)

يعتبر تكريس الملك العام والترخيص (PDDL) مشابهًا لـ المشاع الإبداعي صفر (CC0) ، حيث تتنازل عن جميع حقوقك في البيانات التي تضعها في المجال العام،
It comes with a [set of recommended community norms](https://opendatacommons.org/licenses/pddl/norms.html), which are not mandatory to include and do not form a legal contract but can be useful to have as a guide to encourage fair, open sharing of data.
ومن الممكن أيضًا وضع مجموعة مخصصة من المعايير التي تخدم مجتمع مشاركة البيانات بشكل أفضل.

(rr-licensing-data-odc-odc-by)=

### الإسناد أو ترخيص ODC-BY (فتح إسناد مشاع البيانات)

This license protects your attribution rights as a data owner or creator, just like the **BY** permission mark of CC licenses.
حيث يجب أن يتضمن أي استخدام لقاعدة البيانات الخاصة بك أو توزيعها معلومات عن الترخيص المستخدم مع الأصل.

(rr-licensing-data-odc-odbl)=

### رخصة قاعدة البيانات المفتوحة (ODbL)

تضيف رخصة قاعدة البيانات المفتوحة (ODbL) قيدان آخران إلى ترخيص فتح بيانات المشاع ODC-BY،
The first is that any public uses of your data must be shared with the same license, similar to the CC **SA** permission mark.
والثاني هو أنه في حالة إعادة توزيع أي نسخة من بياناتك بصيغة "مغلقة" (على سبيل المثال ، مع إجراءات الحماية التكنولوجية) ، فمن الضروري أن تكون إعادة التوزيع هذه متاحة أيضًا في إصدار خالٍ من إجراءات الإغلاق هذه.

(rr-licensing-data-differences)=

## ملاحظة حول الاختلافات بين تراخيص المشاع الإبداعي (CC) و فتح إسناد مشاع البيانات (ODC)

على الرغم من أنه قد يبدو أن خيارات الترخيص التي يقدمها المشاع الإبداعي (Creative Commons) و رخصة قاعدة البيانات المفتوحة  (Open Data Commons) متطابقة تمامًا ، إلا أن هناك بعض الاختلافات المهمة.

One difference is the scope of rights that are covered by the license, which is nicely explained [here](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F).
حيث تم عمل تراخيص فتح إسناد مشاع البيانات (ODC) خصيصًا ليتم تطبيقها على البيانات ، وعادةً ما تغطي حقوق قاعدة البيانات فقط،
و من ناحية أخرى ، تعد تراخيص المشاع الإبداعي أكثر عمومية ويمكن تطبيقها على مواد أخرى،
اضافة الى هذا تغطي تراخيص المشاع الإبداعي حقوق النشر والحقوق المجاورة الأخرى.

الفرق الآخر هو توافر وثيقة معايير المجتمع الموحدة مع تكريس الملك العام والترخيص (PDDL)،
فعدم وجود مثل هذا المستند مع المشاع الإبداعي صفر (CC0) يعين عليك الاعتماد على معايير المجتمع ، والتي قد تكون غالبًا غير معلنة أو غير مكتوبة ويمكن أن تختلف من مجتمع إلى آخر ، لضمان الإسناد العادل،
A comparison between the PDDL and CC0 is provided [here](https://opendatacommons.org/faq/).

(rr-licensing-data-options)=

## خيارات الترخيص الأخرى

من الممكن أيضًا اختيار تراخيص البيانات الأخرى التي ربما تم تطويرها مع وضع حالة استخدام محددة أو مجتمع بعين الاعتبار أو التي ليست في نطاق الاستخدام العالمي،
These include licenses that were developed by national governments, such as the [Norwegian License for Open Government Data](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`.
و غالبًا ما تكون هذه التراخيص هي الخيار الموصى به لترخيص البيانات داخل البلد المقابل ، خاصة للبيانات التي تم إنشاؤها أو امتلاكها من قبل هيئاتها العامة،
Another example is the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) or OGL, which was developed by The National Archives, UK.

The [Data Curation Center (DCC) guide](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` on how to license research data expatiates on the licenses discussed in this chapter, and gives more information about [Prepared Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Bespoke Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Multiple Licensing](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) and [Mechanisms for Licensing Data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

If you would like to read more about the challenges and finer points of licensing, [this article](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3320472) is a great resource to get you started.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
