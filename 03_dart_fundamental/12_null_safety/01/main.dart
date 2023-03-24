void main() {
  String? favoriteFood = null;

  buyAMeal(favoriteFood); // Compile error
}

void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}
