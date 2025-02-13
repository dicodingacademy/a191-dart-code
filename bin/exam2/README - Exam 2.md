# Exam 2 - Control Flow

## Ketentuan

**Agar dapat diperiksa dengan baik, hindari beberapa hal berikut.**

1. Mengubah kode fungsi `main()` yang berada di dalam file `exam2_main.dart`.
2. Menghapus atau mengubah nama fungsi dan variable yang sudah ada di dalam file `exam2.dart`.
3. Membuat fungsi baru yang bukan merupakan tugas latihan.
4. Mengubah struktur project (menghapus, mengedit, dan memindahkan package).

## Instruksi

Untuk mengerjakan soal latihan ini, silakan buka file [exam2.dart](./exam2.dart).

### TODO 1

Lengkapi fungsi untuk mengecek bilangan ganjil/genap. Jika bilangan ganjil, fungsi akan mengembalikan string `Ganjil`.
Jika bilangan genap, fungsi akan mengembalikan string `Genap`.

#### Contoh 1

- Masukan: `number` = `6`
- Keluaran: `Genap`

#### Contoh 2

- Masukan: `number` = `7`
- Keluaran: `Ganjil`

### TODO 2

Lengkapi fungsi `createListOneToX` untuk membuat list dari 1 hingga `x`, dan jika `x` kurang dari 1 akan mengembalikan
list kosong `[]`.

#### Contoh 1

- Masukkan: `x = 10`
- Keluaran: `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

#### Contoh 2

- Masukkan: `x = 1`
- Keluaran: `[1]`

#### Contoh 3

- Masukkan: `x = 0`
- Keluaran: `[]`

#### Contoh 4

- Masukkan: `x = -1`
- Keluaran: `[]`

### TODO 3

Buat loop yang dimulai dari nilai `n` dan berkurang hingga 1. Pada setiap iterasi, tambahkan string yang berisi `*`
sebanyak nilai i ke dalam result, diikuti dengan karakter newline (`\n`) untuk membuat baris baru. Loop ini akan
menghasilkan pola segitiga terbalik dari bintang.

#### Contoh 1

- Masukan: `n` = `4`
- Keluaran:

```text
****
***
**
*
```

## Menguji Kode

Untuk menguji kode, silakan jalankan fungsi `main` pada file `exam2_main.dart`. Contoh perintah
untuk menjalankan fungsi:

```bash
dart run exam2_main.dart
```

Jika kode pada `exam2.dart` sudah diperbaiki sesuai ketentuan, maka keluarannya akan seperti berikut:

```console
Dua adalah bilangan Genap
Tiga adalah bilangan Ganjil
10 -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
1 -> [1]
0 -> []
-1 -> []
true
****
***
**
*
```
