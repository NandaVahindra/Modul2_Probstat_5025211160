# Modul2_Probstat_5025211160  
## Nama  : Made Nanda Wija Vahindra  
## NRP   : 5025211160  
## 1
### a.
Standar deviasi dari selisih tabel ditemukan yaitu sebesar 6.359595  
### b.
nilai p-value didapatkan dengan fungsi t.test() dengan hasil yaitu p-value = 6.003e-05
### c.
Berdasarkan hasil yang telah didapatkan sebelumnya, nilai probabilitas lebih kecil daripada signifikan level 0.05 sehingga tolak hipotesis nol dan terimpa hipotesis alternatif
Artinya terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A
## 2
### a.
saya setuju dengan klaim yang diberikan karena dengan rata rata 23500 dari sampel acak dengan standar deviasi 3900 maka persebaran data distribusi normal akan lebih ke daerah lebih dari 20000 kilometer sehingga kemungkinan klaim tersebut valid semakin tinggi.
### b.
Output yang dihasilkan adalah dengan confidence interval 95%, rata rata jarak tempuh mobil menjadi diatas 22858.51 dan dapat dibuktikan bahwa rata rata jarak tempuh mobil per tahun lebih dari 20000 km dengan nilai p value yang lebih kecil dari signifikan level 0.05
### c.
Nilai p value lebih kecil dari signifikan level 0.05, maka hipotesis nol ditolak dan hipotesis alternatif diterima

## 3
### a.
H0 : u1 = u2
H1 : u1 ≠ u2

### b.
untuk menghitung sampel statistik digunakan fungsi tsum.test dengan parameter yang sesuai

### c.
Uji statistik df=2 dilakukan dengan menggunakan fungsi plotDist() untuk mendapatkan gambar dari statistik dengan derajat bebas 2

### d. 
nilai kritikal didapatkan dengan menggunakan fungsi qchisq() dengan nilai df = 2

### e.
Keputusan adalah teori formal pengambilan keputusan dapat diperoleh dengan menggunakan fungsi t.test

### f.
Kesimpulan yang dapat diambil yaitu tidak ada perbedaan rata rata jika dilihat dari uji statistik namun, ada kemungkinan untuk terlihat perbedaannya meski tidak signifikan apabila dipengaruhi oleh nilai kritikal

## 4
### a. 
untuk hasil dari soal dapat dilihat pada code program dan gambar yang telah ada pada folder.

### b. 
Homogeneity of variance diperiksa dengan menggunakan fungsi berlett.test() dengan parameter data yang telah diinput pada soal a
dari hasil uji dapat disimpulkan bahwa asumsi kesamaan variance terpenuhi

### c.
Digunakan fungsi lm() dan anova() untuk membuat uji anova dan model linier

### d.
dari hasil c nilai p yang didapatkan adalah 0.0013 dan terdapat perbedaan yang signifikan pada panjang kucing masing masing grup

### e.
Untuk memverifikasi jawaban model 1 dnegan post hooc test tukeyHSD digunakan fungsi TukeyHSD() .
Jenis kuncing yang lebih panjang dari yang lain adalah grup kucing hitam terhadap lainnya karena hasil dari tukey menunjukkan perbedaan panjang yang signifikan

### f.
Untuk visualisasi data digunakan fungsi ggplot()

## 5
### a.
Plot sederhana untuk visualisasi data dapat dilihat pada Code dengan visualisasi menggunakan fungsi qplot()

### b.
uji anova dua arah untuk 2 faktor digunakan fungsi summary(aov())

### c.
Fungsi group_by() lalu digunakan untuk melakukan data summary dengan fungsi summarise() dengan standar deviasi yang sesuai

### d.
pengujian tukey dengan fungsi TukeyHSD() dapat dilihat pada program dan hasil run console

### e.
compact letter display dibuat dengan fungsi multcomLetterS4() lalu tambahkan ke dalam tabel dengan mean dan standar deviasi sebelumnya
