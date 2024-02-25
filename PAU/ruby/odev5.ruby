require_relative 'Siniflar' # Bu satırı silmeyin ve değiştirmeyin

# Bu ödevde Ruby sınıflarını kullanarak bir öğrencinin başarılı olduğu dersleri
# hesaplayan basarili_dersler metodunu yazmanız beklenmektedir.
#
# Aşağıdaki kodda da görüleceği üzere Ogrenci sınıfı AbstractOgranci sınıfından
# türetilen bir sınıftır ve eksik olan basarili_dersler metodunun yazılması
# gerekmektedir.
#
# Siniflar.rb dosyasında AbstractOgrenci ve Ders sınıfları bulunmaktadır. AbstractOgrenci
# sınıfı içinde notlar adında Hash türünde bir üye bulunmaktadır. notlar değişkeninin
# anahtarları Ders nesneleri, değerleri de her bir sınavdan aldığı notu gösteren Hash
# türündedir. Alınan notlardaki anahtar ve değer çiftleri dersin adı(string):not(int)
# biçimindedir. Siniflar.rb dosyasındaki açıklamalar YARD belgeleme biçimine göre
# düzenlenmiştir. YARD belgeleme biçimi ile ilgili detaylı bilgiyi internette
# bulabilirsiniz(https://yardoc.org/).
#
# Testleri kendi geliştirme ortamınızda gerçekleştirmeniz için rastgele bir öğrenci nesnesi
# oluşturan test.rb dosyasını kullanabilirsiniz.
#
# Bir öğrencinin bir dersten başarılı olabilmesi için yuvarlanmış ağırlıklı başarı
# notunun 60 veya üstü olması gerekir. Yuvarlama işlemi için round metodu kullanılabilir.
# Örneğin dersin değerlendirme biçimi ve öğrencinin aldığı notlar aşağıdaki gibiyse
# öğrenci dersten başarılı olarak kabul edilir.
# Değerlendirme yöntemleri ve ağırlıklar:
# arasınav: 0.4
# dönem sonu: 0.6
# Öğrencinin notları:
# arasınav: 40
# dönem sonu: 73
# Ağırlıklı ortalama = 40 * 0.4 + 73 * 0.6 = 59.8
# Yuvarlanmış ağırlıklı ortalama: 60

#
# Ogrenci sınıfı, basarili_dersler metodu yazılmalıdır
#
class Ogrenci < AbstractOgrenci
  #
  # Öğrencinin başarılı olduğu derslerin adlarının listesini döndürür.
  #
  # @return [Array<String>] Başarılı derslerin adlarının listesi
  #
=begin   def basarili_dersler()
    basariliDerslerinListesi = []
    @notlar.each do |ders, notlar|
      toplam_agirlikli_not = 0.0
      notlar.each do |sinav, notu|
        agirlik = ders.notlandirma[sinav]
        toplam_agirlikli_not += notu * agirlik
      end
      ağırlıklı_ortalama = toplam_agirlikli_not.round
      if ağırlıklı_ortalama >= 60
        basariliDerslerinListesi << ders.adi
      end
    end
    basariliDerslerinListesi
  end
end
=end

def basarili_dersler()
  basariliDerslerinListesi = []
  for ders, notlar in @notlar
    notlarinToplami = 0.0
    for sinav, notu in notlar
      agirlik = ders.notlandirma[sinav]
      notlarinToplami += notu * agirlik
    end
    ortalama = notlarinToplami.round
    if ortalama >= 60
      basariliDerslerinListesi << ders.adi
    end
  end
  basariliDerslerinListesi
end
