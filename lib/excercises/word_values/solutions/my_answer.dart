List<int> wordValue(List<String> arr) {
  final result = <int>[];

  for (int x = 0; x < arr.length; x++) {
    int sum = 0;
    arr[x].runes.forEach((int rune) {
      final charVal = rune - 96;
      if (charVal >= 1 && charVal <= 26) {
        sum += charVal;
      }
    });
    result.add(sum * (x + 1));
  }

  return result;
}
