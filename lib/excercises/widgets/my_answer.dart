import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/styles.dart';

class MyAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Answer 😞',
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
                    Styles.purple('\t\t if'),
                    Styles.white('(n=='),
                    Styles.orange('0'),
                    Styles.white(')'),
                    Styles.purple('\t\t return '),
                    Styles.white('[ ];\n\n'),
                    Styles.purple('\t\t final '),
                    Styles.white('list = '),
                    Styles.blue('List'),
                    Styles.white('.generate(n+'),
                    Styles.orange('1'),
                    Styles.white(', (i) => '),
                    Styles.blue('List'),
                    Styles.white('.generate(n+'),
                    Styles.orange('1'),
                    Styles.white(', (_) => '),
                    Styles.orange('1'),
                    Styles.white('));\n\n'),
                    Styles.purple('\t\t return '),
                    Styles.white('list.sublist('),
                    Styles.orange('0'),
                    Styles.white(', list.length-'),
                    Styles.orange('1'),
                    Styles.white(');'),
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
