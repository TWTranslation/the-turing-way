(rr-cs-statistical-methods-manuscript)=
# مخطوطة الأساليب الإحصائية

## حول هذه الدراسة الإفرادية

الغرض من دراسة الحالة هذه هو مناقشة المكونات المختلفة لـ إمكانية الاستنساخ البحثي المنفذة في تصميم وإجراء دراسة إحصائية. بالاستعانة بمخططهم، يقدم المؤلفون كتالوج من الأساليب المستخدمة في بحوثهم وإرسالها إلى الأقسام التي نوقشت في هذا {ref}`rr`.

## حول المخطوطة

- **العنوان:** استعراض المنظورات البيزية بشأن اشتقاق حجم العينة لمحاكمات مؤكدة{cite:ps}`Kunzmann20CS`.
- **المؤلفون:** كيفن كونزمان، مايكل ج. غرالنغ، كيم ماي لي، دافيد س. روبرتسون، كاسبار روفيباخ، جيمس م. س. وسبون
- **شهر النشر & سنة**: يونيو 2020

### نظرة عامة

إن المخطوطة {cite:ps}`Kunzmann20CS` نفسها مهتمة بمشكلة استنباط حجم عينة مناسب للتجربة السريرية. هذه مشكلة كلاسيكية في الإحصاءات، وهي مهمة بشكل خاص في الإحصاءات الطبية حيث أن جمع بيانات التجربة مكلف للغاية و يجب معالجة الاعتبارات الأخلاقية. يستعرض المخطوطة ويوسع الطرق لدمج عدم التيقن من التخطيط بشكل منهجي في اشتقاق حجم العينة.

### ملخص الاقتباس

ويمكن الاستشهاد بالمخطوطات في شكل نص بسيط:

> () Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). استعراض المنظورات البيزية بشأن اشتقاق حجم العينات من أجل التجارب المؤكدة. arXiv preprint arXiv:2006.15715.

تنسيق BibTeX:

```
@article{
    kunzmann2020,
      العنوان = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     المؤلف = {كونزمان، وكيفن وغرالنغ، ومايكل ياء، ولي، كيم ماي وروبرتسون، ديفيد س وروفيباخ، كاسبار وواسون، جيمس]،
    مجلة = {arXiv preprint arXiv:2006.15715}،
       سنة = {2020}
}
```

## كتالوج من طرق مختلفة للبحث القابل للاستنساخ

### التحكم في الإصدار

يحتوي مستودع git [https://github.com/kkmann/sample-size-calculation-undercertain](https://github.com/kkmann/sample-size-calculation-under-uncertainty) على جميع التعليمات البرمجية المطلوبة لإنتاج المخطوطة [arXiv:2006.15715](https://arxiv.org/abs/2006.15715) من الصفر. للحصول على تفسير متعمق لأهمية التحكم في الإصدار من أجل البحث القابل للتكرار، انظر {ref}`أنظمة تحكم الإصدار<rr-vcs>`.


### إدارة بيانات البحوث

وفي هذه الحالة بالذات،
{ref}`إدارة البيانات <rr-rdm>` الجوانب ليست مشكلة لأن المخطوطة تعتمد حصرا على أمثلة افتراضية و لا خارجية، البيانات المحمية مطلوبة.


#### برمجة محو الأمية

المخطوطة {cite:ps}`Kunzmann20CS` نفسها مكتوبة ومبنية مع [LaTeX](https://www.latex-project.org/). الملفات المصدر موجودة في المجلد الفرعي `latex/`. تم تفضيل ملفات Plain TeX على حلول البرمجة المألوفة مثل [knitr](https://github.com/rstudio/rmarkdown) لـ [R](https://www.r-project.org/) لتسهيل استخدام محرري LaTeX المخصصين مثل [Overleaf](https://www.overleaf.com/project). غير أن هذا يعني أن جميع الأرقام المستخدمة في المخطوطة تحتاج إلى أن يتم إنشاؤها بشكل منفصل. تم توفير [مذكرة المشتري المخصصة](https://jupyter.org/) `ملاحظات / أرقام - مقابل مانسسكريب.ipynb` التي تجمع بين الكود و أوصاف بدائية .


### بيئة البرامجيات القابلة للاستنساخ

على الرغم من أن هذا يعني أن جميع التعليمات البرمجية المطلوبة لتجميع المخطوطة من الصفر متوفرة في بيئة قائمة بذاتها. وهو ليس كافياً بعد لضمان إمكانية التكرار. تثبيت LaTeX, Jbuyter, و R بنفس المواصفات المطلوبة لتشغيل جميع التعليمات البرمجية يمكن أن يكون تحديا للمستخدمين الأقل خبرة. لتجنب هذا من إبقاء القراء المهتمين من تجربة البرمجة، مجموعة من حزمة بايثون [repo2docker](https://github.com/jupyter/repo2docker) و [BinderHub](https://mybinder.org/) خدمة استضافة مجانية. للحصول على تفاصيل عن هذه التقنيات، انظر الفصل الخاص بـ {ref}`BinderHub<rr-binderhub>`. هذا يسمح للأفراد المهتمين ببدء إصدار تفاعلي من مستودع مع جميع البرامج المطلوبة مثبتة مسبقاً - في الإصدارات الصحيحة تمامًا تمامًا! لاحظ أنه من الممكن توفير *نسخة مستقرة* روابط ثنائية

[![شارة](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAB8lBMVEX///9XmsrmZYH1olJXmsr1olJXmsrmZYH1olJXmsr1olJXmsrmZYH1olL1olJXmsr1olJXmsrmZYH1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olJXmsrmZYH1olL1olL0nFf1olJXmsrmZYH1olJXmsq8dZb1olJXmsrmZYH1olJXmspXmspXmsr1olL1olJXmsrmZYH1olJXmsr1olL1olJXmsrmZYH1olL1olLeaIVXmsrmZYH1olL1olL1olJXmsrmZYH1olLna31Xmsr1olJXmsr1olJXmsrmZYH1olLqoVr1olJXmsr1olJXmsrmZYH1olL1olKkfaPobXvviGabgadXmsqThKuofKHmZ4Dobnr1olJXmsr1olJXmspXmsr1olJXmsrfZ4TuhWn1olL1olJXmsqBi7X1olJXmspZmslbmMhbmsdemsVfl8ZgmsNim8Jpk8F0m7R4m7F5nLB6jbh7jbiDirOEibOGnKaMhq+PnaCVg6qWg6qegKaff6WhnpKofKGtnomxeZy3noG6dZi+n3vCcpPDcpPGn3bLb4/Mb47UbIrVa4rYoGjdaIbeaIXhoWHmZYHobXvpcHjqdHXreHLroVrsfG/uhGnuh2bwj2Hxk17yl1vzmljzm1j0nlX1olL3AJXWAAAAbXRSTlMAEBAQHx8gICAuLjAwMDw9PUBAQEpQUFBXV1hgYGBkcHBwcXl8gICAgoiIkJCQlJicnJ2goKCmqK+wsLC4usDAwMjP0NDQ1NbW3Nzg4ODi5+3v8PDw8/T09PX29vb39/f5+fr7+/z8/Pz9/v7+zczCxgAABC5JREFUeAHN1ul3k0UUBvCb1CTVpmpaitAGSLSpSuKCLWpbTKNJFGlcSMAFF63iUmRccNG6gLbuxkXU66JAUef/9LSpmXnyLr3T5AO/rzl5zj137p136BISy44fKJXuGN/d19PUfYeO67Znqtf2KH33Id1psXoFdW30sPZ1sMvs2D060AHqws4FHeJojLZqnw53cmfvg+XR8mC0OEjuxrXEkX5ydeVJLVIlV0e10PXk5k7dYeHu7Cj1j+49uKg7uLU61tGLw1lq27ugQYlclHC4bgv7VQ+TAyj5Zc/UjsPvs1sd5cWryWObtvWT2EPa4rtnWW3JkpjggEpbOsPr7F7EyNewtpBIslA7p43HCsnwooXTEc3UmPmCNn5lrqTJxy6nRmcavGZVt/3Da2pD5NHvsOHJCrdc1G2r3DITpU7yic7w/7Rxnjc0kt5GC4djiv2Sz3Fb2iEZg41/ddsFDoyuYrIkmFehz0HR2thPgQqMyQYb2OtB0WxsZ3BeG3+wpRb1vzl2UYBog8FfGhttFKjtAclnZYrRo9ryG9uG/FZQU4AEg8ZE9LjGMzTmqKXPLnlWVnIlQQTvxJf8ip7VgjZjyVPrjw1te5otM7RmP7xm+sK2Gv9I8Gi++BRbEkR9EBw8zRUcKxwp73xkaLiqQb+kGduJTNHG72zcW9LoJgqQxpP3/Tj//c3yB0tqzaml05/+orHLksVO+95kX7/7qgJvnjlrfr2Ggsyx0eoy9uPzN5SPd86aXggOsEKW2Prz7du3VID3/tzs/sSRs2w7ovVHKtjrX2pd7ZMlTxAYfBAL9jiDwfLkq55Tm7ifhMlTGPyCAs7RFRhn47JnlcB9RM5T97ASuZXIcVNuUDIndpDbdsfrqsOppeXl5Y+XVKdjFCTh+zGaVuj0d9zy05PPK3QzBamxdwtTCrzyg/2Rvf2EstUjordGwa/kx9mSJLr8mLLtCW8HHGJc2R5hS219IiF6PnTusOqcMl57gm0Z8kanKMAQg0qSyuZfn7zItsbGyO9QlnxY0eCuD1XL2ys/MsrQhltE7Ug0uFOzufJFE2PxBo/YAx8XPPdDwWN0MrDRYIZF0mSMKCNHgaIVFoBbNoLJ7tEQDKxGF0kcLQimojCZopv0OkNOyWCCg9XMVAi7ARJzQdM2QUh0gmBozjc3Skg6dSBRqDGYSUOu66Zg+I2fNZs/M3/f/Grl/XnyF1Gw3VKCez0PN5IUfFLqvgUN4C0qNqYs5YhPL+aVZYDE4IpUk57oSFnJm4FyCqqOE0jhY2SMyLFoo56zyo6becOS5UVDdj7Vih0zp+tcMhwRpBeLyqtIjlJKAIZSbI8SGSF3k0pA3mR5tHuwPFoa7N7reoq2bqCsAk1HqCu5uvI1n6JuRXI+S1Mco54YmYTwcn6Aeic+kssXi8XpXC4V3t7/ADuTNKaQJdScAAAAAElFTkSuQmCC)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![شارة](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

تشير هذه الشارة إلى حالة المستودع في وقت معين (من خلال ميزة وسم git ). هذا يعني أن الروابط ستظل صالحة ولم تتغير حتى لو كان هناك تصويبات لاحقة لمحتوى المستودع! Binder يدعم واجهات مستخدم متعددة. يتم استخدام هذا لتزويد مختبر المشتري و عرض بيئة التنمية المتكاملة على المستودع لاستكشاف الملف، دفتر ملاحظات المشتري، أو لفتح قذيفة لـ أوامر أخرى. الشارة الثانية تفتح بشكل مباشر تطبيق شيني تفاعلي يوضح بعض النقاط التي نوقشت في المخطوطة ولا تتطلب أي معرفة بالبرمجة على الإطلاق. جميع الإعدادات ذات الصلة لـ Binder موجودة في المجلد الفرعي `.binder`.


### إدارة سير العمل باستخدام Snakemake

بما أن JupyterLab يسمح أيضا بفتح قذيفة في مثيل المستودع المفتوح باستخدام وصلة بيندر، يمكن استخدام ميزة أخرى للمستودع لاستنساخ *المخطوطة بأكملها من الصفر*. تم استخدام مدير سير العمل في بايثون [Snakemake](https://snakemake.readthedocs.io/en/stable/) لتحديد جميع الخطوات المطلوبة في `Snakefile`. لتنفيذ سير العمل هذا، يمكنك فتح قذيفة في الإصدار [عبر الإنترنت من JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/). بمجرد الانتهاء من تحميل واجهة المستخدم، افتح محطة طرفية جديدة ونوع جديد
```
Snakemake -F --النواة 1 مخطوطة
```
وهذا سينفذ جميع الخطوات المطلوبة تباعا:

1. إنشاء جميع قطع الأرض عن طريق تنفيذ ملف دفتر ملاحظات المشتري
2. compiling the actual `latex/main.pdf` file from the LaTeX sources

يجب أن تشاهد بعد ذلك ملف `main.pdf` في `latex` مجلد فرعي.


### دعم المكانة المحلية لبيئة البرمجيات

يمكن أيضا استخدام حزمة Python repo2docker محليا لإعادة إنتاج نفس بيئة الحوسبة. لهذا الغرض، ستحتاج إلى تثبيت Python و Docker. للحصول على تفاصيل عن تقنيات Docker والحاويات بشكل عام، يرجى الاطلاع على الفصل الخاص بـ {ref}`البيئات والأوعية القابلة للاستنساخ<rr-renv-containers>`. ثم ببساطة استنساخ المستودع على جهازك المحلي باستخدام الأوامر
```
git نسخة git@github.com:kkmann/sample-size-calculation-underuncertainty.git
cd sample-size-calculation-underuncertainty
```
بعد استنساخ المستودع، يمكنك بناء وتشغيل حاوية Docker محليا باستخدام ملفات التكوين المقدمة في `. مجلد iner/` باستخدام الأمر التالي
```
jupyter-repo2docker -E .
```
تبدأ الحاوية تلقائياً بعد اكتمال البناء ويمكنك استخدام واجهة المشتري المعتادة في متصفحك باتباع الرابط المطبوع بواسطة repo2docker لاستكشاف المستودع محلياً.


### استخدام التكامل المستمر

على الرغم من أنه ليس ضروريا لقابلية هذا المخطوط، المستودع يستخدم أيضا التكامل المستمر ({ref}`CI <rr-ci>`) باستخدام [إجراءات GitHub](https://github.com/features/actions). يتم توفير عمليات GitHub مباشرة من GitHub (أنظر `rr-ci-github-actions`).

يحدد المستودع سير العمل في دليل `.github/workflow`. الأول ، [`.github/workflows/build_and_run. مم`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml)، يتم تفعيلها كلما تم تحديث الفرع الرئيسي للمستودع والمواصفات في `. تم تغيير الداخل`. هذا يبني الحاوية، يدفعها إلى مستودع حاويات عمومية [مركز دوكر](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty)، ثم تتحقق من أن سير عمل Snakemake يمر دون مشاكل. The second one, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), runs when the folder `.binder` was not changed and uses the pre-built Docker container to run the Snakemake workflow. يحفظ الأخير الكثير من وقت الحوسبة لأن بيئة الحوسبة سوف تتغير بشكل أقل بكثير من محتويات المستودع. وبالتالي فإن استخدام CI ييسر التحقق من المساهمات عن طريق طلبات السحب للحصول على السلامة التقنية ويتيح أحدث نسخة من الحاوية المطلوبة للتحميل المباشر. هذا يعني أنه بدلاً من بناء الحاوية محلياً باستخدام repo2docker يمكنك فقط تنزيلها مباشرة وتنفيذ سير العمل باستخدام الأوامر التالية
```
docker run-d --name mycontainer kmann/sample-size الحساب-ناقص عدم اليقين
docker exec --name mycontainer /
    snakemake -F --الأساسية1 مخطوطة
```

### الأرشيف على المدى الطويل والقابلية للتناسب

مستودع GitHub مرتبط أيضًا بـ [zenodo.org](https://zenodo.org/) لضمان الأرشيف طويل الأجل، انظر {ref}`cm-citable-cite-softw`

[![ديوي](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

لاحظ أنه يمكن أيضًا استخدام DOI المقدم من Zenodo مع BinderHub لتشغيل نسخة احتياطية من مستودع لقطة على Zenodo في بيئة تفاعلية ([انظر مشاركة المدونة](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
