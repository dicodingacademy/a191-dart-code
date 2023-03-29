void main() {
  greet('Dicoding', 2015);
}

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

/// Output:
/// Halo Dicoding! Tahun ini Anda berusia 8 tahun
