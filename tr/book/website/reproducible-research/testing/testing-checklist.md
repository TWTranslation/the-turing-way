(testing-checklist)=

# Kod Testi için Kontrol Listesi

Bu kontrol listesi birçok öğe içerir.
As [mentioned before](#rr-testing-write-tests), it is far better to do some of the items than none of them.
Bu görevler listesi aşılmaz görünüyorsa bu cesaretinizi kırılmasın.

(testing-checklist:writing-tests)=

## Yazma testleri

- Birkaç smoke testi yazın.
- Tüm kod birimleriniz için birim testleri yazın.
- Birimler arasındaki entegrasyonu kontrol etmek için entegrasyon testleri yazın.
- Birkaç sistem testi yazın. Program boyunca ortak ve önemli yollara öncelik verin.
- Regresyon testleri yazın. Regresyon testleri, herhangi bir test düzeyinde mevcut olabilir.
- Projeniz için uygunsa kabul testleri yazın.
- Projenize çalışma zamanı testleri ekleyin.

(testing-checklist:good-practice-checks)=

## İyi uygulama kontrolleri (Good practice checks)

- Document the tests and how to run them.
  - Write scripts to set up and configure any resources that are needed to run the tests.
- Pick and make use of a testing framework.
- Run the tests regularly.
  - Automate the process of running tests. Bunu yapmak için sürekli entegrasyondan yararlanmayı düşünün (bkz. sürekli entegrasyon bölümü).
- Check the code coverage of your tests and try to improve it.
- Engage in code review with a partner.
