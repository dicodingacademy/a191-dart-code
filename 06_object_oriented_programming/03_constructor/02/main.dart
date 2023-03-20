void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);
}

class Animal {
  // kelas tanpa constructor
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
}
