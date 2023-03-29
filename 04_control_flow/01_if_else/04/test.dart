void main() {
  try {
    final oilThatShouldBuy = mainCode();

    if (oilThatShouldBuy == 6) {
      _result(true);
    } else {
      _result(false, [
        'Kamu belum mengembalikan nilai yang tepat.',
      ]);
    }
  } catch (e) {
    _result(false, [
      'Mencoba menjalankan fungsi mainCode(), tetapi mengalami error: ${e.runtimeType}"',
    ]);
  }
}
