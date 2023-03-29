void main() {
  // variabel [i] akan berulang untuk menampilkan teks tiap baris
  int i = 10;
  while (i > 0) {
    // variabel [j] akan berulang untuk menampilkan teks tiap kolom
    int j = i;
    String text = "";
    while (j > 0) {
      text = text + "*";
      j--;
    }
    print(text);
    i--;
  }
}
