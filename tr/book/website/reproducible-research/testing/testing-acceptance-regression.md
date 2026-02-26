(rr-testing-acceptance-regression)=

# Kabul ve Regresyon Testi

(rr-testing-acceptance)=

## Kabul testi

Kabul testleri, teslimattan önce yazılım üzerinde gerçekleştirilen son test türlerinden biridir.
Kabul testi, bir yazılım parçasının işletme veya kullanıcı açısından tüm gereksinimleri karşılayıp karşılamadığını belirlemek için kullanılır.
Bu yazılım parçası yapması gerekeni yapıyor mu?
Bu testler bazen orijinal spesifikasyona göre oluşturulur.

Çünkü araştırma yazılımı tipik olarak onu kullanacak araştırmacı tarafından yazıldığından (veya en azından onlardan önemli girdilerle) kabul testleri gerekli olmayabilir.

(rr-testing-regression)=

## Regresyon testi

Regresyon testi, değişiklikler yapıldıktan sonra yeniden test etmeye odaklanan bir test tarzıdır.
Değişikliklerden sonraki testlerin sonuçları, önceki sonuçlarla karşılaştırılır ve bunlar farklıysa hatalar ortaya çıkar.
Regresyon testinin amacı, yazılımda yapılan değişikliklerin (geliştirmeler veya hata düzeltmeleri) yazılımı olumsuz etkilemediğinden emin olmaktır.
Kodla doğrudan ilişkili olmayan işlevleri etkileyen herhangi bir kod değişikliği olasılığı her zaman vardır ve bir şeyi düzeltmenin diğerini bozmadığından emin olmak için regresyon testinin yapılması önemlidir.
Regresyon testi, herhangi bir test seviyesi (birim, entegrasyon, sistem veya kabul) sırasında gerçekleştirilebilir, ancak çoğunlukla sistem testi ile ilgilidir.
Herhangi bir test yeniden kullanılabilir ve böylece herhangi bir test regresyon testi haline gelebilir.

Regresyon testi, ekip çalışmasında özellikle önemlidir, ancak kendi başınıza çalışsanız bile, kendi kodunuzu fark etmeden kırmak şaşırtıcı derecede kolaydır.
Ve regresyon testinin elle tatmin edici bir şekilde yapılması neredeyse imkansız olduğu için (sadece çok sıkıcı), otomasyon için açık bir durumdur.

Regresyon testleri, önce verilen girdiler için kodun (veya bir kısmının) çalıştırılması ve çıktıların kaydedilmesiyle yazılır.
Bu, girdi dosyaları yazılarak ve ilgili çıktı dosyalarını kaydedilerek yapılabilir.
Bu çıktılar, ilgili girdiler göz önüne alındığında programdan beklenen çıktılar olarak işlev görür.
Daha sonra regresyon testleri yazılır.
Her bir regresyon testi, girdi seti için kodu çalıştırır.
Daha sonra koddan gelen çıktıyı beklenen çıktılarla karşılaştırır ve bunlar eşleşmezse bir hata verir.

Regresyon testi yaklaşımları odaklarında farklılık gösterir.

Yaygın örnekler şunlardır:

- Hata (Bug) regresyonu: Düzeltildiği iddia edilen belirli bir hatayı yeniden test ederiz.
- Eski düzeltme regresyon testi: Geri dönüp dönmediklerini görmek için düzeltilen birkaç eski hatayı yeniden test ederiz. (Bu klasik regresyon kavramıdır: program kötü bir duruma gerilemiştir.)
- Genel işlevsel regresyon: Daha yeni değişikliklerin çalışma kodunu istikrarsızlaştırıp bozmadığını görmek için, daha önce çalışmış alanlar da dahil olmak üzere projeyi genel olarak yeniden test ederiz.
- Dönüştürme veya bağlantı noktası testi: Program yeni bir platforma taşınır ve bağlantı noktasının başarılı olup olmadığını belirlemek için bir regresyon test paketi çalıştırılır.
- Yapılandırma testi: Program, yeni bir cihazla veya işletim sisteminin yeni bir sürümünde veya yeni bir uygulama ile birlikte çalıştırılır.
  Bu, temel kodun değiştirilmemesi dışında bağlantı noktası testi gibidir - yalnızca test edilen yazılımın etkileşime girmesi gereken harici bileşenleri değişir.

### Regresyon Testinin Sınırlamaları

Regresyon testlerinin kodun tüm bölümlerini test etmesi garanti edilmez.
Most importantly, regression tests do not test if the result outputted by a piece of code is _correct_, only that it has not changed.
Regresyon testleri, hem analitik çözümlerin kullanılmasıyla hem de çıktı dosyalarını okuyan ve verileri bir araştırmacı tarafından tanımlandığı gibi doğruluk açısından kontrol eden test işlevleri aracılığıyla doğruluk testlerini tanıtmak için başlangıç noktası olarak hizmet edebilmesine rağmen, bu diğer test türlerinin görevidir.
