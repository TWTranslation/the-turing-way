(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

وفي الفروع التالية يمكنكم العثور على تفاصيل عن كل خطوة من خطوات العملية.

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## Start

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

إذا كانت هناك مشاكل في أي من الميادين، سيتم تسليط الضوء عليها وستظهر رسائل الخطأ باللون الأحمر.
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## المؤلفون

The CFF schema requires at least one author in the `CITATION.cff` file.
انقر على زر "إضافة مؤلف" لفتح نموذج للقيام بذلك.
ملء الحقول ذات الصلة للمؤلفين.
يوصى بشدة بإضافة ORCID للمؤلفين.
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
إضافة المزيد من المؤلفين حسب الحاجة.
انقر بعد ذلك للمتابعة.

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

أحسنت عملها!
Now your `CITATION.cff` file meets the minimum requirements.
في هذه الشاشة يمكنك تحميل الملف الذي تم إنشاؤه أو نسخه من أداة المعاينة.
ونوصي بشدة بأن تضيف المزيد من المعلومات.
انقر فوق زر "إضافة المزيد" لإضافة المزيد من الحقول إلى ملف الاستشهاد الخاص بك لجعله أفضل.

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## حقول إضافية

جميع الحقول الإضافية اختيارية، ولكن من المستحسن أن تملأ أكثر المجالات صلة بعملك.

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

على هذه الشاشة، سترى خطوات جديدة في المتسلسل.
وفيما يلي وصف موجز للشاشات الإضافية:

- الهوية: إضافة أدوات تعريف للتراث البرمجي والرابط والبرمجية؛
- الموارد ذات الصلة: عناوين المواقع الشبكية للمستودعات ذات الصلة بالعمل وموقعه الشبكي؛
- خلاصة: موجز قصير للعمل؛
- الكلمات الرئيسية: الكلمات الرئيسية التي تصف العمل؛
- الترخيص: الترخيص الذي تتاح بموجبه الأعمال؛
- إصدار محدد: معلومات حول إصدار أو التزام محدد، بما في ذلك تاريخ الإصدار.

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

انقر بجانب لبدء إضافة حقول إضافية.

## الشاشة النهائية

عظيم أنك قمت بذلك إلى الشاشة النهائية!
After adding all the relevant information, you will have a validated `CITATION.cff` file.
قم بتنزيله أو نسخه وإضافته إلى مستودع العام الخاص بك للحصول على الرصيد الذي تستحقه!

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
