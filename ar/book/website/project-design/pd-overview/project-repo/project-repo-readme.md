(pd-project-repo-readme)=

# الصفحة الرئيسية - الملف التمهيدي اقرأني (README file)

الصفحة الرئيسية لمشروعك هي أول شيء سيراه الزوار الجدد لسجل مشروعك،
ففي السجل الذي على الإنترنت، مثل جيت هاب (GitHub)، تسمى الصفحة الرئيسية ب 'اقرأني (README)' التي تعادل الصفحة الرئيسية لموقع إلكتروني (website) .

> تعد ملفات اقرأني (README file) بمثابة سجادة الترحيب لمشروعك - فهي تمنحك فرصة لجذب المساهمين والمستخدمين المحتملين من خلال إظهار قيمة مشروعك، - [Mozilla Open Leadership](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

لتوضيح مشروعك بشكل فعال ودعوة القراء للمساهمة في مشروعك ، يجب أن يغطي ملف اقرأني (README file) الخاص بك:

- ماذا تفعل ولمن ولماذا.
- ما الذي يجعل مشروعك مميزًا ومثيرًا للاهتمام.
- كيفية البدء.
- أين يمكن العثور على المصادر الرئيسية.

فكر في تصميم صفحة رئيسية تجذب أكبر قدر ممكن من القراء المتنوعين والمختلفين وتوفر جميع المعلومات المفيدة دون إرباك المساهمين،
بالنسبة لمشروع البرمجيات (software) ، قدم إرشادات حول التثبيت والاختبار والنشر والمتطلبات الأخرى لتشغيل البرنامج الخاص بك،
See this [template by PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template).

For more details, see [this presentation](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) by the [Open Life Science](https://openlifesci.org/) training and mentoring program.
Also, see this [short workshop by Hao Ye](https://ha0ye.github.io/CW21-README-tips/) with a [README template](https://ha0ye.github.io/CW21-README-tips/template_README.html) to get you started.

```{note}
**Three lessons about README**

- Know your users and what they need
- Get users doing powerful things quickly
- Watch out for jargon!

Source: Hao Ye. (2021, March). Collaborations Workshop 2021 Mini-Workshop: README tips to make your project more approachable (Version v1.0.0). Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## Case Study: _The Turing Way_

Using [_The Turing Way_ README file](https://github.com/the-turing-way/the-turing-way/blob/main/README.md) as an example, we describe what a good README file looks like.

_The Turing Way_ README file includes the following details provided in chronological order:

1. اسم المشروع هو العنوان الرئيسي في الجزء العلوي من الصفحة.
2. A set of [GitHub badges/shields](https://github.com/badges/shields) (You can create your own badge [here](https://shields.io/)).
   GitHub shields are clickable buttons that provide concise actions related to the project, which in _The Turing Way_ include the following:
   [![Read the book](https://img.shields.io/badge/read-the%20book-blue.svg)](https://book.the-turing-way.org)
   [![Join our tinyletter mailing list](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://buttondown.com/turingway)
   [![Join the chat at https://gitter.im/the-turing-way/the-turing-way](https://img.shields.io/gitter/room/the-turing-way/the-turing-way?logo=gitter)](https://gitter.im/the-turing-way/the-turing-way)
   [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853)
   [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/the-turing-way/the-turing-way/blob/main/CONTRIBUTING.md)
3. روابط إلى النسخة المترجمة من ملفات اقرأني (README file) للسماح للقراء بقراءتها بلغتهم المفضلة.
4. جملة واحدة تقدم رؤية المشروع وهدفه وجمهوره المستهدف.
5. جدول للمحتوى يوفر روابط سريعة الوصول لأقسام مختلفة من ملف اقرأني (README file).
6. أقسام مختلفة مع التفاصيل والروابط المناسبة:

- حول المشروع: الحافز والخلفية
- الفريق: من هم أعضاء الفريق
- المساهمة: روابط لإرشادات المساهمة ومدونة قواعد السلوك (Code of Conduct)
- الاستشهاد بمنهج تورينج (The Turing Way): تعليمات للإشهاد بالمشروع
- اتصل بـ: تفاصيل الاتصال بقائدي المشروع

أخيرًا ، نقدم قائمة كاملة بالمساهمين في المشروع،
This contributors table is updated using the [all-contributors bot](https://allcontributors.org) that acknowledges all kinds of contributions including those that 'do not push code'.
