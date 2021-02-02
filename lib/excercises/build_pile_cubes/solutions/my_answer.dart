import 'dart:math';

int findNb(int m) {
  int acc = 0;
  int n = 1;
  while (acc < m) {
    final int den = n * (n + 1);
    // without math => acc = (den * den)~/4;
    acc = pow(den ~/ 2, 2) as int;
    if (acc == m) {
      return n;
    }
    n++;
  }
  return -1;
}
