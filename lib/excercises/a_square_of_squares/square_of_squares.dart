import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/excercises/a_square_of_squares/widgets/description.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';

class SqueareOfSquares extends StatelessWidget {
  const SqueareOfSquares();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A square of squares'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SquareDescription(),
            BestAnswer(
              code: <TextSpan>[
                Styles.purple('import '),
                Styles.green(" 'dart:math'"),
                Styles.white(';\n\n'),
                Styles.white('bool isSquare(num n) => sqrt(n) % '),
                Styles.orange('1'),
                Styles.white(' == '),
                Styles.orange('0'),
                Styles.white(';\n'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
