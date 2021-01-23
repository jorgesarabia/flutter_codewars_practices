import 'package:flutter_codewars_practices/excercises/smallest_interpreter/solutions/helper_classes.dart';

class Tuples {
  Tuples(this.code) {
    _findEnclosed();
  }

  final String code;
  final Map<int, int> _matchClose = {};
  final Map<int, int> _matchOpen = {};

  int getCloseOf(int position) => _matchClose[position];
  int getOpenOf(int position) => _matchOpen[position];

  bool get isBalanced {
    final stack = [];

    for (int x = 0; x < code.length; x++) {
      final char = code[x];

      if (char == '[') {
        stack.add(char);
      } else if (char == ']') {
        if (stack.isEmpty) {
          return false;
        }

        stack.removeLast();
      }
    }

    if (stack.isNotEmpty) {
      return false;
    }

    return true;
  }

  void _findEnclosed() {
    final matchesOpen = <Open>[];
    final matchesClose = <Closed>[];

    for (int j = code.indexOf('['); j >= 0; j = code.indexOf('[', j + 1)) {
      matchesOpen.add(Open(j));
    }
    for (int j = code.indexOf(']'); j >= 0; j = code.indexOf(']', j + 1)) {
      matchesClose.add(Closed(j));
    }

    final ret = <SquareBracket>[];

    ret.addAll(matchesOpen);
    ret.addAll(matchesClose);
    ret.sort((a, b) => a.pos.compareTo(b.pos));

    _findMatches(ret);
  }

  void _findMatches(List<SquareBracket> matches) {
    Open lastOpen;
    Closed hisClosed;

    for (int x = 0; x < matches.length; x++) {
      if (matches[x] is Open) {
        lastOpen = matches[x];
      } else if (matches[x] is Closed) {
        hisClosed = matches[x];
        break;
      }
    }

    if (lastOpen == null) {
      return;
    }

    _matchClose[lastOpen.pos] = hisClosed.pos;
    _matchOpen[hisClosed.pos] = lastOpen.pos;

    matches.removeWhere((value) {
      return value.pos == lastOpen.pos || value.pos == hisClosed.pos;
    });

    return _findMatches(matches);
  }

  @override
  String toString() {
    return '$_matchClose \n\n $_matchOpen';
  }
}
