import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/build_pile_cubes/solutions/my_answer.dart';
import 'package:flutter_codewars_practices/excercises/build_pile_cubes/widgets/description.dart';

class BuildPileCubes extends StatelessWidget {
  const BuildPileCubes(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildPileCubesDescription(),
            BestAnswer(
              title: 'My Answer',
              code: <InlineSpan>[
                Styles.white('int findNb(int m) {\n'),
                Styles.white(' int acc = '),
                Styles.orange('0'),
                Styles.white(';\n'),
                Styles.white(' int n = '),
                Styles.orange('0'),
                Styles.white(';\n\n'),
                Styles.purple(' while '),
                Styles.white('(acc < m) {\n'),
                Styles.purple('   final '),
                Styles.white('int den = n * (n + '),
                Styles.orange('1'),
                Styles.white(');\n'),
                Styles.white('   acc = (den * den)~/'),
                Styles.orange('4'),
                Styles.white(';\n\n'),
                Styles.purple('   if'),
                Styles.white('(acc == m) {\n'),
                Styles.purple('       return '),
                Styles.white('n;\n'),
                Styles.white('   }\n'),
                Styles.white(' }\n\n'),
                Styles.purple(' return '),
                Styles.white('-'),
                Styles.orange('1'),
                Styles.white(';\n'),
                Styles.white('}\n'),
              ],
            ),
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
