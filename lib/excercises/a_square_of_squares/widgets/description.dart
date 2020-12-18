import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class SquareDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Task',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Given an integral number, determine if it's a ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'square number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ':'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 0,
              child: Text(
                '"In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself."',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                text: 'The tests will ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'always ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text: "use some integral number, so don't worry about that in dynamic typed languages.",
                  ),
                ],
              ),
            ),
            ExampleSection(
              exampleItems: [
                '-1 => false',
                '0  =>  true',
                '3  =>  false',
                '4  =>  true',
                '25  =>  true',
                '26  =>  false',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
