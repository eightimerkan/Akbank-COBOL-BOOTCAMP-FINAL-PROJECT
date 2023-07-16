# Akbank-COBOL-BOOTCAMP-FINAL-PROJECT
Proje Açıklaması

Program, ana program (MAINPROG) ve alt program (SUBPROG) olmak üzere iki ayrı bölümden oluşmaktadır.

Ana program, QSAM dosyasından gelen işlemlere göre VSAM dosyasında değişiklikler yapmaktadır. Öncelikle, giriş kaydını okur ve VSAM dosyasında ilgili kaydı bulur. Eğer kayıt bulunursa, değişiklikleri gerçekleştirir ve güncellenmiş kaydı ekrana ve çıktı dosyasına yazar. Kayıt bulunmazsa, kaydı olduğu gibi çıktı dosyasına yazılır.

Alt program ise isim ve soyad alanlarındaki boşlukları ve harfleri değiştirme işlemini gerçekleştirir. İsim alanındaki boşluklar, düşük değerlerle (LOW-VALUES) değiştirilir. Soyad alanındaki "E" harfleri "I" ile değiştirilirken, "A" harfleri "E" ile değiştirilir.
