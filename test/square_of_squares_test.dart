import 'dart:math' as Math;

import 'package:flutter_codewars_practices/excercises/a_square_of_squares/solutions/best_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should work for some examples', () {
    expect(isSquare(-1), isFalse);
    expect(isSquare(0), isTrue);
    expect(isSquare(3), isFalse);
    expect(isSquare(4), isTrue);
    expect(isSquare(25), isTrue);
    expect(isSquare(26), isFalse);
  });

  test('should work for random square numbers', () {
    var r = new Math.Random();
    new List.generate(100, (i) => i).forEach((n) {
      var x = r.nextInt(65520);
      expect(isSquare(x * x), isTrue);
    });
  });
}
