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
                Styles.blue('List'),
                Styles.white('<'),
                Styles.blue('List'),
                Styles.white('<int>> pyramid(int n) {\n'),
                Styles.purple('\t\t return '),
                Styles.blue('List'),
                Styles.white('.generate(n, (i) => '),
                Styles.blue('List'),
                Styles.white('.filled(i + '),
                Styles.orange('1'),
                Styles.white(','),
                Styles.orange('1'),
                Styles.white('));'),
                Styles.white('\n}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
