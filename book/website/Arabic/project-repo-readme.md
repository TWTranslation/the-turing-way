(pd-project-repo-readme)=
# صفحة الهبوط - ملف

صفحة هبوط لمشروعك هي أول شيء سيراه الزوار الجدد لمستودع مشروعك. في مستودع على الإنترنت، مثل GitHub، تسمى صفحة الهبوط هذه 'README' التي تعادل الصفحة الرئيسية لموقع على شبكة الإنترنت.

> ملفات README هي نقطة الترحيب لمشروعك - فهي تعطيك فرصة للربط بين المساهمين والمستخدمين المحتملين من خلال إظهار قيمة مشروعك. - [القيادة المفتوحة لموزيلا](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

لتوصيل مشروعك بفعالية ودعوة القراء للمساهمة في مشروعك، يجب أن يغطي ملف README ما يلي:
* ماذا تفعلون، لمن، ولماذا.
* ما الذي يجعل مشروعك مميزة ومثيرة للاهتمام.
* كيفية البدء.
* أين يمكن العثور على الموارد الرئيسية.

فكر في تصميم صفحة هبوط جذابة لأكبر عدد ممكن من القراء وتوفر كل المعلومات المفيدة دون أن تطغى على المساهمين بك. بالنسبة لمشروع البرمجيات، قم بتوفير تعليمات بشأن التثبيت والاختبار والنشر وغير ذلك من المتطلبات لتشغيل برنامجك. شاهد هذا القالب [بواسطة PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template).

لمزيد من التفاصيل، راجع [هذا العرض التقديمي](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) بواسطة [برنامج Open Life Science](https://openlifesci.org/) للتدريب والتوجيه. أيضًا ، راجع [ورشة العمل القصيرة هذه بواسطة هاو ي](https://ha0ye.github.io/CW21-README-tips/) مع [قالب README](https://ha0ye.github.io/CW21-README-tips/template_README.html) للبدء بها.

```{note}
**ثلاثة دروس حول README**

- اعرف مستخدميك وما يحتاجونه
- اجعل المستخدمين يفعلون أشياء قوية بسرعة
- احترس من أجل الذوق!

المصدر: هاو ي. (2021، آذار/مارس). حلقة عمل التعاون 2021 المصغرة: نصائح README لجعل مشروعك أكثر قابلية للاقتراب (الإصدار 1.0.0). Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## دراسة حالة: _طريق التوفير_

باستخدام [_طريقة التوفير_ ملف README](https://github.com/alan-turing-institute/the-turing-way/blob/main/README.md) كمثال، نحن نصف ما يبدو عليه ملف README جيد.

_طريق الترقيق_ يتضمن ملف README التفاصيل التالية المقدمة بالترتيب الزمني:
1. اسم المشروع كرأس أعلى.
2. مجموعة من [شارات/دروع GitHub](https://github.com/badges/shields) (يمكنك إنشاء شارة خاصة بك [هنا](https://shields.io/)). دروع GitHub هي أزرار يمكن النقر عليها وتوفر إجراءات موجزة ذات صلة بالمشروع، والتي في _طريق الترقيق_ تشمل ما يلي: [![قراءة الكتاب](https://img.shields.io/badge/read-the%20book-blue.svg)](https://the-turing-way.netlify.com) [![انضم إلى قائمتنا البريدية القصيرة](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://tinyletter.com/TuringWay) [![الانضمام إلى المحادثة على https://gitter.im/alan-turing-Institute/the-turing-way](https://img.shields.io/gitter/room/alan-turing-institute/the-turing-way?logo=gitter)](https://gitter.im/alan-turing-institute/the-turing-way) [![ديوي](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853) [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)
3. روابط إلى النسخة المترجمة من ملفات README للسماح للقراء بقراءتها بلغتهم المفضلة.
4. وجملة واحدة تقدم كل منها رؤية المشروع وأهدافه والجمهور المستهدف.
5. جدول للمحتوى الذي يوفر روابط سريعة لمختلف أقسام ملف README
6. الأقسام المختلفة ذات التفاصيل والروابط الملائمة:
  - حول المشروع: الدافع والخلفية
  - الفريق : من هم أعضاء الفريق
  - المساهمة: الصلات مع المبادئ التوجيهية المتعلقة بالإسهام ومدونة قواعد السلوك
  - الاستشهاد بطريق الشحن: تعليمات للإشهاد بالمشروع
  - اتصل بـ: تفاصيل الاتصال بالعملاء المحتملين للمشروع

وأخيرا، نقدم قائمة كاملة بالمساهمين في المشروع. يتم تحديث جدول المساهمين هذا باستخدام [كل المساهمين](https://allcontributors.org) الذي يعترف بجميع أنواع المساهمات، بما في ذلك تلك التي 'لا تدفع التعليمات البرمجية'.
