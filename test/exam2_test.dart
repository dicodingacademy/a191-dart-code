import 'package:test/test.dart';
import '../bin/exam2/exam2.dart';

void main() {
  test('Exam 2 - TODO 1', () {
    expect(
        oddOrEven(2),
        allOf(
          isA<String>(), // Memastikan tipe kembalian fungsi adalah String
          equals('Genap'), // Memastikan nilainya adalah 'Genap'
        ),
        reason:
            "Tipe kembalian bukan String atau fungsi `oddOrEven(2)` tidak mengembalikan 'Genap'");

    expect(oddOrEven(100), equals('Genap'),
        reason: "`oddOrEven(100)` tidak mengembalikan 'Genap'");
    expect(oddOrEven(42), equals('Genap'),
        reason: "`oddOrEven(42)` tidak mengembalikan 'Genap'");

    // Tes bilangan ganjil
    expect(oddOrEven(1), equals('Ganjil'),
        reason: "`oddOrEven(1)` tidak mengembalikan 'Ganjil'");
    expect(oddOrEven(99), equals('Ganjil'),
        reason: "`oddOrEven(99)` tidak mengembalikan 'Ganjil'");
    expect(oddOrEven(77), equals('Ganjil'),
        reason: "`oddOrEven(77)` tidak mengembalikan 'Ganjil'");

    // Tes bilangan genap negatif
    expect(oddOrEven(-2), equals('Genap'),
        reason: "`oddOrEven(-2)` tidak mengembalikan 'Genap'");
    expect(oddOrEven(-100), equals('Genap'),
        reason: "`oddOrEven(-100)` tidak mengembalikan 'Genap'");
    expect(oddOrEven(-42), equals('Genap'),
        reason: "`oddOrEven(-42)` tidak mengembalikan 'Genap'");

    // Tes bilangan ganjil negatif
    expect(oddOrEven(-1), equals('Ganjil'),
        reason: "`oddOrEven(-1)` tidak mengembalikan 'Ganjil'");
    expect(oddOrEven(-99), equals('Ganjil'),
        reason: "`oddOrEven(-99)` tidak mengembalikan 'Ganjil'");
    expect(oddOrEven(-77), equals('Ganjil'),
        reason: "`oddOrEven(-77)` tidak mengembalikan 'Ganjil'");

    // Tes jika bilangan nol (genap)
    expect(oddOrEven(0), equals('Genap'),
        reason: "`oddOrEven(0)` tidak mengembalikan 'Genap'");

    for (var i = -100; i < 100; i = i + 2) {
      expect(oddOrEven(i), equals('Genap'),
          reason: "`oddOrEven($i)` tidak mengembalikan 'Genap'");
    }

    for (var i = -99; i < 100; i = i + 2) {
      expect(oddOrEven(i), equals('Ganjil'),
          reason: "`oddOrEven($i)` tidak mengembalikan 'Ganjil'");
    }
  });

  test('Exam 2 - TODO 2', () {
    // Cek bahwa fungsi mengembalikan tipe data List dengan jumlah data yang sama dengan parameter
    final list = createListOneToX(30);
    expect(list, isA<List<int>>(),
        reason: "Tipe kembalian bukan List dari integer");
    expect(list.length, 30, reason: "Jumlah item pada list tidak sesuai");

    // Mengecek item pada list
    for (int i = 0; i < 30; i++) {
      expect(list[i], isA<int>(),
          reason: "Terdapat data didalam list yang bukan integer");
      expect(list[i], i + 1,
          reason: "Terdapat nilai yang tidak sesuai dalam list");
    }

    // Cek jika input adalah 1, 0, dan bilangan negatif
    expect(createListOneToX(1), [1],
        reason: "`createListOneToX(1)` tidak mengembalikan [1]");
    expect(createListOneToX(0), [],
        reason: "`createListOneToX(0)` tidak mengembalikan []");
    expect(createListOneToX(-1), [],
        reason: "`createListOneToX(-1)` tidak mengembalikan []");
  });

  test('Exam 2 - TODO 3', () {
    // Input 1, mengembalikan satu bintang
    expect(getStars(1).trim(), equals('*'),
        reason: "`getStars(1)` tidak mengembalikan '*'");

    // Input 3 mengembalikan pola yang sama
    const threeStar = '''***
**
*
''';
    expect(getStars(3), equals(threeStar),
        reason: "getStars(3)` tidak mengembalikan output yang sesuai");

    // Input 5 mengembalikan pola yang sama
    const fiveStar = '''*****
****
***
**
*
''';
    expect(getStars(5), equals(fiveStar),
        reason: "getStars(5)` tidak mengembalikan output yang sesuai");

    // Input 0 mengembalikan string kosong
    expect(getStars(0), equals(''),
        reason: "`getStars(0)` tidak mengembalikan string kosong");

    // Input negatif, mengembalikan string kosong
    expect(getStars(-3), equals(''),
        reason: "`getStars(-3)` tidak mengembalikan string kosong");
  });
}
