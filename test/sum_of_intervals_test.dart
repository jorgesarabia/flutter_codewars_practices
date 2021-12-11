import 'package:flutter_codewars_practices/excercises/sum_of_intervals/solutions/my_solution.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('basic tests', () {
    test("Testing for [[1, 5]]", () {
      expect(
        sumOfIntervals([
          [1, 5]
        ]),
        equals(4),
      );
    });
    test(
      "Testing for [[1, 5], [6, 10]]",
      () {
        expect(
          sumOfIntervals([
            [1, 5],
            [6, 10]
          ]),
          equals(8),
        );
      },
    );
    test("Testing for [[1, 5], [1, 5]]", () {
      expect(
        sumOfIntervals([
          [1, 5],
          [1, 5]
        ]),
        equals(4),
      );
    });
    test("Testing for [[1, 4], [7, 10], [3, 5]]", () {
      expect(
        sumOfIntervals([
          [1, 4],
          [7, 10],
          [3, 5]
        ]),
        equals(7),
      );
    });
  });

  group('Test from Ineskay', () {
    test("Testing for [[1, 5]]", () {
      expect(
        sumOfIntervalsIneskay([
          [1, 5]
        ]),
        equals(4),
      );
    });
    test(
      "Testing for [[1, 5], [6, 10]]",
      () {
        expect(
          sumOfIntervalsIneskay([
            [1, 5],
            [6, 10]
          ]),
          equals(8),
        );
      },
    );
    test("Testing for [[1, 5], [1, 5]]", () {
      expect(
        sumOfIntervalsIneskay([
          [1, 5],
          [1, 5]
        ]),
        equals(4),
      );
    });
    test("Testing for [[1, 4], [7, 10], [3, 5]]", () {
      expect(
        sumOfIntervalsIneskay([
          [1, 4],
          [7, 10],
          [3, 5]
        ]),
        equals(7),
      );
    });
  });
}
