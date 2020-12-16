import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/styles.dart';

class BestAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Best Answer',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                const Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: Styles.normal,
                  children: <TextSpan>[
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
