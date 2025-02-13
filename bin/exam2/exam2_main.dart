import 'exam2.dart';

void main() {
  print('Dua adalah bilangan ${oddOrEven(2)}');
  print('Tiga adalah bilangan ${oddOrEven(3)}');

  print('10 -> ${createListOneToX(10)}');
  print('1 -> ${createListOneToX(1)}');
  print('0 -> ${createListOneToX(0)}');
  print('-1 -> ${createListOneToX(-1)}');
  var text = """
****
***
**
*
""";
  print(getStars(4) == text);
  print(getStars(4));
}
