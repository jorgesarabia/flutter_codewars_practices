import 'package:flutter_codewars_practices/excercises/smallest_interpreter/solutions/tuples.dart';

String brainLuck(String code, String input) {
  final tuples = Tuples(code);

  print(tuples);
  print(tuples.getCloseOf(2));
  print(tuples.getOpenOf(7));

  if (!tuples.isBalanced) {
    return 'The code String is not balanced';
  }

  String output = '';
  final cells = List.filled(10, 0);
  int pointer = 0;

  // TODO: Manage this with the instruction pointer to use the loops:
  for (String instruction in code.split('')) {
    switch (instruction) {
      case '>':
        pointer++;
        print('pointer is $pointer');
        break;
      case '<':
        pointer--;
        print('pointer is $pointer');
        break;
      case '+':
        cells[pointer] = _incrementValue(cells[pointer]);
        print("cells[$pointer] = ${cells[pointer]}");
        break;
      case '-':
        cells[pointer] = _decrementValue(cells[pointer]);
        print("cells[$pointer] = ${cells[pointer]}");
        break;
      case '.':
        output += String.fromCharCode(cells[pointer]);
        print('output => $output');
        break;
      case ',':
        cells[pointer] = input.codeUnitAt(pointer);
        print("cells[$pointer] = ${cells[pointer]}");
        break;
      case '[':
        if (cells[pointer] == 0) {
          // Go to the matching ']' command
          pointer = tuples.getCloseOf(pointer);
          // } else {
          //   pointer++;
        }
        print('pointer is $pointer');
        break;
      case ']':
        if (cells[pointer] > 0) {
          // Go back to the command after the matching '[' command
          pointer = tuples.getOpenOf(pointer);
          // } else {
          //   pointer++;
        }
        print('pointer is $pointer');
        break;
      default:
        print('$instruction => Is not an instuction');
        return 'The code contains an invalid instruction';
    }
  }

  return output;
}

int _incrementValue(int currentValue) {
  if (currentValue == 255) {
    return 0;
  }
  return currentValue + 1;
}

int _decrementValue(int currentValue) {
  if (currentValue == 0) {
    return 255;
  }
  return currentValue - 1;
}
