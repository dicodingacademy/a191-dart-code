import 'package:test/test.dart';
import '../bin/exam4/exam4.dart';

void main() {
  // Membuat objek DicodingStudent
  final dicodingStudent = DicodingStudent('John Doe', 25);

  test('Exam 4 - TODO 1', () {
    // Memastikan tipe data properti
    expect(dicodingStudent.fullName, isA<String>(),
        reason:
            "Properti `fullName` harus bertipe String karena berisi nama lengkap siswa.");
    expect(dicodingStudent.age, isA<int>(),
        reason:
            "Properti `age` harus bertipe int karena berisi umur siswa dalam satuan tahun.");

    // Memastikan nilai properti diinisialisasi dengan benar
    expect(dicodingStudent.fullName, equals('John Doe'),
        reason:
            "DicodingStudent('John Doe', 25). Properti `fullName` seharusnya diinisialisasi dengan nilai 'John Doe'.");
    expect(dicodingStudent.age, equals(25),
        reason:
            "DicodingStudent('John Doe', 25). Properti `age` seharusnya diinisialisasi dengan nilai 25.");

    // Cek fungsi `incrementAge()` apakah mengembalikan nilai yang sesuai
    expect(dicodingStudent.incrementAge(), 26,
        reason:
            "DicodingStudent('John Doe', 25). Fungsi `incrementAge()` seharusnya mengembalikan nilai 26.");
  });

  test('Exam 4 - TODO 2', () async {
    // Waktu mulai
    var startTime = DateTime.now();

    // Panggil fungsi yang diuji
    var result = await dicodingStudent.getStudentInfo();

    // Waktu selesai
    var endTime = DateTime.now();
    var duration = endTime.difference(startTime);

    // Pastikan tipe kembalian adalah string
    expect(result, isA<String>(), reason: 'Output harus berupa string.');

    // Pastikan output sesuai dengan format dan nilai yang diharapkan
    expect(result, equals('Nama Lengkap: John Doe, Umur: 25 tahun'));

    // Pastikan delay sekitar 3 detik (dengan toleransi 0.5 detik).
    expect(
      duration.inMilliseconds,
      inInclusiveRange(3000, 3500),
      reason: 'Fungsi harus memiliki delay sekitar 3 detik.',
    );
  });

  test('Exam 4 - TODO 3', () {
    // Panggil fungsi createStudent
    final student = createStudent();

    // Pastikan tipe data adalah DicodingStudent
    expect(student, isA<DicodingStudent>(),
        reason: "Fungsi tidak mengembalikan tipe data 'DicodingStudent'");

    // Pastikan properti fullName memiliki minimal 3 huruf tanpa angka
    expect(student.fullName.length, greaterThanOrEqualTo(3),
        reason: 'Nama harus memiliki minimal 3 karakter.');
    expect(
      RegExp(r'^[a-zA-Z]+$').hasMatch(student.fullName),
      isTrue,
      reason: 'Nama hanya boleh mengandung huruf tanpa angka.',
    );

    // Pastikan properti age berada dalam rentang 15 hingga 99 tahun
    expect(student.age, inInclusiveRange(15, 99),
        reason: 'Umur harus berada dalam rentang 15 hingga 99 tahun.');
  });
}
