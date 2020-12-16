import 'package:flutter_codewars_practices/excercises/pyramid_array/solutions/best_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing for n = 0, 1, 2 and 3', () {
    expect(pyramid(0), equals([]));
    expect(
      pyramid(1),
      equals([
        [1]
      ]),
    );
    expect(
      pyramid(2),
      equals([
        [1],
        [1, 1]
      ]),
    );
    expect(
      pyramid(3),
      equals([
        [1],
        [1, 1],
        [1, 1, 1]
      ]),
    );
  });
}
