//Dartdoc parses comments starting with ///. Multiple-line comments and single-line comments use /* */ and //, respectively

/// Represents a two-dimensional position
/// has [x] and [y] properties
///
/// example code can be defined using a four-space indent:
///
///     var p = new Position();
///
class Position {
  /*
  multi-line comments
   */
  int x;

  // A regular comment
  int y;
}

main() {
  print(new Position().runtimeType);
}

/*
$ dart comments.dart
Position
*/