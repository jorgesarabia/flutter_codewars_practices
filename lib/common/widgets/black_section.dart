import 'package:flutter/material.dart';

class BlackSection extends StatelessWidget {
  const BlackSection({@required this.children});

  final List<InlineSpan> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            children: children,
          ),
        ),
      ),
    );
  }
}
