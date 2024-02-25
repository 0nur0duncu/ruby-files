# Taş-kağıt-makas
# Kodunuzu bu dosya içine yazınız
=begin
Kodunuzun düzgün çalışması için
input metodunun içindeki metni boş bırakın
gets.chomp
yeterli...
=end

o1 = gets.chomp
o2 = gets.chomp
if o1 == o2
    puts "berabere"
elsif (o1 == "taş" and o2 == "makas") or (o1 == "kağıt" and o2 == "taş") or (o1 =="makas" and o2 == "kağıt")
    puts "birinci oyuncu kazandı"
else
    puts "ikinci oyuncu kazandı"
end
