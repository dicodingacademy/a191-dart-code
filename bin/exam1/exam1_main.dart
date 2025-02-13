import 'exam1.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print(
        'Argumen tidak ada, jalankan ulang file exam1_main.dart dengan argumen.');
  } else {
    var studentName = args.join(' ');
    if (studentInfo()[0].runtimeType == String &&
        studentInfo()[1].runtimeType == int &&
        studentInfo()[2].runtimeType == bool &&
        studentInfo()[0] == studentName) {
      print(true);
    }

    print(circleArea(7));
    print(circleArea(20));
    print(circleArea(0));
    print(circleArea(-10));

    print(parseAndAddOne('1'));
    print(parseAndAddOne(null));

    try {
      print(parseAndAddOne('a'));
    } catch (e) {
      print(e);
    }
  }
}

// How to run example =
// "dart run .\bin\exam1\exam1_main.dart Your Name"
