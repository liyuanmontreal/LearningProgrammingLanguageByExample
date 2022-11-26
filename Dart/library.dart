//libraries are imported using the import keyword:

// app.dart

library app;

import 'utils.dart';

main() {
  print(shout('Welcome'));
  print(whisper('Welcome'));
}

//libraries can be split into parts using the part and part of syntax:

// utils.dart

library utils;

part 'whisper.dart';

String shout(String inp) => inp.toUpperCase() + '!!!';

// whisper.dart

part of utils;

String whisper(String inp) => inp.toLowerCase() + '...';
/*
$ app.dart
WELCOME!!!
welcome...
*/