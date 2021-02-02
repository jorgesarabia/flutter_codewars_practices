import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/build_pile_cubes/solutions/my_answer.dart';

class BuildPileCubes extends StatelessWidget {
  const BuildPileCubes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Values'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ValidParenthesesDescription(),
            // BestAnswer(
            //   code: <InlineSpan>[
            //     Styles.white('bool validParentheses(String parentheses) {\n'),
            //     Styles.purple('  try '),
            //     Styles.white('{ '),
            //     Styles.purple('new'),
            //     Styles.blue(' RegExp'),
            //     Styles.white('(parentheses); }\n'),
            //     Styles.purple('  catch '),
            //     Styles.white('(_) { '),
            //     Styles.purple('return '),
            //     Styles.red('false'),
            //     Styles.white('; }\n'),
            //     Styles.purple('  return '),
            //     Styles.red('true'),
            //     Styles.white(';\n'),
            //     Styles.white('}\n'),
            //   ],
            // ),
            TestButton(
              page: ImplementationPage(
                inputLabel: 'Enter an integer',
                inputType: TextInputType.number,
                solution: (String n) {
                  final input = int.parse(n);
                  return '$n => ${findNb(input)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
