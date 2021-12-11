import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  TestButton({@required this.page});

  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black87,
        primary: Colors.black,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          side: BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        'Test',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
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
