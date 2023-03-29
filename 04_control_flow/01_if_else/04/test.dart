void main() {
  try {
    final oilThatShouldBuy = mainCode();

    if (oilThatShouldBuy == 6) {
      _return(true);
    } else {
      _return(false, [
        'Kamu belum mengembalikan nilai yang tepat.',
      ]);
    }
  } catch (e) {
    _return(false, [
      'Mencoba menjalankan fungsi mainCode(), tetapi mengalami error: ${e.runtimeType}"',
    ]);
  }
}
