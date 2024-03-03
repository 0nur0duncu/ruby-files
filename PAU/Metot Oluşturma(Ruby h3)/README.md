# Ruby Metotları ve Örnek Kullanımlar

## `ters_faktoryel` Metodu

Bu metod, bir sayının ters faktöriyelini hesaplar. Ters faktöriyel, bir sayının faktöriyeli olabilmesi için en büyük pozitif tamsayıyı bulur.

### Kullanım

```ruby
begin
  result = ters_faktoryel(120)
  puts "Ters Faktöriyel: #{result}"
rescue ArgumentError
  puts "Geçersiz giriş. Pozitif bir tamsayı bekleniyor."
end
```

## `bak_ve_soyle` Metodu

Bu metod, bir başlangıç string'ini alır ve ardışık adımlarda belirtilen sayıda hesaplama yaparak sonuç string'ini döndürür.

### Kullanım

```ruby
result = bak_ve_soyle("1", 5)
puts "Sonuç: #{result}"
```

## Notlar

- `ters_faktoryel` metodunun kullanımı sırasında geçersiz bir giriş durumunda `ArgumentError` hatası alınır.

- `bak_ve_soyle` metodunun başlangıç string'i ve adım sayısı parametre olarak verilir.

Bu örnekler, Ruby programlama dilinde iki farklı metodu kullanarak farklı matematiksel hesaplamaları gerçekleştirmenin örneklerini göstermektedir. Her bir metotun nasıl kullanılacağını ve olası hata durumlarını içermektedir.
