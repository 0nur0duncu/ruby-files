=begin
Sayı tahmin oyununda amaç mümkün olan en az adımda bilgisayarın rastgele
olarak tuttuğu sayıyı tahmin etmektir.

Acemi bir programcı bilgisayarın rastgele olarak 1 ile 100 arasıda tuttuğu
bir tamsayıyı tahmin etmek için sezgisel bir yöntem geliştirmiştir. Bu yöntem
bazen tahmini az adımda, bazen de olması gerekenden fazla adımda bulmaktadır.

Sayı tahmin oyununda doğru olan yaklaşım aralığı yarıya bölerek çözüme
ulaşmaktır. Örneğin bilgisayarın tuttuğu 87 sayısını tahmin etmek için 1 ve
100'ün tam orta noktası 50 tahmin edilir. Bilgisayar sayının büyük olduğunu
bildirir ve bakılması gereken aralık artık 50 ile 100 arasındadır. 50 ve 100'ün
ara noktası 75 olacaktır. Bilgisayar yine tutulan sayının büyük olduğunu
söyleyecektir. Yeni aralık 75 ile 100 arasında olacaktır. Orta değer 87
girildiğinde doğru sayı 3 adımda tahmin edilmiş olur.

Programın girdi değerleri acemi programcının tahminleridir ve son tahminde
doğru cevap bulunmaktadır. Programın çıktısı da acemi programcının tahmin
sayısının normal tahmin sayısından ne kadar fazla olduğudur. Programın
örnek çalışması aşağıda verilmiştir:

Girdi:
3
46
17
19
26
39
84
86
Çıktı:
1

Açıklama: Aralığı yarıya bölme yöntemi ile tahminler 50, 75, 87, 81, 84, 85, 86
olurdu ve 7 adımda aranan sayı bulunurdu. Acemi programcı sayıyı 8 tahminde
bulmuştur ve bu sayı olması gerekenden 1 fazladır.
=end

tahminler = Array.new
kullaniciTahminSayisi = 0
while (kullaniciTahmini = gets)
  tahminler[kullaniciTahminSayisi] = kullaniciTahmini.to_i
  kullaniciTahminSayisi += 1
end

bilgisayarTahminSayisi = 1
ustSinir = 100
altSinir = 1

while ((altSinir + ustSinir)/2 != tahminler[-1])
  if tahminler[-1] > (altSinir + ustSinir)/2
    altSinir = (altSinir + ustSinir)/2
  else
    ustSinir = (altSinir + ustSinir)/2
  end
  bilgisayarTahminSayisi += 1
end

puts kullaniciTahminSayisi - bilgisayarTahminSayisi
