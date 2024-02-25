=begin
Bir spor salonu her ay, seçilen bir egzersiz türünde en fazla egzersizi
yapan üyesine bir aylık ücretsiz üyelik vermektedir. Spor salonu yapılan
egzersizleri <üye adı>:<egzersiz> biçiminde bir dosyada saklamaktadır.
Dosyadaki kayıtlar yazacağınız programa girdi olarak aşağıda belirtilen
biçimde verilmektedir.
Programın girdi biçimi ve örnek çalışması aşağıda verilmiştir:
Girdi:
1. Satır: Egzersiz sayısı(n)
sonraki n satır: <üye adı>:<egzersiz> biçiminde egzersizler
son satır: istenen egzersiz türü

Örnek:
Girdi:
6
Ahmet:Bisiklet sürmek
Aylin:Bisiklet sürmek
Deniz:Mekik çekmek
Aylin:Plank yapmak
Ahmet:Bisiklet sürmek
Aylin:Plank yapmak
Bisiklet sürmek

Çıktı:
Ahmet
=end

egzersizSayisi = gets.to_i

sozluk = {}

(1..egzersizSayisi).each do |i|
  metin = gets.chomp.split(":")
  uyeAdi = metin[0].strip
  egzersiz = metin[1].strip
  if sozluk.key?(uyeAdi)
    sozluk[uyeAdi] += [egzersiz]
  else
    sozluk[uyeAdi] = [egzersiz]
  end
end

yeniSozluk = {}
istenenEgzersiz = gets.chomp
sozluk.each_key do |uye|
  yeniSozluk[uye] = sozluk[uye].count(istenenEgzersiz)
end

enBuyuk = yeniSozluk.max_by { |anahtar, deger| deger }
puts enBuyuk[0]
