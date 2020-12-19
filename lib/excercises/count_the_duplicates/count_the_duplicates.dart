import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/count_the_duplicates/widgets/description.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/pyramid_impl.dart';

class CountTheDuplicates extends StatelessWidget {
  const CountTheDuplicates();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count the number of Duplicates'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CountDuplicatesDescription(),
            BestAnswer(
              title: 'My Answer',
              code: <TextSpan>[
                Styles.white('int duplicateCount(String text){\n'),
                Styles.purple('\t\tfinal '),
                Styles.white('leters = text.split(' ');\n'),
                Styles.purple('\t\tfinal '),
                Styles.white('answer = {};\n\n'),
                Styles.white('\t\tleters.forEach((ch) {\n'),
                Styles.purple('\t\t\t\tfinal '),
                Styles.white('x = ch.toLowerCase().allMatches(text.toLowerCase());\n'),
                Styles.white('\t\t\t\answer[ch.toLowerCase()] = x.length;\n'),
                Styles.white('\t\t} );\n\n'),
                Styles.white('\t\tanswer.removeWhere((key,value)=>value=='),
                Styles.orange('1'),
                Styles.white(');\n\n'),
                Styles.purple('\t\treturn '),
                Styles.white('answer.length;\n'),
                Styles.white('\n}'),
              ],
            ),
            TestButton(page: PyramidImpl()),
          ],
        ),
      ),
    );
  }
}
