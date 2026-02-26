(rr-binderhub-compute)=

# Compute Resources

BinderHub محايد للسحابة مما يعني أنه يمكن نشره على أي نظام أساسي سحابي.
لذلك ، فإن الحد الأدنى من المتطلبات هو الاشتراك في نظام أساسي سحابي من اختيارك.

في الواقع ، لا يعتمد BinderHub على استضافة السحابة على الإطلاق ويمكن نشره على نظام حوسبة محلي.

## Kubernetes

[Kubernetes](https://kubernetes.io/) is a system for automating deployment, scaling (making more or fewer copies), and management of containers across a compute cluster (it doesn't have to be cloud-based).
يستخدم BinderHub Kubernetes لإدارة الموارد التي يطلبها مستخدمو خدمة Binder ، ولدعم الأدوات التي تبني البيئات.

## دومان

[Helm](https://helm.sh/) is a package manager for Kubernetes.
Packages come in the form of _Charts_ which are a set of instructions to deploy, upgrade and manage applications running on a Kubernetes cluster.
يمكنهم جعل تثبيت تطبيقات Kubernetes وإدارتها أسهل بكثير ويمكن نشر مخططات محددة للمشاريع عبر الإنترنت.
For example, the Helm Chart for BinderHub is available [here](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) is a tool that automatically builds a Docker image from a code repository given a configuration file.
ستحتوي صورة Docker هذه على جميع التعليمات البرمجية والبيانات والموارد المسردة في المستودع.
سيتم أيضا تثبيت جميع البرامج المطلوبة لتشغيل التعليمات البرمجية مسبقا من ملف التكوين.

## جوبيتر هب

[JupyterHub](https://jupyter.org/hub) is a multi-user server for Jupyter Notebooks and containers alike.
في سياق Binder ، يتمثل الدور الرئيسي ل JupyterHub في توصيل متصفح المستخدم بمثيل BinderHub الذي يعمل على مجموعة Kubernetes.
ومع ذلك ، يمكن تخصيص JupyterHub بشكل أكبر لتوفير تحكم أكبر في تشغيل BinderHub.

يمكن اعتبار BinderHub طبقة رقيقة تجلس فوق repo2docker و JupyterHub ، وتنظم تفاعلاتها وتحل عناوين URL.

## ماذا يحدث عند النقر فوق رابط الموثق؟

1. يتم حل الرابط إلى المستودع بواسطة BinderHub.
2. يبحث BinderHub عن صورة Docker تتعلق بالمرجع المقدم (على سبيل المثال ، git commit hash أو الفرع أو العلامة).
3. **If a Docker image is not found**, BinderHub requests resources from the Kubernetes cluster to run repo2docker to do the following:
   - (repository) سجل
   - إنشاء صورة Docker تحتوي على البرنامج المطلوب في ملف التكوين ،
   - ادفع هذه الصورة إلى سجل Docker.
4. يرسل BinderHub صورة Docker إلى JupyterHub.
5. يطلب JupyterHub موارد من مجموعة Kubernetes لخدمة صورة Docker.
6. يربط JupyterHub متصفح المستخدم ببيئة Docker قيد التشغيل.
7. يراقب JupyterHub الحاوية بحثا عن النشاط ويدمرها بعد فترة من عدم النشاط.
