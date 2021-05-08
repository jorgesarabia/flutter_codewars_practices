import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/black_section.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class SumOfIntervalsDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlackSection(
            children: [
              Styles.white('Write a function called'),
              WidgetSpan(child: BorderedComment('sumIntervals/sum_intervals()')),
              Styles.white('that accepts an array of intervals, and returns the sum '),
              Styles.white('of all the interval lengths. Overlapping intervals '),
              Styles.white('should only be counted once.\n\n'),
              Styles.white('Intervals\n\n', fontSize: 25.0),
              Styles.white('Intervals are represented by a pair of integers in the '),
              Styles.white('form of an array. The first value of the interval will '),
              Styles.white('always be less than the second value. Interval example: '),
              WidgetSpan(child: BorderedComment('[1, 5]')),
              Styles.white(' is an interval from 1 to 5. The length of this interval is 4.\n\n'),
              Styles.white('Overlapping Intervals\n\n', fontSize: 25.0),
              Styles.white('List containing overlapping intervals:\n\n'),
              WidgetSpan(child: BorderedComment('\n[\n   [1,4],\n   [7, 10],    \n   [3, 5]\n]\n')),
              Styles.white('\n\nThe sum of the lengths of these intervals is 7. '),
              Styles.white('Since [1, 4] and [3, 5] overlap, we can treat the interval '),
              Styles.white('as [1, 5], which has a length of 4.'),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            'Examples',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          BlackSection(
            children: [
              Styles.white('sumOfIntervals([ '),
              ...pair(1, 5),
              Styles.white(', '),
              ...pair(10, 15),
              Styles.white(', '),
              ...pair(-1, 3),
              Styles.white(' ]) '),
              Styles.green(' // => 11\n\n'),
              Styles.white('sumOfIntervals([ '),
              ...pair(1, 5),
              Styles.white(' ]) '),
              Styles.green(' // => 4'),
            ],
          ),
        ],
      ),
    );
  }

  List<InlineSpan> pair(int x, int y) {
    return [
      Styles.white('['),
      Styles.purple(x.toString()),
      Styles.white(','),
      Styles.purple(' $y'),
      Styles.white(']'),
    ];
  }
}
