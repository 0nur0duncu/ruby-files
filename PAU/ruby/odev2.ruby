=begin

Bir finans şirketi, en kötü hisse senedi yatırımları üzerine bir araştırma
yürütüyor ve bunu yapmak için bir program edinmek istiyor. Program, belirli
bir t0 zamanında bir hisse satın alarak ve daha sonraki bir t1 tarihinde
satarak yapılabilecek en büyük kaybı göstermek için kronolojik bir dizi
hisse senedi değerini analiz edebilmelidir. Kayıp, t0 ve t1 arasındaki
değer farkı olarak ifade edilecektir. Kayıp yoksa, kayıp 0 değerinde
olacaktır.
Programın girdi biçimi ve örnek çalışması aşağıda verilmiştir:
Girdi:
1. satır: Hisse senedi sayısı(n)
sonraki n satır: Hisse senedinin borsaya giriş tarihindeki değerinden(v1) son
değere(vn) kadar olan değerler
Çıktı: En büyük kayıp, negatif değer, kayıp yoksa 0

Örnek çalışma:
Girdi:
6
3
1
5
4
2
7
Çıktı:
-3

Açıklama: Aşağıda verilen girdi için grafik gösterilmektedir. En yüksek fark
* ile gösterilen t=2 ile t=4 arasındaki -3 değerlik kayıptır.
  v
  ^
7 |     #
6 |     #
5 |  *  #
4 |  ## #
3 |# ## #
2 |# ##*#
1 |######
  ---------->t
  0123456

=end

hisseSenediSayisi = gets.to_i

hisseDegerleri = Array.new
hissesayisi = 0

while (hisseDegeri = gets)
  hisseDegerleri[hissesayisi] = hisseDegeri.to_i
  hissesayisi +=1
end

enYuksekFark = 0
(0..hisseSenediSayisi-2).each do |i|
  (i+1..hisseSenediSayisi-1).each do |j|
    fark = hisseDegerleri[j] - hisseDegerleri[i]
    if fark < enYuksekFark
      enYuksekFark = fark
    end
  end
end

puts enYuksekFark
