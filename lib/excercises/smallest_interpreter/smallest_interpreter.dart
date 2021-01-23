import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/smallest_interpreter/widgets/description.dart';

class SmallestInterpreter extends StatelessWidget {
  const SmallestInterpreter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My smallest code interpreter (aka Brainf**k)'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SmallestInterpreterDescription(),
            TestButton(
              page: ImplementationPage(
                inputType: TextInputType.number,
                inputLabel: 'Enter a number',
                solution: (String n) => 'pyramid($n):\n\n$n',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
