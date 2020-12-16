import 'package:flutter/material.dart';

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
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ExampleItem('pyramid(0) => [ ]'),
                  _ExampleItem('pyramid(1) => [ [1] ]'),
                  _ExampleItem('pyramid(2) => [ [1], [1, 1] ]'),
                  _ExampleItem('pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]'),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
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

class _ExampleItem extends StatelessWidget {
  const _ExampleItem(this.example);

  final String example;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        example,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
