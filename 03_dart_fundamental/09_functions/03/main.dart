void main() {
  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}
 
double average(num num1, num num2) {
  return (num1 + num2) / 2;
}