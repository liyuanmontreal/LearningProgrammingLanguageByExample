/*
In dart, compile-time constants can be created as long as the object's deep structure can be determined at compile time.
*/
import 'dart:math';

// compile-time constants are defined using 'const'
const name = "greg";

// Objects can also be declared at compile-time
const Rectangle bounds = const Rectangle(0, 0, 5, 5);

main() {
  print(name);
  print(bounds);
}


/*
$ dart const.dart
greg
Rectangle (0, 0) 5 x 5
*/