class SquareBracket {
  SquareBracket(this.pos);
  final int pos;
}

class Open extends SquareBracket {
  Open(int pos) : super(pos);

  @override
  String toString() {
    return "[($pos)";
  }
}

class Closed extends SquareBracket {
  Closed(int pos) : super(pos);

  @override
  String toString() {
    return "]($pos)";
  }
}
