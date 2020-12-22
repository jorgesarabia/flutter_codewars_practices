import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';

class WordValuesDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              children: [
                Styles.white('Given a string '),
                WidgetSpan(child: BorderedComment('"abc"')),
                Styles.white(' and assuming that each letter in '),
                Styles.white('the string has a value equal to its '),
                Styles.white('position in the alphabet, our string will have a value of '),
                WidgetSpan(child: BorderedComment('1 + 2 + 3 = 6')),
                Styles.white('.\n\nThis means that: '),
                WidgetSpan(child: BorderedComment('a = 1, b = 2, c = 3 ....z = 26')),
                Styles.white('. You will be given a list of strings and '),
                Styles.white('your task will be to return the values of the '),
                Styles.white('strings as explained above multiplied by the '),
                Styles.white('position of that string in the list. '),
                Styles.white('For our purpose, position begins with '),
                WidgetSpan(child: BorderedComment('1')),
                Styles.white('.\n\n'),
                WidgetSpan(child: BorderedComment('nameValue ["abc","abc abc"]')),
                Styles.white(' should return '),
                WidgetSpan(child: BorderedComment('[6, 24]')),
                Styles.white(' because of '),
                WidgetSpan(child: BorderedComment('[ 6 * 1, 12 * 2 ]')),
                Styles.white('. Note how spaces are ignored.\n\n'),
                WidgetSpan(child: BorderedComment('"abc"')),
                Styles.white(' has a value of '),
                WidgetSpan(child: BorderedComment('6')),
                Styles.white(', while '),
                WidgetSpan(child: BorderedComment('"abc abc"')),
                Styles.white(' has a value of '),
                WidgetSpan(child: BorderedComment('12')),
                Styles.white('. Now, the value at position '),
                WidgetSpan(child: BorderedComment('1')),
                Styles.white(' is multiplied by '),
                WidgetSpan(child: BorderedComment('1')),
                Styles.white(' while the value at position '),
                WidgetSpan(child: BorderedComment('2')),
                Styles.white(' is multiplied by '),
                WidgetSpan(child: BorderedComment('2')),
                Styles.white('.\n\n'),
                Styles.white('Input will only contain lowercase characters and spaces.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
