void main() {
  // index [i] akan berulang untuk menampilkan teks tiap baris
  for (int i = 0; i < 10; i++) {
    // index [j] akan berulang untuk menampilkan teks tiap kolom
    String text = "";
    for (int j = 0; j <= i; j++) {
      text = text + "*";
    }
    print(text);
  }
}
