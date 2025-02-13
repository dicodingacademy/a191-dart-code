import 'exam4.dart';

Future<void> main() async {
  final dicodingStudent = DicodingStudent('Lutfi', 18);

  print('Full Name = ${dicodingStudent.fullName}');
  print('Age       = ${dicodingStudent.age}');

  print('Age + 1   = ${dicodingStudent.incrementAge()}');

  final studentInfo = await dicodingStudent.getStudentInfo();
  print(studentInfo);

  print(await createStudent().fullName);
  print(await createStudent().age);
}
