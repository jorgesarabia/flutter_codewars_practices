import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/sum_of_intervals/solutions/my_solution.dart';
import 'package:flutter_codewars_practices/excercises/sum_of_intervals/widgets/description.dart';

class SumOfIntervals extends StatelessWidget {
  const SumOfIntervals(this.title);

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
            SumOfIntervalsDescription(),
            BestAnswer(
              code: <InlineSpan>[
                // Styles.white('int findNb(int m) {\n'),
                // Styles.white(' int acc = '),
                // Styles.orange('0'),
                // Styles.white(';\n'),
                // Styles.white(' int n = '),
                // Styles.orange('0'),
                // Styles.white(';\n\n'),
                // Styles.purple(' while '),
                // Styles.white('(acc < m) {\n'),
                // Styles.purple('   final '),
                // Styles.white('int den = n * (n + '),
                // Styles.orange('1'),
                // Styles.white(');\n'),
                // Styles.white('   acc = (den * den)~/'),
                // Styles.orange('4'),
                // Styles.white(';\n\n'),
                // Styles.purple('   if'),
                // Styles.white('(acc == m) {\n'),
                // Styles.purple('       return '),
                // Styles.white('n;\n'),
                // Styles.white('   }\n'),
                // Styles.white(' }\n\n'),
                // Styles.purple(' return '),
                // Styles.white('-'),
                // Styles.orange('1'),
                // Styles.white(';\n'),
                // Styles.white('}\n'),
              ],
            ),
            TestButton(
              page: ImplementationPage(
                inputLabel: 'Example 1,2,3,4, ...(pairs)',
                // inputType: TextInputType.number,
                solution: (String n) {
                  final input = listOfInts(n);
                  if (input.isEmpty) {
                    return 'Error en formateo';
                  }
                  return '$n => ${sumOfIntervals(input)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<List<int>> listOfInts(String st) {
    final answer = <List<int>>[];
    final numbers = st.split(',');

    if (numbers.length.isEven) {
      for (int x = 0; x < numbers.length; x += 2) {
        final x0 = int.tryParse(numbers[x]);
        final x1 = int.tryParse(numbers[x + 1]);

        if (x0 == null || x1 == null) {
          return [];
        }

        answer.add([x0, x1]);
      }
    }

    print(answer);

    return answer;
  }
}
