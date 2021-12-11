import 'package:flutter_codewars_practices/excercises/count_the_duplicates/solutions/my_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('add', () {
    expect(duplicateCount(""), equals(0));
    expect(duplicateCount("abcde"), equals(0));
    expect(duplicateCount("aabbcde"), equals(2));
    expect(duplicateCount("aabBcde"), equals(2));
    expect(duplicateCount("Indivisibility"), equals(1));
  });
}
