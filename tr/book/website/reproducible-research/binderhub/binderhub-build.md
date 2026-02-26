(rr-binderhub-build)=

# Kendi BinderHub'ınızı oluşturun

[mybinder.org](https://mybinder.org/) is the free, public BinderHub that hosts almost 100k Binder launches per week.
Neden kendine ait bir tane yaratmak isteyebilirsin?

Binder [{term}`def<Binder>`] is an open source project maintained by volunteers and as such they ask that users stay within certain computational limitations in order to keep running costs as low as possible whilst still providing a usable service.
Kendi BinderHub'ınıza ev sahipliği yaparak, kullanıcılarınıza çok daha esnek ve özel olarak uyarlanmış kaynaklar sunabilirsiniz.

Bu özelleştirmeler şunları içerebilir:

- kimlik doğrulama,
- kullanıcı başına daha fazla hesaplama kaynağı,
- uyarlanmış kütüphane kümeleri ve paketleri,
- kişisel depolara erişim izni,
- kullanıcılar için kalıcı depolama,
- belirli bir kurum veya ekip içinde paylaşımı sınırlama.

## Bir BinderHub dağıtımı yaparken karşılaşabileceğiniz sorunlar

BinderHub'lar, üniversite ve araştırma enstitüleri arasında giderek daha popüler hale geliyor.
Bunun nedeni, bir eğitim veya atölye ortamı için aynı not defteri setinden birden çok örnek yaratılmasını kolaylaştırabilmesidir.

Kuruluşunuz adına bulut ortamında bir BinderHub dağıtımı yapıyorsanız, kuruluşunuzun bulut platformu aboneliği üzerinde özel izinlere ihtiyacınız olabilir.
İhtiyacınız olan bu izinler, erişiminiz olan bulut platformuna ve IT Hizmetleri ilkelerinize göre değişecektir.
At minimum, you'll need to be able to assign [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to your resources so they can act autonomously in order to manage user traffic.
