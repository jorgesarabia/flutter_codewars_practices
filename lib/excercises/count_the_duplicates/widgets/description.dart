import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class CountDuplicatesDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          ExampleSection(
            exampleItems: [
              "'abcde' -> 0 # no characters repeats more than once",
              "'aabbcde' -> 2 # 'a' and 'b'",
              "'indivisibility' -> 1 # 'i' occurs six times",
              "'Indivisibilities' -> 2 # 'i' occurs seven times and 's' occurs twice ",
              "'aA11' -> 2 # 'a' and '1'",
              "'ABBA'-> 2 # 'A' and 'B' each occur twice",
            ],
          ),
        ],
      ),
    );
  }
}
