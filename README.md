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

* **b.  Carilah nilai t (p-value)** <br \>

Untuk menyelesaikan soal diatas yaitu mencari nilai t dapat menggunakan fungsi ```t.test``` dan ```paired``` untuk membandingakn rata-rata antara data X dan data Y.
```R
t.test(Y, X, paired = TRUE)
```

Maka, didapatkan nilai ```t = 6.8039``` dan nilai ```p-value = 0.0001373```

* **c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam  hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.**<br \>

(p-value = 0.0001373) < (𝛼 = 0,05)
Didapatkan nilai probabilitas dari uji t (p-value) = 0.0001373 lebih kecil jika dibandingkan dengan significant level 𝛼 = 0,05. Maka, hipotesis nol (H0) ditolak dan hipotesis alternatif diterima. Sehingga kesimpulan yang diambil berbanding terbalik dengan hipotesa nol (H0) yaitu ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, baik sebelum dan sesudah melakukan aktivitas A.

