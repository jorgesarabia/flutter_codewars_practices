import 'dart:math';

import 'package:flutter_codewars_practices/excercises/smallest_interpreter/solutions/my_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test echo until byte 255 encountered", () {
    expect(
      brainLuck(",+[-.,+]", "Codewars${new String.fromCharCode(255)}"),
      equals("Codewars"),
    );
  });

  test("hello world", () {
    expect(
      brainLuck(
        '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.',
        '',
      ),
      equals('Hello World!'),
    );
  });

  test("multiplying", () {
    Random r = new Random();
    List<int> nums = [r.nextInt(sqrt(255).toInt()), r.nextInt(sqrt(255).toInt())];
    expect(
      brainLuck(
        ',>,<[>[->+>+<<]>>[-<<+>>]<<<-]>>.',
        String.fromCharCodes([nums[0], nums[1]]),
      ),
      String.fromCharCode(nums[0] * nums[1]),
    );
  });
}
