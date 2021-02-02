import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/valid_parentheses/solutions/my_answer.dart';
import 'package:flutter_codewars_practices/excercises/valid_parentheses/widgets/description.dart';

class ValidParentheses extends StatelessWidget {
  const ValidParentheses();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Values'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ValidParenthesesDescription(),
            BestAnswer(
              code: <InlineSpan>[
                Styles.white('bool validParentheses(String parentheses) {\n'),
                Styles.purple('  try '),
                Styles.white('{ '),
                Styles.purple('new'),
                Styles.blue(' RegExp'),
                Styles.white('(parentheses); }\n'),
                Styles.purple('  catch '),
                Styles.white('(_) { '),
                Styles.purple('return '),
                Styles.red('false'),
                Styles.white('; }\n'),
                Styles.purple('  return '),
                Styles.red('true'),
                Styles.white(';\n'),
                Styles.white('}\n'),
              ],
            ),
            TestButton(
              page: ImplementationPage(
                inputLabel: '',
                solution: (String n) {
                  return '$n => ${validParentheses(n)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
