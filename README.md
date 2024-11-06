# OgrenciTopluklariSistemi
Fırat Üniversitesi BMU329 Veri Tabanı Sistemleri dersi 2. Öğretim 7. Grup "Öğrenci Toplulukları Yönetim Sistemi" projesidir.

[Mehmet Kağan Bayrak-225260057](https://github.com/Kaganbayrak)

[Nurgül Bedir225260013](https://github.com/nurgulbedir) 

[Ayberk Erdem225260041](https://github.com/ayberkerdm)

********************
1. Varlıklar ve Nitelikleri
Projede yer alacak varlıklar ve bunların nitelikleri şunlardır:

    Bölgeler (B_id, B_ad): Farklı şehirlerde bulunan bölgeleri temsil eder.
    
    Şehirler (S_id, S_ad, B_id): Her şehir, bir bölgeye bağlıdır.
    
    Üniversiteler (U_id, U_ad, S_id): Şehirlerde yer alan üniversiteleri gösterir.
    
    Bölümler (Bol_id, Bol_ad, U_id): Üniversitelerdeki bölümleri temsil eder.
    
    Akademisyenler (A_id, A_ad, A_soyad, A_unvan, Bol_id): Her akademisyen bir bölümde çalışmaktadır.
    
    Öğrenci Toplulukları (Ot_id, Ot_ad, U_id): Üniversitelerdeki öğrenci topluluklarını ifade eder.
    
    Etkinlikler (E_id, E_ad, Ot_id): Öğrenci topluluklarının düzenlediği etkinlikleri içerir.
    
    Organizatörler (Or_id, O_id, E_id): Etkinliklerin organizatörleri, bu etkinliklerle ilişkilendirilir.
    
    Üyeler (O_id, O_ad, O_soyad, Bol_id): Topluluklara üye olan öğrenci ve danışmanları belirtir.
    
    Sponsorlar (S_id, S_ad, E_id): Etkinliklere sponsor olan şirket veya bireyleri gösterir.


2. Varlıklar Arasındaki İlişkiler ve Sayısal Kısıtlamalar
    Belirlenen varlıklar arasında çeşitli ilişkiler ve bu ilişkilerde bazı sayısal kısıtlamalar mevcuttur:
    
    Bölge-Şehir İlişkisi: Bir bölge birden fazla şehre sahip olabilir, ancak her şehir yalnızca bir bölgeye aittir. (1-n)
   
    Şehir-Üniversite İlişkisi: Her şehirde birden fazla üniversite olabilir, fakat her üniversite yalnızca bir şehirde bulunur. (1-n)
   
    Üniversite-Bölüm İlişkisi: Bir üniversitede birden fazla bölüm yer alabilir, ancak her bölüm yalnızca bir üniversiteye aittir. (1-n)
   
    Bölüm-Akademisyen İlişkisi: Bir bölümde birden fazla akademisyen çalışabilir, fakat bir akademisyen yalnızca bir bölümde bulunur. (1-n)
   
    Üniversite-Öğrenci Topluluğu İlişkisi: Her üniversitede birden fazla öğrenci topluluğu olabilir, ancak her topluluk yalnızca bir üniversiteye bağlıdır. (1-n)
   
    Topluluk-Etkinlik İlişkisi: Her topluluk birden fazla etkinlik düzenleyebilir ve birden fazla topluluk bir etkinliği düzenleyebilir (1-n)
   
    Etkinlik-Sponsor İlişkisi: Bir etkinliğin birden fazla sponsoru olabilir, her sponsor birden fazla etkinliği destekleyebilir. (1-n)
   
    Etkinlik-Organizatör İlişkisi: Etkinlik organizatörleri, etkinlikler ile 1-n ilişkisi içerisindedir.***
   
    Topluluk-Üye İlişkisi: Bir topluluğa birden fazla üye katılabilir, her üye birden fazla topluluğa katılabilir. (n-m)
    

4. Kullanıcı Rolleri ve Gereksinimler
    Proje kullanıcı rolleri kapsamında, her bir rolün yetki ve sorumlulukları ile ilgili gereksinimlere sahiptir:
    
    Öğrenci: İlgilendiği öğrenci topluluklarına üye olabilir, etkinliklere katılabilir ve topluluk bilgilerini görebilir.
    Topluluk Danışmanı: Üyesi olduğu toplulukların etkinliklerini yönetebilir, yeni etkinlikler oluşturabilir veya düzenleyebilir.
    Yönetici: Sistemdeki tüm toplulukları ve etkinlikleri düzenleyebilir, gerekirse etkinlikleri yayından kaldırabilir.


