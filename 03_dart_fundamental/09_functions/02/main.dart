void main() {
  greet('Dicoding', 2015);  // output : Halo Dicoding! Tahun ini Anda berusia 7 tahun
}
 
void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}