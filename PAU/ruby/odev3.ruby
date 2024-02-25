=begin
Bir kitapçı, kitaplarının satışını takip etmek istiyor. Bir aylık sürede(28 gün)
sattığı kitapların ismi ve adeti her gün için verilmektedir. Toplam kaç adet
kitap sattığını ve her hafta için(7 gün) en çok satılan kitabın adını ekrana
yazan Ruby kodunu yazınız. Programın girdi ve çıktı biçimi aşağıda verilmiştir:

Girdi:
Gün 1
Kitap adı:adet
Kitap adı:adet
...
Gün 2
Kitap adı:adet
Kitap adı:adet
...

Çıktı:
Toplam satılan kitap sayısı(28 günlük)
1. haftada en çok satılan kitabın adı
2. haftada en çok satılan kitabın adı
3. haftada en çok satılan kitabın adı
4. haftada en çok satılan kitabın adı
=end

sozluk = {}
toplam = 0
hafta = 0
while girdi = gets
  if girdi.include?("Gün")
    gun = girdi.split()[1].strip.to_i
    if gun == 1 or gun == 8 or gun == 15 or gun == 22
      hafta += 1
      sozluk[hafta] = {}
    end
  else
    kitapAdi = girdi.split(":")[0].strip
    kitapSayisi = girdi.split(":")[1].strip.to_i
    toplam += kitapSayisi
    if sozluk[hafta].key?(kitapAdi)
      sozluk[hafta][kitapAdi] += kitapSayisi
    else
      sozluk[hafta][kitapAdi] = kitapSayisi
    end
  end
end


puts toplam

for i in 1..5
  enBuyuk = sozluk[i].max_by { |anahtar, deger| deger }
  puts enBuyuk[0]
end
