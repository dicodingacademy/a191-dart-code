import 'package:test/test.dart';
import '../bin/exam3/exam3.dart';

void main() {
  test('Exam 3 - TODO 1', () {
    // Periksa tipe data
    expect(uniqueElement([1, 2, 2, 3]), isA<Set>(),
        reason: "Fungsi seharusnya mengembalikan tipe data 'Set'");

    // List dengan elemen duplikat
    expect(uniqueElement([1, 2, 2, 3]), equals({1, 2, 3}),
        reason:
            "Fungsi seharusnya menghilangkan elemen duplikat, sehingga [1, 2, 2, 3] menjadi {1, 2, 3}.");

    // List tanpa elemen duplikat
    expect(uniqueElement([4, 5, 6]), equals({4, 5, 6}),
        reason:
            "Fungsi tidak perlu mengubah list tanpa duplikat, sehingga [4, 5, 6] menjadi {4, 5, 6}.");

    // List kosong
    expect(uniqueElement([]), equals(<int>{}),
        reason:
            "Fungsi harus mengembalikan set kosong jika input adalah list kosong.");

    // List dengan elemen semua sama
    expect(uniqueElement([7, 7, 7, 7]), equals({7}),
        reason:
            "Fungsi harus menghilangkan semua duplikat, sehingga [7, 7, 7, 7] menjadi {7}.");

    // List dengan elemen negatif
    expect(uniqueElement([-1, -2, -2, -3]), equals({-1, -2, -3}),
        reason:
            "Fungsi harus tetap menghilangkan duplikat meskipun elemen berupa angka negatif.");

    // List dengan elemen positif dan negatif
    expect(uniqueElement([1, -1, 2, -2, 1, -1]), equals({1, -1, 2, -2}),
        reason:
            "Fungsi harus menghilangkan duplikat, sehingga [1, -1, 2, -2, 1, -1] menjadi {1, -1, 2, -2}.");

    // List dengan elemen besar
    expect(uniqueElement([100000, 200000, 100000]), equals({100000, 200000}),
        reason:
            "Fungsi harus tetap menghilangkan elemen duplikat untuk angka besar.");

    // List dengan elemen tunggal
    expect(uniqueElement([42]), equals({42}),
        reason:
            "Fungsi harus mengembalikan set yang sama jika input hanya berisi satu elemen.");
  });

  test('Exam 3 - TODO 2', () {
    var futsalPlayers = buildFutsalPlayersMap();

    // Memastikan tipe data benar
    expect(futsalPlayers, isA<Map<String, String>>(),
        reason:
            "Fungsi harus mengembalikan map dengan kunci dan nilai berupa string.");

    // Memastikan map tidak kosong
    expect(futsalPlayers.isNotEmpty, isTrue,
        reason:
            "Map tidak boleh kosong, karena harus memuat informasi pemain futsal.");

    // Memastikan panjang map
    expect(futsalPlayers.length, equals(5),
        reason: "Map harus memiliki tepat 5 elemen sesuai deskripsi fungsi.");

    // Memastikan kunci-kunci ada
    expect(futsalPlayers.containsKey('Goalkeeper'), isTrue,
        reason: "Map harus memiliki kunci 'Goalkeeper'.");
    expect(futsalPlayers.containsKey('Anchor'), isTrue,
        reason: "Map harus memiliki kunci 'Anchor'.");
    expect(futsalPlayers.containsKey('Pivot'), isTrue,
        reason: "Map harus memiliki kunci 'Pivot'.");
    expect(futsalPlayers.containsKey('Right Flank'), isTrue,
        reason: "Map harus memiliki kunci 'Right Flank'.");
    expect(futsalPlayers.containsKey('Left Flank'), isTrue,
        reason: "Map harus memiliki kunci 'Left Flank'.");

    // Memastikan nilai-nilai benar
    expect(futsalPlayers['Goalkeeper'], equals('Andri'),
        reason: "Nilai untuk kunci 'Goalkeeper' harus 'Andri'.");
    expect(futsalPlayers['Anchor'], equals('Irfan'),
        reason: "Nilai untuk kunci 'Anchor' harus 'Irfan'.");
    expect(futsalPlayers['Pivot'], equals('Fikri'),
        reason: "Nilai untuk kunci 'Pivot' harus 'Fikri'.");
    expect(futsalPlayers['Right Flank'], equals('Aldi'),
        reason: "Nilai untuk kunci 'Right Flank' harus 'Aldi'.");
    expect(futsalPlayers['Left Flank'], equals('Hafid'),
        reason: "Nilai untuk kunci 'Left Flank' harus 'Hafid'.");

    // Memastikan seluruh map cocok
    expect(
        futsalPlayers,
        equals({
          'Goalkeeper': 'Andri',
          'Anchor': 'Irfan',
          'Pivot': 'Fikri',
          'Right Flank': 'Aldi',
          'Left Flank': 'Hafid'
        }),
        reason: "Seluruh map harus cocok dengan spesifikasi.");
  });

  test('Exam 3 - TODO 3', () {
    final updatedPlayers = updatePivotPlayer();

    // Memastikan tipe data map benar
    expect(updatedPlayers, isA<Map<String, String>>(),
        reason:
            "Fungsi harus mengembalikan map dengan tipe data kunci dan nilai berupa string.");

    // Memastikan kunci 'Pivot' diperbarui dengan benar
    expect(updatedPlayers['Pivot'], equals('Fajar'),
        reason: "Kunci 'Pivot' harus diperbarui dari 'Fikri' menjadi 'Fajar'.");

    // Memastikan kunci lainnya tetap tidak berubah
    expect(updatedPlayers['Goalkeeper'], equals('Andri'),
        reason: "Kunci 'Goalkeeper' tidak boleh berubah.");
    expect(updatedPlayers['Anchor'], equals('Irfan'),
        reason: "Kunci 'Anchor' tidak boleh berubah.");
    expect(updatedPlayers['Right Flank'], equals('Aldi'),
        reason: "Kunci 'Right Flank' tidak boleh berubah.");
    expect(updatedPlayers['Left Flank'], equals('Hafid'),
        reason: "Kunci 'Left Flank' tidak boleh berubah.");

    // Memastikan panjang map tetap sama
    expect(updatedPlayers.length, equals(5),
        reason: "Panjang map harus tetap sama, yaitu 5.");
  });
}
