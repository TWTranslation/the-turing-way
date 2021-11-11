(ch-style-citing)=
# الاستشهاد والإشارة

نحن نحافظ على ملف [BibTeX](http://www.bibtex.org/) مركزي يحتوي على جميع المراجع. الملف موجود داخل هذا المستودع في الملف [`./book/website/_bibliography/references.bib`][turingbib].

## أساسيات ملف BibTeX

ملفات BibTeX هي طريقة لتنسيق قوائم المراجع بطريقة منظمة. وتشمل العناصر الأساسية للمدخل نوعا مرجعيا، ومفتاح استشهاد فريد من نوعه، وسلسلة من أزواج القيمة الرئيسية التي تصف المرجع (على سبيل المثال المؤلف أو العنوان).

هناك عدد من الكلمات الرئيسية لأنواع المراجع المختلفة في BibTeX. لحسن الحظ، هناك أدوات للمساعدة في تنسيق المراجع في بناء بنية BibTeX. إذا كنت تعرف DOI كمرجع خاص بك، يمكنك استخدام [doi2bib](https://doi2bib.org/) للمساعدة في تعبئة مدخل BibTeX جيد بما فيه الكفاية. على سبيل المثال، [هنا](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) هو مدخل BibTeX جيد بما فيه الكفاية لدليل طريق تورينج نفسه. أداة جيدة أخرى هي [عالم جوجل](https://scholar.google.com/)، حيث تبحث عن مرجع، انقر فوق الاقتباس المزدوج الكبير `"`، ثم انقر على "BibTeX" بالقرب من الأسفل.

وترد أدناه أمثلة على إدراج مرجع على شكل BibTeX.

## إضافة مرجع جديد في `references.bib`

يمكنك تعديل الملف المرجعي محلياً باستخدام طريقة من:

- تحرير [`references.bib`][turingbib] مباشرة باستخدام محرر نص
- تحرير [`references.bib`][turingbib] مباشرة باستخدام برنامج إدارة مثل [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) أو [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

نحن نستخدم صيغة BBtex القياسية لإضافة إدخال جديد. على سبيل المثال، هناك إدخال في ملف [`references.bib`][turingbib] كالتالي:

```
@article{baker2016reproduciability ،
    author={Baker, Monya}،
    title={Reproducibility crisis? ،
    مجلة ={Nature}،
    مجلد ={533}،
    رقم ={26}،
    الصفحات ={353--66}،
    سنة ={2016}
}
```

**إنهاء التحرير بإضافة إدخال جديد في نهاية الملف.**

## دليل نمط مفتاح الاستشهاد

نوصي باستخدام الهيكل التالي لمفاتيح الاقتباس:

```
كلمة المؤلف
```

حيث:

1. `المؤلف` هو اسم عائلة المؤلف الأول (`بيكر` أعلاه)
2. `سنة` هي السنة (`2016` أعلاه)
3. `كلمة` هي أول كلمة ذات مغزى في العنوان (`إمكانية التكرار` أعلاه). ملاحظة، هذا ذاتي" اختيار اسم يجعل من السهل تذكر الإشارة عندما ترى مفتاح الاقتباس.

## إضافة مرجع جديد في النص

لإدراج اقتباس في المحتوى الخاص بك، نتبع التوصية من خلال [كتاب المشتري](https://jupyterbook.org/content/citations.html) الذي يستخدم [`ملحقات`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/).

والمفاهيم الرئيسية هي:

- تضمين مرجع باستخدام :
```
{cite:ps}`CITEKEY`

```
هنا `CITEKEY` هو مفتاح الاستشهاد المقابل في [`المراجع .bib`][turingbib].
- يمكنك أيضًا تضمين العديد من الإشارات في ذهاب واحد عن طريق الفصل بين CITEKEYs بفاصلة:
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

سنستشهد بالمقال الذي قمنا بتعديله في وقت سابق في ملف [`reference.bib`][turingbib] بإستخدام:

```
{cite:ps}`Kula2010archiving`
```

سيظهر هذا في فصلك كـ {cite:ps}`خبازر2016إمكانية التكرار`.

يتوفر المدخل الكامل للببليوغرافيا في نهاية هذا الكتاب (انظر {ref}`موارد <bibliography>`) باستخدام التوجيهات:

    ```{bibliography} ../_bibliography/references.bib

    ```

للحصول على الاستخدام المتقدم، راجع [التوثيق بواسطة sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html)، والذي هو امتداد Sphinx لاستشهاد نمط BibTeX.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
