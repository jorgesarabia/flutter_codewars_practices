import 'package:flutter/material.dart';

class ExampleSection extends StatelessWidget {
  ExampleSection({@required this.exampleItems});

  final List<String> exampleItems;

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
            'Examples',
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

  List<Widget> items(List<String> examples) => examples.map((e) => _ExampleItem(e)).toList();
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
