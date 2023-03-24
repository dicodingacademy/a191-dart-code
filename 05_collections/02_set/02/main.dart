void main() {
  var numberSet = {1, 4, 6};

  // Menambahkan data ke dalam Set.
  numberSet.add(6);
  numberSet.addAll({2, 2, 3});

  print(numberSet);
}

/* Output: 
{1, 4, 6, 2, 3}
*/
