(rr-binderhub-inntroduction)=

# Introduction to BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) is a cloud-based technology that can launch a repository of code (from GitHub, GitLab, and others) in a browser window such that the code can be executed and interacted with.
يتم إنشاء عنوان URL فريد يسمح بمشاركة الرمز التفاعلي بسهولة.

الغرض من مثيلات Binder هذه هو تعزيز قابلية التكرار في المشاريع البحثية من خلال تشجيع الباحثين على توثيق اعتماداتهم على البرامج وإنتاج بيئات ممتعة وتفاعلية!

الموثق ، كواجهة مستخدم ، مفيد للتكرار لأن الشفرة تحتاج إلى التحكم في الإصدار ويجب توثيق البيئة الحسابية من أجل الاستفادة من وظائف Binder.
كل تغيير في مستودع التعليمات البرمجية يفرض أيضا بنية جديدة من مثيل Binder.
يعمل هذا كوكيل للتكامل المستمر للبيئة الحسابية حيث سيتم كسر مثيل الموثق إذا لم يتم تحديث ملف التكوين.

Learn more about Continuous Integration {ref}`here<rr-ci>`.

## كيف يعمل BinderHub؟

يعتمد BinderHub على أدوات وموارد مختلفة من أجل إنشاء مثيلات Binder وتشغيلها.

For more information, see this [high-level explanation of the BinderHub architecture](https://binderhub.readthedocs.io/en/latest/overview.html).
