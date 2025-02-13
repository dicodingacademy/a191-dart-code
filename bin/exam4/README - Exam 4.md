# Exam 4 - OOP

## Ketentuan

**Agar dapat diperiksa dengan baik, hindari beberapa hal berikut.**

1. Mengubah kode fungsi `main()` yang berada di dalam file `exam4_main.dart`.
2. Menghapus atau mengubah nama kelas, fungsi dan variable yang sudah ada di dalam file `exam4.dart`.
3. Membuat fungsi baru yang bukan merupakan tugas latihan.
4. Mengubah struktur project (menghapus, mengedit, dan memindahkan package).

## Instruksi

Untuk mengerjakan soal latihan ini, silakan buka file [exam4.dart](./exam4.dart).

### TODO 1

Perbaiki fungsi `incrementAge` agar mengembalikan nilai umur (`age`) siswa, ditambah dengan `1`.

#### Contoh 1

- Masukan: `age` = `18`
- Keluaran: `19`

### TODO 2

Implementasikan fungsi `getStudentInfo` untuk mengembalikan informasi siswa dengan **delay 3 detik**. Fungsi ini harus
mengembalikan sebuah string yang berisi nama lengkap dan umur siswa dalam format:
`Nama Lengkap: {fullName}, Umur: {age} tahun`. Gunakan **Future** untuk menyimulasikan proses asynchronous.

### TODO 3

Buat instance dari kelas `DicodingStudent` dengan nama bebas (**minimal 3 karakter tanpa karakter angka**) dan umur
bebas (**15 hingga 99
tahun**), kemudian
simpan dalam variabel `dicodingStudent`.

## Menguji Kode

Untuk menguji kode, silakan jalankan fungsi `main` pada file `exam4_main.dart` dan tambahkan argumen. Contoh perintah
untuk menjalankan fungsi:

```bash
dart run exam4_main.dart
```

Jika kode pada `exam4.dart` sudah diperbaiki sesuai ketentuan, maka keluarannya akan seperti berikut:

```console
Full Name = Lutfi
Age       = 18
Age  + 1  = 19
Nama Lengkap: Lutfi, Umur: 18 tahun
abc
17
```
