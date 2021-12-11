import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/going_to_cinema/going_to_cinema_impl.dart';
import 'package:flutter_codewars_practices/excercises/going_to_cinema/widgets/description.dart';

class GoingToCinema extends StatelessWidget {
  const GoingToCinema();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Going to the cinema'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GoingCinemaDescription(),
            BestAnswer(
              title: 'My Answer',
              code: <TextSpan>[
                Styles.white('int movie(int card, int ticket, double perc) {\n'),
                Styles.white('\tint count = '),
                Styles.orange('0'),
                Styles.white(';\n'),
                Styles.white('\tint priceA = '),
                Styles.orange('0'),
                Styles.white(';\n'),
                Styles.white('\tdouble priceB = card.toDouble();\n'),
                Styles.white('\tdouble prevPrice = ticket.toDouble();\n'),
                Styles.purple('\tdo'),
                Styles.white(' {\n'),
                Styles.white('\t\t\tcount++;\n'),
                Styles.white('\t\t\tpriceA = ticket * count;\n'),
                Styles.white('\t\t\tprevPrice = prevPrice*perc;\n'),
                Styles.white('\t\t\tpriceB = priceB + prevPrice;\n'),
                Styles.white(' }'),
                Styles.purple(' while '),
                Styles.white('(priceB.ceil() >= priceA);\n\n'),
                Styles.purple('\treturn '),
                Styles.white('count;'),
                Styles.white('\n}'),
              ],
            ),
            TestButton(page: GoingToCinemaImpl()),
          ],
        ),
      ),
    );
  }
}
