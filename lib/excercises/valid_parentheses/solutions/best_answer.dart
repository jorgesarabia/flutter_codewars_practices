bool validParentheses(String parentheses) {
  try {
    new RegExp(parentheses);
  } catch (_) {
    return false;
  }
  return true;
}
