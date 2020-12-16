import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/pyramid_array.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  static const excercises = [
    const _Exercise(
      title: 'Pyramid Array',
      description: 'Write a function that when given a number >= 0, returns an Array of ascending length subarrays.',
      page: PyramidArray(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Codewars practices')),
      body: ListView.builder(
        itemCount: excercises.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => excercises[index].page),
                );
              },
              child: Card(
                elevation: 8.0,
                child: ListTile(
                  title: Text(
                    excercises[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      excercises[index].description.substring(0, 40) + ' ...',
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Exercise {
  const _Exercise({
    @required this.title,
    @required this.description,
    @required this.page,
  });

  final String title;
  final String description;
  final StatefulWidget page;
}
