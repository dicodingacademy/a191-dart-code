void main() {
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);
}

/* output
[0]
 */
