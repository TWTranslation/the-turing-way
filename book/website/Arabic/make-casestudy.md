(r-make-casestudy-rp)=
# دراسة حالة إفرادية: ورقة قابلة للتكرير باستخدام صنع

In the tutorial above we used IMDB movie ratings for different genres as example data. تم الحصول على هذه البيانات من مجموعة بيانات [مشاركة على كاجل](https://www.kaggle.com/orgesleka/imdbmovies#imdb.csv) كملف CSV. يبدو الملف مثل هذا:

```text
fn,tid,title,wordsInTitle,url,imdbRating,ratingCount,duration,year,type,nrOfWins,nrOfNominations,nrOfPhotos,nrOfNewsArticles,nrOfUserReviews,nrOfGenre,Action,Adult,Adventure,Animation,Biography,Comedy,Crime,Documentary,Drama,Family,Fantasy,FilmNoir,GameShow,History,Horror,Music,Musical,Mystery,News,RealityTV,Romance,SciFi,Short,Sport,TalkShow,Thriller,War,Western
titles01/tt0012349,tt0012349,Der Vagabund und das Kind (1921),der vagabund und das kind,http://www.imdb.com/title/tt0012349/,8.4,40550,3240,1921,video.movie,1,0,19,96,85,3,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0015864,tt0015864,Goldrausch (1925),goldrausch,http://www.imdb.com/title/tt0015864/,8.3,45319,5700,1925,video.movie,2,1,35,110,122,3,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0017136,tt0017136,Metropolis (1927),metropolis,http://www.imdb.com/title/tt0017136/,8.4,81007,9180,1927,video.movie,3,4,67,428,376,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0
titles01/tt0017925,tt0017925,Der General (1926),der general,http://www.imdb.com/title/tt0017925/,8.3,37521,6420,1926,video.movie,1,1,53,123,219,3,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```

أثناء وجود هذا على السطح يبدو مثل ملف CSV عادي، عندما تحاول فتحه مع مكتبة Python CSV أو Pandas، أو R's `read_csv`، أو حتى `readr:read_csv`، لم يتم تحميل البيانات بشكل صحيح. يحدث هذا لأن ملف CSV يستخدم حرف هروب `\` لأسماء الأفلام التي تحتوي على فواصل في ولا يكتشف قارئ CSV هذا الاختلاف تلقائياً في تنسيق CSV .  اتضح أن هذه مشكلة شائعة لعلماء البيانات: ملفات CSV غالبا ما تكون فوضوية وتستخدم *لهجة غير شائعة*: مثل محددات الغريب و أحرف اقتباس غير شائعة.  بشكل جماعي، يهدر علماء البيانات تماما بعض الوقت على هذه المشاكل التي تخوض البيانات حيث يتطلب الأمر تدخلا يدويا. But this problem is also not that easy to solve: to a computer a CSV file is simply a long string of characters and every dialect will give you *some* table, so how do we determine the dialect accurately in general?

مؤخرا، قام باحثون من معهد آلان تورينغ بعرض طريقة تحقق 97 في المائة من الدقة على مجموعة كبيرة من ملفات CSV، مع تحسين بنسبة 21 في المائة مقارنة بالنهج القائمة بشأن ملفات CSV غير القياسية. كان هذا البحث يمكن استنساخه من خلال استخدام تصنيع وهو متاح من خلال مستودع على الإنترنت: [https://github.com/alan-turing-institute/CSV_Wrangling](https://github.com/alan-turing-institute/CSV_Wrangling).

فيما يلي سنقوم بوصف مقتضب لما يبدو عليه ماكيفيل لمثل هذا المشروع .  للملف الكامل، يرجى الاطلاع على المستودع. يتألف Makefile من من عدة أقسام:

1. جمع البيانات: لأن البيانات تجمع من مصادر عامة، يحتوي مستودع على نص Python الذي يسمح لأي شخص بتنزيل البيانات من خلال أمر بسيط `إنشاء البيانات`.

2. جميع الأرقام والجداول والثوابت المستخدمة في الورقة يتم إنشاؤها بناء على نتائج التجارب. لجعل من السهل إعادة إنشاء جميع النتائج من نوع معين، `. أهداف HOY` التي تعتمد على جميع النتائج من هذا النوع (حتى تتمكن من تشغيل `إعداد الأرقام`). القواعد الخاصة بـ هذه المخرجات تتبع نفس النمط المتبع في الأرقام الواردة في البرنامج التعليمي أعلاه.  يتم إنشاء الجداول كملفات لاتيكس بحيث يمكن أن تكون مباشرة مدرجة في مصدر لاتيكس للمخطوط.

3. وتتبع قواعد نتائج الكشف توقيعا محددا:

   ```makefile
   $(OUT_DETECT)/out_sniffer_%.json: $(OUT_PREPROCESS)/all_files_%.txt
    python $(SCRIPT_DIR)/run_detector.py sniffer $(DETECTOR_OPTS) $<$@
   ```

   يستخدم رمز `%` لإنشاء مخرجات لكل من مصادر ملفات CSV مع قاعدة واحدة في {ref}`rr-make-examples-patternples-rules` والقاعدة يستخدم في {ref}`rr-make-examples-automaticvar` لاستخراج الإدخال و أسماء الملفات.

4. بعض قواعد التنظيف ستزيل ملفات الإخراج التي تستغرق بعض الوقت إلى إنشاءها.  لذلك، تعتمد هذه على هدف `check_Cle` الخاص الذي يطلب من المستخدم تأكيده قبل المتابعة:

   ```makefile
   check_Cle:
    @echo -n "هل أنت متأكد؟ [y/N]" && يقرأ ans && [ $$ans == y ]
   ```

من المهم التأكيد على أن هذا الملف لم يتم إنشاؤه في مرحلة واحدة، ولكن تم إنشاؤه بشكل متكرر. بدأ Makefile كطريقة لتشغيل العديد من طرق الكشف اللهجة على مجموعة من ملفات الإدخال ونمت تدريجيا لتشمل إنشاء الأرقام والجداول من ملفات النتائج. وبالتالي فإن النصيحة لـ باستخدام "جعل من أجل قابلية التكرار" هي *أن تبدأ صغيرة وتبدأ في وقت مبكر*.

Makefile المنشورة في المستودع لا تحتوي على الورقة، ولكن هذا *هو* مضمن في Makefile الداخلية ويتبع نفس البنية مثل تقرير `. df` ملف في البرنامج التعليمي أعلاه. وقد ثبت أن هذا مفيد بشكل خاص للتعاون كمستودع واحد فقط يحتاج إلى المشاركة يحتوي على الكود البرمجي، النتائج والمخطوط.
