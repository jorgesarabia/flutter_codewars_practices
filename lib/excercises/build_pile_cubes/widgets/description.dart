import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/black_section.dart';
import 'package:flutter_codewars_practices/common/widgets/bordered_comment.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class BuildPileCubesDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlackSection(
            children: [
              Styles.white('Your task is to construct a building which will be a pile of n cubes. '),
              Styles.white('The cube at the bottom will have a volume of n^3, the cube above will '),
              Styles.white('have volume of (n-1)^3 and so on until the top which will have '),
              Styles.white('a volume of 1^3.\n\n'),
              Styles.white('You are given the total volume m of the building. '),
              Styles.white('Being given m can you find the number n of cubes you will have to build?\n\n'),
              Styles.white('The parameter of the function findNb'),
              WidgetSpan(child: BorderedComment('(find_nb, find-nb, findNb, ...)')),
              Styles.white(' will be an integer m and you have to return the integer n such as n^3'),
              Styles.white('+ (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.'),
            ],
          ),
          ExampleSection(
            exampleItems: [
              'findNb(1071225) --> 45',
              'findNb(91716553919377) --> -1',
            ],
          ),
        ],
      ),
    );
  }
}
