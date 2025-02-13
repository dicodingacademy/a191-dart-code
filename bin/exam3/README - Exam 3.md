# Exam 3 - Collections

## Ketentuan

**Agar dapat diperiksa dengan baik, hindari beberapa hal berikut.**

1. Mengubah kode fungsi `main()` yang berada di dalam file `exam3_main.dart`.
2. Menghapus atau mengubah nama fungsi dan variable yang sudah ada di dalam file `exam3.dart`.
3. Membuat fungsi baru yang bukan merupakan tugas latihan.
4. Mengubah struktur project (menghapus, mengedit, dan memindahkan package).

## Instruksi

Untuk mengerjakan soal latihan ini, silakan buka file [exam3.dart](./exam3.dart).

### TODO 1

Lengkapi fungsi `uniqueElement`, sehingga dapat melakukan konversi list dari integer agar menjadi menjadi set dan
menyisakan nilai unik.

#### Contoh 1

- Masukan: `myList` = `[1, 2, 3, 4, 1, 2, 3]`
- Keluaran: `{1, 2, 3, 4}`

### TODO 2

Lengkapi fungsi `buildFutsalPlayersMap` agar mengembalikan `Map<String, String>` dengan data seperti pada dibawah ini.

- Output: `{Goalkeeper: Andri, Anchor: Irfan, Pivot: Fikri, Right Flank: Aldi, Left Flank: Hafid}`.

### TODO 3

Ubah posisi `Pivot` dalam map `futsalPlayers` menjadi pemain `Fajar`.

- Output: `{Goalkeeper: Andri, Anchor: Irfan, Pivot: Fajar, Right Flank: Aldi, Left Flank: Hafid}`

## Menguji Kode

Untuk menguji kode, silakan jalankan fungsi `main` pada file `exam3_main.dart`. Contoh perintah
untuk menjalankan fungsi:

```bash
dart run exam3_main.dart
```

Jika kode pada `exam3.dart` sudah diperbaiki sesuai ketentuan, maka keluarannya akan seperti berikut:

```console
{1, 2, 3, 4}
{Goalkeeper: Andri, Anchor: Irfan, Pivot: Fikri, Right Flank: Aldi, Left Flank: Hafid}
After Update:
{Goalkeeper: Andri, Anchor: Irfan, Pivot: Fajar, Right Flank: Aldi, Left Flank: Hafid}
```
