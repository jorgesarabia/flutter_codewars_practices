import 'package:flutter/material.dart';

class ExampleSection extends StatelessWidget {
  ExampleSection({
    @required this.exampleItems,
    this.label = 'Examples',
    this.textSize = 20.0,
  });

  final List<String> exampleItems;
  final String label;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 10.0,
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
                children: items(exampleItems),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> items(List<String> examples) {
    return examples.map((e) {
      return _ExampleItem(
        example: e,
        textSize: textSize,
      );
    }).toList();
  }
}

class _ExampleItem extends StatelessWidget {
  const _ExampleItem({
    @required this.example,
    @required this.textSize,
  });

  final String example;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        example,
        style: TextStyle(
          fontSize: textSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
