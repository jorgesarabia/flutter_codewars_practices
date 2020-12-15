import 'package:flutter/material.dart';

class MyAnswer extends StatelessWidget {
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
                  style: normal,
                  children: <TextSpan>[
                    list(),
                    TextSpan(text: '<'),
                    list(),
                    TextSpan(text: '<int>> pyramid(int n) {\n'),
                    TextSpan(
                      text: '\t\t if',
                      style: ret,
                    ),
                    TextSpan(text: '(n=='),
                    TextSpan(
                      text: '0',
                      style: cons,
                    ),
                    TextSpan(text: ')'),
                    TextSpan(
                      text: '\t\t return ',
                      style: ret,
                    ),
                    TextSpan(text: '[ ];\n\n'),
                    TextSpan(
                      text: '\t\t final ',
                      style: ret,
                    ),
                    TextSpan(text: 'list = '),
                    list(),
                    TextSpan(text: '.generate(n+'),
                    TextSpan(
                      text: '1',
                      style: cons,
                    ),
                    TextSpan(text: ',(i)=> '),
                    list(),
                    TextSpan(text: '.generate(n+'),
                    TextSpan(
                      text: '1',
                      style: cons,
                    ),
                    TextSpan(text: ',(_)=>'),
                    TextSpan(
                      text: '1',
                      style: cons,
                    ),
                    TextSpan(text: '));\n\n'),
                    TextSpan(
                      text: '\t\t return ',
                      style: ret,
                    ),
                    TextSpan(text: 'list.sublist('),
                    TextSpan(
                      text: '0',
                      style: cons,
                    ),
                    TextSpan(text: ',list.length-'),
                    TextSpan(
                      text: '1',
                      style: cons,
                    ),
                    TextSpan(text: ');'),
                    TextSpan(text: '\n}'),
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
