import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class PiApproximationDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    Styles.white('The aim of the kata is to try to show how difficult it can be to calculate '),
                    Styles.white('decimals of an irrational number with a certain precision. We have chosen '),
                    Styles.white('to get a few decimals of the number "pi" using the following infinite '),
                    Styles.white('series (Leibniz 1646–1716):\n\n'),
                    Styles.white('PI / 4 = 1 - 1/3 + 1/5 - 1/7 + ... which gives an approximation of PI / 4.\n\n'),
                    Styles.blue('http://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80'),
                    Styles.white('\n\nTo have a measure of the difficulty we will count how '),
                    Styles.white('iterations are needed '),
                    Styles.white('to calculate PI with a given precision. \n\n'),
                    Styles.white('There are several ways to determine the precision of the calculus '),
                    Styles.white('but to keep things easy we will calculate to within epsilon of your '),
                    Styles.white('language Math::PI constant. In other words we will stop the iterative '),
                    Styles.white('process when the absolute value of the difference between our '),
                    Styles.white('calculation and the Math::PI constant of the given language is less '),
                    Styles.white('than epsilon.\n\n'),
                    Styles.white('Your function returns an array or an arrayList or a string or a tuple '),
                    Styles.white('depending on the language (See sample tests) where your '),
                    Styles.white('approximation of PI has 10 decimals \n\n'),
                    Styles.white('In Haskell you can use the function "trunc10Dble" (see "Your solution"); '),
                    Styles.white('in Clojure you can use the function "round" (see "Your solution");'),
                    Styles.white('in OCaml or Rust the function "rnd10" (see "Your solution") in order to avoid '),
                    Styles.white('discussions about the result.\n\n'),
                  ],
                ),
              ),
            ),
          ),
          ExampleSection(
            textSize: 15.0,
            label: 'Example:',
            exampleItems: [
              'your function calculates 1000 iterations and 3.140592653839794 but returns:',
              'iter_pi(0.001) --> [1000, 3.1405926538]',
            ],
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    Styles.white('Unfortunately, this series converges too slowly to be useful, '),
                    Styles.white('as it takes over 300 terms to obtain a 2 decimal place precision. '),
                    Styles.white('To obtain 100 decimal places of PI, it was calculated that one would need '),
                    Styles.white('to use at least 10^50 terms of this expansion!\n\n'),
                    Styles.white('About PI:'),
                    Styles.blue(' http://www.geom.uiuc.edu/~huberty/math5337/groupe/expresspi.html'),
                    Styles.white('\n'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
