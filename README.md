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
selisih = (X - Y)
sd(selisih)
```

Maka, didapatkan nilai standar deviasi dari data selisih pasangan pengamatan adalah ```7.838651```

* **b.  Carilah nilai t (p-value)** <br />

Untuk menyelesaikan soal diatas yaitu mencari nilai t dapat menggunakan fungsi ```t.test``` dan ```paired``` untuk membandingakn rata-rata antara data X dan data Y.
```R
t.test(Y, X, paired = TRUE)
```

Maka, didapatkan nilai ```t = 6.8039``` dan nilai ```p-value = 0.0001373```

* **c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam  hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.** <br />

(p-value = 0.0001373) < (𝛼 = 0,05)

Didapatkan nilai probabilitas dari uji t (p-value) = 0.0001373 lebih kecil jika dibandingkan dengan significant level 𝛼 = 0,05. Maka, hipotesis nol (H0) ditolak dan hipotesis alternatif diterima. Sehingga kesimpulan yang diambil berbanding terbalik dengan hipotesa nol (H0) yaitu ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, baik sebelum dan sesudah melakukan aktivitas A.

## Soal No 2
>**Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).** <br />

* **a. Apakah Anda setuju dengan klaim tersebut? Jelaskan.** <br />
* **b. Buatlah kesimpulan berdasarkan p-value yang dihasilkan!** <br />

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
* **b. Hitung sampel statistik** <br />
* **c. Lakukan uji statistik (df=2)** <br />
* **d. Nilai kritikal** <br />
* **e. Keputusan** <br />
* **f. Kesimpulan** <br />

## Soal No 4
>**Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: 
https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view. 

Dengan data tersebut :

* **a. Buatlah plot sederhana untuk visualisasi data** <br />
* **b. Lakukan uji ANOVA dua arah.** <br />
* **c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).** <br />
