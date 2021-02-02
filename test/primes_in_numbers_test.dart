import 'package:flutter_codewars_practices/excercises/primes_in_numbers/solutions/my_answer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  dotest(int n, String exp) {
    test("Testing for: \n$n \n", () => expect(primeFactors(n), equals(exp)));
  }

  group("fixed tests", () {
    dotest(7775460, "(2**2)(3**3)(5)(7)(11**2)(17)");
    dotest(7919, "(7919)");
    dotest(17 * 17 * 93 * 677, "(3)(17**2)(31)(677)");
    dotest(933555431, "(7537)(123863)");
    dotest(342217392, "(2**4)(3)(11)(43)(15073)");
  });
}
