import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/black_section.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class ValidParenthesesDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlackSection(
            children: [
              Styles.white('Write a function that takes a string of parentheses, and determines '),
              Styles.white('if the order of the parentheses is valid. '),
              Styles.white('The function should return '),
              WidgetSpan(child: BorderedComment('true')),
              Styles.white(' if the string is valid, and '),
              WidgetSpan(child: BorderedComment('false')),
              Styles.white(" if it's invalid."),
            ],
          ),
          ExampleSection(
            exampleItems: [
              '"()"              =>  true',
              '")(()))"          =>  false',
              '"("               =>  false',
              '"(())((()())())"  =>  true',
            ],
          ),
          BlackSection(
            children: [
              Styles.white('Contains\n\n', fontSize: 22.0),
              WidgetSpan(child: BorderedComment('0 <= input.length <= 100')),
              Styles.white('\n\n'),
              Styles.white('Along with opening ('),
              WidgetSpan(child: BorderedComment('(')),
              Styles.white(') and closing ('),
              WidgetSpan(child: BorderedComment(')')),
              Styles.white(') parenthesis, input may contain any valid ASCII characters.'),
              Styles.white('Furthermore, the input string may be empty and/or not contain any '),
              Styles.white('parentheses at all. Do not treat other forms of brackets as parentheses '),
              Styles.white('(e.g.'),
              WidgetSpan(child: BorderedComment('[]')),
              Styles.white(','),
              WidgetSpan(child: BorderedComment('{}')),
              Styles.white(','),
              WidgetSpan(child: BorderedComment('<>')),
              Styles.white(').\n\n'),
            ],
          ),
        ],
      ),
    );
  }
}
