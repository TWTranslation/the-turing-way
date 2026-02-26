(rr-binderhub-build)=

# قم ببناء بايندرهوب الخاص بك

[mybinder.org](https://mybinder.org/) is the free, public BinderHub that hosts almost 100k Binder launches per week.
لماذا قد ترغب في بناء الخاص بك؟

Binder [{term}`def<Binder>`] is an open source project maintained by volunteers and as such they ask that users stay within certain computational limitations in order to keep running costs as low as possible whilst still providing a usable service.
باستضافة BinderHub، يمكنك أن تقدم للمستخدمين المزيد من الموارد المرنة والمكيفة حسب الطلب.

ويمكن أن تشمل هذه التخصيصات ما يلي:

- إثبات الهوية
- المزيد من الموارد الحسابية لكل مستخدم
- كومات من المكتبات والحزم معدّة حسب الطلب
- السماح بالوصول إلى المستودعات الخاصة
- تخزين مستمر للمستخدمين
- تقييد المشاركة داخل مؤسسة معينة أو فريق معين.

## المشاكل التي قد تواجهها عند نشر BinderHub

أصبحت مراكز BinderHub تحظى بشعبية متزايدة في الجامعات ومعاهد البحوث.
وذلك لأنها يمكن أن تيسر حالات متعددة من نفس المجموعة من الدفاتر لاستخدامها في إعداد دروس أو حلقات عمل.

إذا كنت تنشر BinderHub المستضاف على السحابة نيابة عن مؤسستك ، فقد تحتاج إلى أذونات محددة على اشتراك النظام الأساسي السحابي لمؤسستك.
أي الأذونات التي تحتاج إليها ستختلف حسب منصة cloud التي لديك حق الوصول إليها وسياسات خدمات تكنولوجيا المعلومات الخاصة بك.
At minimum, you'll need to be able to assign [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to your resources so they can act autonomously in order to manage user traffic.
