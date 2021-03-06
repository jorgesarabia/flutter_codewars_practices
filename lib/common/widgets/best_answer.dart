import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';

class BestAnswer extends StatelessWidget {
  const BestAnswer({
    @required this.code,
    this.title = 'Best Answer',
  });

  final List<InlineSpan> code;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
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
                  children: code,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
