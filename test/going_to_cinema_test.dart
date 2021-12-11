import 'package:flutter_codewars_practices/excercises/going_to_cinema/solutons/my_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Basic tests', () {
    expect(movie(500, 15, 0.9), equals(43));
    expect(movie(100, 10, 0.95), equals(24));
    expect(movie(0, 10, 0.95), equals(2));
    expect(movie(250, 20, 0.9), equals(21));
    expect(movie(500, 20, 0.9), equals(34));
    expect(movie(2500, 20, 0.9), equals(135));
  });
}
