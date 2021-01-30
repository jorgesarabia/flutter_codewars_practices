import 'package:flutter_codewars_practices/excercises/smallest_interpreter/solutions/tuples.dart';

String brainLuck(String code, String input) {
  final tuples = Tuples(code);

  if (!tuples.isBalanced) {
    return 'The code String is not balanced';
  }

  final cells = List.filled(10, 0);
  final List<String> instructions = code.split('');

  String output = '';
  int dataPointer = 0;
  int instructionPointer = 0;
  int inputPointer = 0;

  while (instructionPointer < instructions.length) {
    switch (instructions[instructionPointer]) {
      case '>':
        dataPointer++;
        print('dataPointer is $dataPointer');
        break;
      case '<':
        dataPointer--;
        print('dataPointer is $dataPointer');
        break;
      case '+':
        cells[dataPointer] = _incrementValue(cells[dataPointer]);
        print("cells[$dataPointer] = ${cells[dataPointer]}");
        break;
      case '-':
        cells[dataPointer] = _decrementValue(cells[dataPointer]);
        print("cells[$dataPointer] = ${cells[dataPointer]}");
        break;
      case '.':
        output += String.fromCharCode(cells[dataPointer]);
        print('output => $output');
        break;
      case ',':
        cells[dataPointer] = input.codeUnitAt(inputPointer);
        inputPointer++;
        print("cells[$dataPointer] = ${cells[dataPointer]}");
        break;
      case '[':
        if (cells[dataPointer] == 0) {
          instructionPointer = tuples.getCloseOf(instructionPointer);
        }
        print('dataPointer is $dataPointer');
        break;
      case ']':
        if (cells[dataPointer] > 0) {
          instructionPointer = tuples.getOpenOf(instructionPointer);
        }
        print('dataPointer is $dataPointer');
        break;
      default:
        print('${instructions[instructionPointer]} => Is not an instuction');
        return 'The code contains an invalid instruction';
    }

    instructionPointer++;
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
