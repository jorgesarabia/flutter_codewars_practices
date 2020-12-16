import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/description.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/my_answer.dart';

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
            MyAnswer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "I did't know the function 'filled' 🙏",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
