int duplicateCount(String text) {
  final leters = text.split('');
  final answer = {};

  leters.forEach((ch) {
    final x = ch.toLowerCase().allMatches(text.toLowerCase());
    answer[ch.toLowerCase()] = x.length;
  });

  answer.removeWhere((key, value) => value == 1);

  return answer.length;
}
