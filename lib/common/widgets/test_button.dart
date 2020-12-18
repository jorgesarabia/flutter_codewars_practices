import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  TestButton({@required this.page});

  final Widget page;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.black),
      ),
      color: Colors.black,
      textColor: Colors.white,
      child: Text(
        'Test',
        style: TextStyle(fontSize: 14),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
