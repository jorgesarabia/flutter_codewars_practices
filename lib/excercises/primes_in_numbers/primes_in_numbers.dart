import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/primes_in_numbers/solutions/my_answer.dart';
import 'package:flutter_codewars_practices/excercises/primes_in_numbers/widgets/description.dart';

class PrimesInNumbers extends StatelessWidget {
  const PrimesInNumbers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primes in Numbers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PyramidDescription(),
            PrimesDescription(),
            // BestAnswer(
            //   code: <TextSpan>[
            //     Styles.blue('List'),
            //     Styles.white('<'),
            //     Styles.blue('List'),
            //     Styles.white('<int>> pyramid(int n) {\n'),
            //     Styles.purple('\t\t return '),
            //     Styles.blue('List'),
            //     Styles.white('.generate(n, (i) => '),
            //     Styles.blue('List'),
            //     Styles.white('.filled(i + '),
            //     Styles.orange('1'),
            //     Styles.white(','),
            //     Styles.orange('1'),
            //     Styles.white('));'),
            //     Styles.white('\n}'),
            //   ],
            // ),
            TestButton(
              page: ImplementationPage(
                inputType: TextInputType.number,
                inputLabel: 'Enter a number',
                solution: (String n) {
                  final input = int.parse(n);

                  return 'primeFactors($n):\n\n${primeFactors(input)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
