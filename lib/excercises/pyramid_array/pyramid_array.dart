import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/pyramid_impl.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/description.dart';

class PyramidArray extends StatefulWidget {
  const PyramidArray();

  @override
  _PyramidArrayState createState() => _PyramidArrayState();
}

class _PyramidArrayState extends State<PyramidArray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pyramid Array'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PyramidDescription(),
            BestAnswer(),
            RaisedButton(
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
                  MaterialPageRoute(builder: (context) => PyramidImpl()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
