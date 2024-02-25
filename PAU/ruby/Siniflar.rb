# Global değişkenker(Yazdırmada yardımcı değerler)
$space = " "
$box = "└"


class AbstractOgrenci
  # @return [Hash<Ders, Hash<String>>] notları barındıran Hash yapısı
  attr_reader :notlar
  #
  # Yapıcı metot
  #
  # @param [String] adi Öğrenci adı
  #
  def initialize(adi)
    @adi = adi
    @notlar = {}
  end

  #
  # Öğrencinin verilen dersinin ilgili sınavına not ekler
  #
  # @param [Ders] ders Ders nesnesi(türü Ders sınıfının örneğidir, String değil)
  # @param [String] sinav Sınav türü {"arasınav" | "dönem sonu" | "proje" | "ödev"}
  # @param [Integer] notu Öğrencinin ilgili ders ve sınavdaki notu
  #
  # @return [nil]
  #
  def not_ekle(ders, sinav, notu)
    @notlar[ders] = {} if !@notlar.include? ders
    @notlar[ders][sinav] = notu
  end

  #
  # to_s metodu nesneyi String'e dönüştürür
  #
  # @return [String] Nesnenin metin temsili
  #
  def to_s
    s = "Öğrenci: #{@adi}\nÖğrencinin aldığı dersler: \n"
    notlar.keys.sort_by {|c| c.adi}.each do |course|
      s += $space + "#{course.to_s}"
    end
    s += "Öğrencinin notları:\n"
    @notlar.each do |course, grades|
      s += $space + "#{course.adi}\n"
      grades.each do |exam, grade|
        s += $space + $box + $space + "#{exam}:#{grade}\n"
      end
    end
    s
  end

  #
  # Bu metodun gövdesini yazmanız beklenmektedir. Öğrencinin başarılı olduğu
  # derslerin isimlerinin dizisini döndürür. Bu hesaplamayı yapmak için öğrencinin
  # notlarının notlar değişkeninden hesaplanarak bir dizi olarak isimlerini
  # döndürmek gerekir
  #
  # @return [Array<String>] Öğrencinin başarılı olduğu derslerin adının listesi
  #
  def basarili_dersler()
    raise NoMethodError, "#{self.class} #basarili_dersler metodu soyuttur ve alt sinifta gecersiz kilinmasi gerekir."
  end
end


#
# Ders sınıfı: Ders adını ve notlandırma biçimini barındırır
#
class Ders
  attr_reader :adi, :notlandirma

  #
  # Yapıcı metot
  #
  # @param [String] adi Dersin adı
  # @param [Hash<String, Float>] notlandirma Notlandırma biçimi. Hash türünde. Anahtarlar sınav türünü, değerler de ağırlığını temsil eder
  #
  def initialize(adi, notlandirma={"arasınav" => 0.4, "dönem sonu" => 0.6})
    @adi = adi
    @notlandirma = notlandirma
  end

  #
  # to_s metodu nesneyi String'e dönüştürür
  #
  # @return [String] Nesnenin metin temsili
  #
  def to_s
    s = "Ders: #{adi}\n#{$space}Değerlendirme yöntemeri:\n"
    notlandirma.each do |sinav, agirlik|
      s += $space + $box + $space + "#{sinav}:#{agirlik}\n"
    end
    s
  end
end
