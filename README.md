# Prak2_Probstat2023_C_5025211254

Praktikum Probabilitas dan Statistik Modul 2

## Identitas
| Nama                   | NRP        | Kelas     |
| ---                    | ---        | ----------|
| Yusna Millaturrosyidah | 5025211254 |Probstat C |

## Soal No 1
>**Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas.**

| Responden |  X |  Y |
| --------- |----|----|
|     1     | 78 | 100|
|     2     | 75 | 95 |
|     3     | 67 | 70 |
|     4     | 77 | 90 |
|     5     | 70 | 90 |
|     6     | 72 | 90 |
|     7     | 78 | 89 |
|     8     | 70 | 100|
|     9     | 77 | 100|

>**Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.**

* **a. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas.** <br />

Untuk menyelesaikan soal diatas, maka digunakan fungsi ```c()``` untuk membuat vektor untuk data X dan data Y. Kemudian menghitung selisih antara dua set data, X dan Y. Setelah mendapatkan selisih data, digunakan fungsi ```sd()``` untuk menghitung standar deviasi dari selisih tersebut.
```R
X = c(78, 75, 67, 77, 70, 72, 78, 70, 77)
Y = c(100, 95, 70, 90, 90, 90, 89, 100, 100)
difference = (X - Y)
sd(difference)
```

Maka, didapatkan nilai standar deviasi dari data selisih pasangan pengamatan adalah ```7.838651```

Berikut merupakan Hasil dari program ketika dijalankan :


* **b.  Carilah nilai t (p-value)** <br />

Untuk menyelesaikan soal diatas yaitu mencari nilai t dapat menggunakan fungsi ```t.test``` dan ```paired``` untuk membandingakn rata-rata antara data X dan data Y.
```R
t.test(Y, X, paired = TRUE)
```

Maka, didapatkan nilai ```t = 6.8039``` dan nilai ```p-value = 0.0001373```

Berikut merupakan Hasil dari program ketika dijalankan :


* **c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam  hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.** <br />

(p-value = 0.0001373) < (𝛼 = 0,05)

Didapatkan nilai probabilitas dari uji t (p-value) = 0.0001373 lebih kecil jika dibandingkan dengan significant level 𝛼 = 0,05. Maka, hipotesis nol (H0) ditolak dan hipotesis alternatif diterima. Sehingga kesimpulan yang diambil berbanding terbalik dengan hipotesa nol (H0) yaitu ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, baik sebelum dan sesudah melakukan aktivitas A.

## Soal No 2
>**Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).** <br />

```R
H0 : µ ≤ 25.000 km
H1 : µ > 25.000 km
```

* **a. Apakah Anda setuju dengan klaim tersebut? Jelaskan.** <br />
Setuju, karena berdasarkan perhitungan dengan tanpa menggunakan uji statistik atau uji z-sum memungkinkan untuk didapatkan rata-rata lebih dari 25.000 kilometer mobil dikemudikan per tahun.

Namun untuk didapatkan kesimpulan yang sesuai akan dibuktikan dengan melakukan uji z-sum seperti dibawah.

* **b. Buatlah kesimpulan berdasarkan p-value yang dihasilkan!** <br />
```R
install.packages("BSDA")
library(BSDA)

klaim_mean <- 25000
n <- 100
sampel_mean <- 23500
populasi_sd <- 3000

zsum.test(mean.x = sampel_mean, sigma.x=populasi_sd, n.x = n,  
          alternative = "greater", mu = klaim_mean)
 ```
 
Berikut merupakan Hasil dari program ketika dijalankan :
 
 
Hasil uji z-sum menunjukkan bahwa nilai ```p-value = 1```, yang berarti nilai p-value lebih besar daripada nilai α, ```nilai α = 0.05```.

Maka, Kesimpulan yang didapatkan yaitu bukti yang didapatkan tidak cukup untuk menolak hipotesis nol H0 atau hipotesis alternatif. Hipotesis nol menyatakan bahwa secara statistik, tidak ada perbedaan yang signifikan dalam rata-rata jarak tempuh mobil, yakni kurang dari 25.000 kilometer per tahun.
 
## Soal No 3
>**Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.** <br />

| Nama Kota/Atribut      | Bandung    | Bali      |
| ---                    | ---        | ----------|
| Jumlah Saham           | 20         |27         |
| Sampel Mean            | 3.64       |2.79       |
| Sampel Standar Deviasi | 1.67       |1.5        |

>**Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? 
Buatlah:** <br />

* **a. H0 dan H1** <br />
```R
H0 : µ1 = µ2 (rata-rata saham Bandung sama dengan Bali)
H1 : µ1 ≠ µ2 (rata-rata saham Bandung tidak sama dengan Bali)
```
* **b. Hitung sampel statistik** <br />
Untuk menyelesaikan soal diatas dapat dilakukan perhitungan dengan menggunakan fungsi ```tsum.test()```
```R
n1 <- 20
n2 <- 27
xbar1 <- 3.64
xbar2 <- 2.79
sd1 <- 1.67
sd2 <- 1.5

tsum.test(xbar1, sd1, n1, xbar2, sd2, n2, 
          alternative = "greater", var.equal = TRUE)
```
Setelah menjalankan kode diatas, akan dilakukan pengujian t-sum untuk menguji apakah rata-rata sampel pertama lebih besar daripada rata-rata sampel kedua, dengan asumsi varian sama. Hasil uji t-sum akan menghasilkan nilai t-statistik, derajat kebebasan, dan nilai p-value yang dapat digunakan untuk membuat keputusan statistik.

Berikut merupakan Hasil dari program ketika dijalankan :


* **c. Lakukan uji statistik (df=2)** <br />
Untuk menyelesaikan soal diatas, pertama yaitu membuat plot distribusi t-student dengan derajat kebebasan (degrees of freedom) yang telah ditentukan. Kemudian, digunakan fungsi ```plotDist()``` dari library mosaic.
```R
install.packages("mosaic")
library(mosaic)

df <- 2
plotDist(dist = 't', df, col = "purple")
```
Dengan menjalankan program tersebut, kita akan mendapatkan sebuah plot yang menggambarkan distribusi t-student dengan ```df = 2```. Plot ini memberikan gambaran visual tentang bagaimana bentuk dan karakteristik dari distribusi t-student yang memiliki derajat kebebasan yang sudah ditentukan.

Berikut merupakan Hasil dari program ketika dijalankan :


* **d. Nilai kritikal** <br />
Untuk menyelesaikan soal diatas dapat menggunakan fungsi ```qt()``` untuk menghitung nilai-nilai kritis (critical values) dari distribusi t-student.
```R
nk_lower <- qt(0.05, 2) 
nk_lower

nk_upper <- qt(0.05, 2, lower.tail=FALSE)
nk_upper
```
Dengan menjalankan kode tersebut, akan dihasilkan dua nilai kritis yaitu ```nk_lower = -2.919986``` (batas bawah) dan ```nk_upper = 2.919986``` (batas atas) dari distribusi t-student dengan derajat kebebasan 2 pada level signifikansi 0.05. Nilai-nilai kritis ini dapat digunakan untuk mengambil keputusan statistik dalam pengujian hipotesis menggunakan uji t.

Berikut merupakan Hasil dari program ketika dijalankan :


* **e. Keputusan** <br />
Pada soal di poin B didapatkan ```p-value = 0.03691``` dimana nilai tersebut lebih kecil dari ```𝛼 = 0.05```. Maka, Hipotesis Nol H0 ditolak dan Hipotesis Alternatif H1 diterima

* **f. Kesimpulan** <br />
Sesuai dengan beberapa uji yang telah dilakukan yang mana didapatkan nilai p-value lebih kecil dari 𝛼, dan karena itu Hipotesis Nol ditolak dan Hipotesis Alternatif diterima. Sehingga dapat disimpulkan bahwa terdapat perbedaan antara rata-rata saham di Bandung dan rata-rata saham di Bali.

## Soal No 4
>**Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: 
https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view. 

Dengan data tersebut :

* **a. Buatlah plot sederhana untuk visualisasi data** <br />
Untuk dapat menyelesaikan soal diatas diperlukan untuk install dan menggunakan beberapa library berikut :
```R
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

data <- read_csv("GTL.csv")
head(data)

str(data)

qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)
```

Data dari file CSV dimasukkan ke dalam dataset menggunakan fungsi ```read_csv()``` dan diobservasi menggunakan fungsi ```head()```. Selanjutnya, struktur dataset dianalisis menggunakan fungsi ```str()```. Kemudian fungsi ```qplot()``` berfungsi untuk membuat visualisasi plot sederhana.

Berikut merupakan Hasil dari program ketika dijalankan :

* **b. Lakukan uji ANOVA dua arah.** <br />
Untuk menyelesaikan soal diatas yaitu dengan melakukan uji ANOVA dua arah dengan menggunakan fungsi ```as.factor()``` yang mana variabel dibuat sebagai factor.
```R
data$Glass = as.factor(data$Glass)
data$Temp_Factor = as.factor(data$Temp)
str(data)

anova = aov(Light ~ Glass*Temp_Factor, data = data)
summary(anova)
```
Setelah menjalankan kode tersebut, dataset ```data``` akan diubah menjadi faktor untuk kolom "Glass" dan "Temp", struktur dataset akan dicetak, dan analisis ANOVA akan dilakukan untuk memeriksa pengaruh interaksi antara faktor "Glass" dan "Temp_Factor" terhadap variabel "Light". Hasil analisis akan dicetak dalam bentuk ringkasan statistik.

Berikut merupakan Hasil dari program ketika dijalankan :


* **c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).** <br />
Untuk menyelesaikan soal diatas yaitu untuk mendapatkan ```data_summary``` sesuai dengan mean dan standar deviasinya adalah dengan menggunakan fungsi ```group_by()``` dan fungsi ```summarise()```
```R
data_summary = group_by(data, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```
Setelah menjalankan kode tersebut, dataset ```data``` akan dikelompokkan berdasarkan "Glass" dan "Temp", kemudian dilakukan perhitungan rata-rata dan standar deviasi variabel "Light" untuk setiap kelompok. Hasilnya akan diurutkan berdasarkan rata-rata secara menurun dan dicetak dalam bentuk tabel. Ini memberikan gambaran tentang nilai rata-rata dan variasi dari variabel "Light" untuk setiap kombinasi "Glass" dan "Temp" dalam dataset.

Berikut merupakan Hasil dari program ketika dijalankan :
