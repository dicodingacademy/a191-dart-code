void main() {
  var sum = (int num1, int num2) => num1 + num2;

  Function printLambda = () => print('This is lambda function');

  // Memanggil nama variabel dari anonymous function
  print(sum(3, 4));
  printLambda();
}
