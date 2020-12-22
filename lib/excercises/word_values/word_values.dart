import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/word_values/solutions/my_answer.dart';
import 'package:flutter_codewars_practices/excercises/word_values/widgets/description.dart';

class WordValues extends StatelessWidget {
  const WordValues();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Values'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WordValuesDescription(),
            BestAnswer(
              code: <InlineSpan>[
                Styles.blue('List'),
                Styles.white('<int> wordValue('),
                Styles.blue('List'),
                Styles.white('<String> arr) {\n'),
                Styles.purple(' final '),
                Styles.white('result = <int>[];\n\n'),
                Styles.purple(' for '),
                Styles.white('(int x = '),
                Styles.orange('0'),
                Styles.white('; x < arr.length; x++) {\n'),
                Styles.white('  int sum = '),
                Styles.orange('0'),
                Styles.white(';\n'),
                Styles.white('  arr[x].runes.forEach((int rune) {\n'),
                Styles.purple('   final '),
                Styles.white('charVal = rune - '),
                Styles.orange('96'),
                Styles.white(';\n'),
                Styles.purple('   if '),
                Styles.white('(charVal >= '),
                Styles.orange('1'),
                Styles.white(' && charVal <= '),
                Styles.orange('26'),
                Styles.white(') {\n'),
                Styles.white('     sum += charVal;\n'),
                Styles.white('   }\n'),
                Styles.white('  });\n'),
                Styles.white('  result.add(sum * (x + '),
                Styles.orange('1'),
                Styles.white('));\n'),
                Styles.white(' }\n\n'),
                Styles.purple(' return '),
                Styles.white('result;\n'),
                Styles.white('}\n'),
              ],
            ),
            TestButton(
              page: ImplementationPage(
                inputLabel: 'Enter a list (separate items with commas)',
                solution: (String n) {
                  final list = n.split(',');
                  return '$list: ${wordValue(list)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
