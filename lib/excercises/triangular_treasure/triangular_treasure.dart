import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/triangular_treasure/solutions/best_answer.dart';
import 'package:flutter_codewars_practices/excercises/triangular_treasure/widgets/description.dart';

class TriangularTreasure extends StatelessWidget {
  const TriangularTreasure();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Triangular Treasure'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TriangularTreasureDescription(),
            BestAnswer(
              code: <TextSpan>[
                Styles.white('triangular(n) => n < '),
                Styles.orange('0'),
                Styles.white(' ? '),
                Styles.orange('0'),
                Styles.white(' : (n+'),
                Styles.orange('1'),
                Styles.white(')/'),
                Styles.orange('2'),
                Styles.white('*n'),
                Styles.white(';'),
              ],
            ),
            TestButton(
              page: ImplementationPage(
                inputType: TextInputType.number,
                inputLabel: 'Enter a number',
                solution: (String n) => 'triangular($n)==${triangular(int.parse(n))}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
