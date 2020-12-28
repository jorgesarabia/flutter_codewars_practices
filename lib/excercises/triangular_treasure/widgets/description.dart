import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class TriangularTreasureDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          ExampleSection(
            label: '',
            exampleItems: [
              '1st (1)   2nd (3)    3rd (6)',
              '*             **              ***',
              '              *                **',
              '                                *',
            ],
          ),
          Text(
            'You need to return the nth triangular number. You should return 0 for out of range values:',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      Styles.white('triangular('),
                      Styles.orange('0'),
                      Styles.white(')=='),
                      Styles.orange('0'),
                      Styles.white(',\n'),
                      Styles.white('triangular('),
                      Styles.orange('2'),
                      Styles.white(')=='),
                      Styles.orange('3'),
                      Styles.white(',\n'),
                      Styles.white('triangular('),
                      Styles.orange('3'),
                      Styles.white(')=='),
                      Styles.orange('6'),
                      Styles.white(',\n'),
                      Styles.white('triangular(-'),
                      Styles.orange('10'),
                      Styles.white(')=='),
                      Styles.orange('0'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
