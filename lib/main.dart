import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/a_square_of_squares/square_of_squares.dart';
import 'package:flutter_codewars_practices/excercises/count_the_duplicates/count_the_duplicates.dart';
import 'package:flutter_codewars_practices/excercises/going_to_cinema/going_to_cinema.dart';
import 'package:flutter_codewars_practices/excercises/pi_approximation/pi_approximation.dart';
import 'package:flutter_codewars_practices/excercises/primes_in_numbers/primes_in_numbers.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/pyramid_array.dart';
import 'package:flutter_codewars_practices/excercises/smallest_interpreter/smallest_interpreter.dart';
import 'package:flutter_codewars_practices/excercises/triangular_treasure/triangular_treasure.dart';
import 'package:flutter_codewars_practices/excercises/valid_parentheses/valid_parentheses.dart';
import 'package:flutter_codewars_practices/excercises/word_values/word_values.dart';

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
    _Exercise(
      title: 'A square of squares',
      description: "You like building blocks. You especially like building blocks that are squares. And what you .",
      page: SqueareOfSquares(),
    ),
    _Exercise(
      title: 'Pyramid Array',
      description: 'Write a function that when given a number >= 0, returns an Array of ascending length subarrays.',
      page: PyramidArray(),
    ),
    _Exercise(
      title: 'Count the number of Duplicates',
      description: 'Write a function that will return the count of distinct case-insensitive alphabetic characters ',
      page: CountTheDuplicates(),
    ),
    _Exercise(
      title: 'Going to the cinema',
      description: 'My friend John likes to go to the cinema. He can choose between system A and system B.',
      page: GoingToCinema(),
    ),
    _Exercise(
      title: 'Word values',
      description: 'My friend John likes to go to the cinema. He can choose between system A and system B.',
      page: WordValues(),
    ),
    _Exercise(
      title: 'Triangular Treasure',
      description: 'Triangular numbers are so called because of the equilateral triangular shape that they occupy ',
      page: TriangularTreasure(),
    ),
    _Exercise(
      title: 'PI Approximation',
      description: 'The aim of the kata is to try to show how difficult it can be to calculate decimals of an ',
      page: PiApproximation(),
    ),
    _Exercise(
      title: 'My smallest code interpreter Brainfuck',
      description: 'Inspired from real-world Brainf**k, we want to create an interpreter of that language which  ',
      page: SmallestInterpreter(),
    ),
    _Exercise(
      title: 'Primes in numbers',
      description: 'Given a positive number n > 1 find the prime factor decomposition of n. ',
      page: PrimesInNumbers(),
    ),
    _Exercise(
      title: 'Valid Parentheses',
      description: 'Write a function that takes a string of parentheses, and determines if the order ',
      page: ValidParentheses(),
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
  final Widget page;
}
