(rr-make)=

# Reproducibility with Make

(rr-make-prerequisites)=

## المتطلبات الأساسية

| المتطلبات الأساسية                                                         | الأهمية   | الملاحظات                                                    |
| -------------------------------------------------------------------------- | --------- | ------------------------------------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessary |                                                              |
| {ref}`Version Control<rr-vcs>`                                             | مفيدة     | Experience using git is useful to follow along with examples |

Recommended skill level: intermediate

(rr-make-summary)=

## ملخص توضيحي لإنشاء سجلات المشروع

يمكن النظر إلى مشروع علم البيانات أو البحث على أنه شجرة من التبعيات: يعتمد تقرير على الأرقام والجداول، وتتوقف هذه بدورها على البيانات والنصوص المستخدمة في التحليل لمعالجة هذه البيانات (الموضحة في الشكل أدناه).  اصنع أداة لإنشاء ملفات إخراج من تبعيهم من خلال قواعد محددة مسبقا.  من الممكن الجمع بين هاتين الفكرتين لإنشاء مشروع قابل للتكرار مع مايك.  في هذا الفصل نقدم مقدمة لصنع وتقديم دروس حول كيفية استخدام إعداد البيانات لخط أنابيب التحليل.  ونصف أيضًا مشروع بحث في العالم الحقيقي الذي يستخدم جعل للانتقال من بيانات الإدخال الخام إلى التجارب كلها في الطريق إلى ملف pdf للمقالة بحثية!

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## An Introduction to Make

Make is a build automation tool. It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  المتطلبات الأساسية يمكن أن تكون ملفات على جهاز الكمبيوتر الخاص بك أو أهداف أخرى. Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-why)=

### Why use Make for Reproducibility?

There are several reasons why Make is a good tool to use for reproducibility:

1. Make is easy to learn
2. Make is available on many platforms
3. Make is flexible
4. Many people are already familiar with Make
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Makefiles are human-readable and machine-readable text files. So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

مع Makefile، يمكنك مشاركة تحليل كامل (الكود والبيانات و سير العمل الحاسوبي) و السماح للمتعاونين أو قراء ورقتك بإعادة حساب النتائج الخاصة بك.
باستخدام أدوات مثل LaTeX، يمكنك حتى إنشاء مخطوطة كاملة تحتوي على أرقام ونتائج محسوبة حديثاً!
هذا يمكن أن يزيد الثقة في ناتج البحث الذي تولده، يمكنه أن يجعل بحثك أكثر سهولة ، ويمكنه أن يجعل التعاون أسهل.
This chapter can show you how to get started.
