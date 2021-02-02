import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/black_section.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';

class PrimesDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlackSection(
            children: [
              Styles.white('Given a positive number n > 1 find the prime factor decomposition of n.\n'),
              Styles.white('The result will be a string with the following form :\n'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BlackSection(
              children: [
                Styles.white('"(p1**n1)(p2**n2)...(pk**nk)"'),
              ],
            ),
          ),
          BlackSection(
            children: [
              Styles.white('where '),
              WidgetSpan(child: BorderedComment('a ** b')),
              Styles.white(' means '),
              WidgetSpan(child: BorderedComment('a')),
              Styles.white(' to the power of '),
              WidgetSpan(child: BorderedComment('b')),
              Styles.white('\n\nwith the p(i) in increasing order and n(i) empty if n(i) is 1.\n'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BlackSection(
              children: [
                Styles.white('Example: n = 86240 should return \n\n"(2**5)(5)(7**2)(11)"'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
