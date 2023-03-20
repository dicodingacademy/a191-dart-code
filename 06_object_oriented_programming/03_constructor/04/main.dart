void main() {
  var dicodingCat = Animal.cat('Gray', 4.2);
}

class Animal {
  String name = "";
  int age = 0;
  double weight = 0;

  Animal(this.name, this.age, this.weight);

  // Mendefinisikan properti kelas sebelum constructor body berjalan
  Animal.cat(this.name, this.weight) : age = 2 {
    print("This cat named $name is $age years old");
  }
}
