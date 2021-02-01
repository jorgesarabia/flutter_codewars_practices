import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/implementation_page.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/smallest_interpreter/solutions/my_answer.dart';
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
                inputLabel: 'Enter a code and input (separate them with *)',
                solution: (String n) {
                  // final code = n.split('*').first.trim();
                  // final input = n.split('*').last.trim();

                  String code = '>++++[-<+++++++++++>]>,[>++++++[-<-------->]>+++++++++[-<<<[->+>+<<]>>[-<<+';
                  code += '>>]>]<<[-<+>],]<<+++++.-----.+++++.----->-->+>+<<[-<.>>>[->+>+<<]<[->>>+<<<';
                  code += ']>>[-<<+>>]>[->+<<<+>>]>[>>>>++++++++++<<<<[->+>>+>-[<-]<[->>+<<<<[->>>+<<<';
                  code += ']>]<<]>+[-<+>]>>>[-]>[-<<<<+>>>>]<<<<]<[>++++++[<++++++++>-]<-.[-]<]<<<<]';
                  String input = ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
                  input += ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
                  input += ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
                  input += ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
                  input += ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';

                  return 'brainLuck($code, $input):\n\n${brainLuck(code, input)}';
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
