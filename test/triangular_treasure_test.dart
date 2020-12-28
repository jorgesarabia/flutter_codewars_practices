import 'package:flutter_codewars_practices/excercises/triangular_treasure/solutions/best_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('add', () {
    expect(triangular(2), equals(3));
    expect(triangular(4), equals(10));
    expect(triangular(9), equals(45));
    expect(triangular(-9), equals(0));
  });
}
