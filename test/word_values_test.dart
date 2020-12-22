import 'package:flutter_codewars_practices/excercises/word_values/solutions/my_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Basic tests', () {
    expect(
      wordValue(["codewars", "abc", "xyz"]),
      equals([88, 12, 225]),
    );
    expect(
      wordValue(["abc abc", "abc abc", "abc", "abc"]),
      equals([12, 24, 18, 24]),
    );
    expect(
      wordValue(["abc", "abc", "abc", "abc"]),
      equals([6, 12, 18, 24]),
    );
    expect(
      wordValue(["abcdefghijklmnopqrstuvwxyz", "stamford bridge", "haskellers"]),
      equals([351, 282, 330]),
    );
    expect(
      wordValue(["i love coding", "better than pizza", "i got this"]),
      equals([115, 382, 321]),
    );
    expect(
      wordValue(["mercury", "venus", "earth mars", "jupiter saturn", "uranus neptune"]),
      equals([103, 162, 309, 768, 945]),
    );
    expect(
      wordValue(["a cup", "some tea", "more coffee", "one glass"]),
      equals([41, 156, 273, 368]),
    );
    expect(
      wordValue(["a", "e", "i", "o", "u", "the end"]),
      equals([1, 10, 27, 60, 105, 336]),
    );
    expect(
      wordValue(["coding", "better pizza", "i got this too"]),
      equals([52, 296, 471]),
    );
  });
}
