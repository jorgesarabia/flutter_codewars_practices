import 'package:flutter/material.dart';

class BestAnswer extends StatelessWidget {
  static const fontSize = 15.0;

  static const base = TextStyle(
    fontSize: fontSize,
    color: Color(0xFFBBDEFB),
  );

  static const normal = TextStyle(
    fontSize: fontSize,
    color: Color(0xFFFFFFFF),
  );

  static const ret = TextStyle(
    fontSize: fontSize,
    color: Color(0xFFD500F9),
  );

  static const cons = TextStyle(
    fontSize: fontSize,
    color: Color(0xFFD84315),
  );

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
                  style: normal,
                  children: <TextSpan>[
                    list(),
                    TextSpan(text: '<'),
                    list(),
                    TextSpan(text: '<int>> pyramid(int n) {\n'),
                    TextSpan(
                      text: '\t\t return ',
                      style: ret,
                    ),
                    list(),
                    TextSpan(text: '.generate(n, (i) => '),
                    list(),
                    TextSpan(text: '.filled(i + '),
                    TextSpan(
                      text: '1',
                      style: cons,
                    ),
                    TextSpan(text: ','),
                    TextSpan(
                      text: ' 1',
                      style: cons,
                    ),
                    TextSpan(text: '));\n'),
                    TextSpan(text: '}'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextSpan list() => TextSpan(text: 'List', style: base);
}
