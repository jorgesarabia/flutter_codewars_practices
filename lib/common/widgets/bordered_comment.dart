import 'package:flutter/material.dart';

class BorderedComment extends StatelessWidget {
  const BorderedComment(this.comment);

  final String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.white,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
          const Radius.circular(5.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Text(
          comment,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
