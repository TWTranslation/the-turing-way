(rr-licensing-compatibility)=

# توافق التراخيص

إذا كنت تستخدم مكونات خارجية متعددة في برنامجك ، فقد ينتهي بك الأمر بعدة قيود مختلفة على ترخيص العمل المدمج،
حيث إذا تعارضت هذه القيود ، لا يمكنك قانونيًا توزيع النتيجة (إذا كان هناك برنامج احتكاري ، فقد لا تتمكن قانونيًا من القيام بالعمل المشترك على الإطلاق).

If two licenses specify incompatible constraints on the license of the combined work, then they are _incompatible_.

(rr-licensing-software-derivative)=

## البرمجيات المشتقة (Derivative Software)

ضمن فئة البرمجيات الحرة ، هناك العديد من الفئات الفرعية ، والتي تتميز بما هو مسموح به عند صنع البرمجيات المشتقة،
اذ هناك طريقتان أساسيتان لعمل عمل مشتق من برنامج أو مكتبة: تعديله (تفرع) ، أو دمجه مع برنامج آخر (على سبيل المثال باستخدام مكتبة في برنامجك)،
وبطبيعة الحال، يمكنك التعديل ثم الجمع أيضاً.

يؤدي تعديل البرنامج إلى برنامج جديد مشتق من الأصل،
هذا مشابه لاشتقاق الإصدار الجديد من الكتاب الأصلي،
كل من النسختين الأصلية والمعدلة هي أعمال خاضعة لقانون حقوق النشر ، وكلاهما قد يكون مرخصًا.

وكمثال على الجمع بين البرمجيات، تخيلوا برنامجاً ألف يستخدم مكتبتين موجودتين مسبقاً هما باء وجيم. البرنامج الكامل ألف سيتألف من المكتبة باء، المكتبة جيم، وبعض التعليمات البرمجية دال التي تربط المكتبات معا وربما تضيف وظائف إضافية،
كل عنصر من هذه العناصر الأربعة هو عمل مؤلف بترخيص،
يمكن أحيانًا الإشارة إلى البرنامج ألف باسم "العمل المشترك" أو "العمل الكامل" أو "العمل الأكبر".

تضع مختلف تراخيص البرمجيات الحرة قيودًا مختلفة على كيفية ترخيص الإصدارات المعدلة والأعمال المدمجة.

تضيف تراخيص الحقوق المتروكة بعض القيود على ترخيص الأعمال المشتقة،
مثل التراخيص المسموح بها ، تسمح لك بتوزيع البرنامج دون تغيير بموجب هذا الترخيص،
ومع ذلك ، إذا قمت بنشر ثنائي ، فيجب عليك تضمين مصدر النص البرمجي أيضًا،
حيث يجب توزيع النسخ المعدلة بموجب نفس الترخيص مثل الأصل ؛ فلا يسمح لك بتغيير الترخيص.

على سبيل المثال، رخصة جنو العمومية (GNU) (GPL) ، غير متوافقة مع تراخيص الملكية ، لأنها تتطلب العمل المشترك بموجب ترخيصها ، مع عدم السماح بقيود إضافية،
Having a part of the work under a proprietary license is such an additional restriction, so you cannot distribute such a combination, unless the copyright owner of the GPL code gives special permission.
However, GPL codebases often have many contributors and you need all of their permission. This is an intended feature of the license which is by design hostile to being re-licensed in a proprietary fashion.
{ref}`Contributor License Agreements (CLAs)<rr-licensing-edge-clas>` can be used by GPL projects circumvent this by empowering a single party to make decisions about relicensing if they want to allow for dual licensing of GPL or AGPL codebases.

عند إنشاء عمل مشترك ، يمكن إجراء تمييز إضافي،
_Strong_ copyleft licenses on a component require a combined work to be licensed under the same license as the component.
و في المثال أعلاه ، إذا تم توزيع المكتبة باء بموجب ترخيص حقوق متروكة قوية مثل رخصة جنو العمومية (GNU) الترخيص العام (GPL) ، فيجب توزيع البرنامج ألف بموجب نفس الترخيص.

_Weak_ copyleft licenses allow the combined work (A) to be distributed under any license, as long as the source for the licensed component (B) is also made available under its original license.
و قد يطلبون أيضًا أن مستلم العمل المشترك يمكنه إعادة ربط الوحدات بعد تعديل المكون.

(rr-licensing-software-overview)=

## نظرة عامة للصلاحيات

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">الحقوق المتروكة (Copyleft)</th>
            <th rowspan="2">الرخصة</th>
            <th rowspan="2">الملكية</th>
        </tr>
        <tr>
            <th>القوة</th>
            <th>الضعيف</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>الاستخدام لأي شيء</th>
            <td>نعم</td>
            <td>نعم</td>
            <td>نعم</td>
            <td>في بعض الأحيان</td>
        </tr>
        <tr>
            <th>التغييرات الخاصة</th>
            <td>نعم</td>
            <td>نعم</td>
            <td>نعم</td>
            <td>نادرًا</td>
        </tr>
        <tr>
            <th>توزيع الأصل</th>
            <td>نفس الترخيص ، مع المصدر</td>
            <td>نفس الترخيص ، مع المصدر</td>
            <td>نفس الترخيص ، أيضا ثنائي-فقط<sup>1</sup></td>
            <td>نادرًا</td>
        </tr>
        <tr>
            <th>توزيع التعديل</th>
            <td>نفس الترخيص ، مع المصدر</td>
            <td>نفس الترخيص ، مع المصدر<sup>2</sup></td>
            <td>أي ترخيص ثنائي فقط</td>
            <td>نادرًا</td>
        </tr>
        <tr>
            <th>التوزيع المشترك</th>
            <td>نفس الترخيص ، مع المصدر</td>
            <td>أي ترخيص ، إضافات ثنائية</td>
            <td>أي ترخيص ثنائي فقط</td>
            <td>نادرًا</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote"><sup>1</sup>Under any license for the MIT license <sup>2</sup>Relicensing LGPL to GPL is allowed
      </div>
      تمنح التراخيص المسموح بها أكبر مجموعة من الأذونات للمستخدمين، فقد تتطلب تراخيص الحقوق المتروكة إعادة توزيع المصدر الأصلي أو المعدل لاستخدام نفس الترخيص ، مع تراخيص الحقوق المتروكة الضعيفة التي تسمح باختيار تراخيص مختلفة للعمل المشترك، و نادرًا ما توفر تراخيص الملكية أي أذونات تتجاوز حق استخدام البرنامج.
    </caption>
</table>

عندما تستخدم أجزاء مختلفة من البرامج معًا لحل مشكلة ، وترغب في توزيع النتيجة ، فإليك الأسئلة التي يجب عليك الإجابة عليها:

- ما هي الأعمال المنفصلة الموجودة ، وما هو المشتق من ماذا؟
- هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟
- كيف يجب ترخيص العمل (الأعمال)؟

يوضح القسم التالي بعض الأمثلة على كيفية القيام بذلك و تبسيط معظم هذه الامور.

(rr-licensing-compatibility-examples)=

## أمثلة لتبسيط معظم هذه الامور

Many of the examples in this section relate to [xtas](http://xtas.net).
والتي هي عبارة عن أدوات معالجة لغة بايثون (Python)
تستخدم مكتبات و برامج و بيانات منفصلة من مشاريع مختلفة وبالتالي توفر مجموعة متنوعة من الأمثلة الممتازة.

```{figure} ../../../figures/xtas-overview96.*
---
name: xtas-overview96
alt: A graphical overview of xtas. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Underneath this, there are three side-by-side squares, representing respectively Python libraries, software, and data, that are used by xtas. Within the Python libraries square, there are three boxes. The first box contains the words "BSD", "MIT" and "ALv2". The second box contains "LGPLv2.1". The third box contains "GPLv2+". Within the Software square, there are four boxes. The first box contains "Web Service". The second box contains "LGPL v2.1+". The third box contains "Research only", and the fourth box contains "GPL 2+/3+". The Data square also contains four boxes. The first box contains "CC BY-SA 3.0". The second box contains "Research Only". The third box contains "No license, US" and the fourth box contains "CoNLL'02 only".
---
A graphical overview of xtas.
```

أداة تحليل النصوص (xtas) مكتوبة بلغة بايثون (Python) ، وتستخدم عددًا من مكتبات هذه الأخيرة المرخصة بموجب تراخيص مجانية مشتركة،
حيث يتضمن ذلك تساهل بي إس دي (BSD) و تراخيص معهد ماساتشوستس للتكنولوجيا (MIT)  ،تساهل ترخيص أباتشي (Apache) الإصدار 2.0 (ALv2) ، ورخصة جنو العمومية الصغرى  (GNU Lesser General Public License) الإصدار 2.1 ، ورخصة جنو العمومية  (GNU General Public License) الإصدار 2 أو الأحدث (+GPLv2).

(للملاحظة فإن الاعتماد على الرخصة العامة للإصدار  2.0 (GPLv2) مع مكتبة بايثون (Python) تعد متروكة ، ولكن من أجل هذه الأمثلة ، سنفترض أنها لا تزال موجودة.)

يتم توزيع النص البرمجي لبايثون (Python) الخاص بـأداة تحليل النصوص (xtas) بموجب ترخيص أباتشي (Apache) الإصدار 2.0،
و نظرًا لأن مؤلفي أداة تحليل النصوص (xtas) يمتلكون حقوق النشر ، فيمكنهم ترخيصها بأي طريقة يحلو لهم (على الرغم من وجود منطقة غير واضحة تتعلق بتبعية الترخيص العام (GPL) ، يمكنك النظر أدناه لمزيد من التوضيح)،
اذ لا يوزع هؤلاء المؤلفون أي أعمال مشتركة أو ثنائية ، ولكن في الأمثلة أدناه ، سنفترض وجود عمل مشترك ، حتى نتمكن من التفكير في كيفية ترخيصها.

في الأمثلة التالية ، سنقوم بتبسيط معظم هذه الامور وإلقاء نظرة على واحد أو عدد قليل من التبعيات .

(rr-licensing-compatibility-examples-apachevsbsd)=

### أباتشي (Apache) مقابل بي إس دي (BSD)

```{figure} ../../../figures/xtas-snowball96.*
---
name: xtas-snowball96
alt: An illustration of the xtas vs. Snowball example.  A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Snowball Stemmer" and "Python lib BSD".
---
An illustration of the xtas vs. Snowball example.
```

xtas uses [Snowball](https://snowballstem.org/), a Python-based stemming library. و قد تم نشر هذه المكتبة بموجب ترخيص بي إس دي (BSD)،
فبالنظر إلى أداة تحليل النصوص (xtas) و سنوبول (Snowball) فقط ، يمكننا الإجابة على الأسئلة الثلاثة على النحو التالي:

#### ما هي الأعمال المنفصلة الموجودة ، وما هو المشتق من ماذا؟

هناك ثلاثة أعمال: سنوبول (Snowball) ، أداة تحليل النصوص (xtas) للنص البرمجي ببايثون، و أداة تحليل النصوص (xtas) للعمل المشترك،
إذ أن العمل المشترك مشتق من سنوبول و أداة تحليل النصوص للنص البرمجي ببايثون،و هما عملان مستقلان.

للملاحظة فإن ترخيص أباتشي الإصدار 2.0  (ALv2) و رخصة جنو العمومية الصغرى الإصدار 2.1  (LGPL) يذكران بوضوح أن مصدر النص البرمجي (source code) الذي يُقصد به العمل مع المكتبة ليس عملاً مشتقًا ، في حين أن الملف الثنائي الناتج عن الربط (بثبات أو بديناميكية) القطع معًا ،
في حين التراخيص الأخرى ، بما في ذلك رخصة جنو العمومية (GPL) ، لا تقدم أي بيان صريح حول هذا الموضوع.

على حد علمي ، لا توجد سوابق قضائية في هذا الشأن ؛ سنفترض أن هذا هو الحال في هذه الأمثلة.

#### هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟

سنوبول (Snowball) مرخصة بموجب ترخيص متساهل،
حيث يمكن إعادة توزيعها بموجب هذا الترخيص ، ولا توجد قيود على ترخيص الأعمال المشتقة،
لذالك يمكن لمؤلفي أداة تحليل النصوص (xtas) ترخيصها بالطريقة التي يريدونها.

#### كيف يجب ترخيص العمل (الأعمال)؟

تم ترخيص النص البرمجي ببايثون لأداة تحليل النصوص (xtas) ، وعمل أداة تحليل النصوص المشتركة ، بموجب ترخيص أباتشي الإصدار 2.0.

إذا قام مؤلفو أداة تحليل النصوص (xtas) بإعادة توزيع سنوبول (Snowball) ، فيجب عليهم القيام بذلك بموجب ترخيص بي إس دي (BSD) الممنوح من قبل مؤلفي سنوبول،
(فلا يمكنهم منح أذونات إضافية لهذه الاخيرة ، نظرا لأنهم لا يمتلكون حقوق الطبع والنشر ، وستكون القيود الإضافية غير قابلة للتنفيذ لنفس السبب.)

(rr-licensing-compatibility-examples-apachevslgpl)=

### أباتشي (Apache) مقابل رخصة جنو العمومية الصغرى (LGPL)

```{figure} ../../../figures/xtas-chardet96.*
---
name: xtas-chardet96
alt: An illustration of the xtas vs. chardet example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "chardet" and "Python lib LGPLv2.1".
---
An illustration of the xtas vs. chardet example.
```

xtas uses [chardet](https://pypi.org/project/chardet/), a Python library for detecting the character set used in a string of text. و قد تم نشرها بموجب رخصة جنو العمومية الصغرى للإصدار 2.1 (GNU Lesser General Public License)،
لذالك بالنظر إلى أداة تحليل النصوص (xtas) و شارديت (chardet) فقط ، يمكننا الإجابة على الأسئلة الثلاثة على النحو التالي.

#### ما هي الأعمال المنفصلة الموجودة ، وما هو المشتق من ماذا؟

هناك ثلاثة أعمال: شارديت (chardet)، و النص البرمجي ببايثون لأداة تحليل النصوص (xtas) ، والعمل المشترك،
فالعمل المشترك مشتق من شارديت (chardet) و النص البرمجي ببايثون لأداة تحليل النصوص (xtas) ،
أما الأعمال الأخرى فهي أعمال مستقلة.

#### هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟

تعتبر الشارديت (chardet) مرخصة بموجب ترخيص ضعيف للحقوق المتروكة ، لذا يمكن إعادة توزيعها بموجب شروط ذلك الترخيص،
ويمكن ترخيص الأعمال المشتقة بموجب أي ترخيص،
However, the LGPLv2.1 requires that the recipient can (and is allowed to) modify the library and use the modified library with the derivative work.

#### كيف يجب ترخيص العمل (الأعمال)؟

يمكن ترخيص أداة تحليل النصوص (xtas) و النص البرمجي ببايثون لأداة تحليل النصوص (xtas)  بأي طريقة يريدها المؤلفون ، لذلك استخدموا ترخيص أباتشي (Apache) لإصدار 2.0،
If they distribute chardet, they must do so under the LGPLv2.1 license granted by its copyright owners.

(rr-licensing-compatibility-examples-apachevsgplv2)=

### أباتشي (Apache) مقابل رخصة جنو العمومية الإصدار 2.0 (GPLv2)

```{figure} ../../../figures/xtas-unidecode96.*
---
name: xtas-unidecode96
alt: An illustration of the xtas vs. unidecode example. The large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas vs. unidecode example.
```

xtas previously used [unidecode](https://pypi.org/project/Unidecode/), a Python library for converting text encoded according to The Unicode® Standard into an ASCII approximation of it.
حيث يتم نشر  إيني ديكود (unidecode) تحت رخصة جنو العمومية  الإصدار 2 أو الأحدث (+GPLv2 )،و بالنظر إلى أداة تحليل النصوص (xtas) و  إيني ديكود (unidecode) فقط ، يمكننا الإجابة على الأسئلة الثلاثة على النحو التالي.

#### ما هي الأعمال المنفصلة الموجودة ، وما هو المشتق من ماذا؟

هناك ثلاثة أعمال:  إيني ديكود (unidecode) ، أداة تحليل النصوص (xtas) للنص البرمجي ببايثون، و العمل المشترك، اذ أن العمل المشترك مستمد من  إيني ديكود (unidecode) و  أداة تحليل النصوص (xtas) للنص البرمجي ببيثون.

لم يتم تحديد ما إذا كانت أداة تحليل النصوص (xtas) للنص البرمجي ببايثون هو عمل مشتق من الإيني ديكود (unidecode) من قبل القانون ، حيث لا يوجد أي قانون قضائي في هذا الشأن،
وينص ترخيص أباتشي (Apache) و رخصة جنو العمومية الصغرى (LGPL)  بشكل واضح على أنه ليس لغرض هذه التراخيص ،ولكن رخصة جنو العمومية (GPL) لا تحتوي على مثل هذا البند.

نظرًا لأنه تم تطويرها بشكل منفصل ، ولا يوجد نص برمجي من الإيني ديكود (unidecode) في النص البرمجي لأداة تحليل النصوص (xtas) ، فإننا نفترض هنا أنه ليس عملًا مشتقًا.

#### هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟

إيني ديكود (unidecode) مُرخص بموجب ترخيص حقوق متروكة قوية ، لذلك يُعاد توزيعها وفقًا لشروط ذلك الترخيص، حيث يجب أن تكون الأعمال المشتقة مرخصة بموجب نفس الترخيص.

إيني ديكود (unidecode) مرخصة بموجب رخصة جنو العمومية (GPL) للإصدار 2 أو الأحدث، This is known as a _disjunctive license_.
ويقدم مالكو حقوق النشر الخاصة بـإيني ديكود (unidecode) للجميع رخصة جنو العمومية الإصدار 2 (GPLv2)،أيضًا الإصدار 3 (GPLv3) ، بالاضافة إلى أي إصدار لاحق قد يتم انشاءه في المستقبل،
و قد يختار المستخدم قبول أي من هذه التراخيص ، أو مجموعة منها ، إذا أراد نسخ العمل أو عمل أعمال مشتقة.

#### كيف يجب ترخيص العمل (الأعمال)؟

إذا قام مؤلفو أداة تحليل النصوص (xtas) بتوزيع  إيني ديكود (unidecode) ، فيجب عليهم القيام بذلك بموجب الإصدار 2 أو الأحدث من رخصة جنو العمومية (GPL) ، لأن إزالة التراخيص بشكل تعسفي من النص البرمجي لشخص آخر لا معنى له،
فيجب توزيع العمل المشترك لأداة تحليل النصوص (xtas) تحت نفس التراخيص أو مجموعة فرعية منها،
وبالتالي يمكن ترخيصها للنص البرمجي ببايثون بأي طريقة يريدونها.

يجب أن يختار مؤلفو أداة تحليل النصوص (xtas) ترخيصًا للنص البرمجي ببايثون المتوافق مع واحد على الأقل من التراخيص التي يمكن توزيعها بموجب إيني ديكود (unidecode) بحيث يمكن للآخرين تجميع الأعمال المشتركة وتوزيعها،
ويتوافق ترخيص أباتشي الإصدار 2.0  (ALv2) مع رخصة جنو العمومية  الإصدار 3.0 (GPLv3) (ولكن ليس مع الإصدار 2.0 (GPLv2) لأسباب فنية)، لذا يمكنهم استخدامه هنا.

يجب بعد ذلك ترخيص العمل المشتركة بموجب رخصة جنو العمومية (GPL) الإصدار 3 أو الأحدث،
إذا كان من المهم استخدامه بموجب رخصة جنو العمومية ، الإصدار 2 (GPLv2) أيضًا ،فيمكن لمؤلفي أداة تحليل النصوص (xtas) ترخيص أداة تحليل النصوص للنص البرمجي ببايثون بموجب كل من  ترخيص أباتشي الإصدار 2.0  (ALv2) و رخصة جنو العمومية الإصدار 2 (GPLv2) (بمعنى أنهم يقدمون كلا الترخيصين ، ويمكن للمستخدم اختيار قبول أحدهما أو كليهما ) ، والعمل المشترك بموجب رخصة جنو العمومية (GPL) الإصدار 2 أو الأحدث.

أخيرًا ، قد يتقرر لاحقًا أن أداة تحليل النصوص (xtas) لمصدر النص البرمجي ببايثون هو عمل مشتق من  إيني ديكود (unidecode) لأنه يستدعي داخله،
حتى إذا لم يتم تضمين أي من  إيني ديكود (unidecode) في العمل ، فيجب على هؤلاء المؤلفين توزيع أداة تحليل النصوص للنص البرمجي ببايثون تحت واحد على الأقل من رخص جنو العمومية (GPL) التي الإيني ديكود (unidecode) توزع بموجبها،
في هذه الحالة ، يمكنهم تقديم أداة تحليل النصوص (xtas) بموجب مجموعة تراخيص أباتشي الإصدار 2.0  (ALv2) و رخصة جنو العمومية الإصدار اعلى من 2 (+GPLv2).

أبسط حل ، في هذه الحالة ، سيكون ببساطة ترخيص أداة تحليل النصوص للنص البرمجي ببايثون والعمل المشتق تحت رخصة جنو العمومية الإصدار 3.0.

كما هو واضح الآن ، فإن التبعيات التي تخضع لترخيص قوي للحقوق المتروكة تعقد حياتك إذا كنت تريد أن يتمكن الأشخاص من عمل أعمال احتكارية بناءً على برنامجك.

(rr-licensing-compatibility-examples-apachevsall)=

### أباتشي (Apache) مقابل بي إس دي (BSD) مقابل رخصة جنو العمومية الصغرى (LGPL) مقابل رخصة جنو العمومية الإصدار 2.0 (GPLv2)

```{figure} ../../../figures/xtas-all-python-libs96.*
---
name: xtas-all-python-libs96
alt: An illustration of the xtas and all Python libraries example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below this, there are three squares. The first square contains the words "Snowball" and "Python lib BSD". The second square contains "chardet" and "Python lib LGPLv2.1". The third square contains the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas and all Python libraries example.
```

الآن ، سننظر في الأمثلة الثلاثة المذكورة أعلاه في نفس الوقت.

#### ما عدد الأعمال المنفصلة الموجودة ، وما هو مشتق من ماذا؟

هناك خمسة أعمال: سنوبول (Snowball) و شارديت (chardet) و  إيني ديكود (unidecode) و أداة تحليل النصوص للنص البرمجي ببايثون و العمل المشترك لأداة تحليل النصوص، حيث أن العمل المشترك مشتق من جميع مكوناته.

#### هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟

المكونات الأربعة غير أداة تحليل النصوص (xtas) تخضع لتراخيص البرمجيات الحرة ، ويمتلك مؤلفو أداة تحليل النصوص حقوق النشر للنص البرمجي ببايثون، لذلك يمكن توزيع جميع المكونات الخمسة بواسطة هؤلاء المؤلفين،
وتسمح كل من بي إس دي (BSD) و رخصة جنو العمومية الصغرى  لإصدار 2.1 (LGPLv2.1) و رخصة جنو العمومية لإصدار اعلى من 2 (+GPLv2) بترخيص العمل المشترك بموجب الترخيص العام (GPL) الإصدار 2 أو أعلى ، لذلك هناك ترخيص واحد على الأقل يمكن من ترخيص العمل المشترك بموجبه.

#### كيف يجب ترخيص العمل (الأعمال)؟

يجب ترخيص أداة تحليل النصوص للنص البرمجي ببايثون بموجب ترخيص أباتشي للإصدار 2.0 والعمل المشترك بموجب رخصة جنو العمومية (GPL) للإصدار 3  أو الأحدث،
(See the {ref}`unicode example <rr-licensing-compatibility-examples-apachevsgplv2>` above for alternatives.)

### استدعاء برامج خارجية

xtas can run the [Stanford CoreNLP program](https://stanfordnlp.github.io/CoreNLP/), which is written in Java and distributed under the GNU GPL version 3 or later. فعندما يستدعي المستخدم وظيفة أداة تحليل النصوص (xtas) المتطابقة ،ليتم تشغيلها لكور إن إل بي (CoreNLP)، ويتم إرسال مدخلات المستخدم إلي كور إن إل بي عبر قناة، ثم يتم إعادة مخرجاتها إلى المستخدم أو معالجتها بشكل أكبر.

```{figure} ../../../figures/xtas-corenlp1-96.*
---
name: xtas-corenlp1-96
alt: An illustration of the xtas vs. CoreNLP example. The square represents the combined work xtas. Within this square, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Stanford CoreNLP" and "Java program GPLv3+".
---
An illustration of the xtas vs. CoreNLP example.
```

ويتمثل أحد تفسيرات هذا الموقف أنه لا يوجد اختلاف بين استدعاء وظيفة من مكتبة و أي توزيع لأداة تحليل النصوص، بما في ذلك كور إن إل بي (CoreNLP) ، يجب أن يكون تحت رخصة جنو العمومية لإصدار 3.0 او الأحدث،
و المساهمة في هذا التفسير هو صنيع أن أداة تحليل النصوص سيقوم بتنزيل كور إن إل بي وتثبيته تلقائيًا إذا لزم الأمر.

```{figure} ../../../figures/xtas-corenlp2-96.*
---
name: xtas-corenlp2-96
alt: Another illustration of the xtas vs. CoreNLP example. The square on the left represents the combined work xtas. Within this square, there is a rectangle representing the xtas Python code, licensed under the Apache License v2. On the right is a separate square representing CoreNLP, with the text "Stanford CoreNLP" and "Java program GPLv3+". Between the squares are two arrows, one at the top pointing from xtas to CoreNLP, and one at the bottom pointing from CoreNLP to xtas.
---
Another illustration of the xtas vs. CoreNLP example.
```

تفسير آخر هو أن أداة تحليل النصوص (xtas) و كور إن إل بي (CoreNLP) هما عملان منفصلان حيث أن أداة تحليل النصوص تتواصل فقط مع كور إن إل بي عبر معيار واجهة المستخدم الخاصة به.

في هذا التفسير ، تعد أداة تحليل النصوص (xtas) برنامجًا منفصلاً يساعد المستخدم على استخدام برنامج كور إن إل بي (CoreNLP) من لغة بايثون (Python) ، وليس عملًا مشتقًا من كور إن إل بي،
حيث يمكن للمرء أن يعتبر أداة تحليل النصوص مشابه لمثبت الحزمة وواجهة أوامر (shell) هنا ، والتي من الواضح أنها ليست أعمال مشتقة من الحزم التي يثبتها أو البرامج التي يبدأها.

بموجب هذا التفسير ، يمكن توزيع أداة تحليل النصوص ككل (لا تشمل كور إن إل بي (CoreNLP)) بموجب أي ترخيص معين (يخضع للقيود التي تفرضها تبعياتها الأخرى بالطبع).

ومن الناحية العملية ، لا يقوم مؤلفو أداة تحليل النصوص (xtas) بتوزيع كور إن إل بي (CoreNLP) على الإطلاق ؛ اذ يقومون فقط بتوزيع أداة تحليل النصوص للنص البرمجي ببايثون، بموجب ترخيص أباتشي الإصدار 2.0.

### رخصة جنو العمومية الإصدار 3.0 (GPLv3) مقابل رخصة الملكية

In this example project we want to combine the [OpenIFS global circulation model](https://confluence.ecmwf.int/display/OIFS) with the [DALES large-eddy simulation model](https://github.com/dalesteam/dales).
حيث أن كلا النموذجين متاحان كمكتبتين ، لذلك يستلزم المشروع الجمع بين مكتبات نظام تنبؤ متكامل (OpenIFS) و دالاس (Dales) في برنامج واحد.

(هذا مثال مبسط ،اذ أن حقيقة هذا المشروع أكثر تعقيدًا بدرجة أو اثنتين، وما يلي ليس بالضبط ما نقوم به.)

تعتبر مكتبة نظام التنبؤ المتكامل (OpenIFS) (جزء من النص البرمجي للمركز الأوروبي للتنبؤات الجوية متوسطة المدى (ECMWF) ) متاحة بموجب ترخيص خاص يسمح بتشغيل البرنامج وإجراء تعديلات خاصة ، لكنه لا يسمح بتوزيعه أو اشتقاقه،
وقد تم نشر دالاس (Dales) بموجب الإصدار 3 من رخصة جنو العمومية (GPL).

#### ما عدد الأعمال المنفصلة الموجودة ، وما هو مشتق من ماذا؟

هناك أربعة أعمال: نظام تنبؤ متكامل (OpenIFS) ، و دالاس (Dales)، وبقية البرنامج الذي كتبناه ، والجمع بينهم جميعًا، حيث أن العمل المشترك مشتق من مكوناته.

#### هل يمكن توزيع الأعمال المشتقة؟ هل تسمح التراخيص بذلك وهل هي متوافقة؟

لا يسمح ترخيص نظام التنبؤ المتكامل (OpenIFS) بإعادة التوزيع ، لذا لا يمكن توزيعه، ولكن يمكن توزيع دالاس (Dales) تحت رخصة جنو العمومية لإصدار 3.0،
وبالنسبة لبقية البرنامج فهو مكتوب بواسطتنا لذا يمكننا أن نحصل عليه إذا أردنا ذلك.

لا يمكن توزيع العمل المشترك بأكمله ، لأنه يشتمل على نظام تنبؤ متكامل (OpenIFS)،
لذلك إذا لم يتضمن على نظام تنبؤ متكامل ، فسيتعين توزيعه ضمن رخصة جنو العمومية الإصدار 3.0 ، بسبب تبعية دالاس (Dales).

#### هل يمكننا العمل على هذا بشكل خاص دون توزيع أي شيء؟

تسمح رخصة جنو العمومية (GPL) بإجراء تعديلات خاصة على البرامج التي تغطيها ، دون قيود ، بشرط ألا يتم توزيع البرنامج الذي تم تغييره على الإطلاق،
In the case of the AGPL, running a server interacted with in some way by users over a network is equivalent to distribution under the GPL and you would be required to provide any users with the source code.
وقد يسمح ترخيص نظام التنبؤ المتكامل (OpenIFS) أيضًا بإجراء تعديلات خاصة،
حتى نتمكن من العمل على هذا المشروع (وإعداد وتشغيل الأعمال المشتركة) دون انتهاك التراخيص ، طالما أننا لا نشارك النتائج مع أي شخص.

ومع ذلك ، إذا أردنا التعاون مع شخص ما خارج مؤسستنا ، فهذا يعني أننا نتبادل المواد بين الكيانات القانونية المختلفة ، والتي تعتبر توزيعًا،
حيث يمكننا القيام بذلك باستخدام النص البرمجي الخاص بنا (والذي يمكننا حتى نشره بشكل مفتوح تحت ترخيص أباتشي الإصدار 2.0  (ALv2)) ومع دالاس (Dales)، ولكن ليس باستخدام نظام التنبؤ المتكامل (OpenIFS) أو أي أعمال مدمجة.

#### ما هي الخيارات الأخرى الموجودة في هذا النوع من المواقف؟

يمكننا محاولة تقسيم النظام إلى برامج مستقلة تعمل على عمليات منفصلة وتتواصل مع بعضها البعض عبر واجهات عامة موثقة جيدًا،
وبهذه الطريقة ، لن يكون هناك عمل مشترك ،بل فقط عدد قليل من الأعمال المستقلة التي تتبادل المعلومات،
ومع ذلك ، حتى لا يتم اعتباره عملاً منفردًا ،لمدى انفصال البرامج يجب ان يكون غير واضح.

يمكننا أيضًا أن نطلب من مالكي حقوق النشر لنظام التنبؤ المتكامل (OpenIFS) و دالاس (Dales) الحصول على إذن لمشاركة الأعمال المشتركة بين مؤسستنا والطرف الخارجي،
وهذا من شأنه أن يزيل كل شك، ولكن قد لا يكون عمليا بشكل عام.

هناك خيار آخر يتمثل في استبدال إحدى التبعيات بواحدة قمنى بكتابتها،
عادة ما يكون هذا غير عملي ، بسبب قيود الوقت ولأن الإصدار الجديد لن يكون له النسب العلمية للإصدار الحالي.

تكمن المشكلة الأساسية هنا في أن رخصة جنو العمومية (GPL) تحاول أن تجعل الجميع مشرفين مشتركين على البرنامج الذي نستخدمه ، بينما تحاول البرامج الاحتكارية الاحتفاظ بالسيطرة في أيدي مالك واحد.

وبالتالي فإن الجمع بينهما في مشروع واحد معقد ولا يخلو من المخاطر القانونية ، ويجب تجنب ذلك،
وإذا لم يكن ذلك ممكناً، يجب أن تخطو بحذر.
