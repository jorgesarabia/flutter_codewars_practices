import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/smallest_interpreter/description/description.dart';

class SmallestInterpreter extends StatelessWidget {
  const SmallestInterpreter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My smallest code interpreter (aka Brainf**k)'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SmallestInterpreterDescription(),
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
                solution: (String n) => 'pyramid($n):\n\n$n',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
