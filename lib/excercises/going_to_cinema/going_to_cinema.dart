import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/going_to_cinema/widgets/description.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/solutions/best_answer.dart';

class GoingToCinema extends StatelessWidget {
  const GoingToCinema();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Going to the cinema'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GoingCinemaDescription(),
            BestAnswer(
              code: <TextSpan>[
                Styles.blue('List'),
                Styles.white('<'),
                Styles.blue('List'),
                Styles.white('<int>> pyramid(int n) {\n'),
                Styles.purple('\t\t return '),
                Styles.blue('List'),
                Styles.white('.generate(n, (i) => '),
                Styles.blue('List'),
                Styles.white('.filled(i + '),
                Styles.orange('1'),
                Styles.white(','),
                Styles.orange('1'),
                Styles.white('));'),
                Styles.white('\n}'),
              ],
            ),
            TestButton(
              page: ImplementationPage(
                inputType: TextInputType.number,
                inputLabel: 'Enter a number',
                solution: (String n) => 'pyramid($n):\n\n${pyramid(int.parse(n))}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
