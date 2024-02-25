require_relative "Ogrenci"


$course_templates = [
  { "arasınav" => 0.4, "dönem sonu" => 0.6 },
  { "arasınav" => 0.4, "ödev" => 0.2, "dönem sonu" => 0.4},
  { "arasınav" => 0.3, "proje" => 0.3, "dönem sonu" => 0.4 },
  { "arasınav" => 0.25, "kısa sınav" => 0.25, "dönem sonu" => 0.5},
  { "arasınav" => 0.2, "ödev" => 0.25, "proje" => 0.25 , "dönem sonu" => 0.3},
  { "arasınav" => 0.5, "dönem sonu" => 0.5 },
  { "ödev" => 0.5, "dönem sonu" => 0.5 },
]

$course_names = [
  "GENEL MATEMATİK - I",
  "GENEL FİZİK - I",
  "FİZİK LABORATUARI - I",
  "TÜRK DİLİ - I",
  "ATATÜRK İLKELERİ VE İNKILAP TARİHİ - I",
  "ORTA İNGİLİZCE-I",
  "ALGORİTMALAR VE PROGRAMLAMA",
  "ALGORİTMALAR VE PROGRAMLAMA LABORATUVARI",
  "BİLGİSAYAR MÜHENDİSLİĞİNE GİRİŞ",
  "BİLGİSAYAR MÜHENDİSLİĞİNE GİRİŞ LABORATUVARI",
  "MÜHENDİSLER İÇİN GENEL EKONOMİ",
  "GENEL MATEMATİK - II",
  "GENEL FİZİK - II",
  "FİZİK LABORATUARI - II",
  "TÜRK DİLİ - II",
  "ATATÜRK İLKELERİ VE İNKILAP TARİHİ - II",
  "ORTA İNGİLİZCE-II",
  "BİLGİSAYAR MÜHENDİSLİĞİ SEMİNERİ",
  "NESNEYE YÖNELİK PROGRAMLAMA",
  "NESNEYE YÖNELİK PROGRAMLAMA LABORATUVARI",
  "BİLGİSAYAR BİLİMLERİ İÇİN AYRIK YAPILAR",
  "LİNEER CEBİR",
  "VERİ YAPILARI",
  "VERİ YAPILARI LABORATUVARI",
  "SAYISAL SİSTEMLER",
  "SAYISAL SİSTEMLER LABORATUVARI",
  "BİLİMSEL HESAPLAMA",
  "ALGORİTMALARLA SAYISAL ÇÖZÜMLEME",
  "ELEKTRİK-ELEKTRONİK MÜHENDİSLİĞİNE GİRİŞ",
  "KARİYER PLANLAMA",
  "ALGORİTMALAR",
  "OLASILIK VE İSTATİSTİK",
  "PROGRAMLAMA DİLLERİ",
  "PROGRAMLAMA DİLLERİ LABORATUVARI",
]


def generate_courses(count)
  courses = []
  course_name_list = $course_names.sample(count)
  course_name_list.each do |course_name|
    courses << Ders.new(course_name, $course_templates.sample)
  end
  return courses
end

def generate_student(course_count)
  # Öğrencinin dosyasındaki sınıftan nesne oluşturulur.
  student = Ogrenci.new("Test öğrencisi")
  courses = generate_courses course_count
  courses.each do |course|
    course.notlandirma.each do |grading,_|
      student.not_ekle(course, grading, rand(1..100))
    end
  end
  return student
end

def generate_sample_students_for_testing
  course_count = 8
  student = generate_student course_count
  # Student is generated, do your custom tests on the student object below...
end

student = generate_sample_students_for_testing
# Test kodunuzu aşağıya yazabilirsiniz.
