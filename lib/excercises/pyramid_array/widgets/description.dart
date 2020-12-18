import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class PyramidDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Write a function that when given a number >= 0, returns an Array of ascending length subarrays.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          ExampleSection(
            exampleItems: [
              'pyramid(0) => [ ]',
              'pyramid(1) => [ [1] ]',
              'pyramid(2) => [ [1], [1, 1] ]',
              'pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]',
            ],
          ),
          RichText(
            text: TextSpan(
              text: 'Note: the subarrays should be filled with ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 's'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
