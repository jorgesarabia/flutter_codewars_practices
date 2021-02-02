bool validParentheses(String braces) {
  final stack = [];

  for (int x = 0; x < braces.length; x++) {
    final char = braces[x];

    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      }

      stack.removeLast();
    }
  }

  if (stack.isNotEmpty) {
    return false;
  }

  return true;
}
