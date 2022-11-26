//Static
//Static members (functions or properties) are available on the class itself, instead of on an instance of that class.

class Position {
  // a static function
  static int get maxX => 100;

  // a static property
  static int maxY = 200;
}

main() {
  print(Position.maxX);
  print(Position.maxY);
}

/*
$ dart static.dart
100
200
*/