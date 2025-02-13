# Exam 1 - Dart Fundamental

## Ketentuan

**Agar dapat diperiksa dengan baik, hindari beberapa hal berikut.**

1. Mengubah kode fungsi `main()` yang berada di dalam file `exam1_main.dart`.
2. Menghapus atau mengubah nama fungsi dan variable yang sudah ada di dalam file `exam1.dart`.
3. Membuat fungsi baru yang bukan merupakan tugas latihan.
4. Mengubah struktur project (menghapus, mengedit, dan memindahkan package).

## Instruksi

Untuk mengerjakan soal latihan ini, silakan buka file [exam1.dart](./exam1.dart).

### TODO 1

Deklarasi variabel string `name` dan inisialisasi dengan nama lengkap Anda (yang terdaftar di Dicoding, cek
di <https://www.dicoding.com/settings/profile>).

Deklarasi variabel int `favNumber` dan inisialisasi dengan angka favorit Anda (bebas, dari 1-10)!

Deklarasi variabel bool `isDicodingStudent` dan inisialisasi dengan nilai `true`

#### Contoh 1

- Inisiasi variabel:
  - `name` = `Abdullah Fikri`
  - `favNumber` = `10`
  - `isDicodingStudent` = `true`
- Keluaran: `true`

### TODO 2

Perbaiki fungsi `circleArea` agar mengembalikan nilai luas lingkaran dengan tipe data double berdasarkan
jari-jari (`r`).

Jika `r < 0`, kembalikan nilai `0.0` (double)

#### Contoh 1

- Masukan: r = `7`
- Keluaran: `153.93804002589985`

#### Contoh 2

- Masukan: r = `20`
- Keluaran: `1256.6370614359173`

#### Contoh 3

- Masukan: r = `0`
- Keluaran: `0.0`

#### Contoh 4

- Masukan: r = `-10`
- Keluaran: `0.0`

### TODO 3

Perbaiki `parseAndAddOne` fungsi, periksa apakah input bernilai `null`. Jika `null`, kembalikan `null` sebagai hasil.
Jika input tidak `null`, coba konversi input dari string ke integer menggunakan `int.parse()`. Jika konversi berhasil,
tambahkan `1` ke nilai integer tersebut dan kembalikan hasilnya. Jika terjadi kesalahan selama konversi (misalnya, input
bukan angka), throw `Exception` dengan pesan '`Input harus berupa angka`'.

#### Contoh 1

- Masukan: input = `1` (string)
- Keluaran: `2`

#### Contoh 2

- Masukan: input = `null`
- Keluaran: `null`

#### Contoh 3

- Masukan: input = `a` (string)
- Keluaran: `Exception: Input harus berupa angka` (pesan error)

## Menguji Kode

Untuk menguji kode, silakan jalankan fungsi `main` pada file `exam1_main.dart` dan tambahkan argumen. Contoh perintah
untuk menjalankan fungsi:

```bash
dart run exam1_main.dart Your Name
```

Jika kode pada `exam1.dart` sudah diperbaiki sesuai ketentuan, maka keluarannya akan seperti berikut:

```console
true
153.93804002589985
1256.6370614359173
0.0
0.0
2
null
Exception: Input harus berupa angka
```
