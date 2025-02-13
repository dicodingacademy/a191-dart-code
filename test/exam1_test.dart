import 'dart:io';
import 'package:test/test.dart';
import '../bin/exam1/exam1.dart';

void main() {
  final envValue = Platform.environment['NAME'] ?? '';

  test('Exam 1 - TODO 1', () {
    var sInfo = studentInfo();
    // Test untuk memeriksa jenis data
    expect(sInfo[0], isA<String>(), reason: "Variable name bukan String");
    expect(sInfo[1], isA<int>(), reason: "Variable favNumber bukan integer");
    expect(sInfo[2], isA<bool>(),
        reason: "Variable isDicodingStudent bukan boolean");

    // Test untuk memeriksa value
    expect(sInfo[0], envValue, reason: "Nilai variable name tidak sesuai");
    expect(sInfo[1] >= 1, true,
        reason: "Variable favNumber tidak dalam range 1-10 (kurang dari 1)");
    expect(sInfo[1] <= 10, true,
        reason: "Variable favNumber tidak dalam range 1-10 (lebih dari 10)");
    expect(sInfo[2], true,
        reason: "Variable isDicodingStudent tidak bernilai true");
  });

  test('Exam 1 - TODO 2', () {
    // Test untuk memeriksa tipe kembalian
    expect(circleArea(7), isA<double>(),
        reason:
            "Fungsi tidak mengembalikan tipe data double (tes angka positif)");
    expect(circleArea(-10), isA<double>(),
        reason:
            "Fungsi tidak mengembalikan tipe data double (tes angka negatif)");

    // Test untuk memeriksa hasil kembalian dari method
    expect(circleArea(7), equals(153.93804002589985),
        reason:
            "Apabila nilai r='7', hasil kembalian bukan 153.93804002589985");
    expect(circleArea(20), equals(1256.6370614359173),
        reason:
            "Apabila nilai r='20', hasil kembalian bukan 1256.6370614359173");
    expect(circleArea(0), equals(0.0),
        reason: "Apabila nilai r='0', hasil kembalian bukan 0.0");
    expect(circleArea(-10), equals(0.0),
        reason: "Apabila nilai r='-10', hasil kembalian bukan 0.0");
  });

  test('Exam 1 - TODO 3', () {
    // Test untuk input null
    expect(parseAndAddOne(null), isNull,
        reason:
            "Jika input adalah null, fungsi seharusnya mengembalikan null.");

    // Test untuk input positif (valid)
    expect(parseAndAddOne("10"), equals(11),
        reason: "Jika input adalah '10', fungsi seharusnya mengembalikan 11.");

    // Test untuk input negatif
    expect(parseAndAddOne("-5"), equals(-4),
        reason: "Jika input adalah '-5', fungsi seharusnya mengembalikan -4.");

    // Test untuk input tidak valid (bukan angka)
    expect(
        () => parseAndAddOne("abc"),
        throwsA(isA<Exception>().having((e) => e.toString(), 'message',
            contains('Input harus berupa angka'))),
        reason:
            "Jika input adalah 'abc', fungsi seharusnya melemparkan Exception dengan pesan 'Input harus berupa angka'.");

    // Test untuk input kosong
    expect(
        () => parseAndAddOne(""),
        throwsA(isA<Exception>().having((e) => e.toString(), 'message',
            contains('Input harus berupa angka'))),
        reason:
            "Jika input adalah string kosong, fungsi seharusnya melemparkan exception dengan pesan 'Input harus berupa angka'.");
  });
}

// How to run example =
// "$ NAME="Your Name" dart test test/exam1_test.dart"
